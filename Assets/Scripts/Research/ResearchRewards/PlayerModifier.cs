/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	public enum ePlayerModType{ MANA_MAX, MANA_RECOVERY, MANA_CAST_REDUCTION, MOVE_SPEED }
	[CreateAssetMenu(fileName = "_playerMod", menuName = "Data/Research/Player Mod", order = 1)]
	public class PlayerModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.PLAYER_MOD;
		
		public ePlayerModType ModType => _modType;
		[SerializeField] private ePlayerModType _modType;
		
		public float ModValue => _modValue;
		//Would make custom subclasses/inspector for validation in real game (Steve)
		[Header("Caution: Select a reasonable value for Mod Type")]
		[SerializeField] private float _modValue = 2;
	}
}