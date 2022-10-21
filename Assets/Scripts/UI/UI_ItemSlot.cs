using Items;
using System;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI
{
    [RequireComponent(typeof(Image))]
    public class UI_ItemSlot : UI_InteractableElement
    {
        protected IItem _slotItem;
        protected int _itemCount;
        protected float _itemQuality;
        private bool _isStarQuality = false;
        private IItemBundle _slotItemBundle;

        protected ViewType _viewType = ViewType.DEFAULT;

        //These need underscores (but renaming will break refs in scene and need to be reassigned)
        [SerializeField] private Image slotBorderImageReference;
        [SerializeField] private Image slotBackgroundImageReference;
        [SerializeField] private Image slotImageReference;
        [SerializeField] private Image[] qualityStarsImagesReference;
        [SerializeField] private Text slotCountTextReference;
        [SerializeField] private Image _slotGrayoutImage;
        [SerializeField] private Transform _slotPrice;
        [SerializeField] private TextMeshProUGUI _slotPriceText;
        [SerializeField] private Image _slotIngredientShape;

        public event Action<UI_ItemSlot> OnSlotEnter;
        public event Action<UI_ItemSlot> OnSlotExit;
        /************************************************************************************************************************/

        //For "real" items (bundles) with star quality
        public void SetSlotItem(IItemBundle bundleItem)
        {
            _isStarQuality = true;
            _slotItemBundle = bundleItem;
            SetSlotItem(bundleItem.ItemTemplate, bundleItem.NumItems, bundleItem.StarQuality);
        }

        //For "fake" or template items with only float quality
        public void SetSlotItem(IItem slotIItem, int numItems = 1, float quality = -1f)
        {
            if (slotIItem == null)
            {
                Debug.Log($"<color=red>SlotItem is null!!</color>");
                SetSlotItemNull();
                return;
            }
            //Debug.Log($"SlotItemTemplate= <color=green>{slotIItem.ItemName}</color>");

            _slotItem = slotIItem;
            _itemCount = numItems;
            _itemQuality = quality;
            UpdateDisplay();

        }

        public IItem GetItem() => _slotItem;
        public int GetItemCount() => _itemCount;
        public float GetItemQuality() => _itemQuality;
        public IItemBundle GetItemBundle() => _slotItemBundle;
        public bool GetIsBundle() => _isStarQuality;
        public ViewType GetViewType() => _viewType;

        public void SetSlotCount(int count)
        {
            _itemCount = count;
            UpdateDisplay();
        }

        public void SetSlotItemNull()
        {
            _slotItem = null;
            _slotItemBundle = null;
            _itemCount = 0;
            _itemQuality = -1;
            _isStarQuality = false;
            UpdateDisplay();
        }

        protected virtual void UpdateDisplay()
        {
            base.UpdateHighlightDisplay();
            
            //Update Slot Background
            if (slotBackgroundImageReference != null)
            {

            }

            //Update Slot Item Image
            if (slotImageReference != null)
            {
                if (_slotItem != null)
                {
                    slotImageReference.sprite = _slotItem.ItemImage;
                    slotImageReference.enabled = true;
                }
                else
                {
                    slotImageReference.sprite = null;
                    slotImageReference.enabled = false;
                } 
            }

            //Update Slot Count Text
            if (slotCountTextReference != null)
            {
                if (_itemCount > 0)
                {
                    slotCountTextReference.text = "x" +_itemCount;
                    slotCountTextReference.gameObject.SetActive(true);
                }
                else
                {
                    slotCountTextReference.gameObject.SetActive(false);
                }
            }

            //Update Slot Quality Stars
            if (qualityStarsImagesReference != null)
            {
                var stars = _itemQuality;
                if(!_isStarQuality && _itemQuality!=-1) //Items added via Bundle are "in star range". Items added via template are in "float range"
                    stars=StarQualityGenerator.GetQualityStarsFromQualityFloat(_itemQuality);
                for (int starIndex = 0; starIndex < qualityStarsImagesReference.Length; starIndex++)
                {
                    bool highEnoughValue = stars > starIndex && _slotItem?.ItemType != eItemType.SEED;
                    qualityStarsImagesReference[starIndex].gameObject.SetActive(highEnoughValue);
                }
            }

            //Update Slot Grayout Overlay
            if (_slotGrayoutImage != null)
            {
                _slotGrayoutImage.enabled = _isSelected;
            }

            //Update Item Price Text
            if (_slotPriceText != null)
            {
                if (_slotItem != null)
                {
                    _slotPriceText.enabled = true;
                    if (_viewType == ViewType.BUY_PRICE_VIEW)
                        _slotPriceText.text = _slotItem.BuyPrice.ToString();
                    else if (_viewType == ViewType.SELL_PRICE_VIEW)
                        _slotPriceText.text = _slotItem.SellPrice.ToString();
                    else
                        _slotPriceText.text = _slotItem.BaseValue.ToString();
                }
                else
                {
                    _slotPriceText.text = "";
                    _slotPriceText.enabled = false;
                }
            }

            //Update Slot Ingredient Shape
            if (_slotIngredientShape != null)
            {
                if (_slotItem != null)
                {
                    if (_slotItem is YieldItem isYield)
                    {
                        if (_slotIngredientShape.enabled)
                            _slotIngredientShape.sprite = isYield.IngredientType.IngSlotTypeSprite;
                    }
                    else
                        _slotIngredientShape.enabled = false;
                }
                else
                    _slotIngredientShape.enabled = false;
            }
        }

        //Interactable Element Methods:
        public void SetHighlighted(bool doHighlight)
        {
            if (base.TrySetHighlighted(doHighlight))
                UpdateDisplay();
        }

        public void SetSelected(bool doSelect)
        {
            if (base.TrySetSelected(doSelect))
                UpdateDisplay();
        }

        public override void OnPointerEnter(PointerEventData eventData)
        {
            OnSlotEnter?.Invoke(this);
        }
        public override void OnPointerExit(PointerEventData eventData)
        {
            OnSlotExit?.Invoke(this);
        }

        //Change Element View:
        private void SetPriceView(bool doSetOn)
        {
            if (_slotPrice != null)
                _slotPrice.gameObject.SetActive(doSetOn);
        }

        private void SetIngredientShapeView(bool doSetOn)
        {
            if (_slotIngredientShape != null)
            {
                _slotIngredientShape.enabled = doSetOn;
                if (doSetOn && _slotItem is YieldItem isYield)
                {
                    _slotIngredientShape.sprite = isYield.IngredientType.IngSlotTypeSprite;
                }
            }
        }

        public void SetViewType(ViewType viewType)
        {
            if (_viewType != viewType)
            {
                _viewType = viewType;
                if (viewType == ViewType.SELL_PRICE_VIEW || viewType == ViewType.BUY_PRICE_VIEW)
                {
                    SetPriceView(true);
                    SetIngredientShapeView(false);
                }
                else if (viewType == ViewType.INGREDIENT_SHAPE_VIEW)
                {
                    SetPriceView(false);
                    SetIngredientShapeView(true);
                }
                else
                {
                    SetPriceView(false);
                    SetIngredientShapeView(false);
                }
                UpdateDisplay();
            }
        }
    }

    public enum ViewType
    {
        DEFAULT,
        BUY_PRICE_VIEW,
        SELL_PRICE_VIEW,
        INGREDIENT_SHAPE_VIEW
    }
}