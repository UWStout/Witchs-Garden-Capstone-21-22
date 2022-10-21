/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_plantTraitChanceMod", menuName = "Data/Research/Plant Trait Chance Mod", order = 2)]
	public class PlantTraitChanceModifier : ResearchItemTemplate
	{
		public enum eTraitTypeMod { SPAWNING_CHANCE, CARRYOVER_CHANCE}

		//public override eResearchItemType GetResearchItemType() => eResearchItemType.PLANT_MOD;

		public eTraitTypeMod TraitModType => _traitModType;
		[SerializeField] private eTraitTypeMod _traitModType = eTraitTypeMod.CARRYOVER_CHANCE;

		public float ModValue => _modValue;
		[Range(1,50)]
		[SerializeField] private float _modValue = 15;
	}
}