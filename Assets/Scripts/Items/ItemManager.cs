using System.Collections.Generic;
using Diagrams;
using Helpers;
using Ingredients;
using Plants;
using UnityEngine;
using TurnManaging;

namespace Items
{

	public class ItemManager : InstancedMonoBehaviour<ItemManager>
	{
		[SerializeField] private ItemMap _itemMap;
		[SerializeField] private ItemSets _playerStartingItems;
		[SerializeField] private ItemSets _playerStartingItemsDev;
		[SerializeField] private List<ItemSets> _shopItemSets;
		[Range(5,20)] [Tooltip("The chance of size each shop bundle stack has when generated")]
		[SerializeField] private int _maxShopItemGeneration = 10;
		[SerializeField] private List<ItemSets> _pickupItemSets;
		[Range(1,3)] [Tooltip("The chance of size each pickup bundle stack has when generated")]
		[SerializeField] private int _maxPickupItemGeneration = 2;

		[SerializeField] private List<DiagramTemplate> _startingKnownDiagrams;

		private int _turnNum=1;
		/************************************************************************************************************************/
		protected override void OnInitializeFromAwake()
		{
			if(_itemMap==null)
				Debug.Log($"[ItemManager]<color=yellow>.. No Item Map Assigned!! </color>");
			if(_playerStartingItems == null)
				Debug.Log($"[ItemManager]<color=yellow>.. No startingItems Assigned!! </color>");
		}

        private void Start()
        {
			Subscribe(true);
        }

        private void OnDestroy()
        {
			Subscribe(false);
        }
        /************************************************************************************************************************/
        /// <summary>
        /// Creates a new runtime item based on type
        /// </summary>
        /// <param name="item">Item can be a scriptable object</param>
        /// <param name="quality">Betwen 0-100</param>
        /// <returns></returns>
        public static RuntimeItem CreateRuntimeItem(IItem item, int quality)
		{
			return item.ItemType switch
			{
				eItemType.SEED => CreateSeedItem(item, quality),
				eItemType.YIELD => CreateYieldItem(item, quality),
				eItemType.POTION => CreatePotionItem(item, quality),
				_ => null
			};
		}
		/************************************************************************************************************************/

		/// <summary>
		/// Gets any items the player should start with,
		/// Will return an empty list if the ref to startingItems class isnt assigned
		/// </summary>
		/// <returns></returns>
		public List<RuntimeItem> GetStartingItems()
		{
			if (_playerStartingItems == null)
				return new List<RuntimeItem>();

			if (DevModeToggle.Instance && DevModeToggle.Instance.DevMode)
				return _playerStartingItemsDev.GetItems();
			else
				return _playerStartingItems.GetItems();
		}

		/// <summary>
		/// Can be used to get the default seed item template from a certain plant
		/// should never be null,
		/// If null someone made a new plant without adding a yield item to the global dict
		/// </summary>
		/// <param name="plantData"></param>
		/// <returns></returns>
		public SeedTemplate GetSeedTemplateForPlant(PlantData plantData)
		{
			return _itemMap.GetSeedForPlant(plantData);
		}

		/// <summary>
		/// Can be used to get the default yield item template from a certain plant
		/// should never be null,
		/// If null someone made a new plant without adding a yield item to the global dict
		/// </summary>
		/// <param name="plantData"></param>
		public YieldItemTemplate GetYieldTemplateForPlant(PlantData plantData)
		{
			return _itemMap.GetYieldForPlant(plantData);
		}

		/// <summary>
		/// Can be used to get the default template for a potion made from 3 ingredients in any order
		/// TODO- if not found- instead of returning null, need to return default janky potion
		/// </summary>
		/// <param name="ingredientSet"></param>
		public PotionTemplate GetPotionTemplateForIngredientSet(IngredientSet ingredientSet)
		{
			return _itemMap.GetPotionForIngredient(ingredientSet);
		}

		public List<PotionTemplate> GetAllPotionTemplates()
        {
			return _itemMap.GetAllPotionTemplates();
        }

		public List<PotionItem> GetAllPotionItems()
		{
			return _itemMap.GetAllPotionItems();
		}

		public int GetAllPotionsCount()
		{
			return _itemMap.GetAllPotionsCount();
		}

		/// <summary>
		/// Can be used to get the default template for a potion made from 3 ingredients in any order
		/// TODO- if not found- instead of returning null, need to return default janky potion
		/// </summary>
		public PotionTemplate GetPotionTemplateForIngredientSet(Ingredient one, Ingredient two, Ingredient three)
		{
			return GetPotionTemplateForIngredientSet(new IngredientSet(one ,two, three));
		}

