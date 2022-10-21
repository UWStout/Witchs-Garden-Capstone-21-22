using Items;
using Player;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_ItemInfoBox : UI_ItemSlot
    {
        [SerializeField] private Text _nameText;
        [SerializeField] private Text _descriptionText;
        [SerializeField] private Text _priceText;
        [SerializeField] private Text _qualityText;
        [SerializeField] private UI_IngredientLabel _ingredientLabel;
        [SerializeField] private UI_IngredientSetLabel _ingredientSetLabel;

        public void OnSlotHighlighted(UI_ItemSlot highlightedSlot)
        {
            if (highlightedSlot.GetItem() == null)
            {
                SetViewType(ViewType.DEFAULT);
                SetSlotItemNull();
            }
            else
            {
                if (highlightedSlot.GetIsBundle())
                {
                    SetViewType(highlightedSlot.GetViewType());
                    SetSlotItem(highlightedSlot.GetItemBundle());
                }
                else
                {
                    SetViewType(highlightedSlot.GetViewType());
                    SetSlotItem(highlightedSlot.GetItem());
                }
            }
        }

        protected override void UpdateDisplay()
        {
            base.UpdateDisplay();
            //Debug.Log("Updating ItemInfoBox");

            //Set Item Info Name Text
            if (_nameText != null)
            {
                if (_slotItem != null)
                    _nameText.text = _slotItem.ItemName;
                else
                    _nameText.text = "";
            }

            //Set Item Price Text
            if (_priceText != null)
            {
                if (_slotItem != null)
                {
                    if (_viewType == ViewType.BUY_PRICE_VIEW)
                        _priceText.text = "Buy Cost: " + _slotItem.BuyPrice.ToString();
                    else //if (_viewType == ViewType.SELL_PRICE_VIEW)
                        _priceText.text = "Sell Value: " + _slotItem.SellPrice.ToString();
                    //else
                        //_priceText.text = "Base Value: " + _slotItem.BaseValue.ToString();
                }
                else
                    _priceText.text = "";
            }

            //Set Ingredient Label and Description text
            if (_slotItem != null)
            {
                if (_slotItem is YieldItem isYield)
                {
                    _ingredientLabel.SetIngredientDisplay(isYield.IngredientType);
                    _ingredientSetLabel.SetIngredientSetDisplay(null);
                    _descriptionText.text = isYield.FlavorText;
                }
                else if (_slotItem is SeedItem isSeed)
                {
                    _ingredientLabel.SetIngredientDisplay(isSeed.PlantData.IngredientType);
                    _ingredientSetLabel.SetIngredientSetDisplay(null);
                    var descriptionText = isSeed.FlavorText;
                    descriptionText += "\n\n<b>Base Grow Time:</b> " + (isSeed.PlantData.Attributes.GetAttributeValue(Plants.ePlantAttribute.GROWTIME) + 1) + " Day(s)";
                    _descriptionText.text = descriptionText;
                }
                else if (_slotItem is PotionItem isPotion)
                {
                    _ingredientLabel.SetIngredientDisplay(null);
                    _ingredientSetLabel.SetIngredientSetDisplay(isPotion.IngredientTypes);

                    var descriptionText = isPotion.FlavorText;
                    if (isPotion.UsedOnPlayer || isPotion.UsedOnPlant)
                    {
                        if (isPotion.UsedOnPlayer)
                            descriptionText += "\n<b>Use on Player: </b>" + PlayerController.Instance.PotionHandler.GetPlayerPotionEffect(isPotion.ItemTemplate as PotionTemplate)?.GetPotionEffectString();
                        if (isPotion.UsedOnPlant)
                            descriptionText += "\n<b>Use on Plant: </b>" + PlayerController.Instance.PotionHandler.GetPlantPotionEffect(isPotion.ItemTemplate as PotionTemplate)?.GetPotionEffectString();
                    }
                    else
                        descriptionText += "\n<b>No Use</b>";

                    _descriptionText.text = descriptionText;
                }
                else
                {
                    _ingredientLabel.SetIngredientDisplay(null);
                    _ingredientSetLabel.SetIngredientSetDisplay(null);
                    _descriptionText.text = "";
                }
            }
            else
            {
                _ingredientLabel.SetIngredientDisplay(null);
                _ingredientSetLabel.SetIngredientSetDisplay(null);
                _descriptionText.text = "";
            }

            //Update Quality Text
            if (_qualityText != null)
            {
                var stars = _itemQuality;
                if (!GetIsBundle() && _itemQuality != -1)
                    stars = StarQualityGenerator.GetQualityStarsFromQualityFloat(_itemQuality);
                _qualityText.enabled = (stars > 0 && _slotItem?.ItemType != eItemType.SEED);
            }

            //base.UpdateHighlightDisplay();
        }
    }
}