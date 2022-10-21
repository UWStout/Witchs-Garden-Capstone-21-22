/*
* AUTHOR : Steve Datz
* DESC : 
*/
using System;
using System.Collections.Generic;
using Helpers;
using Items;
using TurnManaging;
using UnityEngine;
using SaveLoad;
using Tutorial;

namespace Research
{
    public class ResearchSystem : InstancedMonoBehaviour<ResearchSystem>, ISaveable, ILoadable
    {
        //Shown in the UI (becomes viewable)
        public static event Action<UnlockedChapter> OnResearchUnlocked;
        public static event Action<PotionItem, Action<UnlockedProgressableResearchItem>> OnTryForceFinishPotionResearch;
        // gains progress (UIUpdate) (if 100% gets triggered in payloadHandler)
        public static event Action<UnlockedProgressableResearchItem> OnResearchProgressed;
        //gross as a hell solution for hacking in a save/load system and getting the info to the UI
        public static event Action<UnlockedProgressableResearchItem> SuperGrossLoadHack;

        public IReadOnlyList<ResearchChapterTemplate> GetStartingChForSaveLoad() => _startingChapters;
        [SerializeField] List<ResearchChapterTemplate> _startingChapters;
        [SerializeField] ResearchUnlockables _unlockableChapters;

        private readonly List<string> _unlockedChapters = new List<string>();
        private UnlockedProgressableResearchItem _currentlySelectedResearch;

        public ResearchProgress ResearchProgress { get; private set; } = new ResearchProgress();

        //a hack for syncing with loading from a save
        private int _syncedTurnNum = 0;


        [SerializeField] private TutorialTrigger _tutorialTrigger;

        /************************************************************************************************************************/

        private void Start()
        {
            Subscribe(true);
            RegisterTo();
        }

        private void OnDestroy()
        {
            Subscribe(false);
            UnRegisterTo();
        }

        /************************************************************************************************************************/

        /// <summary>
        /// Set the current research the player wants to allocate points into
        /// </summary>
        /// <param name="researchItem"></param>
        public void SetSelectedResearch(UnlockedProgressableResearchItem researchItem)
        {
            // if (researchItem == null)
            //     Debug.Log($"The Research Sys selected: <color=red>NULL</color>");
            // else
            //     Debug.Log($"The Research Sys selected: {researchItem.ResearchItemTemplate.ResearchName}");

            _currentlySelectedResearch = researchItem;
            //Prevent double handing out rewards if controller somehow allows them to select finished items
            if(_currentlySelectedResearch!= null && _currentlySelectedResearch.Progress >=100)
            {
                _currentlySelectedResearch = null;
            }
        }

        public UnlockedProgressableResearchItem GetSelectedResearch()
        {
            return _currentlySelectedResearch;
        }

        public int GetUnlockedChapterCount()
        {
            return _unlockedChapters.Count;
        }

        /// <summary>
        /// Unlocks a new chapter for the player to research
        /// </summary>
        /// <param name="ch">template</param>
        public void UnlockChapter(ResearchChapterTemplate ch)
        {
            //Debug.Log($"The Research Sys UnlockChapter: {ch}");
            LoadChapter(ch);
        }

        /// <summary>
        /// Used by the UI to figure out what the unlock conditions are to display to the player
        /// </summary>
        /// <param name="chapterNumArrIndex"> Array index (pre -1)</param>
        /// <returns></returns>
        public ResearchChUnlockInfo GetUnlockInfoForChapter(int chapterNumArrIndex)
        {
            return _unlockableChapters.GetUnlockInfoForChapter(chapterNumArrIndex);
        }
       
        public void CheckIfPotionFinishesResearchEarly(PotionItem potionResult)
        {
            OnTryForceFinishPotionResearch?.Invoke(potionResult, ForceCompleteResearch);
        }

        /************************************************************************************************************************/

        /// <summary>
        /// Creates a new runtime chapter from a starting template
        /// Does not allow duplicates based on chapter names
        /// </summary>
        /// <param name="ch">template</param>
        private void LoadChapter(ResearchChapterTemplate ch)
        {
            if (ch == null || _unlockedChapters.Contains(ch.ChapterName))
                return;
            //Debug.Log($"The Research Sys LoadChapter: {ch.ChapterName}");
            _unlockedChapters.Add(ch.ChapterName);
            UnlockedChapter chapter = new UnlockedChapter(ch);
            OnResearchUnlocked?.Invoke(chapter);
            ResearchProgress.ChapterUnlocked(chapter);
            
            //If unlocked Chapter 2, run tutorial trigger
            if (ch.ChapterIDArr == 1)
                _tutorialTrigger.Trigger();
        }

