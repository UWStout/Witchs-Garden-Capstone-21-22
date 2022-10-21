using UnityEngine;

namespace Statistics
{
	public enum eModifierType { FLAT, PERCENT }
	
	public class Modifier<T> where T : System.Enum
	{
		public eModifierType ModType { get; private set; }
		public T StatAffected   { get; private set; }
		public float Value { get; private set; }
		/************************************************************************************************************************/
		public Modifier(T statAffected, eModifierType modifierType, float value)
		{
			StatAffected = statAffected;
			ModType = modifierType;
			Value = value;
			//Debug.Log($"Set statAffected to {StatAffected}");
		}
		/************************************************************************************************************************/

		public float GetModifierValue(float currentValue)
		{
			if (ModType == eModifierType.FLAT)
			{
				return currentValue + currentValue;
			}

			return currentValue + (currentValue * Value);
		}
		/************************************************************************************************************************/
	}
}