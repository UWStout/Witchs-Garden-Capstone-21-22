/*
* AUTHOR : Steve Datz
* DESC : A payload reward that results in an item
*/

using System;
using Items;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "PL_Item", menuName = "Data/Narrative/Reward Payload Item")]
	public class PayloadItem : Reward
	{
		public override ePayloadType GetPayloadType() => ePayloadType.ITEM;

		public IItem ItemRewardTemplate => _item;
		[SerializeField] private SerializedItemTemplate _item;

		public int GetQualityForType()
		{
			switch (_item.ItemType)
			{
				case eItemType.SEED:
					return _startingSeedQuality;
				case eItemType.YIELD:
					return _startingYieldQuality;;
				case eItemType.POTION:
					return _startingPotionQuality;;
				default:
					throw new ArgumentOutOfRangeException();
			}
		}
		
		//-TODO- Custom inspector that only shows these based on assigned item
		
		//quality in terms of 0-100 plant stats
		[Range(1,100)]
		[SerializeField] private int _startingSeedQuality = 50;
		//quality in terms of 0-100 plant stats
		[Range(1, 100)]
		[SerializeField] private int _startingYieldQuality = 50;
		//quality in terms of 0-100 plant stats
		[Range(1, 100)]
		[SerializeField] private int _startingPotionQuality = 50;
		
		public override string GetFormattedUIRewardText()
		{
			return $"{_item.ItemName} Item";
		}
	}
}