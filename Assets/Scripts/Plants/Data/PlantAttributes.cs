using System;
using UnityEngine;

namespace Plants
{
	public enum ePlantAttribute { QUALITY, YIELDAMOUNT, GROWTIME}
	
	[Serializable]
	public class PlantAttributes
	{
		private static readonly float MAX_QUALITY = 100f;
		private static readonly float MAX_YIELD = 10f;
		private static readonly float MAX_GROWTIME = 100f;
		
		[Range(0,100)] [Tooltip("Can be used for 'base starting Quality' but pre-configured item sets can alter this (player starting item/shop), Plants quality range is different than converted item stars range")]
		[SerializeField] private float _quality = 50;
		[Min(1)] 
		[SerializeField] private int _yieldAmount = 1 ;
		[Min(1)] //Shud be 2 , off for testing
		[SerializeField] private float _youngStateGrowTime = 4;
		
		/************************************************************************************************************************/
		public PlantAttributes(float quality, int yield, float youngStateGrowTime)
		{
			_quality = quality;
			_yieldAmount = yield;
			_youngStateGrowTime = youngStateGrowTime;
		}
		/************************************************************************************************************************/
		public float GetAttributeValue(ePlantAttribute attribute)
		{
			switch (attribute)
			{
				case ePlantAttribute.QUALITY:
				{
					return _quality;
				}
				case ePlantAttribute.YIELDAMOUNT:
				{
					return _yieldAmount;
				}
				case ePlantAttribute.GROWTIME:
				{
					return _youngStateGrowTime;
				}
				default:
					throw new ArgumentOutOfRangeException(nameof(attribute), attribute, $"No implementation for {attribute}");
			}
		}
		
		public static float GetMaxAttributeValue(ePlantAttribute attribute)
		{
			switch (attribute)
			{
				case ePlantAttribute.QUALITY:
				{
					return MAX_QUALITY;
				}
				case ePlantAttribute.YIELDAMOUNT:
				{
					return MAX_YIELD;
				}
				case ePlantAttribute.GROWTIME:
				{
					return MAX_GROWTIME;
				}
				default:
					throw new ArgumentOutOfRangeException(nameof(attribute), attribute, $"No implementation for {attribute}");
			}
		}
	}
}