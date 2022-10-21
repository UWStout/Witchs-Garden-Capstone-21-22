/*
* AUTHOR : Steve Datz
* DESC :
*/

using Helpers;
using UnityEngine;

namespace Items
{

	public abstract class SerializedItemTemplate : ScreenshotSaver, IItem
	{
		public abstract eItemType ItemType { get; }
		public abstract string ItemName { get; }
		public abstract string FlavorText { get; }
		public abstract Sprite ItemImage { get; }
		public abstract float BaseValue { get; }

		//TEMPLATE ITEMS WILL BE AVG Quality until turned into Runtime Items
		public virtual float GetQuality(bool isStarQuality)
		{
			return isStarQuality ? StarQualityGenerator.GetQualityStarsFromQualityFloat(50) : 50;
		}
		
		public virtual int BuyPrice => ItemValue.GetBuyValue(this);
		public virtual int SellPrice => ItemValue.GetSellValue(this);

	}
}