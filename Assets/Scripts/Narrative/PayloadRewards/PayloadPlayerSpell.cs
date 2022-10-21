using System;
using Items;
using Spells;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "PL_Spell", menuName = "Data/Narrative/Reward Payload Spell")]
	public class PayloadPlayerSpell : Reward
	{
		public SpellData SpellData => _spell;
		[SerializeField] private SpellData _spell;
		/************************************************************************************************************************/

		public override ePayloadType GetPayloadType() => ePayloadType.SPELL;

		public override string GetFormattedUIRewardText()
		{
			return $"Unlocks {_spell.SpellName}";
		}
	}
}