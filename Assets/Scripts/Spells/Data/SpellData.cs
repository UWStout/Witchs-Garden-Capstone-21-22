using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Spells
{
    public enum eSpellID {PLANT, WATER, HARVEST, SPEED_UP, REWIND, CLONE, HYBRID, APPLY_POTION}
    
    [CreateAssetMenu(fileName = "SpellTemplate", menuName = "Data/Spells/Spell Data")]
    public class SpellData : ScriptableObject
    {
        public eSpellID SpellID => _spellID;
        [SerializeField] private eSpellID _spellID;
        
        public string SpellName => _name;
        [SerializeField] private string _name;

        public int ManaCost => _manaCost;
        [SerializeField] private int _manaCost;

        public bool RequiresItem => _requiresItem;
        [SerializeField] private bool _requiresItem;

        public Sprite SpellIcon => _spellIcon;
        [SerializeField] private Sprite _spellIcon;
       
        public ParticleSystem SpellVfx => _spellVfx;
        [SerializeField] private ParticleSystem _spellVfx;

        //Serialize a field for audio tracks
        public AK.Wwise.Event SpellSFX => _spellSFX;
        [SerializeField] private AK.Wwise.Event _spellSFX;
        // Assets>GameFiles>ScriptableAssets>Spells Blah

        // used for event delay and timing
        public SpellTimedEvents TimedEvents => _timedEvents;
        [SerializeField] private SpellTimedEvents _timedEvents;
        
    }

}