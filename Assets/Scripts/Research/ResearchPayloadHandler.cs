/*
* AUTHOR : Steve Datz
* DESC : Handles checking if a research reached 100% and a payload needs to be executed
*/


using System;
using System.Diagnostics;
using Narrative;
using Plants;
using Player;
using Shop;
using Statistics;
using UnityEngine;
using Debug = UnityEngine.Debug;

namespace Research
{
    public class ResearchPayloadHandler : MonoBehaviour
    {
        [SerializeField] private PlayerController _player;
        
        /************************************************************************************************************************/

        private void Start()
        {
            ResearchSystem.OnResearchProgressed += ResearchGainedProgress;
        }
        
        private void OnDestroy()
        {
            ResearchSystem.OnResearchProgressed -= ResearchGainedProgress;
        }
        
        /************************************************************************************************************************/

        private void ResearchGainedProgress(UnlockedProgressableResearchItem item)
        {
            if ((int) item.Progress != 100)
                return;
            //Debug.Log($"Research Completed!: <color=orange>{item.ResearchItemTemplate.ResearchName}</color> Progess: <color=green>{item.ResearchItemTemplate.GetResearchItemType()}</color>");
            ExecuteReward(item.ResearchItemTemplate);
        }

        private void ExecuteReward(ResearchItemTemplate itemTemplate)
        {
            bool success = itemTemplate switch
            {
                ResearchRateModifier researchMod => HandleReward(researchMod),
                //Narrative
                NarrativeChanceModifier chanceModifier => HandleReward(chanceModifier),
                NarrativeGoldModifier goldModifier => HandleReward(goldModifier),
                //Player
                PlayerModifier playerMod => HandleReward(playerMod),
                //Plants
                PlantAttrModifier attrModifier => HandleReward(attrModifier),
                PlantTraitChanceModifier traitChanceModifier => HandleReward(traitChanceModifier),
                PlantWitheringDelay witheringModifier => HandleReward(witheringModifier),
                PlantSeedFromYieldModifier seedChanceMod=> HandeReward(seedChanceMod),
                //Shop
                ShopModifier shopMod => HandleReward(shopMod),
                //Diag
                PotionDiagram potionMod=> HandleReward(potionMod),
                HybridDiagram hybridDiagram=> HandleReward(hybridDiagram),
                //Spell
                SpellUnlock spellUnlock=> HandleReward(spellUnlock),
                _ => throw new ArgumentOutOfRangeException()
            };

            if (!success)
            {
                Debug.Log($"<color=yellow>Research_Payload failed for</color>: [{itemTemplate.name} : {itemTemplate.GetType()}]");
            }
        }

        /************************************************************************************************************************/

        //RESEARCH:
        /************************************************************************************************************************/

        private static bool HandleReward(ResearchRateModifier mod)
        {
            if (mod == null)
                return false;

            GlobalResearchModifiers.IncreaseResearchRate(mod.ResearchIncrease);
            return true;
        }
        //NARR:
        /************************************************************************************************************************/

        private static bool HandleReward(NarrativeChanceModifier mod)
        {
            if (mod == null)
                return false;

            GlobalNarrativeModifiers.IncreaseNarrEventChanceRate(mod.ChanceIncrease);
            return true;
        }
        
        private static bool HandleReward(NarrativeGoldModifier mod)
        {
            if (mod == null)
                return false;

            GlobalNarrativeModifiers.IncreaseGoldRewardRate(mod.GoldIncrease);
            return true;
        }
        //PLAYER:
        /************************************************************************************************************************/
        private bool HandleReward(PlayerModifier mod)
        {
            if (mod == null || _player==null)
                return false;

            switch (mod.ModType)
            {
                case ePlayerModType.MANA_MAX:
                    _player.PlayerMana.IncreaseMax((int)mod.ModValue);
                    break;
                case ePlayerModType.MANA_RECOVERY:
                    _player.PlayerMana.IncreaseRefreshRate((int)mod.ModValue);
                    break;
                case ePlayerModType.MANA_CAST_REDUCTION:
                    Debug.Log($"TODO-ManaCastReduction"); //This seems a bit extra-Stretch Goal i guess (gonna be hard to show in UI)
                    return false;
                    //break;
                case ePlayerModType.MOVE_SPEED:
                    _player.GetComponent<PlayerMovement>().IncreaseMoveSpeed(mod.ModValue);
                    break;
                default:
                    throw new ArgumentOutOfRangeException();
            }
            return true;
        }
        //PLANTS:
        /************************************************************************************************************************/
        private static bool HandleReward(PlantAttrModifier mod)
        {
            if (mod == null)
                return false;
            GlobalPlantModifiers.AddGlobalModifier(new PlantModifier(mod.PlantAttr, mod.ModType, mod.ModValue));
            return true;
        }
        private static bool HandleReward(PlantTraitChanceModifier mod)
        {
            if (mod == null)
                return false;
            switch(mod.TraitModType)
            {
                case PlantTraitChanceModifier.eTraitTypeMod.SPAWNING_CHANCE:
                    {
                        GlobalPlantModifiers.AlterTraitSpawningChance((int)mod.ModValue);
                        break;
                    }
                case PlantTraitChanceModifier.eTraitTypeMod.CARRYOVER_CHANCE:
                    {
                        GlobalPlantModifiers.AlterTraitCarryOverChance((int)mod.ModValue);
                        break;
                    }
            }
            return true;
        }
        private static bool HandleReward(PlantWitheringDelay mod)
        {
            if (mod == null)
                return false;

            GlobalPlantModifiers.AlterWitherMod(mod.ModValue);
            return true;
        }

        private static bool HandeReward(PlantSeedFromYieldModifier mod)
        {
            if (mod == null)
                return false;

            GlobalPlantModifiers.AlterSeedHarvestChance((int)mod.ModValue);
            return true;
        }
        //SHOP:
        /************************************************************************************************************************/

        private bool HandleReward(ShopModifier mod)
        {
            if (mod == null)
                return false;

            //both flags on the SO is supported
            if (mod.IsBuyMod)
            {
                ShopModifiers.AlterBuyRate(mod.ModValue);
            }
            if (mod.IsSellMod)
            {
                ShopModifiers.AlterSellRate(mod.ModValue);
            }
            return true;
        }
        //DIAGRAMS
        /************************************************************************************************************************/

        private bool HandleReward(PotionDiagram mod)
        {
            if (mod == null)
                return false;
           
            _player.DiagramHandler.AddDiagram(mod.Diagram);
            
            return true;
        }
        private bool HandleReward(HybridDiagram mod)
        {
            if (mod == null)
                return false;

            _player.DiagramHandler.AddDiagram(mod.Diagram);
            
            return true;
        }
        //SPELLS:
        /************************************************************************************************************************/

        private bool HandleReward(SpellUnlock mod)
        {
            if (mod == null || _player==null)
                return false;

            _player.Spells.UnlockSpell(mod.SpellID);
            return true;
        }
    }
}
