using Statistics;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Plants
{
    public class AdultState : PlantState
    {
        bool _hasAdvancedWithoutHarvest = false;

        public override void AdvanceGrowCycle()
        {
            //adv
            AddModifier(new PlantModifier(ePlantAttribute.GROWTIME, eModifierType.FLAT, 1));
            if (!_hasAdvancedWithoutHarvest)
            {
                _hasAdvancedWithoutHarvest = true;
                return;
            }

            //Plant starts withering after 1 turn of not harvesting
            ChangePhase(ePlantPhase.WITHERING);
        }
        
        public override bool CanBeWatered()
        {
            return false;
        }
        public override bool CanBeSpeedUp()
        {
            return false; // prevent them from making a mistake?-pillar
        }
        public override void Speedup()
        {
            //Do nothing
        }
        public override bool CanBeReWound()
        {
            return true;
        }
        
        public override void Rewind()
        {
            ChangePhase(ePlantPhase.YOUNG);
        }
    }
}
