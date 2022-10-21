/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_plantWitheringMod", menuName = "Data/Research/Plant Withering Mod", order = 2)]
	public class PlantWitheringDelay : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.PLANT_MOD;
		
		//NOT SURE -TODO
		public float ModValue => _modValue;
		[Range(1,50)]
		[SerializeField] private float _modValue = 15;
	}

}