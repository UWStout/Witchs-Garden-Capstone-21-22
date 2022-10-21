using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Research
{
    public class ResearchUnlockables : MonoBehaviour
    {

        [Tooltip("Index chapters by Array values")]
        [SerializeField] private ResearchChUnlockInfo[] _chUnlockInfo;

        /// <summary>
        /// The array index of the ch num (already pre-1)
        /// </summary>
        /// <param name="chapterNum"></param>
        /// <returns></returns>
        public ResearchChUnlockInfo GetUnlockInfoForChapter(int chapterNumArrIndex)
        {
            return _chUnlockInfo[chapterNumArrIndex];
        }

    }
}
