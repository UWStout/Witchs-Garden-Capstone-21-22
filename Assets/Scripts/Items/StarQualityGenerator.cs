using UnityEngine;

namespace Items
{
	public static class StarQualityGenerator
	{

		/// <summary>
		/// Returns a value between 1-3
		/// </summary>
		/// <param name="quality"></param>
		/// <returns>a value between 1-3</returns>
		public static int GetQualityStarsFromQualityFloat(float quality)
		{
			//Debug.Log($"Raw Quality for Item is : <color=white> {quality} </color>");
			//Float Quality to Star Quality Formula:
			//return quality <= 50 ? 0 : Mathf.FloorToInt((quality - 50) / (50f / MAX_NUMBER_OF_STARS));
			if (quality <= 60)
				return 1;
			else if (quality <= 80)
				return 2;
			else
				return 3;
		}
	}
}