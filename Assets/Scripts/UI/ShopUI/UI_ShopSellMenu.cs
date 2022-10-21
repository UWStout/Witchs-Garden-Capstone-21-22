using System.Collections;
using System.Collections.Generic;
using Shop;
using UnityEngine;
using UnityEngine.UI;
using Items;
using Narrative;
using CustomInput;
using TMPro;
using Player;
using System;

namespace UI
{
    public class UI_ShopSellMenu : UI_RequestListDisplay
    {
        [SerializeField] private Button _sellButton;
        [SerializeField] private Text _sellButtonText;
        [SerializeField] private UI_ItemSlot _slotSelected;
        [SerializeField] private Image _goldIcon;
        [SerializeField] private TextMeshProUGUI _goldText;
        [SerializeField] private TextMeshProUGUI _sellToText;

        private OnSellItem _onSellItemDelegate;
        private CanPlayerSellItem _canPlayerSellItem;

        [SerializeField] private AK.Wwise.Event sellEvent;
        /************************************************************************************************************************/

        public override void Start()
        {
            base.Start();
            _onCharacterBoxSelected += UpdateSelectedDisplay;
        }

        public override void OnDestroy()
        {
            base.OnDestroy();
            _onCharacterBoxSelected -= UpdateSelectedDisplay;
        }

        public override void UpdateGlobalFocus(bool cond)
        {
            if (cond)
            {
                InputReader.ConfirmEvent += TrySellItem;
                InputReader.ClearEvent += ClearItemsSelectedDisplay;
            }
            else
            {
                InputReader.ConfirmEvent -= TrySellItem;
                InputReader.ClearEvent -= ClearItemsSelectedDisplay;
            }
        }

        public void BindShop(OnSellItem onSellItem, CanPlayerSellItem canPlayerSellItem)
        {


            if (_sellButton == null )
            {
                Debug.Log($"<color=yellow>Assign sell button for UI_SHOP</color>");
                return;
            }
            _onSellItemDelegate = onSellItem;
            _canPlayerSellItem = canPlayerSellItem;
            SetSellButtonState(true, false);

            //Set slot selected slot for button listening
            var selectedSlotButton = _slotSelected.gameObject.GetComponent<Button>();
            selectedSlotButton.onClick.AddListener(_bookOverlay.ClearItemsSelected);
            _slotSelected.SetSlotItemNull();
        }
        
        
        /************************************************************************************************************************/

        private void TrySellItem()
        {
            var currentItem = GetSelectedItem();

            if (!CanSellItem(currentItem))
                return;

            var selectedNarrRequestBox = GetSelectedBox();
            ActiveCharacterRequest request = null;
            if (selectedNarrRequestBox != null)
                request = selectedNarrRequestBox.GetCharacterRequest();

            if (!CurrentItemMatchesRequestItem(request, currentItem))
                return;

            bool sucessfullySold = _onSellItemDelegate(currentItem); //this gives the player the base value gold for the item as well.. >.<
            if (sucessfullySold)
            {
                TryCompleteNarrRequest(request);
                sellEvent.Post(gameObject);

                //var items = _bookOverlay.GetItemsSelected();
                ////if (items.Count > 0 && items[0] == null)
                _bookOverlay.ClearItemsSelected();
                //else
                    //Debug.Log("Selected item is " + items[0]);
            }
        }

        /************************************************************************************************************************/

        private bool CurrentItemMatchesRequestItem(ActiveCharacterRequest request, IItem currItem)
        {
            var template = request.NCRequest.ItemRequested.ItemTemplate;

            //if item requested is null, then item matches requested item
            if (template == null)
                return true;
            
            //Might want to move this into its own comparison class or override .Equals somehow,
            //or just compare icons? (note this ignores quality for requests which is fine)
            return template.ItemType == currItem.ItemType && template.ItemName == currItem.ItemName;
        }

        private void TryCompleteNarrRequest(ActiveCharacterRequest request)
        {
            if (request.NCRequest.ItemRequested.ItemTemplate != null)
            {
                if (_bookOverlay != null)
                    _bookOverlay.ClearStuffSelected();

                request.InvokeOnCompleteResponse();

                Debug.Log($"Request completed: [{request.NCRequest.CharacterTemplate.CharacterName} :: {request.NCRequest.ItemRequested.ItemTemplate.ItemName}]");
            }
        }

        /************************************************************************************************************************/
        //SLOT SELECTION:
        private IItem GetSelectedItem()
        {
            if (_slotSelected != null)
                return _slotSelected.GetItem();
            else
                return null;
        }

        public void AddItemSelectedDisplay(IItemBundle item)
        {
            if (_slotSelected.GetItem() == null)
            {
                _slotSelected.SetSlotItem(item);
                _slotSelected.SetSlotCount(1);
                _goldText.text = item.SellPrice.ToString();
                _goldIcon.enabled = true;
            }
            UpdateSelectedDisplay();
        }

        public void RemoveItemSelectedDisplay(IItemBundle item)
        {
            if (_slotSelected.GetItemBundle() == item)
            {
                _slotSelected.SetSlotItemNull();
                _goldText.text = "";
                _goldIcon.enabled = false;
            }
            UpdateSelectedDisplay();
        }

        public void ClearItemsSelectedDisplay()
        {
            _slotSelected.SetSlotItemNull();
            _goldText.text = "";
            _goldIcon.enabled = false;
            UpdateSelectedDisplay();
        }

        private void UpdateSelectedDisplay()
        {
            SetSellButtonState(CanCompleteNarrativeRequest(GetSelectedItem(), GetSelectedBox().GetCharacterRequest()), CanCompleteNarrativeRequest(GetSelectedItem(), GetSelectedBox().GetCharacterRequest()) && GetSelectedBox().GetCharacterRequest().NCRequest.ItemRequested.ItemTemplate != null);
        }

        public bool CanSellItem(IItem itemBundle)
        {
            if (itemBundle == null || _onSellItemDelegate == null || !_canPlayerSellItem(itemBundle))
                return false;

            return true;
        }

        public bool CanCompleteNarrativeRequest(IItem itemBundle, ActiveCharacterRequest request)
        {
            if (itemBundle == null || request == null || _onSellItemDelegate == null || !_canPlayerSellItem(itemBundle) || !CurrentItemMatchesRequestItem(request, itemBundle))
                return false;

            return true;
        }

        private void SetSellButtonState(bool canClick, bool isDeliver)
        {
            //Set interactable
            _sellButton.interactable = canClick;
            if (canClick)
                _sellButton.onClick.AddListener(TrySellItem);
            else
                _sellButton.onClick.RemoveListener(TrySellItem);

            //Set button text
            if (isDeliver)
            {
                _sellButtonText.text = "Deliver";

                if (GetSelectedBox() != null && GetSelectedItem() != null)
                    _sellToText.text = "Deliver to " + GetSelectedBox().GetCharacterRequest().NCRequest.CharacterTemplate.CharacterName;
                else
                    _sellToText.text = "";
            }
            else
            {
                _sellButtonText.text = "Sell";

                if (GetSelectedBox() != null && GetSelectedItem() != null)
                {
                    if (canClick)
                        _sellToText.text = "Sell to " + GetSelectedBox().GetCharacterRequest().NCRequest.CharacterTemplate.CharacterName;
                    else
                        _sellToText.text = "Cannot sell this to " + GetSelectedBox().GetCharacterRequest().NCRequest.CharacterTemplate.CharacterName;
                }
                else
                    _sellToText.text = "";
            }
                
        }
    }
}