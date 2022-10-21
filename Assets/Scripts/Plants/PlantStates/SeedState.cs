using Statistics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Plants
{
    public class SeedState : PlantState
    {
        public override void AdvanceGrowCycle()
        {
            // ++ currGrowTime - handle via hack now 
            //AddModifier(new PlantModifier(ePlantAttribute.GROWTIME, eModifierType.FLAT, 1));
            //Go to young state on first advance (all seeds hardcoded to 1 turn)
            ChangePhase(ePlantPhase.YOUNG);
        }
        

        public override bool CanBeWatered()
        {
            return true;
        }
        public override bool CanBeSpeedUp()
        {
            return true;
        }
        public override void Speedup()
        {
            SetSkipSeedPhase();//a fun hack
            ChangePhase(ePlantPhase.YOUNG);
        }
        public override bool CanBeReWound()
        {
            return false;
        }
        public override void Rewind()
        {
            //Do nothing? or go to dead?lol
        }
        
        public override int GetHowManyTurnsTillGrown()
        {
            //Debug.Log($"base:{GetBaseGrowTimeInYoung() +1}   - curr: {GetCurrentGrowTime()}");
            return GetBaseGrowTimeInYoung() +1 -  GetCurrentGrowTime(true);
        }
    }
}
