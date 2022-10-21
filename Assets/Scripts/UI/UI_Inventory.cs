using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using CustomInput;
using UnityEngine.UI;
using UnityEngine.EventSystems;

namespace UI
{
    public class UI_Inventory : UI_ItemListDisplay
    {
        [SerializeField] UI_InventoryTabList _inventoryTabs;
        [SerializeField] UI_ItemInfoBox _itemInfoBox;
        public UI_ItemInfoBox ItemInfoBox => _itemInfoBox;
        [SerializeField] private AK.Wwise.Event _turnPageEvent;

        /************************************************************************************************************************/

        private eItemType _currentCategory;

        private IBundleContainer _itemBundleContainer;

        /************************************************************************************************************************/

        public override void OnDestroy()
        {
            base.OnDestroy();

            if (_itemBundleContainer != null)
                _itemBundleContainer.RegisterToBundleChanged(false, OnInventoryUpdated);
        }

        /************************************************************************************************************************/

        public void SetCategoryTabs(List<eItemType> categoryTypes, int defaultTabIndex = -1)
        {
            _inventoryTabs.SetCategoryTabsInteractable(categoryTypes);

            //Set default tab
            if (defaultTabIndex == -1)
                SetCurrentPage(3 - categoryTypes.Count);
            else
                SetCurrentPage(defaultTabIndex);
            
            //Reset slot highlighted
            SetSlotHighlighted(0);
        }

        public void SetItemBundleContainer(IBundleContainer getItemsByType)
        {
            if (getItemsByType == null)
                return;
            _itemBundleContainer = getItemsByType;
            _itemBundleContainer.RegisterToBundleChanged(true, OnInventoryUpdated);
        }

        public override void RegisterForInput(bool cond)
        {
            base.RegisterForInput(cond);
            
            if (cond)
            {
                InputReader.ChangePageEvent += ChangePage;
            }
            else
            {
                InputReader.ChangePageEvent -= ChangePage;
            }
        }


        /************************************************************************************************************************/

        public void SetCategory(eItemType category)
        {
            _currentCategory = category;
            GenerateSlots();
            SetSlotHighlighted(0);
            //Debug.Log("Inventory category is set to " + category.ToString());
        }

        private void ChangePage(int val)
        {
            if (val == 1)
                ShufflePageRight();
            if (val == -1)
                ShufflePageLeft();
            //turnPageEvent.Post(gameObject);
        }

        private void ShufflePageLeft()
        {
            IncrementCurrentPage(-1);
        }

        private void ShufflePageRight()
        {
            IncrementCurrentPage(1);
        }

        /************************************************************************************************************************/
        /// <summary>
        /// When the inventory changes, we want to know and update the stale visuals
        /// </summary>
        private void OnInventoryUpdated()
        {
            GenerateSlots();
            //Becareful about this:
            SetSlotHighlighted(0);
        }

        public void SetCurrentPage(int index)
        {
            if (_inventoryTabs != null)
            {
                if (_inventoryTabs.SetButtonSelected(index))
                {
                    var category = _inventoryTabs.GetSelectedCategory();
                    SetCategory(category);

                    _turnPageEvent.Post(gameObject);
                }
            }
        }

        private void IncrementCurrentPage(int amnt)
        {
            if (_inventoryTabs.IncrementButtonSelected(amnt))
            {
                var category = _inventoryTabs.GetSelectedCategory();
                SetCategory(category);

                _turnPageEvent.Post(gameObject);
            }
        }

        private void GenerateSlots()
        {
            if (_itemBundleContainer == null)
                return;

            
            var itemBundles = _itemBundleContainer.GetItemBundlesOfType(_currentCategory);
            //Debug.Log("------ Generating Inventory ------");

            //Check to generate slots with a specific view type:
            if (_bookOverlay != null)
            {
                UI_BookOverlay.MenuType type = _bookOverlay.GetNonInventoryMenuType();
                if (type == UI_BookOverlay.MenuType.BREWING_SCREEN && _currentCategory == eItemType.YIELD)
                    GenerateSlots(itemBundles, ViewType.INGREDIENT_SHAPE_VIEW);
                else if (type == UI_BookOverlay.MenuType.SELLING_SCREEN)
                    GenerateSlots(itemBundles, ViewType.SELL_PRICE_VIEW);
                else
                    GenerateSlots(itemBundles);
            }
            else
                GenerateSlots(itemBundles);
        }

        /************************************************************************************************************************/
        //SLOT SELECTION:
        public void RemoveItemSelectedDisplay(IItemBundle item)
        {
            foreach (UI_ItemSlot slot in _slots)
            {
                if (slot.GetItemBundle() != item) 
                    continue;
                
                slot.SetSelected(false);
                break;
            }
        }

        public void ClearItemsSelectedDisplay()
        {
            foreach (UI_ItemSlot slot in _slots)
            {
                if (slot.GetSelected() != false)
                    slot.SetSelected(false);
            }
        }
    }
}