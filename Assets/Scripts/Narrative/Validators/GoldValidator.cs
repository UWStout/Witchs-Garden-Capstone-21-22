/*
* AUTHOR : Steve Datz
* DESC : Helper class for the Narrative System to validate events relating to Players Gold
*/
using System;
using System.Collections.Generic;
using UnityEngine;

namespace Narrative
{
	public static class GoldValidator
	{
		//INVALID:
		/********************************************************************/
		public static void CheckIfInvalidRequestForPlayerGold(int goldAmnt,  List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_GOLD, out CondPlayerGold castedCond))
					continue;
				//If the starting turn invalidates this active request
				if (castedCond.CondComparison == eCondComparison.LESS_THAN && goldAmnt < castedCond.GoldAmount)
				{
					//Debug.Log($"invalid becuz < {goldAmnt}");
					staleRequests.Add(activeRequest);
				}
				else if (castedCond.CondComparison == eCondComparison.GREATER_THAN && goldAmnt > castedCond.GoldAmount)
				{
					//Debug.Log($"invalid becuz > {goldAmnt}");
					staleRequests.Add(activeRequest);
				}
			}

			removeStaleRequests(staleRequests);
		}
		
		//NEW:
		/********************************************************************/
		public static void CheckIfPlayerGoldUnlocksNewRequest(int goldAmnt, List<NarrativeSequence> startingSequences, List<NarrativeCharacterRequest> completedRequests, List<ActiveCharacterRequest> activeRequests, Action<string, NarrativeCharacterRequest> generateNewRequest)
		{
			//Debug.Log($"Check events unlocked by Gold amnt:{goldAmnt}");
			foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					//Debug.Log($"Check req{req}-> {req.ActivationCondition}");
					var cond = req.ActivationCondition;
					if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PLAYER_GOLD, out CondPlayerGold castedCond))
						continue;
					//already completed
					if (completedRequests.Contains(req))
						continue;
					//already active
					bool alreadyActive = false;
					foreach (var activeReq in activeRequests)
					{
						if (activeReq.NCRequest == req)
						{
							alreadyActive = true;
							break;
						}
					}
					if (alreadyActive)
						continue;
					
					//Debug.Log($"GOLD Check compar {castedCond.CondComparison}-> {castedCond.GoldAmount}");
					if (castedCond.CondComparison == eCondComparison.EQUAL && goldAmnt == castedCond.GoldAmount)
					{
						generateNewRequest(seq.SequenceID, req);
					}
					else if (castedCond.CondComparison == eCondComparison.LESS_THAN && goldAmnt < castedCond.GoldAmount)
					{
						generateNewRequest(seq.SequenceID, req);
					}
					else if (castedCond.CondComparison == eCondComparison.GREATER_THAN && goldAmnt > castedCond.GoldAmount)
					{
						generateNewRequest(seq.SequenceID, req);
					}
				}
			}
		}
	}
}