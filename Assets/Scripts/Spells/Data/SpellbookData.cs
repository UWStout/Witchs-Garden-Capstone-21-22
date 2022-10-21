using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Spells
{

    [CreateAssetMenu(fileName = "SpellbookData", menuName = "Data/Spells/Spellbook Data")]
    public class SpellbookData : ScriptableObject
    {
        // Plant
        public SpellData PlantSpell => _plantSpellData;
        [SerializeField] private SpellData _plantSpellData;

        // Water
        public SpellData WaterSpell => _waterSpellData;
        [SerializeField] private SpellData _waterSpellData;

        // Harvest
        public SpellData HarvestSpell => _harvestSpellData;
        [SerializeField] private SpellData _harvestSpellData;

        //Speedup
        public SpellData SpeedupSpell => _speedupSpell;
        [SerializeField] private SpellData _speedupSpell;
        
        //Rewind
        public SpellData RewindSpell => _rewindSpell;
        [SerializeField] private SpellData _rewindSpell;
        
        //Clone
        public SpellData CloneSpell => _cloneSpell;
        [SerializeField] private SpellData _cloneSpell;

        //Hybrid
        public SpellData HybridSpell => _hybridSpell;
        [SerializeField] private SpellData _hybridSpell;

        //Potions
        public SpellData ApplyPotionSpell => _applyPotionSpell;
        [SerializeField] private SpellData _applyPotionSpell;


        // Add spell data scriptable objects as spells are added
        // ....
    }

}
