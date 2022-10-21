
using System.Collections.Generic;


namespace Research
{

    public class ResearchProgress 
    {
        //FOR SAVING
        public IReadOnlyList<UnlockedChapter> UnlockedChapters => _unlockedChapters;
        private readonly List<UnlockedChapter> _unlockedChapters = new List<UnlockedChapter>();
        //FOR SAVING and STAT display
        public IReadOnlyList<UnlockedProgressableResearchItem> ResearchProgresses => _researchProgresses;
        private readonly List<UnlockedProgressableResearchItem> _researchProgresses = new List<UnlockedProgressableResearchItem>();


        /************************************************************************************************************************/

        public void ChapterUnlocked(UnlockedChapter newCh)
        {
            if (_unlockedChapters.Contains(newCh))
                return;

            _unlockedChapters.Add(newCh);
        }

        public void ResearchGainedProgress(UnlockedProgressableResearchItem rItem)
        {
            if (_researchProgresses.Contains(rItem))
                return;

            //If something gained progress, that we dont already have in our list, we want to save it,
            //we dont care ab individual progress here, that is tracked by reference
            _researchProgresses.Add(rItem);
        }

        /************************************************************************************************************************/
    }
}