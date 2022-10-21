/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using Spells;

namespace Research
{
	[CreateAssetMenu(fileName = "_spellUnlock", menuName = "Data/Research/Spell Unlock", order = 5)]
	public class SpellUnlock : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.SPELL_UNLOCK;
		
		public eSpellID SpellID => _spellID;
		[SerializeField] private eSpellID _spellID;
	}

}