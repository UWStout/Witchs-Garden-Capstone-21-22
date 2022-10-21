using System;
using UnityEngine;

namespace Plants
{
	[Serializable]
	public struct TraitGenerationChance
	{
		public PlantTrait PlantTrait;
		[Range(0, 100f)]
		public float SpawnChance;
	}
}