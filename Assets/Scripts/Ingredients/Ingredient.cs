/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using UnityEngine;

namespace Ingredients
{
	public enum eIngSlotType {CIRCLE, SQUARE, TRIANGLE}
	
	[CreateAssetMenu(fileName = "#_name", menuName = "Data/Ingredients/ Ingredient", order = 0)]
	public class Ingredient : ScriptableObject, IComparable
	{
		public eIngSlotType IngSlotType => _ingSlotType;
		[SerializeField] private eIngSlotType _ingSlotType;
		public Sprite IngSlotTypeSprite => _ingSlotTypeSprite;
		[SerializeField] private Sprite _ingSlotTypeSprite;
		//The name of this ingredient for the UI
		public string IngredientName => _ingredientName;
		[SerializeField] private string _ingredientName = ""; //unInit
		//The level of the ingredient (0=base, 1=combo I, 2=combo II)
		public int Level => _level;
		[SerializeField] private int _level = -1; // unInit - fail early
		//The Image this label shows in UI (should be the color of the ingredient)
		public Sprite LabelBackground => _labelBackground;
		[SerializeField] private Sprite _labelBackground;
		//Something to test generating new CSV files ontop of existing data
		[SerializeField] private string _test;
		/************************************************************************************************************************/
		/// <summary>
		/// Can only be called ineditor, cant write to SO at runtime
		/// </summary>
		/// <param name="ingredientName"></param>
		/// <param name="level"></param>
		public void Generate(string ingredientName, string level, string test = "")
		{
			_ingredientName = ingredientName;
			_level = int.Parse(level); //we dont care if this NPE's in editor- will tell us our data is wrong earlier
			_test = test;
		}

		public int CompareTo(object obj)
		{
			if (obj is Ingredient other)
			{
				//return string.CompareOrdinal(IngredientName, other._ingredientName);
				//Debug.Log($"{this.GetHashCode()} - {other.GetHashCode()}");
				return ((int)this.IngSlotType - (int)other.IngSlotType) ;
			}
			return int.MaxValue;
		}
	}
}