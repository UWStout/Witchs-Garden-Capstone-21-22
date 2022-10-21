
using UnityEngine;

namespace Research
{
    public delegate bool OnTryUnlockChapter(ResearchChUnlockInfo original);
    
    
    [CreateAssetMenu(fileName = "Ch_UnlockInfo", menuName = "Data/Research/UnlockInfo/Unlock Info", order =9)]
    public class ResearchChUnlockInfo : ScriptableObject
    {
        
        [field: SerializeField]
        public ResearchChapterTemplate ChapterTemplate { get; private set; }

        [field: SerializeField]
        public ResearchUnlockCondition UnlockCondition { get; private set; }
    }
}