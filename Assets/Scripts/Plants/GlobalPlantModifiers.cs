using System.Collections.Generic;
using UnityEngine;

namespace Plants
{
	public static class GlobalPlantModifiers
	{

		public static float WITHERING_MOD { get; private set; } = 1;

		// should start at 0, and if the player gains a 5% chance += 5;
		public static float StartingTraitSpawningChanceBonus = 0;
		public static float TRAIT_SPAWNING_CHANCE_BONUS { get; private set; } = 0;
		//50 = 50%
		public static float StartingTraitCarryOverChance = 50;
		public static float TRAIT_CARRY_OVER_CHANCE { get; private set; } = 50;
		public static float StartingSeedYieldHarvestChance = 10;
		//10= 10%
		public static float SEED_YIELD_HARVEST_CHANCE { get; private set; } = 10;
		
		public static IReadOnlyList<PlantModifier> GetAllModifiers() => _globalModifiers;
		private static readonly List<PlantModifier> _globalModifiers = new List<PlantModifier>();

		/************************************************************************************************************************/
		public static void AddGlobalModifier(PlantModifier modifier)
		{
			//Debug.Log($"Plants Added global modifier : {modifier.GetAttributeType()} Info: [:{modifier.GetModifier().ModType} , {modifier.GetModifier().Value}]");
			_globalModifiers.Add(modifier);
		}
		
		public static IReadOnlyList<PlantModifier> GetModifiersFor(ePlantAttribute attribute)
		{
			List<PlantModifier> parsedMods = new List<PlantModifier>();
			foreach (var mod in _globalModifiers)
			{
				if(mod.GetAttributeType() != attribute)
					continue;
				
				parsedMods.Add(mod);
			}

			return parsedMods;
		}

		public static void ClearAllModifiers()
		{
			_globalModifiers.Clear();
		}
		
		/************************************************************************************************************************/

		public static void AlterWitherMod(float val)
		{
			//Debug.Log($"Plants Added AlterWitherMod : AlterWitherMod Info: [{WITHERING_MOD} + {val}]");

			WITHERING_MOD += val;
			//TODO error prevention range
		}
		/************************************************************************************************************************/
		public static void AlterTraitCarryOverChance(int value)
		{
			//Debug.Log($"Plants Added AlterTraitCarryOverChance : TRAIT_CARRY_OVER_ Info: [{TRAIT_CARRY_OVER_CHANCE} + {value}] ");
			TRAIT_CARRY_OVER_CHANCE += value;
			Mathf.Clamp(TRAIT_CARRY_OVER_CHANCE, 1, 100);

		}

		public static void AlterTraitSpawningChance(int value)
		{
			//Debug.Log($"Plants Added AlterTraitSpawningChance : TRAIT_SPAWNING_ Info: [{TRAIT_SPAWNING_CHANCE_BONUS} + {value}] ");
			TRAIT_SPAWNING_CHANCE_BONUS += value;
			Mathf.Clamp(TRAIT_SPAWNING_CHANCE_BONUS, 0, 100);

		}
		
		public static void AlterSeedHarvestChance(int value)
		{
			//Debug.Log($"Plants Added AlterTraitSpawningChance : TRAIT_SPAWNING_ Info: [{TRAIT_SPAWNING_CHANCE_BONUS} + {value}] ");
			SEED_YIELD_HARVEST_CHANCE += value;
			Mathf.Clamp(SEED_YIELD_HARVEST_CHANCE, 0, 100);

		}
		/************************************************************************************************************************/
	}
}