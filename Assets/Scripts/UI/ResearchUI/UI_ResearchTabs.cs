using System;
using Research;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CustomInput;

namespace UI
{
    public class UI_ResearchTabs : MonoBehaviour
    {
        [SerializeField] private UI_ResearchChapterTab[] _tabs;
        //private IReadOnlyList<UnlockedChapter> _unlockedChapters;

        private UI_ResearchChapterTab _currentTab;
        private Action<UnlockedChapter, int> _onUnlockedChapterChanged;
        private Action<ResearchChUnlockInfo, int> _onLockedChapterChanged;

        private int _currentChTabIndex;
        /************************************************************************************************************************/
        public void Init(Action<UnlockedChapter, int> onChChangeUnlocked, Action<ResearchChUnlockInfo, int> onChChangeLocked)
        {
            _onUnlockedChapterChanged = onChChangeUnlocked;
            _onLockedChapterChanged = onChChangeLocked;
            var rsys = ResearchSystem.Instance;
            for (int i = 0; i < _tabs.Length; i++)
            {
                var tab = _tabs[i];
                tab.SetOnClick(TabSelected, i);
                //Start all chapters off
                tab.SetChapterUnlockInfo(rsys.GetUnlockInfoForChapter(i), i);
                tab.SetSelected(false);
            }
            _currentChTabIndex = 0;
            RegisterForControllerInput(true);
        }
        private void OnDestroy()
        {
            RegisterForControllerInput(false);
        }
        /************************************************************************************************************************/

        /// slightly verbose passing back in the curr ch index, and ALSO manually turning it on/off under TabSelected, but its possible for
        /// the book to open, and the controller to tell you what the current tab shud be, so not from direct click
        public void UpdateDisplay(IReadOnlyList<UnlockedChapter> unlockedChapters, int currentChapterIndex)
        {
            //_unlockedChapters = unlockedChapters;
            
            //Update the tabs that have been unlocked
            foreach (var unlockedChapter in unlockedChapters)
            {
                int chId = unlockedChapter.ChapterTemplate.ChapterIDArr;
                _tabs[chId].SetChapterAsUnlocked(unlockedChapter);
                _tabs[chId].SetSelected(chId==currentChapterIndex);
            }

        }

        public void TabSelectedFromNewlyUnlockedResearchHack(ResearchChapterTemplate chTemplate)
        {
            var chId = chTemplate.ChapterIDArr;
            _tabs[chId].SetSelected(true);
            _tabs[chId].ManuallyClickButtonHack();
        }
        
        /************************************************************************************************************************/

        private void TabSelected(UI_ResearchChapterTab tab, int chIndex)
        {
            if (_currentTab != null)
            {
                _currentTab.SetSelected(false);
            }

            _currentTab = tab;

            if (!_currentTab) 
                return;

            var tabCh = _currentTab.GetChapter();
            bool isUnlocked = tabCh != null;

            _currentTab.SetSelected(true);
            if(isUnlocked)
            {
                _onUnlockedChapterChanged?.Invoke(tabCh, chIndex);
            }
            else
            {
                _onLockedChapterChanged?.Invoke(_currentTab.GetChapterUnlockInfo(), chIndex);
            }
            _currentChTabIndex = chIndex;
        }

        private void ControllerSelctTab(int leftRight)
        {
            var chIndex = _currentChTabIndex + leftRight;
            if (chIndex < 0 || chIndex >= _tabs.Length)
                return;

            TabSelected(_tabs[chIndex], chIndex);
        }

        public void RegisterForControllerInput(bool cond)
        {
            //Click a Tab (R1/L1 , Q/E)
            if (cond)
            {
                InputReader.ChangePageEvent += ControllerSelctTab; 
            }
            else
            {
                InputReader.ChangePageEvent -= ControllerSelctTab;
            }
        }

    }
}
