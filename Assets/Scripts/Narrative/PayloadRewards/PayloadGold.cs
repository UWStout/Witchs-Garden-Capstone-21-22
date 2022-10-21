/*
* AUTHOR : Steve Datz
* DESC : A payload reward that results in gold
*/

using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "PL_Gold", menuName = "Data/Narrative/Reward Payload Gold")]
	public class PayloadGold : Reward
	{
		public override ePayloadType GetPayloadType() => ePayloadType.GOLD;

		public int GoldAmount => _amount;
		[SerializeField] private int _amount;
		
		public override string GetFormattedUIRewardText()
		{
			return _amount + " Gold";
		}
	}
}