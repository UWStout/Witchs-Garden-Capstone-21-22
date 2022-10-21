using System;
using Items;
using UnityEngine;
using GameAnalyticsSDK;
using Plants;

namespace Player
{
    public class PlayerPotionHandler : PotionHandler
    {
        [SerializeField] private PlayerPotionEffectMap _effectMap;
        [SerializeField] private PlantPotionEffectMap _effectMapPlants;

        PlayerController _playerController;

        /************************************************************************************************************************/
        //Ugh this is circular - its fine (steve)
        public void Init(PlayerController player)
        {
            _playerController = player;
        }
		public override bool CanApplyPotion(PotionTemplate potion)
		{
            if (potion == null || !_effectMap.TryGetValue(potion, out PlayerPotionEffect effect))
                return false;
            return true;
        }

		public override bool ApplyPotion(PotionTemplate potion)
        {
            //Debug.Log($"Try apply Potion To Player ! {potion}");
            if (potion == null)
                return false;
            
            if (!_effectMap.TryGetValue(potion, out PlayerPotionEffect effect)) 
                return false;
            
            switch (effect.EffectType)
            {
                case ePlayerPotionEffectType.MANA_RESTORE:
                    return HandleManaRestore(effect);
                case ePlayerPotionEffectType.MANA_MAX:
                    return HandleManaMax(effect);
                case ePlayerPotionEffectType.GOLD:
                    return HandleGold(effect);
                default:
                    throw new ArgumentOutOfRangeException();
            }
        }

        public PlayerPotionEffect GetPlayerPotionEffect(PotionTemplate potion)
        {
            if (potion != null && _effectMap.TryGetValue(potion, out PlayerPotionEffect effect))
                return effect;
            else
                return null;
        }

        //This should not be here, but I need to get the potion effect for the UI, with no reference to the Patch. The potion handler was poorly implemented into only the Patch.
        public PlantPotionEffect GetPlantPotionEffect(PotionTemplate potion)
        {
            if (potion != null && _effectMapPlants.TryGetValue(potion, out PlantPotionEffect effect))
                return effect;
            else
                return null;
        }

        private bool HandleManaMax(PlayerPotionEffect effect)
        {
            var playerMana= _playerController.PlayerMana;
            playerMana.IncreaseMax(effect.ManaMaxIncrease);
            GameAnalytics.NewDesignEvent("MAX_MANA_INCREASE", effect.ManaMaxIncrease);

            //If we "gain" this amount of mana-doesnt read very well in UI
            // playerMana.GainMana(effect.ManaMaxIncrease);
            return true;
        }

        private bool HandleManaRestore(PlayerPotionEffect effect)
        {
            if (effect.ManaRefreshAmnt >= 0)
            {
                _playerController.PlayerMana.GainMana(effect.ManaRefreshAmnt);
                GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Mana", effect.ManaRefreshAmnt, "POTION", effect.name);
            }
            else
            {
                _playerController.PlayerMana.LoseMana(effect.ManaRefreshAmnt);
                GameAnalytics.NewResourceEvent(GAResourceFlowType.Sink, "Mana", effect.ManaRefreshAmnt, "POTION", effect.name);
            }

            return true;
        }

        private bool HandleGold(PlayerPotionEffect effect)
        {
            _playerController.PlayerGold.IncrementGold(effect.GoldAmount);
            //TODO: add GameAnalytics for this
            return true;
        }
    }
}
