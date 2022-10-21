using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Plants;

namespace Garden
{
	[CreateAssetMenu(fileName = "HybridFormation", menuName = "Data/Garden/Hybrid Formation")]
	public class HybridFormation : ScriptableObject
	{
		[Header("Positive X is left to right, pos Z is front of garden to back.")]
		[Header("One component must have relative position (0, 0).")]

		[SerializeField] private List<HybridComponent> _components;
		public List<HybridComponent> Components => _components;


		[SerializeField] private Items.SeedTemplate _resultPlant;
		public Items.SeedTemplate ResultPlant => _resultPlant;
	}

	[System.Serializable]
	public class HybridComponent
	{
		public PlantData PlantType;
		// TODO plant state
		public Coords RelativePos; // relative to "center" of hybrid
	}

	[System.Serializable]
	public struct Coords
	{
		public Coords(int X, int Z)
		{
			x = X;
			z = Z;
		}

		public int x;
		public int z;
	}
}