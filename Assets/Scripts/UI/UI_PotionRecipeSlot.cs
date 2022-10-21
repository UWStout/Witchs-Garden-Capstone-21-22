using Items;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace UI
{
    public class UI_PotionRecipeSlot : UI_ItemSlot
    {
        [SerializeField] private UI_IngredientSetLabel _ingredientSetLabel;
        [SerializeField] private TextMeshProUGUI _nameText;

        protected override void UpdateDisplay()
        {
            base.UpdateDisplay();

            //Set Item Info Name Text
            if (_nameText != null)
            {
                if (_slotItem != null)
                    _nameText.text = _slotItem.ItemName;
                else
                    _nameText.text = "";
            }

            //Set Ingredient Label
            if (_slotItem != null)
            {
                if (_slotItem is PotionItem isPotion)
                {
                    _ingredientSetLabel.SetIngredientSetDisplay(isPotion.IngredientTypes);
                }
            }
            else
                _ingredientSetLabel.SetIngredientSetDisplay(null);

            //base.UpdateHighlightDisplay();
        }

        public void UpdateRecipeSlotDisplay()
        {
            UpdateDisplay();
            
            //Set order in hierarchy to top if showing recipe unlocked
            if (_ingredientSetLabel.DoShow)
                transform.SetSiblingIndex(0);
        }
    }
}