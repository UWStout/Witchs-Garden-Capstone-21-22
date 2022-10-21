using System;
using System.Collections.Generic;
using UnityEngine;
using Spells;
using Helpers;
using Tutorial;

namespace Player
{
    public class PlayerSpells : MonoBehaviour
    {
        public event Action<PlayerSpells> OnSpellUnlockChange;
        
        
        [Header("Ref Data")]
        [SerializeField] private SpellbookData _spellbookData;
        [SerializeField] private TutorialTrigger _tutorialHybridTrigger;
        [SerializeField] private TutorialTrigger _tutorialCloneTrigger;
        

        public IReadOnlyList<Spell> Spells => _spells;
        private List<Spell> _spells;

        private readonly List<eSpellID> _unlockedSpells = new List<eSpellID>();
        
        /************************************************************************************************************************/

        public void Initialize() //Self Init incase we need to pass ref in (removed player mana)
        {
            //Create spells 
            _spells = new List<Spell>()
            {
                new PlantSpell(_spellbookData.PlantSpell),
                new WaterSpell(_spellbookData.WaterSpell),
                new HarvestSpell(_spellbookData.HarvestSpell),
                new SpeedUpSpell(_spellbookData.SpeedupSpell),
                new RewindSpell(_spellbookData.RewindSpell),
                new CloneSpell(_spellbookData.CloneSpell),
                new HybridSpell(_spellbookData.HybridSpell),
                new ApplyPotionSpell(_spellbookData.ApplyPotionSpell)
            };
            
            _unlockedSpells.Add(_spellbookData.PlantSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.WaterSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.HarvestSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.ApplyPotionSpell.SpellID);

            var devCheck = DevModeToggle.Instance;
            if (devCheck && devCheck.DevMode && devCheck.DoUnlockAllSpells) 
                UnlockDevSpells();
        }
        
        public Spell GetSpellForData(SpellData data)
        {
            foreach (var spell in _spells)
            {
                if (spell.SpellData == data)
                    return spell;
            }

            return null;
        }
        public Spell GetSpellForData(eSpellID id)
        {
            foreach (var spell in _spells)
            {
                if (spell.SpellData.SpellID == id)
                    return spell;
            }

            return null;
        }


        public bool IsSpellUnlocked(eSpellID id)
        {
            return _unlockedSpells.Contains(id);
        }

        public void UnlockSpell(eSpellID id)
        {
            if (_unlockedSpells.Contains(id))
                return;

            _unlockedSpells.Add(id);
            OnSpellUnlockChange?.Invoke(this);

            //Trigger tutorial when unlocking spell
            if (id == eSpellID.HYBRID)
                _tutorialHybridTrigger.Trigger();
            else if (id == eSpellID.CLONE)
                _tutorialCloneTrigger.Trigger();
        }        
    
        /************/
        private void UnlockDevSpells()
		{
            _unlockedSpells.Add(_spellbookData.SpeedupSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.RewindSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.CloneSpell.SpellID);
            _unlockedSpells.Add(_spellbookData.HybridSpell.SpellID);
        }
    
    }
}
