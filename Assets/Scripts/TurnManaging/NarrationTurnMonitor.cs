using Narrative;
using UnityEngine;

namespace TurnManaging
{
	public class NarrationTurnMonitor : TurnListener
	{
		protected override void OnTurnAdvance(int turnNo)
		{
			NarrativeSystem.Instance.ReCheckConditionsForNewTurn(turnNo);
		}
	}
}