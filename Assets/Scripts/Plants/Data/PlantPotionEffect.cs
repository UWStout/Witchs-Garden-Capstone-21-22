/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;

namespace Plants
{
    public enum ePlantPotionEffectType { CHANGE_ATTRIBUTE, SPEED_UP, REWIND, WATER }
    [CreateAssetMenu(fileName = "_potionEff", menuName = "Data/Items/PotionEffects/Plant Effect")]
    public class PlantPotionEffect : PotionEffect
    {
        //Were gonna pack all this into 1 effect cause Im trying to go fast and dont rememeber all the use cases
        //Would be better to make different classes for each type IMO (steve) - or custom inspector


        public ePlantPotionEffectType EffectType => _effectType;
        [SerializeField] private ePlantPotionEffectType _effectType;

        public ePlantAttribute Attribute => _attribute;
        [Header("Optional Settings based on Effect Type")] //TODO custom inspector
        [SerializeField] private ePlantAttribute _attribute;
        public int Value => _value;
        [SerializeField] private int _value;

        public string GetPotionEffectString()
        {
            switch (_effectType)
            {
                case ePlantPotionEffectType.CHANGE_ATTRIBUTE:
                    return _value.ToString("+#;-#;0") + " " + _attribute.ToString();
                case ePlantPotionEffectType.REWIND:
                    return "Rewind";
                case ePlantPotionEffectType.SPEED_UP:
                    return "Fast Forward";
                case ePlantPotionEffectType.WATER:
                    return "Water";
                default:
                    return "None";
            }
        }
    }
}
