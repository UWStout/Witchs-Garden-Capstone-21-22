using System;

namespace Spells
{
	public class RewindSpell : Spell
	{
		public RewindSpell(SpellData data) : base(data)
		{
		}

		public override bool Cast(SpellContext context,  Action<bool, SpellContext> onFinishedResult)
		{
			RewindSpellContext spellContext = context as RewindSpellContext;

			ISpellTarget target = spellContext?.SpellTarget;

			// If target doesnt  have a plant - fail spell
			if (target == null || !target.HasPlant())
			{
				onFinishedResult?.Invoke(false, context);
				return false;
			}

			bool willSucceed = target.CanRewindPlant();
			spellContext.SpellData.TimedEvents.Begin(spellContext, () => SpellCastAction());

			onFinishedResult?.Invoke(willSucceed, context);
			return willSucceed;

			void SpellCastAction()
			{
				target.RewindPlant();

				// update garden hybrid list
				spellContext.GardenController.CheckForHybrids(0);

				// refresh vfx
				spellContext.GardenController.RefreshVFX();
			}
		}

		
	}
}