/*
* AUTHOR : Steve Datz
* DESC : Helper class for the Narrative System to validate events relating to total completed requests
* --A semi quick last minute add in, not handling every case
*/

using System;
using System.Collections.Generic;
using UnityEngine;

namespace Narrative
{
	public delegate bool IsRequestActive(NarrativeCharacterRequest narrativeCharacterRequest);
	
    public static class TotalRequestValidator
    {
        public static void CheckIfNumCompletedRequestsUnlocksAnything(int numRequestsCompleted, List<NarrativeSequence> startingSequences, IsRequestActive alreadyActive, Action<string, NarrativeCharacterRequest> generateNewRequest)
        {
	        foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					var cond = req.ActivationCondition;
					if (!EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.NUM_COMPLETED_REQUESTS, out CondNumCompletedRequests castedCond))
						continue;

					//Debug.Log($"PrevRequest Cond check : {req.name}  == CondNumCompletedRequests requirement={castedCond.CompletedAmount} v current={numRequestsCompleted}" );
					//BEING LAZY AND NOT HANDLING EVERY Possible Condition Operator - cuz were not using others in game
					if (castedCond.CompletedAmount == numRequestsCompleted  && !alreadyActive(req))
					{
						generateNewRequest(seq.SequenceID, req);
					}
				}
			}
			

		}
    }
}