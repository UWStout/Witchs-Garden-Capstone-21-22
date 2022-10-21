/*
* AUTHOR : Steve Datz
* DESC :
*/

using Items;
using UnityEngine;

namespace Plants
{
	[CreateAssetMenu(fileName = "PlantTemplate_", menuName = "Data/Plants/Plant Template", order = 3)]
	public class PlantTemplate : ScriptableObject, IPlantTemplate
	{
		public PlantData PlantData => _plantData;
		[SerializeField] PlantData _plantData;


		public PlantModels PlantModels => _plantModels;
		[SerializeField] PlantModels _plantModels;


		public TraitGenerator Generator => _traitGenerator;
		[Header("The Trait Generator for this plant (controls the chance of better traits)")]
		[SerializeField] private TraitGenerator _traitGenerator;
		/************************************************************************************************/

	}
}