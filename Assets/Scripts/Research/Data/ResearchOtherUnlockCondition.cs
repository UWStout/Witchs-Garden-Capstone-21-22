using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Research
{
    [CreateAssetMenu(fileName = "Cond_OtherUnlock", menuName = "Data/Research/UnlockInfo/Unlock Cond Other", order = 11)]
    public class ResearchOtherUnlockCondition : ResearchUnlockCondition
    {
        [field: SerializeField]
        public string UnlockHintTxt { get; private set; }

        public override string GetUnlockedDisplayForUI()
        {
            return UnlockHintTxt;
        }
    }
}