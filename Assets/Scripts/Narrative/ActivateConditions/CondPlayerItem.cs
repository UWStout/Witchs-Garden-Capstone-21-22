/*
* AUTHOR : Steve Datz
* DESC : A way to specifiy an event condition related to a current items
*/
using Items;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "COND_PlayerItem", menuName = "Data/Narrative/Condition Player Item")]
	public class CondPlayerItem: EventCondition
	{
		public override eTriggerCondType GetCondition() => eTriggerCondType.PLAYER_ITEM;

		public bool HasItem => _hasItem;
		[SerializeField] private bool _hasItem;
		
		public IItem ItemRewardTemplate => _item;
		[SerializeField] private SerializedItemTemplate _item;



		protected override string FormatUIDescription()
		{
			string condTxt = _hasItem ? "has " : "does not have";
			return $"{condTxt} {_item.ItemName} ";
		}
	}
}