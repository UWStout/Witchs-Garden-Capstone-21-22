
using System;
using Plants;
using Items;
using UnityEngine;

namespace Spells
{
    public class CloneSpell : Spell
    {
        public CloneSpell(SpellData data) : base(data) { }
        /************************************************************************************************************************/

        public override bool Cast(SpellContext context, Action<bool, SpellContext> onFinishedResult)
        {
            CloneSpellContext castedContext = context as CloneSpellContext;
            if (castedContext?.SpellTarget == null)
            {
                onFinishedResult?.Invoke(false, context);
                return false;
            }
            //Cant use this spell if there's no preview modeler assigned
            var previewController = castedContext.PreviewModel;
            if (previewController == null)
            {
            #if UNITY_EDITOR
                Debug.Log($"<color=yellow>NO CLONE SPELL PREVIEWER ASSIGNED!</color> Check PlayerActionHandler serialized vars");    
            #endif
                onFinishedResult?.Invoke(false, context);
                return false;
            }
            //PHASE 1: Begin Preview:
            if (!previewController.IsActivePreview)
            {
                var targetPlant = castedContext.SpellTarget.GetPlant();
                if (targetPlant == null || !targetPlant.GetIsYoung())
                {
                    onFinishedResult?.Invoke(false, context);
                    return false;
                }
                
                var failed = ! previewController.BeginPreview(targetPlant);
                //Something went wrong w the cloning:-exit this spell
                if (failed)
                {
                    onFinishedResult?.Invoke(false, context);
                    return false;
                }

                //This is somewhat meaningless:
                return true;
            }
            //PHASE 2: Try Finish the Cloning:
            {
				bool willSucceed = previewController.CanPlacePlant(castedContext.SpellTarget);
				if (willSucceed)
				{
					castedContext.SpellData.TimedEvents.Begin(castedContext, () => SpellCastAction());
				}

				onFinishedResult?.Invoke(willSucceed, context);
				return true;

                void SpellCastAction()
				{
                    previewController.TryPlacePlant(castedContext.SpellTarget);
                    previewController.FinishPreview();

                    // update garden hybrid list
                    castedContext.GardenController.CheckForHybrids(0);

                    // refresh vfx
                    castedContext.GardenController.RefreshVFX();
                }
			}            
        }
    }
}
