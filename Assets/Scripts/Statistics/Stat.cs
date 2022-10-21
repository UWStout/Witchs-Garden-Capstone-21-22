using System;
using UnityEngine;

namespace Statistics
{
	[Serializable]
	public class Stat
	{
		public float CurrentValue { get; private set; }
		public float MaxValue { get; private set; }

		/************************************************************************************************************************/
		public Stat(float currentValue, float maxValue)
		{
			CurrentValue = currentValue;
			MaxValue = maxValue;
			ValidateMinMax();
		}

		public Stat(float baseValue, float modValue, float statMax)
		{
			var combinedVal = baseValue + modValue;
			MaxValue = statMax; // better be non negative fyi
			CurrentValue = combinedVal < MaxValue ? combinedVal : MaxValue;
			ValidateMinMax();
		}

		/************************************************************************************************************************/
		public void IncrementValue(float increment)
		{
			CurrentValue += increment;
			ValidateMinMax();
		}

		public void SetValue(float newValue)
		{
			CurrentValue = newValue;
			ValidateMinMax();
		}
		
		
		/************************************************************************************************************************/
		private void ValidateMinMax()
		{
			CurrentValue = Mathf.Clamp(CurrentValue, 0, MaxValue);
		}
	}
}
