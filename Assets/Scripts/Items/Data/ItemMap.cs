using System;
using System.Collections;
using System.Collections.Generic;
using Helpers;
using Ingredients;
using Plants;
using UnityEngine;
using UnityEngine.Serialization;

namespace Items
{
	[CreateAssetMenu( fileName = "_itemMap", menuName = "Data/Items/Item Map")]
	public class ItemMap : ScriptableObject
	{

		[SerializeField]
		private SeedMap _seedDict = new SeedMap
		{
			//Items
			//{null,null},
		};

		[SerializeField]
		private YieldMap _yieldDict = new YieldMap
		{
			//Items
			//{null,null},
		};
		[SerializeField]
		private PotionMap _potionDict = new PotionMap
		{
			//Items
			//{null,null},
		};
		
		/************************************************************************************************************************/


		public SeedTemplate GetSeedForPlant(PlantData data)
		{
			_seedDict.TryGetValue(data, out SeedTemplate retval);
			return retval;
		}
		
		public YieldItemTemplate GetYieldForPlant(PlantData data)
		{
			_yieldDict.TryGetValue(data, out YieldItemTemplate retval);
			return retval;
		}

		public PotionTemplate GetPotionForIngredient(IngredientSet set)
		{
			foreach (var rigidSet in _potionDict.Keys)
			{
				if (set.CompareTo(rigidSet.GetIngredientSet()) == 0)
					return _potionDict[rigidSet];
			}

			//Todo could return a default shit potion
			return null;
		}
		
		public List<PotionTemplate> GetAllPotionTemplates()
        {
			List<PotionTemplate> potionsList = new List<PotionTemplate>();
			foreach (var potionTemplate in _potionDict.Values)
            {
				potionsList.Add(potionTemplate);
            }
			return potionsList;
        }

		public List<PotionItem> GetAllPotionItems()
		{
			List<PotionItem> potionsList = new List<PotionItem>();
			foreach (var potionTemplate in _potionDict.Values)
			{
				potionsList.Add(new PotionItem(potionTemplate, 1));
			}
			return potionsList;
		}

		public int GetAllPotionsCount()
		{
			return _potionDict.Count;
		}
	}
	
	[Serializable]         //CustomDrawer in SerializedDictDrawer.cs 
	public class SeedMap : SerializableDictionary<PlantData, SeedTemplate> { }
	
	[Serializable]         //CustomDrawer in SerializedDictDrawer.cs 
	public class YieldMap : SerializableDictionary<PlantData, YieldItemTemplate> { }
	
	[Serializable]   //CustomDrawer in SerializedDictDrawer .cs
    public class PotionMap : SerializableDictionary<RigidIngredientSet, PotionTemplate> { }
}