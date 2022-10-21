using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;
using CustomInput;
using Player;

namespace Helpers
{
	public class DevModeToggle : MonoSingleton<DevModeToggle>
	{
		public bool DevMode => _devMode;
		[SerializeField] private bool _devMode = false;
		public bool DoUnlockAllPlantHybrids => _doUnlockAllPlantHybrids;
		[SerializeField] private bool _doUnlockAllPlantHybrids = true;
		public bool DoUnlockAllPotionRecipes => _doUnlockAllPotionRecipes;
		[SerializeField] private bool _doUnlockAllPotionRecipes = true;
		public bool DoUnlockAllSpells => _doUnlockAllSpells;
		[SerializeField] private bool _doUnlockAllSpells = true;

		// What to update:
		//   dev keys (input reader)
		//   starting items (items -> item manager)
	}
}
