namespace Plants
{
    public class DeathState : PlantState
    {
        public override void AdvanceGrowCycle()
        {
           // do nothing
        }
        
        
        public override bool CanBeWatered()
        {
            return false;
        }

        public override bool CanBeSpeedUp()
        {
            return false;
        }
        public override void Speedup()
        {
           //do nothing
        }

        public override bool CanBeReWound()
        {
            return true;
        }
        
        public override void Rewind()
        {
            ChangePhase(ePlantPhase.WITHERING);
        }

    }
}