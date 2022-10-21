using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UI
{
    public class UI_InventoryTabList : UI_ButtonList
    {
        public void SetCategoryTabsInteractable(List<eItemType> categoryTypes)
        {
            foreach (UI_InventoryTab tab in _buttonArray)
            {
                if (categoryTypes.Contains(tab.ButtonCategory))
                    SetButtonInteractable(tab.GetIndex(), true);
                else
                    SetButtonInteractable(tab.GetIndex(), false);
            }
        }

        public eItemType GetSelectedCategory()
        {
            if (GetSelectedButton() is UI_InventoryTab inventoryTab)
            {
                return inventoryTab.ButtonCategory;
            }
            return eItemType.SEED;
        }
    }
}