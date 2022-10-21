/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections.Generic;
using UnityEngine;
using Random = System.Random;

namespace Plants
{
	[CreateAssetMenu(fileName = "TraitGenerator_", menuName = "Data/Plants/Traits/Trait Generator", order = 0)]
	public class TraitGenerator : ScriptableObject
	{
		[SerializeField] private List<TraitGenerationChance> _possibleTraits;
		
		/************************************************************************************************/
		public List<PlantTrait> GenerateNewModifiers(float bonusChance=0)
		{
			List<PlantTrait> modifiers = new List<PlantTrait>();
			Random rng = new Random();
			foreach (var traitChance in _possibleTraits)
			{
				int diceRoll = rng.Next(0, 100);
				//Debug.Log($"[{traitChance.PlantTrait.TraitName}] Chance= {traitChance.SpawnChance}-> rolled <color=green>{diceRoll}</color>  ");
				if (diceRoll - bonusChance < (int)traitChance.SpawnChance)
				{
					//Debug.Log($"...success new trait : <color=green>[{traitChance.PlantTrait.TraitName}]</color>");
					//*possible* that we randomize the value somehow here..
					modifiers.Add(traitChance.PlantTrait);
				}
			}
			
			
			return modifiers;
		}
	}

	
}