        /// <summary>
        /// Adds progress to the active item being research if one is selected
        /// </summary>
        /// <param name="turn"></param>
        private void OnTurnEnd(int turn)
        {
            var lastTurn = _syncedTurnNum;
            _syncedTurnNum = turn;
            if (turn != lastTurn+1)
            {
                //Weird hack to not adv a curr research when loading from save data on Init
                return;
            }
            if (_currentlySelectedResearch == null)
                return;

            //Advance currently selected research
            _currentlySelectedResearch.IncreaseProgress(GlobalResearchModifiers.GetResearchRate());
            OnResearchAdv(_currentlySelectedResearch);
        }

        private void ForceCompleteResearch(UnlockedProgressableResearchItem researchItem)
        {
            //This works because we dont care if they had 20,or 50 progress, increasing by 100 will complete
            SetResearchProgressFromZero(researchItem, 100);
        }

        /// <summary>
        /// Assumes the current item has zero progress, and increases it to set amnt,
        /// intended to be used from save/loading
        /// </summary>
        private void SetResearchProgressFromZero(UnlockedProgressableResearchItem researchItem, float prog)
        {
            researchItem.IncreaseProgress(prog);
            OnResearchAdv(researchItem);
        }

        private void OnResearchAdv(UnlockedProgressableResearchItem researchItem)
        {
            OnResearchProgressed?.Invoke(researchItem);
            ResearchProgress.ResearchGainedProgress(researchItem);
        }



        /// <summary>
        /// Sub to the any events
        /// </summary>
        /// <param name="cond"></param>
		private void Subscribe(bool cond)
        {
            //Application is quitting so singleton is null
            var tm = TurnManager.Instance;
            if (tm == null)
                return;

            if (cond)
            {
                tm.OnTurnEnd += OnTurnEnd;
            }
            else
            {
                tm.OnTurnEnd -= OnTurnEnd;
            }
        }

        /************************************************************************************************************************/
        // ---------- SAVING AND LOADING 
        /************************************************************************************************************************/

        //Make sure u call this on Start (cuz shared instanced mono's would be gross?-and I keep forgetting)
        public void RegisterTo()
        {
            RegisteredItems.Register(this);
        }

        //Make sure u call this on Destroy (cuz shared instanced mono's would be gross?-and I keep forgetting)
        public void UnRegisterTo()
        {
            RegisteredItems.Unregister(this);
        }

        public void Save(GameData data)
        {
            data.KnownResearch = SaveableResearchChapter.GenerateSaveList(ResearchProgress.UnlockedChapters);
            data.CurrentResearch = _currentlySelectedResearch != null ? _currentlySelectedResearch.ResearchItemTemplate.ResearchName : "None";
        }

        public void Load(GameData data)
        {
            string currResearchName = data.CurrentResearch;
            bool tryApplyCurrentResearch = currResearchName != "None";
            
            foreach (var ch in SaveableResearchChapter.GenerateLoadList(data.KnownResearch))
            {
                _unlockedChapters.Add(ch.ChapterTemplate.ChapterName);
                ResearchProgress.ChapterUnlocked(ch);
                OnResearchUnlocked?.Invoke(ch);
                
                //Try re-apply curr research selection
                foreach (var research in ch.ResearchItems)
                {
                    //Will readd to Progress and invoke rewards if full
                    OnResearchAdv(research);
                    //Tries to reselect the last known research if there was one
                    if (tryApplyCurrentResearch && currResearchName == research.ResearchItemTemplate.ResearchName )
                    {
                        _currentlySelectedResearch = research;
                        SuperGrossLoadHack?.Invoke(_currentlySelectedResearch);
                        tryApplyCurrentResearch = false;
                        //Debug.Log($"--<color=green>FOUND</color> AND RESELECTED RESEARCH {currResearchName}");
                    }
                }

            }
        }
    }
}
