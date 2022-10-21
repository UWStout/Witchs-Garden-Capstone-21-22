using CustomInput;
using Diagrams;
using Narrative;
using Plants;
using Player;
using Research;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace UI
{
    public class UI_ResearchStatsMenu : UI_MenuContent
    {
        private PlayerController _playerController;

        [SerializeField] private TextMeshProUGUI _description;

        const string GREEN_COLOR_STRING = "<color=#005500>";
        const string RED_COLOR_STRING = "<color=\"red\">";

        public void Init(PlayerController playerController)
        {
            _playerController = playerController;

            UpdateDisplay();
        }

        public void OnEnable()
        {
            UpdateDisplay();
        }

        private void UpdateDisplay()
        {
            //Update description
            var descriptionString = "";

            //--- Player Stats ---
            descriptionString += "\n<b>-PLAYER STATS-</b>\n";
            //Max Mana
            descriptionString += "Max Mana: ";
            var maxMana = _playerController.PlayerMana.GetMax();
            var startingMana = _playerController.StartingMana;
            descriptionString += GetDisplayTextFormatted(maxMana, startingMana);

            //Mana
            descriptionString += "Mana: ";
            descriptionString += _playerController.PlayerMana.GetCurrent() + "\n";

            //Walk Speed
            descriptionString += "Walk Speed: ";
            var playerMovement = _playerController.GetComponent<PlayerMovement>();
            descriptionString += GetDisplayTextFormattedPercent(playerMovement.MovementSpeed / 2 * 100, playerMovement.StartingMovementSpeed / 2 * 100);


            //--- Garden Stats ---
            descriptionString += "\n<b>-GARDEN STATS-</b>\n";
            //Grow Time Modifier
            //descriptionString += "Grow Time Trait Modifier: ";
            //var modGrowTime = GlobalPlantModifiers.GetModifiersFor(ePlantAttribute.GROWTIME);
            //descriptionString += GetDisplayTextFormatted(modGrowTime);

            //Yield Modifier
            //descriptionString += "Yield Trait Modifier: ";

            //Quality Modifier
            //descriptionString += "Quality Trait Modifier: ";


            //Trait Spawn Chance
            descriptionString += "Trait Spawn Chance Modifier: ";
            var spawnChanceBonus = GlobalPlantModifiers.TRAIT_SPAWNING_CHANCE_BONUS;
            var spawnChanceBonusStarting = GlobalPlantModifiers.StartingTraitSpawningChanceBonus;
            descriptionString += GetDisplayTextFormattedPercentAdditive(spawnChanceBonus, spawnChanceBonusStarting);

            //Trait Carryover Chance
            descriptionString += "Trait Carryover Chance: ";
            var traitCarryover = GlobalPlantModifiers.TRAIT_CARRY_OVER_CHANCE;
            var traitCarryoverStarting = GlobalPlantModifiers.StartingTraitCarryOverChance;
            descriptionString += GetDisplayTextFormattedPercentAdditive(traitCarryover, traitCarryoverStarting);

            //Seed Pickup Modifier
            descriptionString += "Seed Harvest Modifier: ";
            var seedHarvestMod = GlobalPlantModifiers.SEED_YIELD_HARVEST_CHANCE;
            var seedHarvestModStarting = GlobalPlantModifiers.StartingSeedYieldHarvestChance;
            descriptionString += GetDisplayTextFormattedPercent(seedHarvestMod, seedHarvestModStarting);


            //--- Story Stats ---
            //descriptionString += "\nSHOP STATS\n";
            //Buy Cost Modifier
            //descriptionString += "Buy Cost Modifier: ";

            //Sell Cost Modifier
            //descriptionString += "Sell Cost Modifier:";

            //Potion Request Gold Modifier
            //descriptionString += "Potion Request Gold Modifier:";


            //--- Research Progress ---
            descriptionString += "\n<b>-RESEARCH PROGRESS-</b>\n";
            //Chapters Unlocked
            descriptionString += "Chapters Unlocked: (" + ResearchSystem.Instance.GetUnlockedChapterCount() + "/6)\n";
            //Potion Recipes Unlocked

            //Hybrid Plans Unlocked
            descriptionString += "Hybrid Plans Unlocked: (" + DiagramHandler.Instance.KnownHybridDiags.Count + "/5)\n";
            //Spells Unlocked

            _description.text = descriptionString;
        }

        private string GetDisplayTextFormatted(float currentValue, float startingValue) {
            var text = "";
            if (currentValue != startingValue)
            {
                var difference = currentValue - startingValue;
                if (difference > 0)
                    text += "<b>" + currentValue + "</b>" + GREEN_COLOR_STRING + " (" + difference + ")</color>";
                else
                    text += "<b>" + currentValue + "</b>" + RED_COLOR_STRING + " (" + difference + ")</color>";
            }
            else
                text += currentValue;
            text += "\n";

            return text;
        }

        private string GetDisplayTextFormattedPercent(float currentValue, float startingValue)
        {
            var text = "";
            if (currentValue != startingValue)
            {
                var difference = currentValue / startingValue;
                if (difference > 0)
                    text += "<b>" + currentValue + "%</b>" + GREEN_COLOR_STRING + " (" + difference + "%)</color>";
                else
                    text += "<b>" + currentValue + "%</b>" + RED_COLOR_STRING + " (" + difference + "%)</color>";
            }
            else
                text += currentValue + "%";
            text += "\n";

            return text;
        }

        private string GetDisplayTextFormattedPercentAdditive(float currentValue, float startingValue)
        {
            var text = "";
            if (currentValue != startingValue)
            {
                var difference = currentValue - startingValue;
                if (difference > 0)
                    text += "<b>" + currentValue + "%</b>" + GREEN_COLOR_STRING + " (+" + difference + "%)</color>";
                else
                    text += "<b>" + currentValue + "%</b>" + RED_COLOR_STRING + " (-" + difference + "%)</color>";
            }
            else
                text += currentValue + "%";
            text += "\n";

            return text;
        }

        /************************************************************************************************************************/
        //FOCUS:
        public override bool TrySetFocus(bool isFocus)
        {
            return false;
        }
    }
}
