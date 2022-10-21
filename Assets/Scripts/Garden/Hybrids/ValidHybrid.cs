using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Garden
{
	public class ValidHybrid
	{
		private HybridFormation _formation;
		private List<Patch> _patches;
		private Patch _center;

		public HybridFormation Formation => _formation;
		public List<Patch> Patches => _patches;
		public Patch Center => _center;

		public ValidHybrid(HybridFormation formation, Patch center, List<Patch> patches)
        {
			_formation = formation;
			_center = center;
			_patches = patches;
        }

		public bool Contains(Patch patch)
        {
			foreach (Patch p in _patches)
            {
				if (patch.Equals(p))
					return true;
            }

			return false;
        }

		public void ToggleHighlight(bool cond)
		{

		}
	}
}