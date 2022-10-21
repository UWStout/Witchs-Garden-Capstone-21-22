/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Research
{
	[CreateAssetMenu(fileName = "_shopMod", menuName = "Data/Research/Shop Mod", order = 3)]
	public class ShopModifier : ResearchItemTemplate
	{
		//public override eResearchItemType GetResearchItemType() => eResearchItemType.SHOP_MOD;
		
		public bool IsSellMod => _isSellMod;
		[Header("Whether this mods buy or sell prices or both")]
		[SerializeField] private bool _isSellMod;
		public bool IsBuyMod => _isBuyMod;
		[SerializeField] private bool _isBuyMod;
		
		public float ModValue => _modValue;
		[Range(1,2)] [Tooltip("1.5 would be a 50% increase")]
		[SerializeField] private float _modValue = 1.5f;

	}
}