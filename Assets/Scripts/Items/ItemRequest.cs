using System;
using System.Collections.Generic;
using Narrative;
using UnityEngine;

namespace Items
{
	[Serializable]
	public class ItemRequest
	{
		public IItem ItemTemplate => _item;
		[SerializeField] private SerializedItemTemplate _item;
		
		public IReadOnlyList<Reward> RewardPayloads => _rewardPayloads;
		[SerializeField] private List<Reward> _rewardPayloads;
		/*********************************************************************************************/
	}
}