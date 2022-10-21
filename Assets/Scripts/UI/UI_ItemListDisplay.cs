using CustomInput;
using Items;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_ItemListDisplay : UI_MenuContent
    {
        protected int _highlightedSlot;

        [SerializeField] private int ELEMENTS_PER_ROW = 4;

        [SerializeField] protected List<UI_ItemSlot> _slots;

        [SerializeField] private UI_ItemSlot _itemSlotPrefab;
        [SerializeField] private Transform _slotsContent;

        protected Action<UI_ItemSlot> _onSlotHighlighted;

        public void Start()
        {
            if (_slots == null)
                _slots = new List<UI_ItemSlot>();
        }

        public virtual void OnDestroy()
        {
            RegisterForInput(false);
            UpdateGlobalFocus(false);
        }

        public virtual void RegisterForInput(bool cond)
        {
            if (cond)
            {
                InputReader.NavigateEvent += SetSlotHighlighted;
                InputReader.SelectEvent += ToggleSlotSelected;
            }
            else
            {
                InputReader.NavigateEvent -= SetSlotHighlighted;
                InputReader.SelectEvent -= ToggleSlotSelected;
            }
        }

        public override void UpdateGlobalFocus(bool cond)
        {
        }

        public void SetOnSlotHighlighted(Action<UI_ItemSlot> onSlotHighlighted)
        {
            _onSlotHighlighted = onSlotHighlighted;
        }

        /************************************************************************************************************************/

        protected void GenerateSlots(IReadOnlyList<IItemBundle> itemBundles, ViewType viewType = ViewType.DEFAULT)
        {
            //Generate Slots for Bundles
            //Debug.Log($"Making : {itemBundles.Count} #slots");
            //Debug.Log("Slot Generator: Generating " + items.Count + " items with " + _slots.Count + " slot count!");
            for (int i = 0; i < itemBundles.Count; i++)
            {
                var itemBundle = itemBundles[i];
                UI_ItemSlot newSlot;
                if (i > _slots.Count - 1) //Create more slots
                {
                    newSlot = GenerateNewSlot(i);
                }
                else //Set to existing slots
                {
                    //Debug.Log("Slot Generator: REASSIGNING slot #" + i);
                    newSlot = _slots[i];
                    _slots[i].gameObject.SetActive(true);
                }

                //Override for a bundle: (factors in count/quality)
                //Debug.Log($"setting slot to bundle: {itemBundle.ItemTemplate.ItemName} for {newSlot.gameObject.name}");
                newSlot.SetSlotItem(itemBundle);
                newSlot.SetViewType(viewType);

                if (_bookOverlay.GetItemsSelected().Contains(itemBundle))
                    newSlot.SetSelected(true);
                else
                    newSlot.SetSelected(false);
            }


            //Disable existing slot objects if items greater than it
            if (itemBundles.Count < _slots.Count)
            {
                var slotsCount = _slots.Count;
                for (int i = itemBundles.Count; i < slotsCount; i++)
                {
                    //Debug.Log("Slot Generator: DISABLING slot #" + i);
                    _slots[i].gameObject.SetActive(false);
                }
            }
        }
        protected void GenerateSlots(IReadOnlyList<IItem> items, ViewType viewType = ViewType.DEFAULT)
        {
            //Debug.Log("--Generating Slots--");
            if (_itemSlotPrefab == null || _slotsContent == null)
            {
                Debug.Log($"<color=yellow>Assign _itemSlotPrefab && _slotsContent for UI_SHOP</color>");
                return;
            }

            if (items == null)
                return;

            //Generate Slots for Items
            //Debug.Log("Slot Generator: Generating " + items.Count + " items with " + _slots.Count + " slot count!");
            for (int i = 0; i < items.Count; i++)
            {
                var item = items[i];
                UI_ItemSlot newSlot;
                if (i > _slots.Count - 1) //Create more slots
                {
                    newSlot = GenerateNewSlot(i);
                }
                else //Set to existing slots
                {
                    //Debug.Log("Slot Generator: REASSIGNING slot #" + i);
                    newSlot = _slots[i];
                    _slots[i].gameObject.SetActive(true);
                }

                //Default for an item: (sets count to 1, quality -1)
                newSlot.SetSlotItem(item);
                newSlot.SetViewType(viewType);

                /*
                if (_bookOverlay.GetItemsSelected().Contains(item))
                    newSlot.SetSelected(true);
                else
                    newSlot.SetSelected(false);
                */
            }


            //Disable existing slot objects if items greater than it
            if (items.Count < _slots.Count)
            {
                var slotsCount = _slots.Count;
                for (int i = items.Count; i < slotsCount; i++)
                {
                    //Debug.Log("Slot Generator: DISABLING slot #" + i);
                    _slots[i].gameObject.SetActive(false);
                }
            }
        }

        private UI_ItemSlot GenerateNewSlot(int i)
        {
            //Debug.Log("Slot Generator: CREATING slot #" + i);
            UI_ItemSlot newSlot = Instantiate(_itemSlotPrefab, Vector3.zero, Quaternion.identity);
            newSlot.transform.parent = _slotsContent;
            newSlot.transform.localScale = Vector3.one;
            newSlot.gameObject.name = $"UI_Slot_{i}";
            newSlot.SetIndex(i);
            _slots.Add(newSlot);
            //Set as clickable slot with mouse
            var createdSlotButton = newSlot.gameObject.GetComponent<Button>();
            createdSlotButton.onClick.AddListener(ToggleSlotSelected);
            //Set as hoverable slot with mouse
            newSlot.OnSlotEnter += OnSlotHovered;
            newSlot.OnSlotExit += OnSlotUnHovered;
            return newSlot;
        }

        private void SetSlotHighlighted(Vector2 inputAxis)
        {
            int targetSlot = _highlightedSlot;

            targetSlot += (int)inputAxis.x;
            targetSlot += (int)inputAxis.y * ELEMENTS_PER_ROW;

            //Check to see if trying to navigate out of focus of the menu, otherwise set slot highlighted
            //If highlightedSlot is on the edge of the menu and navigating one more further
            if ((int)inputAxis.x > 0 && ((_highlightedSlot % ELEMENTS_PER_ROW == (ELEMENTS_PER_ROW - 1)) || !GetIsNextSlotActive(_highlightedSlot)))
            {
                //Debug.Log("LIST DISPLAY RIGHT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.RIGHT);
            }
            else if ((int)inputAxis.x < 0 && _highlightedSlot % ELEMENTS_PER_ROW == 0)
            {
                //Debug.Log("LIST DISPLAY LEFT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.LEFT);
            }
            else
                SetSlotHighlighted(targetSlot);
        }

        private bool GetIsNextSlotActive(int highlightedSlot)
        {
            if (highlightedSlot < _slots.Count-1 && _slots[highlightedSlot+1].gameObject.activeSelf)
            {
                //Debug.Log("Next Slot IS Active");
                return true;
            }
            else
            {
                //Debug.Log("Next Slot IS NOT Active");
                return false;
            }
        }

        protected virtual void SetSlotHighlighted(int slotHighlighted)
        {
            //Set selected slot with correct bounds
            int targetedSlot;
            if (slotHighlighted < 0)
                targetedSlot = 0;
            else if (slotHighlighted >= _slots.Count)
                targetedSlot = _slots.Count - 1;
            else
                targetedSlot = slotHighlighted;

            //Verify that targeted slot is active
            if (_slots[targetedSlot].gameObject.activeSelf)
            {
                _highlightedSlot = targetedSlot;
                UpdateSlotHighlighted();
            }

            //Invoke ItemInfoBox to show highlighted item's info
            if (_isFocused)
            {
                var highlightedSlot = GetHighlightedSlot();
                if (highlightedSlot.gameObject.activeSelf)
                {
                    _onSlotHighlighted?.Invoke(highlightedSlot);
                    //Debug.Log("SLOT HIGHLIGHTED ON " + highlightedSlot.GetItem().ItemName);
                }
            }
            //else
                //Debug.Log("NOT FOCUSED");
        }

        protected void UpdateSlotHighlighted()
        {
            //Update the selector for display
            foreach (UI_ItemSlot slot in _slots)
            {
                if (_isFocused)
                    slot.SetHighlighted(slot.GetIndex() == _highlightedSlot);
                else
                    slot.SetHighlighted(false);
            }
        }

        public UI_ItemSlot GetHighlightedSlot()
        {
            if (_slots != null && _slots.Count != 0)
                return _slots[_highlightedSlot];
            else
                return null;
        }

        public IItemBundle GetHighlightedItemBundle()
        {
            if (_slots != null && _slots.Count != 0)
                return _slots[_highlightedSlot].GetItemBundle();
            else
                return null;
        }

        //Add currently highlighted slot to selection list (for ingredient selection in potion brewing, etc.)
        protected virtual void ToggleSlotSelected()
        {
            //Debug.Log("Called ToggleSlotSelected");
            var highlightedSlot = GetHighlightedSlot();
            if (highlightedSlot != null && _bookOverlay != null)
            {
                if (GetHighlightedSlot().GetSelected())
                {
                    _bookOverlay.RemoveItemSelected(GetHighlightedItemBundle());
                    highlightedSlot.SetSelected(false);
                }
                else
                {
                    if (_bookOverlay.AddItemSelected(GetHighlightedItemBundle()))
                        highlightedSlot.SetSelected(true);
                }
            }
        }

        /************************************************************************************************************************/
        //FOCUS:
        public override bool TrySetFocus(bool isFocus)
        {
            if (base.TrySetFocus(isFocus) && TrySetFocusSelf(isFocus))
            {
                base.SetFocus(isFocus);
                UpdateSlotHighlighted();

                RegisterForInput(isFocus);
                return true;
            }
            return false;
        }

        public bool TrySetFocusSelf(bool isFocus)
        {
            if (isFocus)
            {
                return (_slots.Count > 0 );
            }
            else
                return true;
        }

        /************************************************************************************************************************/
        //MOUSE HIGHLIGHT SLOT TRIGGER METHODS
        protected void OnSlotHovered(UI_ItemSlot slot)
        {
            if (slot != null && _menuType != UI_BookOverlay.MenuType.NONE)
            {
                _bookOverlay.SetFocus(_menuType);
                SetSlotHighlighted(slot.GetIndex());
            }
        }

        protected void OnSlotUnHovered(UI_ItemSlot slot)
        {

        }
    }
}