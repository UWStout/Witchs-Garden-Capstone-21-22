/*
* AUTHOR : Steve Datz
* DESC : A middle manager that handles control between the UI/Input and Player
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

using System.Collections.Generic;
using CustomInput;
using Garden;
using Helpers;
using Items;
using Research;
using Spells;
using TurnManaging;
using UI;
using UnityEngine;
using Shop;
using Targeting;

using GameAnalyticsSDK;

namespace Player
{
	public delegate bool CanPlayerAffordGold(int goldAmnt);
	public delegate bool CanPlayerSellItem(IItem item);
	public delegate bool TryExchangeItem(IItem item, bool isBuy, int value);
	
	
	public class PlayerActionHandler : InstancedMonoBehaviour<PlayerActionHandler>
	{
		[SerializeField] private ModelView _modelView;
		[SerializeField] private GardenController _garden;
		[SerializeField] private ShopController _shopController;

		[SerializeField] private UI_PermaController _permaController;
		[SerializeField] private UI_GardenController _gardenController;
		//[SerializeField] private UI_HouseController _houseController;
		[SerializeField] private UI_ResearchSelectionController _researchController; //too messy to go thru perma
		[Tooltip("Required to use the clone spell")]
		[SerializeField] private CloneSpellPreviewModel _clonePreviewer;

		public bool PreventRotation;

		//This could maybe become a MonoSingleton if other stuff wants to use it
		private SpellExecutor _spellExecutor;
		
		/************************************************************************************************************************/

        private void Start()
		{
			CheckNulls();
			RegisterForInput(true);
			var player = GetPlayerController();
			_spellExecutor = new SpellExecutor(player, _clonePreviewer, _garden);
			BindPlayerActions(true, player);
			//Init UI controllers:
			_gardenController.InitGardenUI(player, GetBundleContainer());
			_permaController.InitPermaUI(TurnManager.Instance, player, GetBundleContainer(), TryMakePotion);
			PreventRotation = false;
			//Setup the UI -one time (race conditions)
			PlayerSpellsChanged(player.Spells);
			_shopController.Init(TryExchangeItem, CanPlayerAfford, PlayerHasItem);
			_researchController.SetTryUnlockChapterCallback(TryBuyChapter, CanPlayerAfford);
			//Gain initial resources
			GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Gold", player.PlayerGold.GetGold(), "INIT", "StartingGold");
			GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Mana", player.PlayerMana.GetCurrent(), "INIT", "StartingMana");
		}


		private void OnDestroy()
		{
			RegisterForInput(false);
			var player = GetPlayerController();
			BindPlayerActions(false, player);
			// These MIGHT be problematic, if the child is somehow destroyed in the cleanup first (it shouldnt, parents shud have priority)
			// then it will never un-register. Which is not a problem if the app is closing, but would be if the scene is and we plan to reg/unreg to anything thats a singleton
			_gardenController.DestroyGardenUI(player);
			_permaController.DestroyPermaUI(TurnManager.Instance, player);
		}

		/************************************************************************************************************************/

		//For toggling GardenUI on/off
		public void ActivateGardenUI(bool doActivate)
		{
			_gardenController.SetHouseDisabled(!doActivate);
			_gardenController.gameObject.SetActive(doActivate);
		}

		/************************************************************************************************************************/
		private PlayerController GetPlayerController() => _modelView.PlayerController;


		private bool TryBuyChapter(ResearchChUnlockInfo chInfo)
		{
			var unlock = chInfo.UnlockCondition;
			if (!(unlock is ResearchGoldUnlockCondition goldCond)) 
				return false;
			if (!TrySpendGold(goldCond.GoldAmount, out var player))
				return false;

			GameAnalytics.NewResourceEvent(GAResourceFlowType.Sink, "Gold", goldCond.GoldAmount, "RESEARCH", chInfo.ChapterTemplate.ChapterName);
			ResearchSystem.Instance.UnlockChapter(chInfo.ChapterTemplate);
			return true;
		}
		
		private IBundleContainer GetBundleContainer() => _modelView;

		/// <summary>
		/// Handles buying and selling for the player
		/// </summary>
		/// <returns></returns>
		private bool TryExchangeItem(IItem item, bool isBuy, int value)
		{
			if(item is ScriptableObject)
            {
				Debug.Log($"<color=yellow>Trying to Exchange item that not a runtimeItem</color> : {item.ItemName}");
            }
			return isBuy ? TryBuyItem(item, value) : TrySellItem(item, value);
		}

		private bool TryBuyItem(IItem item, int cost)
		{
			if (!TrySpendGold(cost, out var player))
				return false;
			//We need to turn this into a runtimeItem
			if(item is ScriptableObject)
            {
				item = ItemManager.CreateRuntimeItem(item, 5);

			}

			player.PlayerInventory.AddItem(item);
			GameAnalytics.NewResourceEvent(GAResourceFlowType.Sink, "Gold", cost, item.ItemType.ToString(), item.ItemName);

			return true;
		}

		private bool TrySellItem(IItem item, int cost)
		{
			if (!PlayerHasItem(item, out PlayerController player))
				return false;

			player.PlayerInventory.RemoveItem(item);
			player.PlayerGold.IncrementGold(cost);
			GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Gold", cost, item.ItemType.ToString(), item.ItemName);

			//Let the Narrative UI shop handle invoking the response, since we dont have easy access
			return true;
		}

		private bool PlayerHasItem(IItem item)
		{
			return PlayerHasItem(item, out _);
		}
		private bool PlayerHasItem(IItem item, out PlayerController player)
		{
			player = _modelView.PlayerController;
			var inv = player.PlayerInventory;
			return inv.Contains(item);
		}

		
		private bool TrySpendGold(int cost, out PlayerController player)
		{
			if (!PlayerCanAfford(cost, out player))
				return false;

			player.PlayerGold.IncrementGold(-cost);
			return true;
		}
		
		private bool CanPlayerAfford(int goldAmnt)
		{
			return PlayerCanAfford(goldAmnt, out _);
		}
		
		private bool PlayerCanAfford(int cost, out PlayerController player)
		{
			player = _modelView.PlayerController;
			return player.PlayerGold.GetGold() >= cost;
		}

		
		/// <summary>
		/// binded callback from UI (cauldron)
		/// </summary>
		/// <returns></returns>
		private IPotion TryMakePotion(IItem item1, IItem item2, IItem item3)
        {
	        var potionResult = ItemManager.Instance.TryMakePotion(item1, item2, item3);
			if (potionResult == null)
				return null;

			var player = _modelView.PlayerController;
			var playerInv = player.PlayerInventory;
			var playerDiags = player.DiagramHandler;
			playerInv.AddItem(potionResult);
			playerInv.RemoveItem(item1);
			playerInv.RemoveItem(item2);
			playerInv.RemoveItem(item3);
			playerDiags.CheckIfPotionUnlocksDiagram(potionResult);
			ResearchSystem.Instance.CheckIfPotionFinishesResearchEarly(potionResult);
			
			GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Potion", 1, "Potion", potionResult.ItemName);
			
			//Debug.Log($"Successful potion! {potionResult.ItemName}");
			return potionResult;
        }
		
		private void TryUseSpell()
		{
			//Debug.Log($"Try Use spell : [{ _gardenController.GetSelectedSpell()}]");
			//Get the curr spell from the UI
			var selectedSpell = _gardenController.GetSelectedSpell();
			if (selectedSpell == null || _gardenController.IsHouseDisabled)
				return ;
			IItem item = null;
			if (selectedSpell.RequiresItem)
			{
				item = _gardenController.GetSelectedItem();
				//Debug.Log($"_gardenController gotten item = {item}");
			}

			//Okay for item to be null
			_spellExecutor.TryUseSpell(selectedSpell, item);
		}
		
		/// <summary>
		/// Takes the spell info and packages it into a format needed for the UI
		/// </summary>
		/// <param name="playerSpells"></param>
		private void PlayerSpellsChanged(PlayerSpells playerSpells)
		{
			Dictionary<Spell, bool> spellUnlockDict = new Dictionary<Spell, bool>();
			foreach (var spell in playerSpells.Spells)
			{
				spellUnlockDict.Add(spell, playerSpells.IsSpellUnlocked(spell.SpellData.SpellID));
			}
			_gardenController.UpdatePlayerSpells(spellUnlockDict);
		}
		
		private void RegisterForInput(bool cond)
		{
			if (cond)
			{
				InputReader.PrimaryInteractEvent += TryUseSpell;
				//Perma Controller
				InputReader.OpenBookEvent += _permaController.ToggleDisplayInventory;
				InputReader.CloseBookEvent += _permaController.CloseBookOverlay;
				CauldronTarget.OnCauldronClick += _permaController.DisplayCauldron;
				ChestTarget.OnChestClick += _permaController.DisplayShopBuy;
				ShopCounterTarget.OnShopClicked += _permaController.DisplayShopSell;
				ResearchNookTarget.OnResearchClicked += _permaController.DisplayResearch;
				MailboxTarget.OnMailboxClick += _permaController.DisplayMailboxMessage;
				//Garden Controller
				InputReader.SpellWheelOpenedEvent += _gardenController.OpenSpellWheel;
				InputReader.SpellWheelClosedEvent += _gardenController.CloseSpellWheel;
				InputReader.ScrollEvent += ScrollWheelIncremented;
				InputReader.LookEvent += SpellWheelNewUpdate;

				InputReader.ScrollNumberKeysEvent += ScrollWheelSet;
				InputReader.SelectHotbarPageEvent += _gardenController.IncrementHotbarPage;
				InputReader.CancelEvent += CancelClonePreview;
				InputReader.OnEscapeEvent += EscapeKeyPressed;
				InputReader.SecondaryScrollEvent += SecondaryScrollIncremented;
				InputReader.SecondaryScrollToggleEvent += SecondaryScrollToggleIncremented;
			}
			else
			{
				InputReader.PrimaryInteractEvent -= TryUseSpell;
				//Perma Controller
				InputReader.OpenBookEvent -= _permaController.ToggleDisplayInventory;
				InputReader.CloseBookEvent -= _permaController.CloseBookOverlay;
				CauldronTarget.OnCauldronClick -= _permaController.DisplayCauldron;
				ChestTarget.OnChestClick -= _permaController.DisplayShopBuy;
				ShopCounterTarget.OnShopClicked -= _permaController.DisplayShopSell;
				ResearchNookTarget.OnResearchClicked -= _permaController.DisplayResearch;
				MailboxTarget.OnMailboxClick -= _permaController.DisplayMailboxMessage;
				//Garden Controller
				InputReader.SpellWheelOpenedEvent -= _gardenController.OpenSpellWheel;
				InputReader.SpellWheelClosedEvent -= _gardenController.CloseSpellWheel;
				InputReader.ScrollEvent -= ScrollWheelIncremented; // TODO update for controller support
				InputReader.LookEvent -= SpellWheelNewUpdate;

				InputReader.ScrollNumberKeysEvent -= ScrollWheelSet;
				InputReader.SelectHotbarPageEvent -= _gardenController.IncrementHotbarPage;
				InputReader.CancelEvent -= CancelClonePreview;
				InputReader.OnEscapeEvent -= EscapeKeyPressed;
				InputReader.SecondaryScrollEvent -= SecondaryScrollIncremented;
				InputReader.SecondaryScrollToggleEvent -= SecondaryScrollToggleIncremented;
			}
		}

        private void EscapeKeyPressed()
        {

			//IF in middle of clone spell:
			if (_clonePreviewer.IsActivePreview)
			{
				CancelClonePreview();
				return;
			}

			// Toggle ESC MENU / back out of any open menus
			_permaController.EscapePressed();
		}

		/****************************************************************/

		private void ScrollWheelIncremented(int scrollValue)
		{
			//Forward the input to the garden controller
			_gardenController.OnScrollWheelIncremented(scrollValue);
			ScrollWheelUpdated();
		}

		private void ScrollWheelSet(int scrollValue)
		{
			//Forward the input to the garden controller
			_gardenController.OnScrollWheelSet(scrollValue);
			ScrollWheelUpdated();
		}

		private void SpellWheelNewUpdate(Vector2 inputAxis)
		{
			// convert look vector2 to angle
			int targetSpell; // 0 is +x+y left side, 7 is -x+y, increments clockwise
			float angleD = 0;
			if (Mathf.Atan2(inputAxis.y, inputAxis.x) != 0)
			{
				angleD = -(Mathf.Atan2(inputAxis.x, -inputAxis.y) * Mathf.Rad2Deg + 180) + 360;
			}
			
			// call onscrollwheelset with a scroll value

			// call scrollwheelupdated

		}

		/****************************************************************/

		private void ScrollWheelUpdated()
		{
			//Validate that if we are mid-clone spell, it gets canceled:
			var selectedSpell = _gardenController.GetSelectedSpell();
			if (selectedSpell.SpellID != eSpellID.CLONE && _clonePreviewer.IsActivePreview)
			{
				CancelClonePreview();
			}
		}

		private void SecondaryScrollIncremented(int scrollValue)
		{
			//Forward the input to the garden controller
			_gardenController.OnSecondaryScrollIncremented(scrollValue);
		}

		private void SecondaryScrollToggleIncremented(int scrollValue)
		{
			//Forward the input to the garden controller
			_gardenController.OnSecondaryScrollToggleIncremented(scrollValue);
		}

		private void CancelClonePreview()
		{
			_clonePreviewer.FinishPreview();
		}

		private void BindPlayerActions(bool cond, PlayerController player)
		{
			if (cond)
			{
				player.Spells.OnSpellUnlockChange += PlayerSpellsChanged;
			}
			else
			{
				player.Spells.OnSpellUnlockChange -= PlayerSpellsChanged;
			}
		}
		
		private void CheckNulls()
		{
			if(_modelView==null)
			{
				Debug.Log($"[PlayerActionHandler]<color=yellow> _modelView unassigned, searching scene</color>");
				_modelView = GameObject.FindObjectOfType<ModelView>();
			}
			if (_gardenController == null)
			{
				Debug.Log($"[PlayerActionHandler]<color=yellow> _gardenController unassigned, searching scene</color>");
				_gardenController = GameObject.FindObjectOfType<UI_GardenController>();
			}
			if (_permaController == null)
			{
				Debug.Log($"[PlayerActionHandler]<color=yellow> _permaController unassigned, searching scene</color>");
				_permaController = GameObject.FindObjectOfType<UI_PermaController>();
			}
		}
	}

}