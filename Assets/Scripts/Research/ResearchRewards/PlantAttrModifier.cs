/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using Plants;
using Statistics;

namespace Research
{
	[CreateAssetMenu(fileName = "_plantAttrMod", menuName = "Data/Research/Plant Attr Mod", order = 2)]
	public class PlantAttrModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.PLANT_MOD;
		
		 public ePlantAttribute PlantAttr => _plantAttribute;
		[SerializeField] private ePlantAttribute _plantAttribute;
		
		public eModifierType ModType => _modType;
		[SerializeField] private eModifierType _modType;
		
		public float ModValue => _modValue;
		//Would make custom subclasses/inspector for validation in real game (Steve)
		[Header("Caution: Select a reasonable value for value based on Type and attribute")]
		[SerializeField] private float _modValue = 2;
	}

}