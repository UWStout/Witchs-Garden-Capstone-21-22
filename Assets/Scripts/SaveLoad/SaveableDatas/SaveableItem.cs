/*
* AUTHOR : Steve Datz
* DESC : I know theres a way to greatly reduce the duplicated List Generation code with SaveableItem<T,E>
 *       But I couldnt quite get an elegant solution, so were gonna go the fast route
*/

using System;
using System.Collections.Generic;
using Items;

namespace SaveLoad
{
    [Serializable]
    public class SaveableItem
    {
        public eItemType ItemType ;

        public string ItemName ;
        public float QualityBase ;

        /************************************************************************************************************************/

        public SaveableItem(IItem item)
        {
            ItemType = item.ItemType;
            ItemName = item.ItemName;
            QualityBase = item.GetQuality(false);
        }

        /************************************************************************************************************************/


        public static List<SaveableItem> GenerateSaveList(List<IItem> items)
        {
            List<SaveableItem> saveList = new List<SaveableItem>();

            foreach (var item in items)
            {
                saveList.Add(new SaveableItem(item));
            }

            return saveList;
        }


        public static List<RuntimeItem> GenerateLoadList(List<SaveableItem> items)
        {
            List<RuntimeItem> loadList = new List<RuntimeItem>();

            foreach (var item in items)
            {
                loadList.Add(SaveLoadThings.Instance.LoadItemFromSaveData(item));
            }

            return loadList;
        }
        /************************************************************************************************************************/

    }
}
