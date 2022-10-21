/*
* AUTHOR : Steve Datz
* DESC :
*/

using Items;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Player
{
	public enum ePlayerPotionEffectType { MANA_RESTORE, MANA_MAX, GOLD }
	[CreateAssetMenu(fileName = "_playerEff", menuName = "Data/Items/PotionEffects/Player Effect")]
	public class PlayerPotionEffect : PotionEffect
	{
		//Were gonna pack all this into 1 effect cause Im trying to go fast and dont rememeber all the use cases
		//Would be better to make different classes for each type IMO  - or custom inspector

		public ePlayerPotionEffectType EffectType => _effectType;
		[SerializeField] private ePlayerPotionEffectType _effectType;

		public int ManaRefreshAmnt=> _manaRefreshAmnt;
		[Header("Optional Settings based on Effect Type")] //TODO custom inspector
		[SerializeField] private int _manaRefreshAmnt = 0;

		public int ManaMaxIncrease=> _manaMaxIncrease;
		[SerializeField] private int _manaMaxIncrease = 0;

		public int GoldAmount => _goldAmount;
		[SerializeField] private int _goldAmount = 0;
		/************************************************************************************************************************/

		public string GetPotionEffectString()
		{
			switch (_effectType)
			{
				case ePlayerPotionEffectType.MANA_RESTORE:
					return _manaRefreshAmnt.ToString("+#;-#;0") + " Mana";
				case ePlayerPotionEffectType.MANA_MAX:
					return _manaMaxIncrease.ToString("+#;-#;0") + " Max Mana";
				case ePlayerPotionEffectType.GOLD:
					return _goldAmount.ToString("+#;-#;0") + " Gold";
				default:
					return "None";
			}
		}
	}

}