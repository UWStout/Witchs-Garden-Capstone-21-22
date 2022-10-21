using System;
using UnityEngine;
using Garden;
using System.Collections.Generic;
using Diagrams;

namespace Spells
{
	public class HybridSpell :Spell
	{
		public HybridSpell(SpellData data) : base(data) { }

		public override bool Cast(SpellContext context,  Action<bool, SpellContext> onFinishedResult)
		{
			
			HybridSpellContext castedContext = context as HybridSpellContext;
			if (castedContext?.SpellTarget == null)
			{
				onFinishedResult?.Invoke(false, context);
				return false;
			}
			//Cant use this spell if there's no gardenController assigned
			var garden = castedContext.GardenController;
			if (garden == null)
			{
			#if UNITY_EDITOR
				Debug.Log($"<color=yellow>NO GARDEN ASSIGNED!</color> Check PlayerActionHandler serialized vars");    
			#endif
				onFinishedResult?.Invoke(false, context);
				return false;
			}

			//when successful:
			List<ValidHybrid> validHybrids = castedContext.GardenController.FindHybridFromPatch(castedContext.SpellTarget as Patch);

			// Can't cast spell on plant not in a valid hybrid
			if (validHybrids.Count == 0)
            {
				onFinishedResult?.Invoke(false, context);
				return false;
            }

			castedContext.SpellData.TimedEvents.Begin(castedContext, () => SpellCastAction());

			onFinishedResult?.Invoke(true, context);
			
			//This is somewhat meaningless now:
			return true;

			void SpellCastAction()
			{
				// If necessary, logic to switch between which hybrid is changed goes here.
				ValidHybrid hybrid = validHybrids[0];

				// create new hybrid plants
				foreach (Patch p in hybrid.Patches)
				{
					p.HybridPlant(hybrid.Formation.ResultPlant, Plants.ePlantPhase.YOUNG);
					p.ToggleHybridHighlight(false);
				}

				// remove hybrid from garden's list
				castedContext.GardenController.RemoveHybrid(hybrid);

				// update garden hybrid list
				castedContext.GardenController.CheckForHybrids(0);

				// refresh vfx
				castedContext.GardenController.RefreshVFX();

				// try to unlock hybrid diagram
				DiagramHandler.Instance.CheckIfHybridUnlocksDiagram(hybrid.Formation);
			}
		}
	}
}