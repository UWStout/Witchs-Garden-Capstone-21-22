/*
* AUTHOR : Steve Datz
* DESC : A way to specifiy an event condition related to the players current gold amount
*/
using UnityEngine;

namespace Narrative
{
	public enum eCondComparison {EQUAL, GREATER_THAN, LESS_THAN}
	
	[CreateAssetMenu(fileName = "COND_PlayerGold", menuName = "Data/Narrative/Condition Player Gold")]
	public class CondPlayerGold: EventCondition
	{
		public override eTriggerCondType GetCondition() => eTriggerCondType.PLAYER_GOLD;
		
		public int GoldAmount => _amount;
		[SerializeField] private int _amount;
		
		public eCondComparison CondComparison => condComparison;
		[SerializeField] private eCondComparison condComparison;



		protected override string FormatUIDescription()
		{
			switch (condComparison)
			{
				case eCondComparison.EQUAL:
					return $"Has {_amount} gold";
				case eCondComparison.LESS_THAN:
					return $"Has less than {_amount} gold";
				case eCondComparison.GREATER_THAN:
					return $"Has more than {_amount} gold";
			}

			return $"????";
		}
	}
}