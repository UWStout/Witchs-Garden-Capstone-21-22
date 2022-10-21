using Items;
using Player;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_Hotbar : MonoBehaviour
    {
        [SerializeField] UI_ItemSlot[] slotsReference;
        [SerializeField] GameObject slotSelectorReference;
        [SerializeField] TextMeshProUGUI _selectedText;
        [SerializeField] TextMeshProUGUI _extraInfoText;
        [SerializeField] UI_IngredientLabel _ingredientLabel;
        [SerializeField] UI_TweenMove _tweenMove;
        [SerializeField] UI_TweenFade _tweenFade;
        [SerializeField] AK.Wwise.Event _hotbarScrollAudio;
        private eItemType _currentCategory;
        public bool IsShowing => _doShow;
        private bool _doShow;

        private int _currentPage;
        private int _totalPages;
        private int _selectedSlot;
        private int _hotbarSlotCount;

        private IItem _selectedItem;


        private IBundleContainer _itemBundleContainer;
        /************************************************************************************************************************/
        // Uses Initialize() instead of Start() so it can first set the bundle container and fix stale values
        private void Initialize()
        {
            _currentPage = 0;
            _totalPages = 0;
            _selectedSlot = 0;
            _hotbarSlotCount = slotsReference.Length;
            SetShowAndCategory(true, eItemType.SEED);
            UpdateSlots();
        }

        private void OnDestroy()
        {
            if (_itemBundleContainer!=null)
                _itemBundleContainer.RegisterToBundleChanged(false, OnInventoryUpdated);
        }

        /************************************************************************************************************************/

        public void SetItemBundleContainer(IBundleContainer getItemsByType)
        {
            if (getItemsByType == null)
                return;
            _itemBundleContainer = getItemsByType;
            _itemBundleContainer.RegisterToBundleChanged(true, OnInventoryUpdated);

            Initialize();
        }

        public void SetShow(bool show)
        {
            if (show != _doShow)
            {
                if (show)
                    _doShow = true;
                else
                    _doShow = false;

                UpdateShow(_doShow);
            }
        }

        public void SetShowAndCategory(bool show, eItemType category)
        {
            SetShow(show);

            //if (category != currentCategory)
            _currentCategory = category;
            _currentPage = 0;
            _selectedSlot = 0;
            if (_itemBundleContainer != null)
                _totalPages = (int)Math.Ceiling(_itemBundleContainer.GetItemBundlesOfType(category).Count / (double)_hotbarSlotCount) - 1;
            else
                _totalPages = 0;

            PopulateSlots(_currentCategory, 0);
            UpdateSlotSelected();
        }
        
        public void ScrollHotBar(float scrollDir)
        {
            //Scroll Left
            if (scrollDir > 0f)
            {
                //Debug.Log("Scrolling Left");
                if (_selectedSlot <= 0)
                {
                    if (_currentPage > 0)
                    {
                        _selectedSlot = _hotbarSlotCount - 1;
                        //_currentPage -= 1;
                        ShufflePageLeft();
                        PopulateSlots(_currentCategory, _currentPage);
                        UpdateSlotSelected();
                    }
                }
                else
                {
                    _selectedSlot -= 1;
                    UpdateSlotSelected();
                }
                // _scrollEvent.Post(gameObject);
            }
            //Scroll Right
            else if (scrollDir < 0f)
            {
                //Debug.Log("Scrolling Right");
                if (_selectedSlot >= _hotbarSlotCount - 1)
                {
                    if (_currentPage < _totalPages)
                    {
                        _selectedSlot = 0;
                        ShufflePageRight();
                        //_currentPage += 1;
                        //Debug.Log("PAGE SET : Page " + currentPage);
                        PopulateSlots(_currentCategory, _currentPage);
                        UpdateSlotSelected();
                    }
                }
                else
                {
                    _selectedSlot += 1;
                    UpdateSlotSelected();
                }
            }
        }
        public void SetHotBar(int slotNumber)
        {
            var targetIndex = slotNumber - 1;
            if (targetIndex < 0)
                _selectedSlot = 0;
            else if (targetIndex >= _hotbarSlotCount)
                _selectedSlot = _hotbarSlotCount - 1;
            else
                _selectedSlot = targetIndex;
            UpdateSlotSelected();
        }

        public void ShufflePageLeft()
        {
            if (_currentPage > 0)
            {
                //Debug.Log("Shuffled Page Left");
                IncrementCurrentPage(-1);
            }
        }

        public void ShufflePageRight()
        {
            if (_currentPage < _totalPages)
            {
                //Debug.Log("Shuffled Page Right");
                IncrementCurrentPage(1);
            }
        }

        public IItem GetSelectedItem()
        {
            return slotsReference[_selectedSlot].GetItem();
        }
        /************************************************************************************************************************/
        /// <summary>
        /// When the inventory changes, we want to know and update the stale visuals
        /// </summary>
        private void OnInventoryUpdated()
        {
            //Debug.Log($"Inv CHANGED!");
            PopulateSlots(_currentCategory, _currentPage);
            UpdateSlotSelected();
        }

        private void IncrementCurrentPage(int amnt)
        {
            _currentPage += amnt;
            //Debug.Log("PAGE SET : Page " + currentPage);
            PopulateSlots(_currentCategory, _currentPage);
            UpdateSlotSelected();
        }

        private void UpdateSlots()
        {
            PopulateSlots(_currentCategory, _currentPage);
            UpdateShow(_doShow);
            UpdateSlotSelected();
        }

        private void UpdateSlotSelected()
        {
            //Set item selected text
            _selectedItem = GetSelectedItem();
            UpdateSelectedText(_currentCategory, _selectedItem);
            UpdateExtraText();
            UpdateIngredientLabel();

            //Change position of selector object
            slotSelectorReference.transform.localPosition = new Vector3(-255 + (100 * _selectedSlot), slotSelectorReference.transform.localPosition.y, slotSelectorReference.transform.localPosition.z);

            _hotbarScrollAudio.Post(gameObject);
        }

        private void UpdateSelectedText(eItemType category, IItem item)
        {
            var textString = category.ToString() + "S ";

            if (_totalPages > 0)
                textString += "(PAGE " + (_currentPage+1) + "/" + (_totalPages+1) + ") ";

            if (item != null)
                textString += "- " + item.ItemName;

            if (_selectedText != null)
                _selectedText.text = textString;
        }

        private void UpdateExtraText()
        {
            var descriptionText = "";
            if (_selectedItem != null && _selectedItem is PotionItem isPotion)
            {
                if (isPotion.UsedOnPlayer || isPotion.UsedOnPlant)
                {
                    if (isPotion.UsedOnPlayer)
                        descriptionText += "<b>Use on Player: </b>" + PlayerController.Instance.PotionHandler.GetPlayerPotionEffect(isPotion.ItemTemplate as PotionTemplate)?.GetPotionEffectString() + "\n";
                    if (isPotion.UsedOnPlant)
                        descriptionText += "<b>Use on Plant: </b>" + PlayerController.Instance.PotionHandler.GetPlantPotionEffect(isPotion.ItemTemplate as PotionTemplate)?.GetPotionEffectString() + "\n";
                }
                else
                    descriptionText += "<b>No Use</b>";
            }
            
             _extraInfoText.text = descriptionText;
        }

        private void UpdateIngredientLabel()
        {
            if (_selectedItem != null && _selectedItem is SeedItem isSeed)
            {
                _ingredientLabel.gameObject.SetActive(true);
                _ingredientLabel.SetIngredientDisplay(isSeed.PlantData.IngredientType);
            }
            else
                _ingredientLabel.gameObject.SetActive(false);
        }

        private void UpdateShow(bool show)
        {
            _tweenMove.RunTween(!show);
            _tweenFade.RunTween(!show);
        }

        private void PopulateSlots(eItemType category, int page)
        {
            //Set category text
            UpdateSelectedText(category, _selectedItem);

            if (_itemBundleContainer == null)
                return;
            var items = _itemBundleContainer.GetItemBundlesOfType(category);
           //Debug.Log($"Got inventory Items of type {category}  with count of " + items.Count + " items");

            //Update Slots with List of Items
            for (int i = 0; i < slotsReference.Length; i++)
            {
                int itemIndex = page * _hotbarSlotCount + i;

                if (itemIndex < items.Count)
                {
                    var item = items[itemIndex];
                    //Debug.Log("Updating slot " + i + " with item " + item.ItemName);
                    slotsReference[i].SetSlotItem(item);
                }
                else
                {
                    slotsReference[i].SetSlotItemNull();
                }
            }
        }
    }
}