		public PotionItem TryMakePotion(IItem item1,IItem item2, IItem item3)
		{
			var ing1 = GetIngredientFromItem(item1);
			var ing2 = GetIngredientFromItem(item2);
			var ing3 = GetIngredientFromItem(item3);
			

			if (ing1 == null || ing2 == null || ing3 == null)
				return null;
			
			IngredientSet ingSet = new IngredientSet(ing1, ing2, ing3);
			var potionTemplate = GetPotionTemplateForIngredientSet(ingSet);
			var quality = 50; //Default if from a template
			//Avg potion quality by ingredient quality if runtime items
			if(item1 is  RuntimeItem q1 && item2 is RuntimeItem q2 && item3 is RuntimeItem q3)
			{
				quality = (int)((q1.GetQuality(false) + q2.GetQuality(false)  + q3.GetQuality(false) ) * 0.33f);
			}

			return new PotionItem(potionTemplate, quality);

		}

		public List<IItemBundle> GenerateNewShopItemBundles(int turnNumber)
		{
			List<IItemBundle> newItemBundles = new List<IItemBundle>();
			if (_shopItemSets == null || _shopItemSets.Count == 0)
				return newItemBundles;

			//Pick the next index cycled by turn#
			var itemSet = _shopItemSets[turnNumber % _shopItemSets.Count];
			AddItemSetToBundleByRange(itemSet, newItemBundles, 1, _maxShopItemGeneration, _turnNum);
			
			return newItemBundles;
		}

		public List<IItemBundle> GenerateNewPickupBundles(int turnNumber)
		{
			List<IItemBundle> newItemBundles = new List<IItemBundle>();
			if (_pickupItemSets == null || _pickupItemSets.Count == 0)
				return newItemBundles;

			//Pick the next index cycled by turn#
			var itemSet = _pickupItemSets[turnNumber % _pickupItemSets.Count];
			//put in _maxPickupItemGeneration twice to not be thetered to last min turn num hack (will just use that #)
			AddItemSetToBundleByRange(itemSet, newItemBundles, 1, _maxPickupItemGeneration, _maxPickupItemGeneration);
			
			return newItemBundles;
		}
		

		/// <summary>
		/// Gets any diagrams (potion/hybrid) the player should start with
		/// </summary>
		/// <returns></returns>
		public List<DiagramTemplate> GetStartingDiagrams()
		{
			if (_playerStartingItems == null)
				return new List<DiagramTemplate>();

			return _startingKnownDiagrams;
		}


		/************************************************************************************************************************/

		private static RuntimeItem CloneRuntimeItem(RuntimeItem itemToClone)
		{
			return CreateRuntimeItem(itemToClone.ItemTemplate, (int)itemToClone.GetQuality(false));
		}

		private static SeedItem CreateSeedItem(IItem item, int quality)
        {
	        return new SeedItem(item as IPlantableItem, quality);
        }
		
		private static YieldItem CreateYieldItem(IItem item, int quality)
		{
			return new YieldItem(item as IHybridItem, quality);
		}
		
		private static PotionItem CreatePotionItem(IItem item, int quality)
		{
			return new PotionItem(item as IPotion, quality);
		}
		
		private Ingredient GetIngredientFromBundle(IItemBundle itemBundle)
		{
			if (itemBundle == null)
				return null;

			return GetIngredientFromItem(itemBundle.ItemTemplate);
		}

		private Ingredient GetIngredientFromItem(IItem item)
		{
			if ( !(item is IIngredientItem ingredientItem))
				return null;

			return ingredientItem.IngredientType;
			
		}
	
		private static void AddItemSetToBundleByRange(ItemSets itemSet, List<IItemBundle> newItemBundles, int minItemsPerBundle, int maxItemsPerBundle, int turnNum)
		{
			//Generate some random stacks to the bundle in range
			var upperBound = Mathf.Min((int)(turnNum * 1.5f), maxItemsPerBundle);
			var lowerBound = Mathf.Max(upperBound / 2, minItemsPerBundle);
			foreach (RuntimeItem runtimeItem in itemSet.GetItems())
			{
				//Make a bundle for the item
				var newBundle = new SameQualityItemBundle(runtimeItem);
				//-1 because the bundle is new'd up with 1 item
				for (int i = 0; i < Random.Range(lowerBound, upperBound)-1; i++)
				{
					newBundle.AddItem(CloneRuntimeItem(runtimeItem));
				}

				//Add the bundle to the list
				newItemBundles.Add(newBundle);
			}
		}
		private void Subscribe(bool cond)
		{
			var tm = TurnManager.Instance;
			if (tm == null)
				return;

			if(cond)
            {
				tm.OnTurnEnd += CacheTurnNum;
            }
			else
            {
				tm.OnTurnEnd -= CacheTurnNum;
			}
		}

        private void CacheTurnNum(int turnNo)
        {
			_turnNum = turnNo;
        }
    }


	
}
