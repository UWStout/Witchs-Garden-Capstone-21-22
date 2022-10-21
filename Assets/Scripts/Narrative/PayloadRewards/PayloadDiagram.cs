/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using Diagrams;


namespace Narrative
{
	[CreateAssetMenu(fileName = "PL_Diag", menuName = "Data/Narrative/Reward Payload Diagram")]
	public class PayloadDiagram : Reward
	{
		public override ePayloadType GetPayloadType() => ePayloadType.DIAGRAM;
		
		public DiagramTemplate DiagramTemplate => _diagram;
		[SerializeField] private DiagramTemplate _diagram;
		
		public override string GetFormattedUIRewardText()
		{
			//string typeSuffix = _diagram is PotionComboDiagTemplate ? "Potion" : "Hybrid";
			return _diagram.DiagramName; //+ typeSuffix;
		}
	}
}