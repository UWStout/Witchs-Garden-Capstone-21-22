using Ingredients;
using UnityEngine;
using System;

namespace Plants
{
	//[Serializable]
	[CreateAssetMenu(fileName = "PlantData_", menuName = "Data/Plants/PlantData", order = 0)]
	public class PlantData : ScriptableObject
    {
		public string PlantName => _plantName;
		[SerializeField] private string _plantName;

		public string PlantFlavorText => _plantFlavorText;
		[SerializeField] private string _plantFlavorText;

		public Ingredient IngredientType => _ingredientType;
		[SerializeField] Ingredient _ingredientType;

		public PlantAttributes Attributes => _baseStartingAttributes;
		[Header("These will be treated like Base Starting Attributes for the plant")]
		[SerializeField] private PlantAttributes _baseStartingAttributes;


	}
}