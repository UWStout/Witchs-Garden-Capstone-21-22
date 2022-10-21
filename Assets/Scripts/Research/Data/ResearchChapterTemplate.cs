/*
* AUTHOR : Steve Datz
* DESC : A parent class whos child implementation(s) will contain the information needed to hand out rewards from research sys
*/

using UnityEngine;
using System.Collections.Generic;

namespace Research
{
    [CreateAssetMenu(fileName = "_rsrchChapter", menuName = "Data/Research/Chapter", order = 0)]
    public class ResearchChapterTemplate : ScriptableObject
    {
        //    [field: SerializeField] 

        /// <summary>
        /// "In terms of an Array (so -1)
        /// </summary>
        public int ChapterIDArr => _chID;
        [Tooltip("In terms of an Array (so -1)")]
        [SerializeField] private int _chID = 0;
        
        public string ChapterName => _chapterName;
        [SerializeField] private string _chapterName;
        
        public string ChapterFlavorTxt => _chapterFlavorTxt;
        [SerializeField] private string _chapterFlavorTxt;
        
        public IReadOnlyList<ResearchItemTemplate> AvailableResearchItems => _chResearchItems;
        [SerializeField] private List<ResearchItemTemplate> _chResearchItems;

    }
}
