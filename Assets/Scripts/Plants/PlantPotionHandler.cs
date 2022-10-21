using System;
using Items;
using Helpers;
using Statistics;
using UnityEngine;
using Garden;

namespace Plants
{
    public class PlantPotionHandler : PotionHandler
    {
        [SerializeField] private PlantPotionEffectMap _effectMap;

        [SerializeField] Patch _patch;

		/************************************************************************************************************************/
		public override bool CanApplyPotion(PotionTemplate potion)
		{
            if (_patch == null || potion == null || !_effectMap.TryGetValue(potion, out PlantPotionEffect effect))
                return false;

            return true;
        }
		public override bool ApplyPotion(PotionTemplate potion)
        {
            //Debug.Log($"Try apply Potion To Plant ! [{potion}-> {_plant}]");
            if (potion == null)
                return false;
            
            if (!_effectMap.TryGetValue(potion, out PlantPotionEffect effect)) 
                return false;
            
            switch(effect.EffectType)
            {
                case ePlantPotionEffectType.CHANGE_ATTRIBUTE:
                    return HandleAttrChange(effect);
                case ePlantPotionEffectType.SPEED_UP:
                    return HandleSpeedUp(effect);
                case ePlantPotionEffectType.REWIND:
                    return HandleRewind(effect);
                case ePlantPotionEffectType.WATER:
                    return HandleWater(effect);
                default:
                    throw new ArgumentOutOfRangeException();
            }
            
        }

        /************************************************************************************************************************/

        private bool HandleAttrChange(PlantPotionEffect effect)
        {
            _patch.GetPlant().AddPermaModifier(effect.Attribute, eModifierType.FLAT, effect.Value);
            return true;
        }

        private bool HandleSpeedUp(PlantPotionEffect effect)
        {
            return _patch == null ? false : _patch.SpeedUpPlant();
        }

        private bool HandleRewind(PlantPotionEffect effect)
        {
            return _patch == null ? false : _patch.RewindPlant();
        }

        private bool HandleWater(PlantPotionEffect effect)
        {
            return _patch == null ? false : _patch.WaterPatch();
        }
    }


}
