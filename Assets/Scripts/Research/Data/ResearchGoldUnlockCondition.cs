
using UnityEngine;


namespace Research
{
    [CreateAssetMenu(fileName = "Cond_GoldUnlock", menuName = "Data/Research/UnlockInfo/Unlock Cond Gold", order = 10)]
    public class ResearchGoldUnlockCondition : ResearchUnlockCondition 
    {
        //I SHOULD HAVE REUSED PAYLOAD_GOLD from narrative >.<
        [field: SerializeField]
        public int GoldAmount { get; private set; }


        public override string GetUnlockedDisplayForUI()
        {
            return $"Unlocked for <color=yellow>{GoldAmount}</color> gold";
        }
    }
}