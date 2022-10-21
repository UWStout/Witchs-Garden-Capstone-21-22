using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Garden;
using Items;
using Plants;
using Targeting;

namespace Spells
{
    public interface ISpellTarget : ITargetable
    {
        /** Note:
         *  This is not a complete interface yet. As spells
         *  are implemented, more methods may be added here.
         */
        public bool HasPlant();
        public bool CanPlantSeed(IPlantableItem plant);
        public bool PlantSeed(IPlantableItem plant);
        bool ClonePlant(IPlant plant);
        public RunTimePlant GetPlant();
        public void HarvestPlant();
        public bool CanWaterPatch();
        public bool WaterPatch();
        public bool CanSpeedUpPlant();
        public bool SpeedUpPlant();
        public bool CanRewindPlant();
        public bool RewindPlant();

        PlantPotionHandler PotionHandler { get; }
    }
}
