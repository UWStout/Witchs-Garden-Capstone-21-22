/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using UnityEngine;
using Items;
using TurnManaging;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Pickups
{
	public class PickupController : MonoBehaviour
	{
		[Range(0,100)]
		[SerializeField] private int _spawnChancePerItemPerTurn = 33;
		
		[SerializeField] private PickupSpawner _spawner;
		
		/************************************************************************************************************************/
		private void Start()
		{
			Subscribe(true);
		}

		private void OnDestroy()
		{
			Subscribe(false);
		}

		/************************************************************************************************************************/
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

		private void GenerateNewItems(int dayNumber)
		{
			
			var possibleItems = ItemManager.Instance.GenerateNewPickupBundles(dayNumber);
			List<IItemBundle> pickupItems = new List<IItemBundle>();
			//Give each item a chance to spawn
			foreach (var possibleItem in possibleItems)
			{
				var rng= UnityEngine.Random.Range(0, 100);
				if(rng < _spawnChancePerItemPerTurn)
					continue;
				
				pickupItems.Add(possibleItem);
			}
			
			_spawner.SpawnAndReplaceItems(pickupItems);
		}
	}

}