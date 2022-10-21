using Statistics;

namespace Plants
{
	public class WitheringState : PlantState
	{
        public override void AdvanceGrowCycle()
        {
            if(GetCurrentPlantStat(ePlantAttribute.QUALITY, true, _traits.GetTraits())<=0)
                ChangePhase(ePlantPhase.DEAD);
            
            //Lose 10% quality :
            AddModifier(new PlantModifier(ePlantAttribute.QUALITY, eModifierType.PERCENT, -10));
        }
        
        public override bool CanBeWatered()
        {
            return false;
        }

        public override bool CanBeSpeedUp()
        {
            return false; // prevent user from wasting mana?
        }
        public override void Speedup()
        {
            //do nothing?
            ChangePhase(ePlantPhase.DEAD);
        }
        public override bool CanBeReWound()
        {
            return true;
        }
        public override void Rewind()
        {
            ChangePhase(ePlantPhase.ADULT);
        }
    }
}