using Diagrams;
using Ingredients;
using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UI
{
    public class UI_IngredientSetLabel : MonoBehaviour
    {
        [SerializeField] private UI_IngredientLabel _ingredientLabel1Potion;
        [SerializeField] private UI_IngredientLabel _ingredientLabel2Potion;
        [SerializeField] private UI_IngredientLabel _ingredientLabel3Potion;

        private IngredientSet _ingredientSet;
        private bool _doCheckUnlocked = true;
        public bool DoShow => _doShow;
        private bool _doShow;

        public void SetIngredientSetDisplay(IngredientSet ingredientSet)
        {
            _ingredientSet = ingredientSet;
            if (ingredientSet != null)
            {
                var doShow = (!_doCheckUnlocked || (_doCheckUnlocked && DiagramHandler.Instance.IsDiagramUnlocked(_ingredientSet)));
                _doShow = doShow;
                _ingredientLabel1Potion.SetShowUnknown(!doShow);
                _ingredientLabel2Potion.SetShowUnknown(!doShow);
                _ingredientLabel3Potion.SetShowUnknown(!doShow);

                var ingredientArray = ingredientSet.GetIngredients();
                _ingredientLabel1Potion.SetIngredientDisplay(ingredientArray[0]);
                _ingredientLabel2Potion.SetIngredientDisplay(ingredientArray[1]);
                _ingredientLabel3Potion.SetIngredientDisplay(ingredientArray[2]);
            }
            else
            {
                _doShow = false;
                _ingredientLabel1Potion.SetIngredientDisplay(null);
                _ingredientLabel2Potion.SetIngredientDisplay(null);
                _ingredientLabel3Potion.SetIngredientDisplay(null);
            }
            //Debug.Log("DO SHOW IS " + _doShow + ", " + ingredientSet);
        }

        public void SetCheckUnlocked(bool doCheckUnlocked)
        {
            _doCheckUnlocked = doCheckUnlocked;
        }
    }
}