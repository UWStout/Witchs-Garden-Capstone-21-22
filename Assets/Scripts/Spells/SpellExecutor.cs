using Garden;
using Items;
using Player;
using UnityEngine;

namespace Spells
{
	public class SpellExecutor
	{
		private readonly SpellContextGenerator _spellContextGenerator;
		private readonly PlayerController _playerController;
		/************************************************************************************************************************/

		public SpellExecutor(PlayerController pc, CloneSpellPreviewModel clonePreviewer, GardenController garden)
		{
			_spellContextGenerator = new SpellContextGenerator(pc, clonePreviewer, garden);
			_playerController = pc;
		}
		/************************************************************************************************************************/

		public void TryUseSpell(SpellData spellData, IItem item)
		{
			var context = _spellContextGenerator.GenerateContextFor(spellData, item);
			_playerController.TryUseSpell(context);
		}
	}
}