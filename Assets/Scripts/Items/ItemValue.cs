using UnityEngine;

namespace Items
{
	public static class ItemValue
	{
		private const float BUY_MOD = 2.1f; //was 1.5 -too low steve

		private const float SELL_MOD = 0.5f;

		/************************************************************************************************************************/
		
		public static int GetBuyValue(IItem item)
		{
			return (int)(GenerateBaseValue(item.BaseValue, (int)item.GetQuality(true)) * BUY_MOD);
		}
		
		public static int GetSellValue(IItem item )
		{
			return (int)(GenerateBaseValue(item.BaseValue, (int)item.GetQuality(true)) * SELL_MOD);
		}
		/************************************************************************************************************************/
		//Let the item worry about this conversion (not here)
		// private static int GenerateBaseValue(float baseVal, float rawQuality)
		// {
		// 	int starQ = StarQualityGenerator.GetQualityStarsFromQualityFloat(rawQuality);
		// 	return GenerateBaseValue(baseVal,starQ);
		// }
		private static int GenerateBaseValue(float baseVal, int starQuality)
		{
			return (int)(baseVal * (1+starQuality));
		}

	}
}