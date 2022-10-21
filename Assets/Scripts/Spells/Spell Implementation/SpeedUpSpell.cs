using System;
using JetBrains.Annotations;

namespace Spells
{
	public class SpeedUpSpell : Spell
	{
		public SpeedUpSpell(SpellData data) : base(data)
		{
		}

		public override bool Cast(SpellContext context, [NotNull] Action<bool, SpellContext> onFinishedResult)
		{
			if (onFinishedResult == null) throw new ArgumentNullException(nameof(onFinishedResult));
			SpeedUpSpellContext spellContext = context as SpeedUpSpellContext;

			ISpellTarget target = spellContext?.SpellTarget;

			// If target doesnt  have a plant - fail spell
			if (target == null || !target.HasPlant())
			{
				onFinishedResult?.Invoke(false, context);
				return false;
			}

			bool willSucceed = target.CanSpeedUpPlant();
			if (willSucceed)
				spellContext.SpellData.TimedEvents.Begin(spellContext, () => SpellCastAction());

			onFinishedResult?.Invoke(willSucceed, context);
			return willSucceed;

			void SpellCastAction()
			{
				target.SpeedUpPlant();

				// update garden hybrid list
				spellContext.GardenController.CheckForHybrids(0);

				// refresh vfx
				spellContext.GardenController.RefreshVFX();
			}
		}
	}
}