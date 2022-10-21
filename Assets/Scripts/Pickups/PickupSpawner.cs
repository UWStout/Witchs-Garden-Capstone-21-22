/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections.Generic;
using Items;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Pickups
{
	public class PickupSpawner : MonoBehaviour
	{
		[SerializeField] private PickupItem _prefab;
		
		[SerializeField] private List<Transform> _spawnLocs = new List<Transform>();

		private readonly List<PickupItem> _instantiatedPickups = new List<PickupItem>();
			/************************************************************************************************************************/

		public void SpawnAndReplaceItems(List<IItemBundle> items)
		{
			TurnOffOldPickups();
			
			if (items.Count > _spawnLocs.Count)
			{
				Debug.Log($"<color=yellow>[Warning]</color> More pickup items than spawn loc's, add more locations or they will spawn ontop of eachother");
			}
			
			int randomStartingSpawnIndex = UnityEngine.Random.Range(0, _spawnLocs.Count);
			for (int i = 0; i < items.Count; i++)
			{
				if (i >= _instantiatedPickups.Count )
					CreateNewInstance();
				
				var pickup = _instantiatedPickups[i];
				pickup.SetItem(items[i]);
				pickup.SetActive(true);
				var spawnLoc = _spawnLocs[randomStartingSpawnIndex++ % _spawnLocs.Count];
				pickup.transform.position = spawnLoc.position;
			}

		}

		private void CreateNewInstance()
		{
			var newPickup = GameObject.Instantiate(_prefab, this.transform);
			_instantiatedPickups.Add(newPickup);
		}

		private void TurnOffOldPickups()
		{
			foreach (var pickup in _instantiatedPickups)
			{
				pickup.SetActive(false);
			}
		}
	}

}