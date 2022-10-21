/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Tutorial;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Narrative
{
	public static class TutorialPromptValidator
	{

		public static void CheckIfPromptUnlocksRequest(List<TutorialPrompt> prompts, NarrativeRequestPayloadHandler payloadHandler, List<NarrativeSequence> startingSequences, List<NarrativeCharacterRequest> completedRequests, List<ActiveCharacterRequest> activeRequests, Action<string, NarrativeCharacterRequest> generateNewRequest)
		{
			//Debug.Log($"Check events unlocked by Gold amnt:{goldAmnt}");
			foreach (var seq in startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					//Debug.Log($"Check req{req}-> {req.ActivationCondition}");
					var cond = req.ActivationCondition;
					if (!EventTypeValidator.ConditionIsOfType(cond, eTriggerCondType.TUT_EVENT, out CondTutorialEvent castedCond))
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

					foreach (var prompt in prompts)
					{
						if (castedCond.PromptToOccur == prompt)
						{
							generateNewRequest(seq.SequenceID, req);
							//A way to force in knowning a diagram given through a starting payload for tutorial sake
							if(castedCond.WrappedRewardOnBegin!= null)
								payloadHandler.HandleReward(castedCond.WrappedRewardOnBegin);
							break;
						}
					}

				}
			}

		}
	}
}