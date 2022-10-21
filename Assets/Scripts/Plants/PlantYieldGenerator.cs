using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;
using Helpers;

namespace Plants
{
    public static class PlantYieldGenerator 
    {
        private const int SEED_TIME = 1; //god this shud be somewhere else, think plant stats uses this too -Steve
        /************************************************************************************************************************/
        public static IReadOnlyList<IItem> GenerateReturnSeedForPlantInSeedState(IPlant plant)
        {
            //float itemQuality = GenerateItemQuality(plant);//Not sure if this calculation is 100% what we want - Steve TODO
            var seedItemAsList = new List<IItem>();
            SeedTemplate seedTemplate = ItemManager.Instance.GetSeedTemplateForPlant(plant.PlantData);
            GenerateSeedYield(seedTemplate.GetQuality(false), seedTemplate, seedItemAsList, 1);
            return seedItemAsList;
        }

        public static IReadOnlyList<IItem> GenerateYieldForPlant(IPlant plant)
        {
            //Debugging printouts
            //PrintDetailedQualityReport(plant);
            float yieldItemQuality = GenerateItemQuality(plant);

            //Start our generic list of items to be added to
            var items = new List<IItem>();
            
            //Find the yield item template for this plant
            YieldItemTemplate yieldTemplate = ItemManager.Instance.GetYieldTemplateForPlant(plant.PlantData);
            //Generate Yield (fruit) - 100%
            //Debug.Log($"[Generate] YieldTemplate for : {plant.PlantData.PlantName} is {yieldTemplate.ItemName} yield={plant.GetCurrentYield()}");
            GenerateFruitYield(yieldItemQuality, yieldTemplate, items, plant.GetCurrentYield());

            //Find the seed item template for this plant
            SeedTemplate seedTemplate = ItemManager.Instance.GetSeedTemplateForPlant(plant.PlantData);
            //Generate Yield (seed) - Random Chance
            GenerateSeedYield(seedTemplate.Quality/* * 0.95f*/, seedTemplate, items, GetSeedYieldBasedOnQuality(yieldItemQuality));
            
            return items;
        }
        
        /************************************************************************************************************************/

        private static float GenerateItemQuality(IPlant plant)
        {
            //growRatio is how well the plant was taken care of (water wise) - prevent divide by 0 & give merit to skip seed
            float growRatio = (plant.GetStartingGrowTime() + SEED_TIME) / (plant.GetCurrentGrowTime());
            //ModdedQuality = Starting Quality + Modifiers (traits & potions & global mods)
            float moddedQuality = plant.GetCurrentQuality();
            if (moddedQuality > 100)
                Debug.Log($"[HIGH]YieldModdedQuality= <color=yellow>{moddedQuality}</color>");
            // the item quality for the new fruit item
            return  moddedQuality * growRatio;
        }

        private static void GenerateFruitYield(float yieldItemQuality, YieldItemTemplate template, List<IItem> items, int currYield)
        {
            if (template == null)
            {
                Debug.Log($"<color=yellow>Missing Template for Yield</color>");
                return;
            }
            //Debug.Log($"Generating {currYield}# Fruit Q= {yieldItemQuality}");
            for (int i = 0; i < currYield; i++)
            {
                //Use the item template + the unique runtime quality to create a runtime item 
                var newYieldItem = new YieldItem(template, (int)yieldItemQuality);
                items.Add(newYieldItem);
            }
        }

        private static void GenerateSeedYield(float yieldItemQuality, SeedTemplate template, List<IItem> items, int currYield)
        {
            if(template==null)
            {
                Debug.Log($"<color=yellow>Missing Template for Seed</color>");
                return;
            }
            //Debug.Log($"Generating {currYield}# seeds");
            for (int i = 0; i < currYield; i++)
            {
                //Use the item template + the unique runtime quality to create a runtime item 
                var newYieldItem = new SeedItem(template, Mathf.FloorToInt(yieldItemQuality));
                items.Add(newYieldItem);
            }
        }
        
        /// <summary>
        /// Untested- Steve trying to base seed yield chance based off plants quality BUT still with some randomness
        /// </summary>
        /// <param name="quality"></param>
        /// <returns></returns>
        private static int GetSeedYieldBasedOnQuality(float quality)
        {
            if (quality < 10)
                return 0;

            //(0-100) avg 50, gets turned into 5, so would roll from 0-5
            var qualityThreshold = UnityEngine.Random.Range(0, (int)(quality * .10f)+1);
            //Then we add 1 so its not (0,0) and additionally add a little buffer to the next chance
            var bonus = (int)(GlobalPlantModifiers.SEED_YIELD_HARVEST_CHANCE * 0.1f); // 10% to 1 , or further increased w modifiers to +2 etc
            return GetRandomizedSeedYield(qualityThreshold + bonus );
        }


        private static int GetRandomizedSeedYield(int upperBound=10)
        {
            var rngSeedChance = UnityEngine.Random.Range(0, upperBound);
            
            //Debug.Log($"Rolled: {rngSeedChance}");
            if (rngSeedChance >= 10)
            {
                return 3;
            }
            else if (rngSeedChance > 6)
            {
                return 2;
            }
            else if(rngSeedChance >= 3)
            {
                return 1;
            }

            return 0;
        }
        
        private static void PrintDetailedQualityReport(IPlant plant)
        {
            Debug.Log($"<color=blue> ----</color> Generating Yield Report for {plant.PlantData.PlantName} <color=blue> ----</color>");

            var startingGrowTime = plant.GetStartingGrowTime() + SEED_TIME;
            var currGrowTime = plant.GetCurrentGrowTime() ;
            var growRatio = startingGrowTime / currGrowTime;
            Debug.Log($"   [startingGrowTime= <color=green>{startingGrowTime}</color> , currGrowTime= <color=green>{currGrowTime}</color>] growRatio= <color=green>{growRatio}</color> ");
            
            float moddedQuality = plant.GetCurrentQuality();
            float yieldItemQuality = moddedQuality * growRatio;
            Debug.Log($"   [moddedQuality= <color=green>{moddedQuality}</color> ] * <color=green>{growRatio}</color> yieldItemQuality= <color=green>{yieldItemQuality}</color> ");
            
            Debug.Log($" <color=blue> ----</color> Finish Yield Report for {plant.PlantData.PlantName} <color=blue> ----</color>");
        }
    }
}
