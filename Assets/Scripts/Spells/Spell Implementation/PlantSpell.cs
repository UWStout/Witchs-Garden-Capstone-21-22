using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Plants;

namespace Spells
{
    public class PlantSpell : Spell
    {
        public PlantSpell(SpellData data) : base(data) { }
        
        public override bool Cast(SpellContext context,  Action<bool, SpellContext> onFinishedResult)
        {
            // Debug.Log($"Cast 0");
            if (!(context is PlantingSpellContext plantingContext))
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }

            // Debug.Log($"Cast 1");
            var target = plantingContext.SpellTarget;

            // If target already contains a plant, spell fails
            if (target == null || target.HasPlant())
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }

            // Debug.Log($"Cast 2");
            var plantTemplate = plantingContext.PlantTemplate;		

            bool willSucceed = target.CanPlantSeed(plantTemplate);

            if (willSucceed)
            {
                // Debug.Log($"Placed a plant at : <color=white>{target.Transform.gameObject.name}</color>");
                plantingContext.SpellData.TimedEvents.Begin(plantingContext, () => {
                    target.PlantSeed(plantTemplate);
                    plantingContext.PlayerInventory.RemoveItem(plantTemplate);
                });
            }
            else
            {
                // Debug.Log($"Failed to place a plant at : <color=red>{target.Transform.gameObject.name}</color>");
            }

            onFinishedResult?.Invoke(willSucceed, context);
            return willSucceed;
        }
    }
}

