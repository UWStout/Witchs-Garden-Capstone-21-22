using Ingredients;
using Plants;
using System.Collections.Generic;
using UnityEngine;

namespace Items
{
	
	public enum eItemType {SEED, YIELD, POTION}
	
	public interface IItem 
	{
		eItemType ItemType { get; }
		string ItemName { get; }
		string FlavorText { get; }
		Sprite ItemImage { get; }
		float BaseValue { get; }
		int BuyPrice { get; }
		int SellPrice { get;  }
		float GetQuality(bool isStarQuality);
		
	}

    public interface IIngredientItem : IItem
    {
		Ingredient IngredientType { get; }
	}

	public interface IMultiIngredientItem : IItem
	{
		IngredientSet IngredientTypes { get; }
	}


    public interface IPlantableItem : IItem
    {
	    PlantData PlantData { get; }

	    PlantModels PlantModels { get; }
	}
    
	public interface IHybridItem : IIngredientItem
	{
		int Level { get; }
	}
	
	public interface IPotion : IMultiIngredientItem
	{
		bool UsedOnPlayer { get; }
		bool UsedOnPlant { get; }
	}



}