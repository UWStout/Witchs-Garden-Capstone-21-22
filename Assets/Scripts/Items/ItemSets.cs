using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Items
{
	[CreateAssetMenu(fileName = "ItemSet", menuName = "Data/Items/Item Set", order = 0)]
	public class ItemSets : ScriptableObject
	{
		[SerializeField] private List<SeedTemplate> _startingSeedItems = new List<SeedTemplate>();
		[SerializeField] private List<YieldItemTemplate> _startingYieldItems = new List<YieldItemTemplate>();
		[SerializeField] private List<PotionTemplate> _startingPotionItems = new List<PotionTemplate>();
		[Header("UNUSED , items use templates set starting quality now:")]
		[Range(1,100)]
		[SerializeField] private int _startingSeedQuality = 50;
		[Range(1,100)]
		[SerializeField] private int _startingYieldQuality = 50;
		[Range(1,100)]
		[SerializeField] private int _startingPotionQuality = 60;
		/************************************************************************************************************************/

		public List<RuntimeItem> GetItems()
		{
			List<RuntimeItem> startingItems = new List<RuntimeItem>();
			foreach (var startingItem in _startingSeedItems)
			{
				// startingItem.Quality can be BASE 
				//startingItems.Add(new SeedItem(startingItem, _startingSeedQuality)); 
				startingItems.Add(new SeedItem(startingItem, (int)startingItem.GetQuality(false))); 
			}
			foreach (var startingItem in _startingYieldItems)
			{
				//startingItems.Add(new YieldItem(startingItem, _startingYieldQuality)); 
				startingItems.Add(new YieldItem(startingItem, (int)startingItem.GetQuality(false))); 
			}
			foreach (var startingItem in _startingPotionItems)
			{
				//startingItems.Add(new PotionItem(startingItem, _startingPotionQuality)); 
				startingItems.Add(new PotionItem(startingItem, (int)startingItem.GetQuality(false))); 
			}
			return startingItems;
		}
	}
}
