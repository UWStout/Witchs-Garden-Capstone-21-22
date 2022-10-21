/*
* AUTHOR : Steve Datz
* DESC : Handles paying out rewards for completeing a request
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System;
using Diagrams;
using Items;
using Player;
using UnityEngine;
using Research;


namespace Narrative
{
	public class NarrativeRequestPayloadHandler 
	{
		 private PlayerController _player;
		
		/************************************************************************************************************************/
		public NarrativeRequestPayloadHandler(PlayerController player)
		{
			_player = player;
		}
		
		/************************************************************************************************************************/
		
		public void GiveReward(ActiveCharacterRequest finishedRequest)
		{
			
			//Give the reward 
			var request = finishedRequest.NCRequest.ItemRequested;
			var rewards = request.RewardPayloads;
			foreach (var reward in rewards)
			{
				HandleReward(reward);
			}
			
		}

		/// <summary>
		/// Only to be used by last minute tutorial hack (otherwise private)
		/// </summary>
		public bool HandleReward(Reward reward)
		{
			switch (reward.GetPayloadType())
			{
				case ePayloadType.GOLD:
				{
					if (reward is PayloadGold castedReward)
						_player.PlayerGold.IncrementGold((int) (castedReward.GoldAmount * GlobalNarrativeModifiers.NARR_GOLD_REWARD_MOD));
					break;
				}
				case ePayloadType.ITEM:
				{
					if (reward is PayloadItem castedReward)
					{
						switch (castedReward.ItemRewardTemplate.ItemType)
						{
							case eItemType.SEED:
								_player.PlayerInventory.AddItem(new SeedItem(castedReward.ItemRewardTemplate as IPlantableItem, castedReward.GetQualityForType()));
								break;
							case eItemType.YIELD:
								_player.PlayerInventory.AddItem(new YieldItem(castedReward.ItemRewardTemplate as IHybridItem, castedReward.GetQualityForType()));
								break;
							case eItemType.POTION:
								_player.PlayerInventory.AddItem(new PotionItem(castedReward.ItemRewardTemplate as IPotion, castedReward.GetQualityForType()));
								break;
							default:
								throw new ArgumentOutOfRangeException();
						}
					}

					break;
				}
				case ePayloadType.RESEARCH:
				{
					if (reward is PayloadResearch castedReward)
					{
						ResearchSystem.Instance.UnlockChapter(castedReward.Chapter);
					}

					break;
				}
				case ePayloadType.DIAGRAM:
				{
					if (reward is PayloadDiagram castedReward)
					{
						_player.DiagramHandler.AddDiagram(castedReward.DiagramTemplate);
					}

					break;
				}
				case ePayloadType.SPELL:
				{
					if (reward is PayloadPlayerSpell castedReward)
					{
						_player.Spells.UnlockSpell(castedReward.SpellData.SpellID);
					}

					break;
				}
				default:
				{
					Debug.Log($"<color=yellow>{reward.GetPayloadType()} not implemented");
					return false;
				}
			}

			return true;
		}
		/************************************************************************************************************************/
		
		// private void Subscribe(bool cond)
		// {
		// 	if (cond)
		// 	{
		// 		NarrativeSystem.Instance.OnRequestComplete += GiveReward;
		// 		
		// 	}
		// 	else
		// 	{
		// 		NarrativeSystem.Instance.OnRequestComplete -= GiveReward;
		// 		
		// 	}
		// }
	}

}