/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_rsrchRate", menuName = "Data/Research/Research Rate Mod", order = 1)]
	public class ResearchRateModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.RESEARCH_RATE_MOD;

		public float ResearchIncrease => _reasearchIncrease;
		[Range(0.1f,1)] // if the default rate is 1 , then 25% is 0.25
		[SerializeField] private float _reasearchIncrease = 0.25f;


	}
}