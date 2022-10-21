using System;
using System.Collections.Generic;
using UnityEngine;

namespace Items
{
	

	public interface IItemBundle //: IItem
    {
	    IItem ItemTemplate { get; }
	    List<RuntimeItem> Items { get; }
		int NumItems { get; }
		//int Quality { get; }
		int StarQuality { get; }
		public int BuyPrice { get;  } 
		public int SellPrice { get;  }
	}

	[Serializable]
	public class SameQualityItemBundle : IItemBundle
	{
		//Leave this as non-readonly so we can clone other bundles and ref same list
		public List<RuntimeItem> Items { get; } = new List<RuntimeItem>();
		public int NumItems => Items.Count;
		//public int Quality { get; private set; } //cant change
		public int StarQuality { get; private set; } //cant change
		public int BuyPrice { get; private set; } //cant change
		public int SellPrice { get; private set; } //cant change

		private readonly string _itemKey; //cant change
		
		/************************************************************************************************************************/
		
		public SameQualityItemBundle(RuntimeItem item)
		{
			if(item ==null)
            {
				Debug.Log($"<color=yellow> Someones giving a null item to a bundle, Probably a mis cast on type conversion </color>");
				return;
            }
			//Make a key off of our first item added 
			StarQuality = (int)item.GetQuality(true);
			BuyPrice = item.BuyPrice;
			SellPrice = item.SellPrice;
			_itemKey = GenerateKeyForItem(item, StarQuality);
			//Then add it 
			AddItem(item);
		}

		public SameQualityItemBundle(IItemBundle bundle) 
        {
			var item = bundle.Items[0];
			if (item == null)
			{
				Debug.Log($"<color=yellow> Someones giving a null item to a bundle, Probably a mis cast on type conversion </color>");
				return;
			}
			//Make a key off of our first item added 
			_itemKey = GenerateKeyForItem(item, bundle.StarQuality);
			//store quality:
			StarQuality = bundle.StarQuality;
			BuyPrice = item.BuyPrice;
			SellPrice = item.SellPrice;
			//share the list as a ref (does not support new items)
			Items = bundle.Items;
		}

		/************************************************************************************************************************/
		/*****Assume whoevers managing the bundle doesnt allow them to become empty******/
		public IItem ItemTemplate => Items[0];
		// public eItemType ItemType => Items[0].ItemType;
		// public string ItemName  => Items[0].ItemName;
		// public int Value  => Items[0].Value;
		// public Sprite ItemImage  => Items[0].ItemImage;
		/************************************************************************************************************************/
		public bool CanAcceptItem(RuntimeItem item)
		{
			return item != null 
			       && 
			       GenerateKeyForItem(item, item.GetQuality(true)).Equals(_itemKey);
		}

		public bool AddItem(RuntimeItem item)
		{
			if (!CanAcceptItem(item) || Items.Contains(item))
				return false;

			Items.Add(item);
			//Debug.Log($"..Added item <color=blue> {item}</color> to bundle : {this._itemKey } amnt={Items.Count}  q={Quality} ");
			return true;

		}

		public bool RemoveItem(RuntimeItem item)
		{
			if (!Items.Contains(item))
				return false;

			Items.Remove(item);
			return true;
		}

		/************************************************************************************************************************/

		private static string GenerateKeyForItem(RuntimeItem item, float quality)
		{
			return item == null ? string.Empty : $"{item.ItemName}{item.ItemType}{quality}";
		}

	}

	[Serializable]
	public class SeedItemBundle : SameQualityItemBundle
	{
		public SeedItem SeedItem => ItemTemplate as SeedItem;
		public SeedItemBundle(SeedItem item) : base(item)
		{
		}

		public SeedItemBundle(IItemBundle bundle) : base(bundle)
        {

        }
	}
	[Serializable]
	public class YieldItemBundle : SameQualityItemBundle
	{
		public YieldItem YieldItem => ItemTemplate as YieldItem;
		public YieldItemBundle(YieldItem item) : base(item)
		{
		}
		public YieldItemBundle(IItemBundle bundle) : base(bundle)
		{

		}
	}
	[Serializable]
	public class PotionItemBundle : SameQualityItemBundle
	{
		public PotionItem PotionItem => ItemTemplate as PotionItem;
		public PotionItemBundle(PotionItem item) : base(item)
		{
		}
		public PotionItemBundle(IItemBundle bundle) : base(bundle)
		{

		}
	}
	
}