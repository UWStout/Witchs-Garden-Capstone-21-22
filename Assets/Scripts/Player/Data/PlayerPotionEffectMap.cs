/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Linq;
using Helpers;
using Items;
using UnityEngine;

namespace Player
{
	[CreateAssetMenu(fileName = "_playerEffMap", menuName = "Data/Items/PotionEffects/Player Effect Map")]
	public class PlayerPotionEffectMap : ScriptableObject
	{
		[SerializeField] private PlayerPotionEffectDict _effects;

		public bool TryGetValue(PotionTemplate potionTemplate, out PlayerPotionEffect effect)
		{
			// Debug.Log($"Look for <color=green>{potionTemplate}</color> and contains={_effects.ContainsKey(potionTemplate)} ");
			// foreach (var template in _effects.Keys)
			// {
			// 	Debug.Log($".... contains {template}");
			// }
			return _effects.TryGetValue(potionTemplate, out effect);
		}
	}
	
	[Serializable]         //CustomDrawer in SerializedDictDrawer.cs 
	public class PlayerPotionEffectDict : SerializableDictionary<PotionTemplate, PlayerPotionEffect> { }
}