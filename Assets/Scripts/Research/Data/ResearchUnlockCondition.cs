
using UnityEngine;

namespace Research
{
    // [CreateAssetMenu(fileName = "PlantTemplate_", menuName = "Data/Plants/Plant Template", order = 3)]
    public abstract class ResearchUnlockCondition : ScriptableObject
    {
        public abstract string GetUnlockedDisplayForUI();
    }
}
