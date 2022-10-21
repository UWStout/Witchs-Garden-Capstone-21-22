/*
* AUTHOR : Steve Datz
* DESC :
*/

using Tutorial;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Narrative
{
	[CreateAssetMenu(fileName = "COND_TutorialEvent", menuName = "Data/Narrative/Condition Tutorial Event")]
	public class CondTutorialEvent : EventCondition
	{
		//It would be arguably better to say "playerspellUnlocked" but since this is already built.. i dont want a race condition
		//and will do this way
		public TutorialPrompt PromptToOccur => _tutorialPromptOccurred;
		[SerializeField] private TutorialPrompt _tutorialPromptOccurred;

		public Reward WrappedRewardOnBegin => _onBeginWrappedReward;
		[Tooltip("An optional reward to be given through this tutorial event starting")]
		[SerializeField] private Reward _onBeginWrappedReward;
		/************************************************************************************************************************/

		public override eTriggerCondType GetCondition() => eTriggerCondType.TUT_EVENT;

		protected override string FormatUIDescription()
		{
			return "Tutorial Event occurred"; //will this be used? shouldnt show up in completed events (used in tutorial)
		}
	}

}