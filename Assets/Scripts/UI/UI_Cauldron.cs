using System;
using System.Collections;
using System.Collections.Generic;
using CustomInput;
using Diagrams;
using Ingredients;
using Items;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public delegate IPotion TryMakePotionDelegate(IItem item1, IItem item2, IItem item3);
   
    public class UI_Cauldron : UI_ItemListDisplay
    {
        [SerializeField] private Button _craftPotionButton;
        [SerializeField] private UI_PotionRecipeList _potionRecipeList;

        [SerializeField] private AK.Wwise.Event potionmakeEvent;

        private TryMakePotionDelegate _makePotionDelegate;
        
        /************************************************************************************************************************/
        public void InitCauldron(TryMakePotionDelegate tryMakePotionAction, DiagramHandler diagramHandler)
        {
            _makePotionDelegate = tryMakePotionAction;
            _craftPotionButton.onClick.AddListener(TryMakePotion);
            _potionRecipeList.Init(diagramHandler);
            _potionRecipeList.TintSlots();

            //Init item slots:
            for (int i = 0; i < _slots.Count; i++)
            {
                _slots[i].SetSlotItemNull();
                _slots[i].SetIndex(i);
                _slots[i].SetViewType(ViewType.INGREDIENT_SHAPE_VIEW);
                //Set as clickable slot with mouse
                var slotButton = _slots[i].gameObject.GetComponent<Button>();
                slotButton.onClick.AddListener(ToggleSlotSelected);
                //Set as hoverable slot with mouse
                _slots[i].OnSlotEnter += OnSlotHovered;
                _slots[i].OnSlotExit += OnSlotUnHovered;
            }

            UpdateItemsSelectedDisplay();
        }

        /************************************************************************************************************************/

        public override void UpdateGlobalFocus(bool cond)
        {
            if (cond)
            {
                InputReader.ConfirmEvent += TryMakePotion;
                InputReader.ClearEvent += ClearItemsSelectedDisplay;
            }
            else
            {
                InputReader.ConfirmEvent -= TryMakePotion;
                InputReader.ClearEvent -= ClearItemsSelectedDisplay;
            }
        }

        private void TryMakePotion()
        {
            Debug.Log("Tried make potion");
            IItem bundle1 = GetItemFromSlot(_slots[0]);
            IItem bundle2 = GetItemFromSlot(_slots[1]);
            IItem bundle3 = GetItemFromSlot(_slots[2]);

            if (CanBrewPotion(bundle1, bundle2, bundle3))
            {
                var createdPotion = _makePotionDelegate(bundle1, bundle2, bundle3);

                if (createdPotion != null)
                {
                    potionmakeEvent.Post(gameObject);
                    if (_bookOverlay != null)
                        _bookOverlay.ClearItemsSelected();
                }
            }
        }

        private bool CanBrewPotion(IItem bundle1, IItem bundle2, IItem bundle3)
        {
            if (bundle1 != null && bundle2 != null && bundle3 != null)
                return true;
            else
                return false;
        }

        /************************************************************************************************************************/
        //SLOT SELECTION:
        private IItem GetItemFromSlot(UI_ItemSlot slot)
        {
            return slot == null ? null : slot.GetItem();
        }
        
        public void AddItemSelectedDisplay(IItemBundle item)
        {
            if (item.ItemTemplate is YieldItem isYield)
            {
                _slots[(int)isYield.IngredientType.IngSlotType].SetSlotItem(item);
                _slots[(int)isYield.IngredientType.IngSlotType].SetSlotCount(1);
            }
            UpdateItemsSelectedDisplay();
        }

        public void RemoveItemSelectedDisplay(IItemBundle item)
        {
            for (int i = 0; i < _slots.Count; i++)
            {
                if (_slots[i].GetItemBundle() == item)
                {
                    _slots[i].SetSlotItemNull();
                    break;
                }
            }
            UpdateItemsSelectedDisplay();
        }

        public void ClearItemsSelectedDisplay()
        {
            foreach (UI_ItemSlot slot in _slots)
            {
                slot.SetSlotItemNull();
            }
            UpdateItemsSelectedDisplay();
        }

        private void UpdateItemsSelectedDisplay()
        {
            IItem bundle1 = GetItemFromSlot(_slots[0]);
            IItem bundle2 = GetItemFromSlot(_slots[1]);
            IItem bundle3 = GetItemFromSlot(_slots[2]);

            SetBrewButtonState(CanBrewPotion(bundle1, bundle2, bundle3));
        }

        private void SetBrewButtonState(bool canClick)
        {
            _craftPotionButton.interactable = canClick;

            if (canClick)
                _craftPotionButton.onClick.AddListener(TryMakePotion);
            else
                _craftPotionButton.onClick.RemoveListener(TryMakePotion);
        }

        /************************************************************************************************************************/
        protected override void ToggleSlotSelected()
        {
            var highlightedSlot = GetHighlightedSlot();
            if (highlightedSlot != null && _bookOverlay != null)
            {
                _bookOverlay.RemoveItemSelected(GetHighlightedItemBundle());
            }
        }

        /************************************************************************************************************************/

        public UI_PotionRecipeList GetPotionRecipeList()
        {
            return _potionRecipeList;
        }
    }
}