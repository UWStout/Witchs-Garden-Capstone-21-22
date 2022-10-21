/*
* AUTHOR : Steve Datz
* DESC : Helper class for the Narrative System to validate events relating to Prev Requests
*/

using System;
using System.Collections.Generic;
using UnityEngine;

namespace Narrative
{
	public static class PrevRequestValidator 
	{
		//INVALID:
		/********************************************************************/
		
		/// <summary>
		/// Checks if the finished request invalidates an active one,
		/// then removes it if so
		/// </summary>
		public static void CheckIfInvalidedActiveRequestsByFinishedRequest(NarrativeCharacterRequest completedRequest, List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			CheckIfInvalidedActiveRequestsHelper(completedRequest, activeRequests, removeStaleRequests, false);
		}
		
		public static void CheckIfInvalidedActiveRequestsByFailedRequest(NarrativeCharacterRequest failedRequest, List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests)
		{
			CheckIfInvalidedActiveRequestsHelper(failedRequest, activeRequests, removeStaleRequests, true);
		}

		private static void CheckIfInvalidedActiveRequestsHelper(NarrativeCharacterRequest request, List<ActiveCharacterRequest> activeRequests, Action<List<ActiveCharacterRequest>> removeStaleRequests, bool isFailed)
		{
			List<ActiveCharacterRequest> staleRequests = new List<ActiveCharacterRequest>();

			foreach (var activeRequest in activeRequests)
			{
				var cond = activeRequest.NCRequest.InvalidCondition;
				if (!EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PREVIOUS_REQUEST, out CondPrevRequest castedCond))
					continue;
				//If completing the request invalidates the active request- flag it for removal
				if (castedCond.IsCompleted == isFailed && request == castedCond.CharacterRequest)
				{
					staleRequests.Add(activeRequest);
				}
			}

			removeStaleRequests(staleRequests);
		}
		
		
		//NEW:
		/********************************************************************/
		
		/// <summary>
		/// Checks if finishing a request unlocks any new ones
		/// then generates it if so
		/// </summary>
		public static void CheckIfFinishedRequestUnlockedAnyNewRequests(NarrativeCharacterRequest finishedRequest, List<NarrativeSequence> startingSequences,  Action<string, NarrativeCharacterRequest> generateNewRequest )
		{
			CheckSeqForConditionHelper(finishedRequest, startingSequences, generateNewRequest, true);
		}
		
		public static void CheckIfFailedRequestUnlockedAnyNewRequests(NarrativeCharacterRequest failedRequest, List<NarrativeSequence> startingSequences,  Action<string, NarrativeCharacterRequest> generateNewRequest )
		{
			CheckSeqForConditionHelper(failedRequest, startingSequences, generateNewRequest, false);
		}
		
		private static void CheckSeqForConditionHelper(NarrativeCharacterRequest request, List<NarrativeSequence> startingSequences, Action<string, NarrativeCharacterRequest> generateNewRequest , bool isCompleted)
		{
			foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					var cond = req.ActivationCondition;
					if (! EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.PREVIOUS_REQUEST, out CondPrevRequest castedCond))
						continue;
					//Debug.Log($"PrevRequest Cond check : {request.name}  == {castedCond.CharacterRequest} isCompleted={isCompleted}");
					if (castedCond.IsCompleted == isCompleted && request == castedCond.CharacterRequest)
					{
						generateNewRequest(seq.SequenceID, req);
					}
				}
			}
		}

	}
}