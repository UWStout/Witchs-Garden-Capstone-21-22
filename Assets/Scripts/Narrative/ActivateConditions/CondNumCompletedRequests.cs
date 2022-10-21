
using UnityEngine;


namespace Narrative
{
    [CreateAssetMenu(fileName = "COND_NumCompletedRequests", menuName = "Data/Narrative/Condition Num Completed Requests")]

    public class CondNumCompletedRequests : EventCondition
    {
        public override eTriggerCondType GetCondition() => eTriggerCondType.NUM_COMPLETED_REQUESTS;

        public int CompletedAmount => _amount;
        [SerializeField] private int _amount;

        public eCondComparison CondComparison => condComparison;
        [SerializeField] private eCondComparison condComparison;

        protected override string FormatUIDescription()
        {
            return $"Completed All Other Requests";
            //switch (condComparison)
            //{
            //    case eCondComparison.EQUAL:
            //        return $"Finished {_amount} Requests";
            //    case eCondComparison.LESS_THAN:
            //        return $"Finished Less Than {_amount} Requests";
            //    case eCondComparison.GREATER_THAN:
            //        return $"Finished More Than {_amount} Requests";
            //}

            //return $"????";
        }
    }
}

