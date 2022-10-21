using Ingredients;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_IngredientLabel : MonoBehaviour
    {
        [SerializeField] private Text _ingredientTypeText;
        [SerializeField] private Image _ingredientTypeImage;
        [SerializeField] private Image _ingredientShapeImage;

        [SerializeField] private Sprite _unknownLabelSprite;

        [SerializeField] private Color _darkTextColor;
        [SerializeField] private Color _lightTextColor;

        private bool _showUnknown = false;

        public void SetIngredientDisplay(Ingredient ingredient)
        {
            Sprite labelBackground = ingredient?.LabelBackground;
            string ingredientText = ingredient?.IngredientName;
            Sprite labelShape = ingredient?.IngSlotTypeSprite;

            //Ingredient Label Text
            if (_ingredientTypeText != null)
            {
                if (ingredientText != null)
                {
                    _ingredientTypeText.enabled = true;
                    //Check show unknown
                    if (_showUnknown)
                    {
                        _ingredientTypeText.color = _darkTextColor;
                        _ingredientTypeText.text = "?";
                    }
                        
                    else
                    {
                        _ingredientTypeText.text = ingredientText;
                        if (ingredient.IngredientName == "Dark" || ingredient.IngredientName == "Poison")
                            _ingredientTypeText.color = _lightTextColor;
                        else
                            _ingredientTypeText.color = _darkTextColor;
                    }
                }
                else
                {
                    _ingredientTypeText.color = _darkTextColor;
                    _ingredientTypeText.enabled = false;
                }
            }

            //Ingredient Label Image
            if (_ingredientTypeImage != null)
            {
                if (labelBackground != null)
                {
                    _ingredientTypeImage.enabled = true;
                    //Check show unknown
                    if (_showUnknown)
                        _ingredientTypeImage.sprite = _unknownLabelSprite;
                    else
                        _ingredientTypeImage.sprite = labelBackground;
                }
                else
                    _ingredientTypeImage.enabled = false;
            }

            //Ingredient Shape Image
            if (_ingredientShapeImage != null)
            {
                if (labelShape != null)
                {
                    _ingredientShapeImage.enabled = true;
                    _ingredientShapeImage.sprite = labelShape;
                }
                else
                    _ingredientShapeImage.enabled = false;
            }
        }

        public void SetShowUnknown(bool setUnknown)
        {
            _showUnknown = setUnknown;
            //SetIngredientDisplay(_ingredient);
        }
    }

}