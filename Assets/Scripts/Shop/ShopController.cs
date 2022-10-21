/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using UnityEngine;
using Items;
using Player;
using TurnManaging;
using UI;
using UnityEngine.Serialization;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Shop
{
	public delegate bool OnBuyItem(IItem original);
	public delegate bool OnSellItem(IItem original);

	public class ShopController : MonoBehaviour
	{

		[SerializeField] private UI_ShopBuyMenu _uiShopBuyMenu; 
		[SerializeField] private UI_ShopSellMenu _uiShopSellMenu; 
		private List<IItemBundle> _currentItemsForSale = new List<IItemBundle>();

		private TryExchangeItem _exchangeAction;
		/************************************************************************************************************************/
		private void Awake()
		{
			Subscribe(true);
		}

		private void OnDestroy()
		{
			Subscribe(false);
		}

		/************************************************************************************************************************/

		public void Init(TryExchangeItem exchangeAction, CanPlayerAffordGold canPlayerAfford, CanPlayerSellItem canPlayerSellItem)
		{
			_exchangeAction = exchangeAction;
			_uiShopBuyMenu.BindShop(TryBuyItem, canPlayerAfford);
			_uiShopSellMenu.BindShop(TrySellItem, canPlayerSellItem);
			GenerateNewItems(1); //have shop start with items on day 1
		}
		
		/************************************************************************************************************************/

		private bool TryBuyItem(IItem item)
		{
			IItemBundle bundle = FindBundleForItem(item);
			return TryBuyItem(bundle);
		}
		
		/// <summary>
		/// If we have this item in our list, asks the player action handler if player has enough gold
		/// </summary>
		/// <param name="bundle"></param>
		private bool TryBuyItem(IItemBundle bundle)
		{
			if (!_currentItemsForSale.Contains(bundle))
				return false;

			var bundleList = bundle.Items;
			//catch for stale data:
			if (bundleList == null || bundleList.Count == 0)
			{
				_currentItemsForSale.Remove(bundle);
				return false;
			}
			
			var item = bundleList[0];
			bool success = _exchangeAction(item, true, item.BuyPrice);
			if (success)
			{
				RemoveItemFromBundle(bundle);
				UpdateTheUIShop();
			}
			return success;
		}

		private bool TrySellItem(IItem item)
		{
			bool success = _exchangeAction(item, false, item.SellPrice);
			return success;
		}

		private void RemoveItemFromBundle(IItemBundle bundle)
		{
			if (!_currentItemsForSale.Contains(bundle))
				return;
			
			bundle.Items.RemoveAt(0);
			if (bundle.NumItems == 0)
			{
				_currentItemsForSale.Remove(bundle);
			}
			UpdateTheUIShop();
		}

		private IItemBundle FindBundleForItem(IItem item)
		{
			foreach (var currentBundle in _currentItemsForSale)
			{
				if (currentBundle.ItemTemplate.ItemName == item.ItemName)
					return currentBundle;
			}

			return null;
		}
		private void UpdateTheUIShop()
		{
			_uiShopBuyMenu.UpdateDisplay(_currentItemsForSale);
		}
		
		private void GenerateNewItems(int turnNum)
		{
			_currentItemsForSale = ItemManager.Instance.GenerateNewShopItemBundles(turnNum);
			UpdateTheUIShop();
		}
		
		private void Subscribe(bool cond)
		{
			var tm = TurnManager.Instance;
			if (tm == null)
				return;
			if (cond)
			{
				tm.OnTurnEnd += GenerateNewItems;
			}
			else
			{
				tm.OnTurnEnd -= GenerateNewItems;
			}
		}

		
	}

}