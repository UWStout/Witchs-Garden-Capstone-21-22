/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using UnityEngine;

namespace Ingredients
{
	[CreateAssetMenu(fileName = "_rigidIngredientSet", menuName = "Data/Ingredients/Rigid Ingredient Set", order = 0)]
	public class RigidIngredientSet : ScriptableObject
	{
		[SerializeField] private Ingredient _ingredient1;
		[SerializeField] private Ingredient _ingredient2;
		[SerializeField] private Ingredient _ingredient3;

		public IngredientSet GetIngredientSet()
		{
			return new IngredientSet(_ingredient1, _ingredient2, _ingredient3);
		}
	}
}