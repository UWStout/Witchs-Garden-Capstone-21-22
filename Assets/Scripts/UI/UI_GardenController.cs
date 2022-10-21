using System;
using System.Collections.Generic;
using CustomInput;
using Items;
using Player;
using Spells;
using UnityEngine;
using UnityEngine.Events;

namespace UI
{
	/// <summary>
	/// This class is responsible for setting up the sub UI items specific to the garden
	/// and delegating input to them
	/// </summary>
	public class UI_GardenController : MonoBehaviour
	{

		[SerializeField] private UI_ManaBar _manaBar;
		[SerializeField] private UI_SpellWheel _spellWheel;
		[SerializeField] private UI_Hotbar _hotbar;
		[SerializeField] private UI_HybridDiagramDisplayer _hybridDisplayer;

		public static event UnityAction<SpellData> SpellChangeEvent = delegate { };

		public bool IsHouseDisabled => _isHouseDisabled;
		private bool _isHouseDisabled = false;
		private bool _isSpellWheelOpen = false;
		private bool _isHybridOverlayOpen = false;
		// public bool GetSpellWheelOpen() => _isSpellWheelOpen; //We shouldnt need this getter? as this shud be at the top level-who would be asking for this? this is the controller -Steve


		/************************************************************************************************************************/
		public void InitGardenUI(PlayerController pc, IBundleContainer bundleContainer)
		{
			//Init UI Elements for Listening:
			pc.PlayerMana.OnValueChanged += _manaBar.SetManaBarFill;
			_hotbar.SetItemBundleContainer(bundleContainer);
			_hybridDisplayer.Init(false);
			//Debug.Log($"Registered GardenUI manaBar");
		}

		public void DestroyGardenUI(PlayerController pc)
		{
			if (pc == null)
				return;

			//Unregister UI element Listeners:
			pc.PlayerMana.OnValueChanged -= _manaBar.SetManaBarFill;
		}

		public SpellData GetSelectedSpell()
		{
			return _spellWheel.GetSelectedSpell();
		}

		public IItem GetSelectedItem()
		{
			return _hotbar.GetSelectedItem();
		}

		public void UpdatePlayerSpells(Dictionary<Spell, bool> spellUnlockDict)
		{
			_spellWheel.AssignSpellsToSlots(spellUnlockDict);
		}

		public void OpenSpellWheel()
		{
			_isSpellWheelOpen = true;
			if (_spellWheel != null && !_isHouseDisabled)
			{
				_spellWheel.SetOpen(_isSpellWheelOpen);
				PlayerActionHandler.Instance.PreventRotation = true;
			}
		}

		public void CloseSpellWheel()
		{
			_isSpellWheelOpen = false;
			if (_spellWheel != null)
			{
				_spellWheel.SetOpen(_isSpellWheelOpen);
				PlayerActionHandler.Instance.PreventRotation = false;
			}
		}

		public void OpenHybridDisplayer(bool doOpen, bool canNavigateMode = false)
		{
			_isHybridOverlayOpen = doOpen;
			if (_hybridDisplayer != null)
			{
				_hybridDisplayer.SetShow(_isHybridOverlayOpen, canNavigateMode);
			}
		}

		/************************************************************************/
		public void OnScrollWheelIncremented(int val)
		{
			if (!_isHouseDisabled)
            {
				if (_spellWheel.IsOpen)
				{
					_spellWheel.ScrollSpellWheel(val);
					SpellChangeEvent.Invoke(GetSelectedSpell());
					UpdateHybridDisplayerShow();
				}
				else if (_hotbar.IsShowing)
				{
					_hotbar.ScrollHotBar(val);
				}
			}
		}

		public void OnScrollWheelSet(int val)
		{
			if (!_isHouseDisabled)
			{
				if (_spellWheel.IsOpen)
				{
					_spellWheel.SetSpellWheel(val);
					SpellChangeEvent.Invoke(GetSelectedSpell());
					UpdateHybridDisplayerShow();
				}
				else if (_hotbar.IsShowing)
				{
					_hotbar.SetHotBar(val);
				}
			}
		}

		/************************************************************************/

		public void OnSecondaryScrollIncremented(int val)
        {
			if (_isHybridOverlayOpen && !_isHouseDisabled)
			{
				_hybridDisplayer.ScrollDiagram(val);
			}
		}

		public void OnSecondaryScrollToggleIncremented(int val)
		{
			if (_isHybridOverlayOpen && !_isHouseDisabled)
			{
				_hybridDisplayer.SetShowSetting(val > 0f);
			}
		}

		private void UpdateHybridDisplayerShow()
		{
			var spellID = GetSelectedSpell().SpellID;
			if (spellID == eSpellID.PLANT || spellID == eSpellID.HYBRID)
				OpenHybridDisplayer(true, true);
			else
				OpenHybridDisplayer(false);
		}

		public void IncrementHotbarPage(int val)
		{
			if (_hotbar.IsShowing && !_isHouseDisabled)
            {
				if (val == 1)
				{
					_hotbar.ShufflePageRight();
				}
				else
				{
					_hotbar.ShufflePageLeft();
				}
			}
		}

		public void SetHouseDisabled(bool doDisable)
        {
			_isHouseDisabled = doDisable;
        }
	}
}
