/*
* AUTHOR : Steve Datz
* DESC : Helper class for the Narrative System to validate events relating to Items
*/
using System;
using System.Collections.Generic;
using Items;
using Player;

namespace Narrative
{
	public static class ItemValidator
	{
		//INVALID:
		/********************************************************************/
		/// <summary>
		/// Checks if having or not having an item invalidate any current requests,
		/// if so - removes them
		/// </summary>
		/// <param name="items"></param>
		/// <param name="activeRequests"></param>
		/// <param name="removeStaleRequests"></param>
		public static void CheckIfInvalidActiveRequestByAllPlayerItems(List<IItem> items, List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();
			List<ActiveCharacterRequest> unhandledRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_ITEM, out CondPlayerItem castedCond))
					continue;
				//If the player no longer has this item - flag it for removal 
				//Cant use items.Contains(castedCond.ItemRewardTemplate) - need more control
				foreach (var playerItem in items)
				{
					if (playerItem.ItemName == castedCond.ItemRewardTemplate.ItemName)
					{
						//If youre not supposed to have the item- and you do:
						if (castedCond.HasItem == false)
						{
							//Flag it for removal 
							if(!staleRequests.Contains(activeRequest))
								staleRequests.Add(activeRequest);
						}
						//If youre supposed to have the item and you possibly dont : check later
						else
						{
							unhandledRequests.Add(activeRequest);
						}
					}
				}
				
			}
			//Youre supposed to have these items 
			foreach (var requestToHave in unhandledRequests)
			{
				bool found = false;
				foreach (var playerItem in items)
				{
					//already know this is safe
					var castedCond = requestToHave.NCRequest.ActivationCondition as CondPlayerItem;
					// ReSharper disable once PossibleNullReferenceException
					if (playerItem.ItemName == castedCond.ItemRewardTemplate.ItemName)
					{
						found = true;
						break; // early
					}
				}
				//We didnt have the item anymore-so flag it for removal 
				if (!found && !staleRequests.Contains(requestToHave))
				{
					staleRequests.Add(requestToHave);
				}
			}

			removeStaleRequests(staleRequests);
			//return staleRequests;
		}
		public static void CheckIfInvalidRequestForHeldItem(IItem itemAdded, List<ActiveCharacterRequest> activeRequests,  Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_ITEM, out CondPlayerItem castedCond))
					continue;
				if (itemAdded.ItemName != castedCond.ItemRewardTemplate.ItemName)
					continue;
				//If youre not supposed to have the item and you do
				if (castedCond.HasItem == false)
				{
					//Flag it for removal 
					staleRequests.Add(activeRequest);
				}
			}

			removeStaleRequests(staleRequests);
			//return staleRequests;
		}
		public static void CheckIfInvalidRequestForRemovedItem(IItem itemRemoved, List<ActiveCharacterRequest> activeRequests,  Action<List<ActiveCharacterRequest>> removeStaleRequests , PlayerInventory playerInv)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_ITEM, out CondPlayerItem castedCond))
					continue;
				if (itemRemoved.ItemName != castedCond.ItemRewardTemplate.ItemName)
					continue;
				//If youre supposed to have the item and you dont 
				if (castedCond.HasItem == true)
				{
					bool foundAnother = false;
					//Check if the player has more copies of this item -
					foreach (var itemOfSameType in playerInv.GetItemsOfType(itemRemoved.ItemType))
					{
						if (itemOfSameType.ItemName == itemRemoved.ItemName)
						{
							foundAnother = true;
							break; //early 
						}
					}

					if (!foundAnother)
					{
						//Flag it for removal 
						staleRequests.Add(activeRequest);
					}
				}
			}

			removeStaleRequests(staleRequests);
		}
		
		//NEW:
		/********************************************************************/
		public static void CheckIfAddingItemUnlockedAnyNewRequests(IItem itemAdded, List<NarrativeSequence> startingSequences, Action<string, NarrativeCharacterRequest> generateNewRequest)
		{
			//Debug.Log($"Check events unlocked by turn#{turnNo}");
			foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					//Debug.Log($"Check req{req}-> {req.ActivationCondition}");
					var cond = req.ActivationCondition;
					if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_ITEM, out CondPlayerItem castedCond))
						continue;
					//Debug.Log($"Check ITEM compar {itemAdded.ItemName}-> {castedCond.ItemRewardTemplate.ItemName}");
					if (castedCond.HasItem == true && itemAdded.ItemName == castedCond.ItemRewardTemplate.ItemName)
					{
						generateNewRequest(seq.SequenceID, req);
					}
				}
			}
		}
		public static void CheckIfRemovingItemUnlockedAnyNewRequests(IItem itemRemoved,  List<NarrativeSequence> startingSequences, Action<string, NarrativeCharacterRequest> generateNewRequest)
		{
			//TODO
		}
		
	}
}