/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_narrGoldMod", menuName = "Data/Research/Narrative Gold Mod", order = 1)]
	public class NarrativeGoldModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.NARR_MOD;
		
		public float GoldIncrease => _goldIncrease;
		[Range(0.05f,2f)]
		[SerializeField] private float _goldIncrease = 0.15f;
	}
}