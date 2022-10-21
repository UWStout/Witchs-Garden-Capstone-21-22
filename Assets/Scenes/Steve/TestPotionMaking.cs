using System.Collections;
using System.Collections.Generic;
using Ingredients;
using Items;
using NaughtyAttributes;
using Player;
using UI;
using UnityEngine;

public class TestPotionMaking : MonoBehaviour
{
	//[SerializeField] private UI_Cauldron _cauldron;

	[SerializeField] private YieldItemTemplate _item1; 
	[SerializeField] private YieldItemTemplate _item2; 
	[SerializeField] private YieldItemTemplate _item3; 
	
	/************************************************************************************************************************/

	[ContextMenu("Try Make Potion")]
	[Button("Try Make Potion")]
	public void TryMakePotion()
	{
		Ingredient ingOne = _item1.IngredientType;
		Ingredient ingTwo = _item2.IngredientType;
		Ingredient ingThree =  _item3.IngredientType;
		var success= false;
		if (ingOne != null && ingTwo != null && ingThree != null)
		{
			IngredientSet ingSet = new IngredientSet(ingOne, ingTwo, ingThree);
			//success = PlayerActionHandler.Instance.TryMakePotion(_item1, _item2, _item3);
		}

		Debug.Log($"Make Potion: [{ingOne},{ingTwo},{ingThree}] = {success} ");
	}
}
