using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Research;
using Items;
using Diagrams;

namespace UI
{
    public class UI_ResearchMonitor : MonoBehaviour
    {

        [SerializeField] private UI_ResearchSelectionController _display;
        [SerializeField] private UI_PermaController _permaController;

        private readonly List<UnlockedChapter> _currentChapters = new List<UnlockedChapter>();
        private UnlockedProgressableResearchItem _currSelectedResearchItem;

        /************************************************************************************************************************/

        private void Start()
        {
            Subscribe(true);
            _display.Init(NewResearchSelected);
        }

        private void OnDestroy()
        {
            Subscribe(false);
        }
        /************************************************************************************************************************/

        public IReadOnlyList<UnlockedChapter> GetChaptersTest() => _currentChapters;

        public void NewResearchSelectedTest(UnlockedProgressableResearchItem researchItem)
        {
            NewResearchSelected(researchItem);
        }

        /************************************************************************************************************************/

        //pass this function into a subSlot for an "ONCLICK()" callback
        //could also pass back the subSlot button and ask for subSlot.CurrentItem
        private void NewResearchSelected(UnlockedProgressableResearchItem researchItem)
        {
            //Debug.Log($"--<color=white> NewResearchSelected from UI </color>--");
            _currSelectedResearchItem = researchItem;
            ResearchSystem.Instance.SetSelectedResearch(_currSelectedResearchItem);
            //This will confirm a new chapter/index for research
            RefreshUI();
        }

        private void Subscribe(bool cond)
        {
            //Application is quitting so singleton is null
            if (cond)
            {
                ResearchSystem.OnResearchProgressed += ResearchGainedProgress;
                ResearchSystem.OnResearchUnlocked += NewChapterUnlocked;
                ResearchSystem.OnTryForceFinishPotionResearch += TryFinishPotion;
                ResearchSystem.SuperGrossLoadHack += LoadHack;
            }
            else
            {
                ResearchSystem.OnResearchProgressed -= ResearchGainedProgress;
                ResearchSystem.OnResearchUnlocked -= NewChapterUnlocked;
                ResearchSystem.OnTryForceFinishPotionResearch -= TryFinishPotion;
                ResearchSystem.SuperGrossLoadHack -= LoadHack;
            }
        }

        private void LoadHack(UnlockedProgressableResearchItem rsrch)
        {
            NewResearchSelected(rsrch);
        }

        //THIS IS GROSS - steve will cleanup later
        private void TryFinishPotion(PotionItem potion, Action<UnlockedProgressableResearchItem> actionToFinish)
        {
            var potionCH = _currentChapters[0];
            foreach (var rsrch in potionCH.ResearchItems)
            {
                var template = rsrch.ResearchItemTemplate;
                if(template is PotionDiagram potionDiag)
                {
                    if (potionDiag.Diagram is PotionComboDiagTemplate pDiag)
                    {
                        var ingtypes1 = pDiag.PotionTemplate.IngredientTypes;
                        var ingTypes2 = potion.IngredientTypes;
                        if(ingtypes1.Equals(ingTypes2))
                        {
                            actionToFinish(rsrch);
                             return;
                        }
    
                    }
                }
            }
        }

        //Im not sure where we would call this from, PlayerController.HybridSpell.Cast() onSuccess?
        private void TryFinishHybrid(HybridComboDiagTemplate diag, Action<UnlockedProgressableResearchItem> actionToFinish)
        {
            var potionCH = _currentChapters[0];
            foreach (var rsrch in potionCH.ResearchItems)
            {
                var template = rsrch.ResearchItemTemplate;
                if (template is HybridDiagram hybridDiag)
                {
                    if (hybridDiag.Diagram is HybridComboDiagTemplate hDiag)
                    {
                        if (hDiag == diag)
                        {
                            actionToFinish(rsrch);
                            return;
                        }
                    }
                }
            }
        }

        private void NewChapterUnlocked(UnlockedChapter newChapter)
        {
            _currentChapters.Add(newChapter);

            if (newChapter.ChapterTemplate.ChapterIDArr != 0)
                _permaController.AddPopupMessage("<b>NEW RESEARCH CHAPTER UNLOCKED</b>\n " + newChapter.ChapterTemplate.ChapterName + "\n\n" + newChapter.ChapterTemplate.ChapterFlavorTxt, false);
            
            //Debug.Log($"The Research Monitor LoadChapter: <color=orange>{newChapter.ChapterTemplate.ChapterName}</color>");
            RefreshUI();
        }

        private void ResearchGainedProgress(UnlockedProgressableResearchItem researchItem)
        {
           // Debug.Log($"Research gained progress: <color=orange>{_currSelectedResearchItem.ResearchItemTemplate.ResearchName}</color> Progess: <color=green>{_currSelectedResearchItem.Progress}</color>");

            if ((int)researchItem.Progress == 100 && _currSelectedResearchItem == researchItem)
            {
                _permaController.AddPopupMessageWithImage("<b>NEW RESEARCH COMPLETE</b>\n " + researchItem.ResearchItemTemplate.ResearchName + "\n\n" + researchItem.ResearchItemTemplate.EasyUIDescription, researchItem.ResearchItemTemplate.Icon);
                
                //Unselect the item if its been completed
                NewResearchSelected(null);
            }
            //Update the progress display, and or unselect the selected item
            RefreshUI();
        }

        private void RefreshUI()
        {
            //Something changed, so tell the UI to update
            _display.RefreshChapterDisplay(_currentChapters, _currSelectedResearchItem);
        }
    }
}