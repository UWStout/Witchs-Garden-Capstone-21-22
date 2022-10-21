/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections.Generic;
using UnityEngine;

namespace Plants
{
	[CreateAssetMenu(fileName = "PlantTrait_", menuName = "Data/Plants/Traits/Plant Trait", order = 0)]
	public class PlantTrait : ScriptableObject
	{
		public string TraitName => _traitName;
		[SerializeField] private string _traitName = "";
		
		public string TraitFlavorText => _traitFlavorText;
		[SerializeField] private string _traitFlavorText =default;
		
		[SerializeField] private List<PlantModSet> _plantModifiers = default;
		
		/// <summary>
		/// Have to do this because issue doing wrapped serialization in PlantModifier CTOR,
		/// otherwise the newing up of the wrapped modifier always had default values somehow
		/// </summary>
		public List<PlantModifier> GetPlantModifiers()
		{
			List<PlantModifier> runtimeList = new List<PlantModifier>();
            foreach (var modSet in _plantModifiers)
            {
				runtimeList.Add(new PlantModifier(modSet));
            }
			return runtimeList;
		}
	}

}