/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using CustomInput;
using Player;
using Research;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchItemListDisplay : MonoBehaviour
	{
		[Tooltip("Hard coded the # of slots to match the # of items in a chapter")]
		[SerializeField] private UI_ResearchDetails _detailDisplay;
		[SerializeField] private UI_ResearchSlot[] _researchSlots;
		
		[Header("Display Settings")]
		[SerializeField] private GridLayoutGroup _gridLayout;
		[SerializeField] private Vector2 _2x2Spacing = new Vector2(45, 10);
		[SerializeField] private Vector2 _3x3Spacing = new Vector2(25, 10);
		
		private UnlockedProgressableResearchItem _currentMajorResearch;
		private UnlockedProgressableResearchItem _currentHoverResearch;
		//-1 means unselected
		private int _currentResearchIndex;
		//The slot we are previewing on the right side of the page
		private UI_ResearchSlot _currentHoverSlot;
		private UI_ResearchSlot _currentSelectedSlot;

		private int _activeSlotIndex = 0;
		private int _elementsPerRow = 3;

		/************************************************************************************************************************/
		public void Init(Action<UnlockedProgressableResearchItem> onResearchSelected)
		{
			for (int i = 0; i < _researchSlots.Length; i++)
			{
				//Add a OnHover listener to update the preview display
				_researchSlots[i].Init(SlotSelected, SetHoverPreviewSlot,ResetDetailDisplayPreview);
			}
			
			//The detail display has the Button for changing which research the player is specing into
			_detailDisplay.Init(onResearchSelected);
			
		}

        private void OnEnable()
        {
			RegisterForControllerInput(true);
		}

        private void OnDisable()
        {
			RegisterForControllerInput(false);
		}

        /************************************************************************************************************************/
        public void SetTryUnlockChapterCallback(OnTryUnlockChapter cb, CanPlayerAffordGold canPlayerAffordGold, Action<ResearchChapterTemplate> forceClickNewTab)
		{
			_detailDisplay.SetTryUnlockChapterCallback(cb, canPlayerAffordGold, forceClickNewTab);
		}
		
		/// <summary>
		/// Updates the current slots with new ch info
		/// </summary>
		/// <param name="currChapter"></param>
		/// <param name="currentResearchIndex">The research index for the current chapter</param>
		/// <param name="currentResearch">the global research the system currently has selected (could be from other chapters)</param>
		/// <param name="isUnlocked"></param>
		public void UpdateSlots(UnlockedChapter currChapter, int currentResearchIndex, UnlockedProgressableResearchItem currentResearch)
		{
			UpdateCachedVars(currentResearchIndex, currentResearch);
			var chItems = currChapter.ResearchItems;
			int itemCount = chItems.Count;
			for (int i = 0; i < _researchSlots.Length; i++)
			{
				var slot= _researchSlots[i];
				slot.SetSlotAsPreviewResearch(false);
				slot.SetSlotAsCurrentResearch(i == _currentResearchIndex);
				bool exists = i < itemCount;
				slot.gameObject.SetActive(exists);
				if(exists)
					slot.AssignResearchItem(chItems?[i]);
			}
			UpdateDetailDisplayUnlocked();
			DisplayLastKnownMajorResearch();
			UpdateGridLayoutSpacing(itemCount);
		}
		
		public void UpdateSlots(ResearchChUnlockInfo currChapter, int currentResearchIndex, UnlockedProgressableResearchItem currentResearch)
		{
			UpdateCachedVars(currentResearchIndex, currentResearch);
			var chItems = currChapter.ChapterTemplate.AvailableResearchItems;
			_currentHoverResearch = null;
			int itemCount = chItems.Count;
			for (int i = 0; i < _researchSlots.Length; i++)
			{
				var slot= _researchSlots[i];
				slot.SetSlotAsPreviewResearch(false);
				slot.SetSlotAsCurrentResearch(i == _currentResearchIndex);
				bool exists = i < itemCount;
				slot.gameObject.SetActive(exists);
				if(exists)
					slot.AssignResearchItemLocked(chItems?[i]);
			}
			UpdateDetailDisplayLocked(currChapter);
			UpdateGridLayoutSpacing(itemCount);
		}
		
		/************************************************************************************************************************/
		private void UpdateCachedVars(int currentResearchIndex, UnlockedProgressableResearchItem currentResearch)
		{
			//We are assuming we hard coded the # of slots to match the # of items in a chapter
			_currentMajorResearch = currentResearch;
			_currentResearchIndex = currentResearchIndex;
			_currentSelectedSlot = _currentResearchIndex == -1 ? null : _researchSlots[_currentResearchIndex];
			//Debug.Log($"UpdateSlots :CH=[{currChapter}] currentResearchIndex=<color=red>{currentResearchIndex}</color> therefore _currentSelectedSlot={_currentSelectedSlot}");
			_currentHoverResearch = null;
		}
		
		private void UpdateDetailDisplayUnlocked()
		{
			var displaySlot = _currentResearchIndex == -1 ? null : _researchSlots[_currentResearchIndex];
			_detailDisplay.DisplayInfo(displaySlot?.GetResearchItem());
		}

		private void UpdateDetailDisplayLocked(ResearchChUnlockInfo researchChUnlockInfo)
		{
			_detailDisplay.DisplayInfo(researchChUnlockInfo);
		}

		private void SetHoverPreviewSlot(UI_ResearchSlot slot)
		{
			_currentHoverSlot = slot;
			_currentHoverResearch = _currentHoverSlot.GetResearchItem();
			_detailDisplay.DisplayInfo(_currentHoverResearch);
		}
		
		private void ResetDetailDisplayPreview(UI_ResearchSlot hoverExitSlot)
		{
			//If we stopped hovering over the slot we were hovering over.. cancel the preview
			if (hoverExitSlot.GetResearchItem() == _currentHoverResearch)
			{
				CancelHoverPreview();
				return;
			}
			//If we arent researching anything.. Try setting it to the major Research (clear's if null)
			if (_currentResearchIndex == -1)
			{
				DisplayLastKnownMajorResearch();
				return;
			}
		}

		private void CancelHoverPreview()
		{
			_currentHoverResearch = null;
			//Will display either the last selected slot, or major known research
			var displayResearch = _currentSelectedSlot == null ? _currentMajorResearch : _currentSelectedSlot.GetResearchItem();
			_detailDisplay.DisplayInfo(displayResearch);
			//Debug.Log($"---CancelHoverPreview---");
		}

		private void DisplayLastKnownMajorResearch()
		{
			_detailDisplay.DisplayInfo(_currentMajorResearch);
			//Debug.Log($"---DisplayLastKnownMajorResearch---");
		}

		private void DisplayCurrentSelectedSlot()
		{
			_detailDisplay.DisplayInfo(_currentSelectedSlot.GetResearchItem());
			//Debug.Log($"---DisplayCurrentSelectedSlot---");
		}

		private void SlotSelected(UI_ResearchSlot clickedSlot)
		{
			_currentSelectedSlot = clickedSlot;
			//Debug.Log($"SET SLOT SELECTED=> {_currentSelectedSlot.gameObject.name}");
			for (int i = 0; i < _researchSlots.Length; i++)
			{
				var slot = _researchSlots[i];
				bool isSelected = slot == _currentSelectedSlot;
				slot.SetSlotAsPreviewResearch(isSelected);
				if (isSelected)
				{
					_currentResearchIndex = i;
				}
				//Debug.Log($"==SlotSelected==> {slot.gameObject.name} = {isSelected} ..[_currentResearchIndex={_currentResearchIndex}]");
			}
			_detailDisplay.DisplayInfo(_currentSelectedSlot.GetResearchItem());
			
		}

		private void UpdateGridLayoutSpacing(int itemCount)
		{
			_gridLayout.spacing = itemCount > 4 ? _3x3Spacing : _2x2Spacing;
			_elementsPerRow = itemCount > 4 ? 3 : 2;
		}
		

		//****************** CONTROLLER SUPPORT **************************\\
		private void RegisterForControllerInput(bool cond)
        {
			if (cond)
			{
				// ARROW KEYS
				InputReader.NavigateEvent += ControllerSetSlotHighlighted;
				//Select is ENTER
				InputReader.SelectEvent += ControllerToggleSlotSelected;
			}
			else
			{
				InputReader.NavigateEvent -= ControllerSetSlotHighlighted;
				InputReader.SelectEvent -= ControllerToggleSlotSelected;
			}

		}

		/// <param name="inputAxis"> (-1,0) is left, (0,1) is up etc </param>
        private void ControllerSetSlotHighlighted(Vector2 inputAxis)
        {
			//Debug.Log($"[ControllerSetSlotHighlighted] = {inputAxis} ");
			int targetSlotIndex = _activeSlotIndex;

			targetSlotIndex += (int)inputAxis.x;
			targetSlotIndex += (int)inputAxis.y * _elementsPerRow;

			ControllerSetSlotHighlighted(targetSlotIndex);

		}

		private void ControllerSetSlotHighlighted(int slotIndex)
        {
			//Debug.Log($"[ControllerSetSlotHighlighted] = {slotIndex} ");
			if (slotIndex < 0 || slotIndex >= _researchSlots.Length)
				return;
			var slot = _researchSlots[slotIndex];
			if (slot.IsLockedDisplay())
				return;
			if (_currentHoverSlot)
			{
				_currentHoverSlot.OnControllerExit();
				ResetDetailDisplayPreview(_currentHoverSlot);
			}
			SetHoverPreviewSlot(slot);
			slot.OnControllerHover();
			//Controller hack wont work for if u use mouse too:
			_activeSlotIndex = slotIndex;

			ControllerToggleSlotSelected();
		}
		
		private void ControllerToggleSlotSelected()
		{
			//Debug.Log($"[ControllerToggleSlotSelected] ! ");
			//This might just be the same thing as hitting SHIFT which is Seleting, of maybe vice versa
			if (_currentHoverSlot != null)
			{
				if (_currentHoverSlot.IsLockedDisplay())
					return;
				SlotSelected(_currentHoverSlot);
			}
		}

	}

}