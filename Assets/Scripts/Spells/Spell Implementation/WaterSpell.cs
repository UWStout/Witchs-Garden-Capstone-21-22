using System;
using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;

namespace Spells
{
    public class WaterSpell : Spell
    {
        public WaterSpell(SpellData data) : base(data) { }

        public override bool Cast(SpellContext context, Action<bool, SpellContext> onFinishedResult)
        {
            WateringSpellContext wateringContext = context as WateringSpellContext;
            if (wateringContext?.SpellTarget == null)
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }

            var target = wateringContext.SpellTarget;

            //var success= wateringContext.SpellTarget.WaterPatch();
            bool willSucceed = target.CanWaterPatch();

            if (willSucceed)
            {
                wateringContext.SpellData.TimedEvents.Begin(wateringContext, () => target.WaterPatch());
            }
            else
            {
                Debug.Log($"Failed to water a patch at : <color=red>{target.Transform.gameObject.name}</color>");
            }

            onFinishedResult?.Invoke(willSucceed, context);
            return willSucceed;
        }
    }
}
