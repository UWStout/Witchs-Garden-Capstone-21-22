using System;
using UnityEngine;
using Items;
using Helpers;

namespace Plants
{
    [CreateAssetMenu(fileName = "_potionEffMap", menuName = "Data/Items/PotionEffects/Plant Effect Map")]
    public class PlantPotionEffectMap : ScriptableObject
    {
        [SerializeField] private PlantPotionEffectDict _effects;

        public bool TryGetValue(PotionTemplate potionTemplate, out PlantPotionEffect effect)
        {
            return _effects.TryGetValue(potionTemplate, out effect);
        }
    }


    [Serializable]         //CustomDrawer in SerializedDictDrawer.cs 
    public class PlantPotionEffectDict : SerializableDictionary<PotionTemplate, PlantPotionEffect> { }
}