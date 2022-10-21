using System;
using System.Collections;
using System.Collections.Generic;
using Player;
using UnityEngine;
using UnityEngine.UI;
using Research;
using CustomInput;

namespace UI
{
    public class UI_ResearchSelectionController : UI_MenuContent
    {
        [SerializeField] private UI_ResearchTabs _tabs;
        [SerializeField] private UI_ResearchChapterHeader _chapterInfoDisplay;
        [SerializeField] private UI_ResearchItemListDisplay _slotDisplay;
        //[SerializeField] private UI_ResearchCurrentInfo _currentInfoDisplay;

        private IReadOnlyList<UnlockedChapter> _unlockedChapters;
        private UnlockedChapter _currentChapter;
        private int _currentChapterIndex;
		private UnlockedProgressableResearchItem _currentResearch;
		//-1 means unselected
		private int _currentResearchIndex;
		/************************************************************************************************************************/
		public void Init(Action<UnlockedProgressableResearchItem> onResearchSelected)
		{
			//pass along the callback for when a slot selects a new item to research
			_slotDisplay.Init(onResearchSelected);
			_tabs.Init(OnUnlockedTabClick, OnLockedTabClick);
		}

		public void SetTryUnlockChapterCallback(OnTryUnlockChapter cb,  CanPlayerAffordGold canPlayerAffordGold)
		{
			_slotDisplay.SetTryUnlockChapterCallback(cb, canPlayerAffordGold, UnlockedChapterFromBuyButtonHack);
		}

		public void RefreshChapterDisplay(IReadOnlyList<UnlockedChapter> unlockedChapters, UnlockedProgressableResearchItem currSelectedResearchItem)
        {
	        //Debug.Log($"==Major Refresh!==");
            _unlockedChapters = unlockedChapters;
            _currentResearch = currSelectedResearchItem;

            //Figure out which chapter the currently selected research belongs to
            UpdateStateInfo(unlockedChapters, currSelectedResearchItem);
			//Display the right tabs
			UpdateTabs(_unlockedChapters, _currentChapterIndex);
			//Display the chapters Items              //Is TRUE correct???-how am i gauranteeing this?
			UpdateSlotsAndFlavorUnlocked(_currentChapter, _currentResearchIndex, _currentResearch);
			
			//_currentInfoDisplay.ShowChapterDetails(currSelectedResearchItem, GlobalResearchModifiers.GetResearchRate());
        }

        /************************************************************************************************************************/
	    /// <summary>
	    /// Because this system was designed by being binded to update the display when new researchs are unlocked (not in this menu)
	    /// while always opening the book to the currently selected research (tab/page). When adding support to "unlock chapters mid -menu"
	    /// we have to undo the switch from the binding to stay on the current page we just unlocked
	    /// </summary>
	    /// <param name="chapterTemplate">The chapter that was just unlocked via the book</param>
        private void UnlockedChapterFromBuyButtonHack(ResearchChapterTemplate chapterTemplate)
        {
	        _tabs.TabSelectedFromNewlyUnlockedResearchHack(chapterTemplate);
        }
        private void OnLockedTabClick(ResearchChUnlockInfo chUnlockInfo, int chIndex)
        {
	        //Debug.Log($"Heard <color=orange>UnlockedTabClick</color> callback: {chIndex}");
	        //The player clicked a lock chapter and wants more info about how to obtain it
	        UpdateTabs(_unlockedChapters, chIndex);
	        //Set a temp display to explore new options to research
	        UpdateSlotsAndFlavorLocked(chUnlockInfo, -1, _currentResearch);
        }
        private void OnUnlockedTabClick(UnlockedChapter chFromTab, int chIndex)
        {
	        //Debug.Log($"Heard <color=green>OnUnlockedTabClick</color> callback: {chIndex}");
	        if (chFromTab == _currentChapter)
	        {
		        UpdateSlotsAndFlavorUnlocked(_currentChapter, _currentResearchIndex, _currentResearch);
		        UpdateTabs(_unlockedChapters, _currentChapterIndex);
		        //Debug.Log($"<color=purple>==Clicked Current Chapter</color>");
		        return;
	        }

	        UpdateTabs(_unlockedChapters, chIndex);
	        //Set a temp display to explore new options to research
	        UpdateSlotsAndFlavorUnlocked(chFromTab, -1, _currentResearch);
        }
        private void UpdateStateInfo(IReadOnlyList<UnlockedChapter> chapters, UnlockedProgressableResearchItem currSelectedResearchItem)
		{
			if (_currentResearch == null)
			{
				if (_currentChapter == null)
				{
					_currentChapterIndex = 0;
					_currentChapter = chapters[0];
				}
				//Unselected:
				_currentResearchIndex = -1;
				return;
			}
			FindCurrentInfoIndicies(currSelectedResearchItem);
		}
		private void FindCurrentInfoIndicies(UnlockedProgressableResearchItem currSelectedResearchItem)
		{
			for (int i = 0; i < _unlockedChapters.Count; i++)
			{
				var ch = _unlockedChapters[i];
				for (int j = 0; j < ch.ResearchItems.Count; j++)
				{
					var research = ch.ResearchItems[j];
					if (research != currSelectedResearchItem)
						continue;
					_currentChapter = ch;
					_currentChapterIndex = i;
					_currentResearchIndex = j;
				}
			}
		}
		private void UpdateSlotsAndFlavorUnlocked(UnlockedChapter ch, int rsrchIndex, UnlockedProgressableResearchItem currMajorRsrch)
		{
			_slotDisplay.UpdateSlots(ch, rsrchIndex, currMajorRsrch);
			_chapterInfoDisplay.ShowChapterDetails(ch.ChapterTemplate, true);
		}
		private void UpdateSlotsAndFlavorLocked(ResearchChUnlockInfo ch, int rsrchIndex, UnlockedProgressableResearchItem currMajorRsrch)
		{
			_slotDisplay.UpdateSlots(ch, rsrchIndex, currMajorRsrch);
			_chapterInfoDisplay.ShowChapterDetails(ch.ChapterTemplate, false);
		}
		private void UpdateTabs(IReadOnlyList<UnlockedChapter> chapters, int currChIndex)
		{
			_tabs.UpdateDisplay(chapters, currChIndex);
		}


	}
}