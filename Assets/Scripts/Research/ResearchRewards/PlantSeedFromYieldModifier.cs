using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Research 
{

	[CreateAssetMenu(fileName = "_plantSeedChanceMod", menuName = "Data/Research/Plant Seed Chance Mod", order = 3)]
	public class PlantSeedFromYieldModifier : ResearchItemTemplate
	{
		public float ModValue => _modValue;
		[Range(1, 50)] [Tooltip("Suggest numbers ending in tens, 10,20,30")]
		[SerializeField] private float _modValue = 10;
	}
}
