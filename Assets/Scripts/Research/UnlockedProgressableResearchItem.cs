using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Research
 {
    public class UnlockedProgressableResearchItem 
    {
        public UnlockedChapter Chapter  { get; }
        public ResearchItemTemplate ResearchItemTemplate { get; }
        public float Progress { get; private set; }

        /************************************************************************************************************************/

        public UnlockedProgressableResearchItem(UnlockedChapter ch, ResearchItemTemplate itemTemplate)
        {
            Chapter = ch;
            ResearchItemTemplate = itemTemplate;
            Progress = 0;
        }
        /************************************************************************************************************************/


        public bool IncreaseProgress(float incrementVal)
        {
            Progress += incrementVal;
            //Error prevention:
            if(Progress < 0)
            {
                Progress = 0;
            }
            else if (Progress > 100)
            {
                Progress = 100;
            }

            return (int)Progress == 100;
        }
    }
}
