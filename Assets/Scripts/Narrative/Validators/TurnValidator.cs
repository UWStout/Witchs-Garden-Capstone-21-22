/*
* AUTHOR : Steve Datz
* DESC : Helper class for the Narrative System to validate events relating to the current turn
*/
using System;
using System.Collections.Generic;

namespace Narrative
{
	public static class TurnValidator
	{
		//INVALID : 
		/********************************************************************/
		/// <summary>
		/// Checks if the current turn number made any requests expire
		/// Then removes them if so
		/// </summary>
		public static void CheckIfInvalidActiveRequestByNewTurn(int turnNo, List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.CURR_TURN, out CondCurrentTurn castedCond))
					continue;
				//If the starting turn invalidates this active request
				if (castedCond.CondComparison == eCondComparison.LESS_THAN && turnNo < castedCond.TurnNumber)
				{
					//Debug.Log($"invalid becuz < {turnNo}");
					staleRequests.Add(activeRequest);
				}
				else if (castedCond.CondComparison == eCondComparison.GREATER_THAN && turnNo > castedCond.TurnNumber)
				{
					//Debug.Log($"invalid becuz > {turnNo}");
					staleRequests.Add(activeRequest);
				}
			}

			removeStaleRequests(staleRequests);
		}
		
		//NEW : 
		/********************************************************************/
		/// <summary>
		/// Checks if the current turn number unlocks any new requests,
		/// then generates them if so
		/// </summary>
		public static void CheckIfNewTurnUnlockedAnyNewRequests(int turnNo, List<NarrativeSequence> startingSequences, List<NarrativeCharacterRequest> completedRequests, List<ActiveCharacterRequest> activeRequests, Action<string, NarrativeCharacterRequest> generateNewRequest)
		{
			//Debug.Log($"Check events unlocked by turn#{turnNo}");
			foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					//Debug.Log($"Check req{req}-> {req.ActivationCondition}");
					var cond = req.ActivationCondition;
					if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.CURR_TURN, out CondCurrentTurn castedCond))
						continue;
					//already completed
					if(completedRequests.Contains(req))
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
					if(alreadyActive)
						continue;
					
					//Debug.Log($"TURN Check compar {castedCond.CondComparison}-> {castedCond.TurnNumber}");
					if (castedCond.CondComparison == eCondComparison.EQUAL && turnNo == castedCond.TurnNumber)
					{
						generateNewRequest(seq.SequenceID, req);
					}
					else if (castedCond.CondComparison == eCondComparison.LESS_THAN && turnNo < castedCond.TurnNumber)
					{
						generateNewRequest(seq.SequenceID, req);
					}
					else if (castedCond.CondComparison == eCondComparison.GREATER_THAN && turnNo > castedCond.TurnNumber)
					{
						generateNewRequest(seq.SequenceID, req);
					}
				}
			}
		}

	}
}