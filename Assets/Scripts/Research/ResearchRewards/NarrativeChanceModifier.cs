/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_narrChanceMod", menuName = "Data/Research/Narrative Chance Mod", order = 1)]
	public class NarrativeChanceModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.NARR_MOD;
		
		public float ChanceIncrease => _chanceIncrease;
		[Range(1,50)]
		[SerializeField] private float _chanceIncrease = 20;
	}
}