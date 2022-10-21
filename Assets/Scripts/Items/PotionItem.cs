using Ingredients;

namespace Items
{
	public class PotionItem : RuntimeItem,  IPotion
	{
		public bool UsedOnPlayer { get; }
		public bool UsedOnPlant { get; }
		/************************************************************************************************************************/

		public PotionItem(IPotion template, int runtimeQuality) : base(template, runtimeQuality)
		{
			IngredientTypes = template.IngredientTypes;
			UsedOnPlayer = template.UsedOnPlayer;
			UsedOnPlant = template.UsedOnPlant;
			_suffix = "Potion";
		}
		/************************************************************************************************************************/

		public IngredientSet IngredientTypes { get; }
	}
}