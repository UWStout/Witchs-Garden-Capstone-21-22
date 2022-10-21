
using System;
using Plants;
using Items;

namespace Spells
{
    public class HarvestSpell : Spell
    {
        public HarvestSpell(SpellData data) : base(data) { }
        
        public override bool Cast(SpellContext context,  Action<bool, SpellContext> onFinishedResult)
        {
            HarvestingSpellContext harvestingContext = context as HarvestingSpellContext;

            ISpellTarget target = harvestingContext?.SpellTarget;

            // If target doesnt  have a plant - fail spell
            if (target == null || !target.HasPlant())
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }

            IPlant plant = target.GetPlant();

            //If plant cant be harvested yet- fail spell
            if (!plant.CanBeHarvested())
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }

            harvestingContext.SpellData.TimedEvents.Begin(harvestingContext, () => {
                // generate a new item for yield 
                var yield = plant.HarvestPlant();
                foreach (var item in yield)
                {
                    harvestingContext.PlayerInventory.AddItem(item);
                }

                //Reset the dirt patch
                target.HarvestPlant();

                // TODO for Ethan increment harvest counter
            });

            onFinishedResult?.Invoke(true, context);
            return true;
        }
    }
}
