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
   
    public class UI_ReferencePotionRecipesMenu : UI_MenuContent
    {
        [SerializeField] private UI_PotionRecipeList _potionRecipeList;
        
        /************************************************************************************************************************/
        public void Init(DiagramHandler diagramHandler)
        {
            _potionRecipeList.Init(diagramHandler);
        }

        /************************************************************************************************************************/

        public UI_PotionRecipeList GetPotionRecipeList()
        {
            return _potionRecipeList;
        }
    }
}