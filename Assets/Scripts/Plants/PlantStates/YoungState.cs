using System.Collections;
using System.Collections.Generic;
using Statistics;
using UnityEngine;

namespace Plants
{
    public class YoungState : PlantState
    {

        public override void AdvanceGrowCycle()
        {
            // ++ currGrowTime
            AddModifier(new PlantModifier(ePlantAttribute.GROWTIME, eModifierType.FLAT, 1));
            int baseGrowTime = GetBaseGrowTimeInYoung();
            float currGrowTime = GetCurrentGrowTime() ;
            if (DidSkipSeedPhase())
            {
                ++currGrowTime;
            }

            //Debug.Log($" [ YoungState] currGrowTime(s)= [{currGrowTime}] vs baseGrowTime={baseGrowTime} ");
            if (Mathf.FloorToInt(currGrowTime) > baseGrowTime)
            {
                //if we're grown, lets advance
                ChangePhase(ePlantPhase.ADULT);
            }
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
            ChangePhase(ePlantPhase.ADULT);
        }

        public override bool CanBeReWound()
        {
            return true;
        }
        public override void Rewind()
        {
            ChangePhase(ePlantPhase.SEED);
        }
        public override int GetHowManyTurnsTillGrown()
        {
            //Debug.Log($"base:{GetBaseGrowTimeInYoung()}   - curr: {GetCurrentGrowTime()}");
            return  GetBaseGrowTimeInYoung()- GetCurrentGrowTime(true) ;
        }
    }
}
