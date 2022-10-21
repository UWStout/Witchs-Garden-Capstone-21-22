using Ingredients;

namespace Items
{
	public class YieldItem: RuntimeItem,  IHybridItem
	{
		/************************************************************************************************************************/

		public YieldItem(IHybridItem item, int runtimeQuality) : base(item, runtimeQuality)
		{
			IngredientType = item.IngredientType;
			Level = item.Level;
			_suffix = "";
		}
		/************************************************************************************************************************/

		public Ingredient IngredientType { get; }
		public int Level { get; }
		
	
	}
}