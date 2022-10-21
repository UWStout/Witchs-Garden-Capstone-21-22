/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Shop
{
	public static class ShopModifiers
	{
		// 1.25% would be a 25% increase
		public static float BUY_BONUS { get; private set; } = 1;
		public static float SELL_BONUS { get; private set; } = 1;
		/************************************************************************************************************************/
		

		public static void AlterBuyRate(float value)
		{
			//Debug.Log($"Plants Added AlterTraitSpawningChance : TRAIT_SPAWNING_ Info: [{BUY_BONUS} + {value}] ");
			BUY_BONUS += value;
			Mathf.Clamp(BUY_BONUS, 1, 2);

		}
		public static void AlterSellRate(float value)
		{
			//Debug.Log($"Plants Added AlterTraitCarryOverChance : TRAIT_CARRY_OVER_ Info: [{SELL_BONUS} + {value}] ");
			SELL_BONUS += value;
			Mathf.Clamp(SELL_BONUS, 1, 2);

		}
	}

}