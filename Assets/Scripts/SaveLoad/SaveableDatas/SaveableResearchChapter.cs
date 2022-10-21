/*
* AUTHOR : Steve Datz
* DESC : I know theres a way to greatly reduce the duplicated List Generation code with SaveableItem<T,E>
 *       But I couldnt quite get an elegant solution, so were gonna go the fast route
*/

using System.Collections.Generic;
using System;
using Research;
using UnityEngine;


namespace SaveLoad
{
    [Serializable]

    public class SaveableResearchChapter
    {
        public int ChapterIDArr;
        public List<SaveableResearchProgress> IndividualProgress = new List<SaveableResearchProgress>();

        /************************************************************************************************************************/

        public SaveableResearchChapter(UnlockedChapter ch)
        {
            ChapterIDArr = ch.ChapterTemplate.ChapterIDArr;
            foreach (var item in ch.ResearchItems)
            {
                IndividualProgress.Add(new SaveableResearchProgress(item.ResearchItemTemplate.ResearchName, item.Progress));
            }
        }
        /************************************************************************************************************************/
        public static List<SaveableResearchChapter> GenerateSaveList(IReadOnlyList<UnlockedChapter> items)
        {
            List<SaveableResearchChapter> saveList = new List<SaveableResearchChapter>();

            foreach (var item in items)
            {
                saveList.Add(new SaveableResearchChapter(item));
            }

            return saveList;
        }


        public static List<UnlockedChapter> GenerateLoadList(IReadOnlyList<SaveableResearchChapter> items)
        {
            List<UnlockedChapter> loadList = new List<UnlockedChapter>();

            foreach (var item in items)
            {
                loadList.Add(SaveLoadThings.Instance.LoadResearchChapterFromSave(item));
            }

            return loadList;
        }

        /************************************************************************************************************************/

    }



    [Serializable]
    public struct SaveableResearchProgress
    {
        public string ResearchItemTemplateName;
        public float Progress;

        public SaveableResearchProgress(string itemName, float prog)
        {
            ResearchItemTemplateName = itemName;
            Progress = prog;
        }
    }
}
