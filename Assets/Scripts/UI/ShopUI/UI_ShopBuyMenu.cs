using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Shop;
using CustomInput;
using TMPro;
using Player;

namespace UI
{
    public class UI_ShopBuyMenu : UI_ItemListDisplay
    {
        [SerializeField] private Button _buyButton;

        private OnBuyItem _onBuyItemDelegate;
        private CanPlayerAffordGold _canPlayerAffordGold;

        [SerializeField] private UI_ItemSlot _slotSelected;
        [SerializeField] private TextMeshProUGUI _goldText;

        [SerializeField] private AK.Wwise.Event buyEvent;

        /************************************************************************************************************************/

        public override void UpdateGlobalFocus(bool cond)
        {
            if (cond)
            {
                InputReader.ConfirmEvent += TryBuyItem;
                InputReader.ClearEvent += ClearSelectedItem;
            }
            else
            {
                InputReader.ConfirmEvent -= TryBuyItem;
                InputReader.ClearEvent -= ClearSelectedItem;
            }
        }

        public void BindShop(OnBuyItem onBuyItem, CanPlayerAffordGold canPlayerAfford)
        {
            if (_buyButton == null )
            {
                Debug.Log($"<color=yellow>Assign buy button for UI_SHOP</color>");
                return;
            }
            _onBuyItemDelegate = onBuyItem;
            _canPlayerAffordGold = canPlayerAfford;
            SetBuyButtonState(true);
            
            //Set slot selected slot for button listening
            var selectedSlotButton = _slotSelected.gameObject.GetComponent<Button>();
            selectedSlotButton.onClick.AddListener(ClearSelectedItem);
            _slotSelected.SetSlotItemNull();
        }

        public void UpdateDisplay(IReadOnlyList<IItemBundle> bundles)
        {
            if (bundles == null)
                return;
            //Debug.Log("----- Generating Shop Buy Menu ------");

            GenerateSlots(bundles, ViewType.BUY_PRICE_VIEW);
        }

        private void TryBuyItem()
        {
            var currentItemBundle = GetSelectedItem();
            if (!CanBuyItem(currentItemBundle))
                return;

            bool successfullyBought = _onBuyItemDelegate(currentItemBundle);
            if (successfullyBought)
            {
                buyEvent.Post(gameObject);

                //if (GetSelectedSlot().GetItemCount() == 1)
                ClearSelectedItem();

                //if (GetSelectedItem() == null)
                //Debug.Log(GetSelectedSlot().GetItemCount());

                //else
                //SetSelectedSlotFromHighlighted();
                //SetSelectedSlot(GetSelectedSlot());
                //Debug.Log("SUCCESSFULLY BOUGHT " + currentItemBundle.ItemName);
            }
            else
                Debug.Log("[UI]FAILED TO BUY ITEM");

        }

        /***************************************/
        private IItem GetSelectedItem()
        {
            if (_slotSelected != null)
                return _slotSelected.GetItem();
            else
                return null;
        }

        private UI_ItemSlot GetSelectedSlot()
        {
            return _slots[_slotSelected.GetIndex()];
        }

        public void ClearSelectedItem()
        {
            if (_slotSelected.GetItem() != null)
            {
                _slots[_slotSelected.GetIndex()].SetSelected(false);
                SetSelectedSlot(null);
            }
            UpdateSelectedSlot();
        }

        protected override void ToggleSlotSelected()
        {
            var highlightedSlot = GetHighlightedSlot();
            if (highlightedSlot != null && _slotSelected != null)
            {
                if (highlightedSlot.GetSelected())
                {
                    highlightedSlot.SetSelected(false);
                    SetSelectedSlot(null);
                }
                else if (_slotSelected.GetItem() == null)
                {
                    SetSelectedSlotFromHighlighted();
                }
                else
                {
                    ClearSelectedItem();
                    SetSelectedSlotFromHighlighted();
                }
            }
        }

        private void SetSelectedSlotFromHighlighted()
        {
            var highlightedSlot = GetHighlightedSlot();
            highlightedSlot.SetSelected(true);
            
            SetSelectedSlot(highlightedSlot);
        }

        private void SetSelectedSlot(UI_ItemSlot itemSlot)
        {
            if (itemSlot == null || itemSlot.GetItemBundle() == null)
            {
                _slotSelected.SetSlotItemNull();
                _slotSelected.SetIndex(-1);
                _goldText.text = "";
            }
            else
            {
                _slotSelected.SetSlotItem(itemSlot.GetItemBundle());
                _slotSelected.SetSlotCount(1);
                _slotSelected.SetIndex(itemSlot.GetIndex());
                _goldText.text = itemSlot.GetItem().BuyPrice.ToString();
            }
            UpdateSelectedSlot();
        }

        private void UpdateSelectedSlot()
        {
            //Debug.Log("Selected Item is: " + GetSelectedItem());
            SetBuyButtonState(CanBuyItem(GetSelectedItem()));
        }

        public bool CanBuyItem(IItem itemBundle)
        {
            if (itemBundle == null || _onBuyItemDelegate == null || !_canPlayerAffordGold(itemBundle.BuyPrice))
            {
                //Debug.Log($"Can't buy [{itemBundle}, {_onBuyItemDelegate}]");
                return false;
            }

            return true;
        }

        private void SetBuyButtonState(bool canClick)
        {
            _buyButton.interactable = canClick;
            
            if (canClick)
                _buyButton.onClick.AddListener(TryBuyItem);
            else
                _buyButton.onClick.RemoveListener(TryBuyItem);
        }
    }
}