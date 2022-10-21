using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Garden
{
	public class GardenController : MonoBehaviour
	{
		private Patch[,] _patches;
		private int _patchesWidth, _patchesDepth;

		private List<HybridFormation> _hybridFormations;
		private List<ValidHybrid> _validHybrids;

		public void Init(Patch[,] patches, int width, int depth, float patchSeparation, List<HybridFormation> formations)
		{
			_patches = patches;
			_patchesWidth = width;
			_patchesDepth = depth;

			_hybridFormations = formations;
			_validHybrids = new List<ValidHybrid>();
		}

		#region Subscribing to Delegates
		private void Start()
		{
			SubscribeToDelegates(true);
		}

		private void OnDestroy()
		{
			SubscribeToDelegates(false);
		}

		private void SubscribeToDelegates(bool cond)
		{
			TurnManaging.TurnManager m = TurnManaging.TurnManager.Instance;
			if (m == null)
				return;
			
			if (cond)
			{
				m.OnTurnEnd += CheckForHybrids;
				UI.UI_GardenController.SpellChangeEvent += OnSpellChange;
			}
			else
			{
				m.OnTurnEnd -= CheckForHybrids;
				UI.UI_GardenController.SpellChangeEvent -= OnSpellChange;
			}
		}

		private void OnSpellChange(Spells.SpellData spell)
		{
			if (spell.SpellID == Spells.eSpellID.HYBRID)
			{
				// toggle vfx on
				ToggleHybridVFX(true);
			}
			else
			{
				// toggle vfx off
				ToggleHybridVFX(false);
			}
		}
		#endregion

		// call on new plant planted
		public void CheckForHybrids(int currentTurn)
		{
			_validHybrids.Clear();

			// for each plant
			for (int x = 0; x < _patchesWidth; x++)
			{
				for (int z = 0; z < _patchesDepth; z++)
				{
					Patch patch = GetPatch(x, z);

					if (!patch.HasPlant())
						continue;

					// bring up possible hybrid formations
					foreach (HybridFormation formation in _hybridFormations)
					{
						bool validFormation = true;
						foreach (HybridComponent component in formation.Components)
						{
							// valid position in patches array
							Patch p;

							p = GetPatch(x + component.RelativePos.x, z + component.RelativePos.z);

							if (p == null)
							{
								validFormation = false;
								break;
							}

							// patch planted and the necessary plant for a hybrid
							if (!p.HasPlant() || !p.GetPlant().PlantData.Equals(component.PlantType))
							{
								validFormation = false;
								break;
							}
						}

						if (validFormation)
						{
							Debug.Log($"Found valid hybrid at {x}, {z}");

							List<Patch> patches = new List<Patch>();
							foreach (HybridComponent component in formation.Components)
                            {
								patches.Add(GetPatch(x + component.RelativePos.x, z + component.RelativePos.z));
                            }

							Patch center = GetPatch(x, z);

							_validHybrids.Add(new ValidHybrid(formation, center, patches));
						}
					}
				}
			}

		}

		private void ToggleHybridVFX(bool cond)
		{
			foreach (ValidHybrid hybrid in _validHybrids)
            {
				foreach (Patch patch in hybrid.Patches )
                {
					patch.ToggleHybridHighlight(cond);
                }
            }
		}

		public List<ValidHybrid> FindHybridFromPatch(Patch patch)
        {
			List<ValidHybrid> possibleFormations = new List<ValidHybrid>();

			foreach (ValidHybrid hybrid in _validHybrids)
            {
				if (hybrid.Contains(patch))
					possibleFormations.Add(hybrid);
            }

			return possibleFormations;
		}

		public bool RemoveHybrid(ValidHybrid hybrid)
        {
			return _validHybrids.Remove(hybrid);
        }

		public void RefreshVFX()
        {
			foreach (Patch p in _patches)
            {
				p.ToggleHybridHighlight(false);
            }
			ToggleHybridVFX(true);
        }

		public Patch GetPatch(int x, int z)
        {
			if (x < 0 || z < 0 || x >= _patchesWidth || z >= _patchesDepth)
				return null;
			else
				return _patches[x, z];
        }
	}
}