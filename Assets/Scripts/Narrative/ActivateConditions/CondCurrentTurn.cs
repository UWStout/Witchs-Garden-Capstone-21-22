/*
* AUTHOR : Steve Datz
* DESC : A way to specifiy an event condition related to a current turn
*/
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "COND_CurrTurn", menuName = "Data/Narrative/Condition Current Turn")]
    public class CondCurrentTurn : EventCondition
	{
		public override eTriggerCondType GetCondition() => eTriggerCondType.CURR_TURN;
		
		public int TurnNumber => _amount;
		[SerializeField] private int _amount;
		
		public eCondComparison CondComparison => condComparison;
        [SerializeField] private eCondComparison condComparison;


        protected override string FormatUIDescription()
        {
			switch(condComparison)
            {
				case eCondComparison.EQUAL:
					return $"Day {_amount}";
				case eCondComparison.LESS_THAN:
					return $"Day is before {_amount}";
				case eCondComparison.GREATER_THAN:
					return $"Day {_amount}";
			}

			return $"????";
		}
	}
}