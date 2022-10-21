/*
* AUTHOR : Steve Datz
* DESC : A way to specifiy an event condition that has no conditions
*/
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "COND_None", menuName = "Data/Narrative/Condition None")]
	public class CondNone : EventCondition
	{
		public override eTriggerCondType GetCondition() => eTriggerCondType.NONE;

        protected override string FormatUIDescription()
        {
            return "No condition";
        }
    }
}