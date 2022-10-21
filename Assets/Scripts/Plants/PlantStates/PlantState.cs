using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Plants
{
	public abstract class PlantState
	{
		private GameObject _plantModel;
		private PlantStats _plantStats;

		private Action<ePlantPhase> _onPhaseChange;
		protected TraitHandler _traits;

		/************************************************************************************************************************/

		public void Init(GameObject plantModel, Transform t, ref PlantStats plantStats, Action<ePlantPhase> onPhaseChange, TraitHandler getCurrTraits)
		{
			_plantModel = plantModel;
			//Child this to the proper transform
			_plantModel.transform.SetParent(t);
			//Center it just in case
			_plantModel.transform.localPosition = Vector3.zero;
			SetModel(false);
			//hold a ref to the stats
			_plantStats = plantStats;
			//hold a ref to the method to call when we want to change phases
			_onPhaseChange = onPhaseChange;
			//hold a ref to get our traits at runtime
			_traits = getCurrTraits;
		}
		/************************************************************************************************************************/

		public void OnEnable()
		{
			SetModel(true);
		}

		public void OnDisable()
		{
			SetModel(false);
		}
		/************************************************************************************************************************/
		protected void ChangePhase(ePlantPhase phase)
		{
			_onPhaseChange.Invoke(phase);
		}

		/************************************************************************************************************************/

		public abstract bool CanBeWatered();
		public abstract bool CanBeSpeedUp();
		public abstract bool CanBeReWound();
		public abstract void Speedup();
		public abstract void Rewind();
		public abstract void AdvanceGrowCycle();
		public bool DidSkipSeedPhase() => _plantStats.SkippedSeedPhase;
		public void SetSkipSeedPhase()
        {
			_plantStats.SkippedSeedPhase = true;
        }
		/// <summary>
		/// Seed time + young time
		/// </summary>
		/// <returns></returns>
		public int GetBaseGrowTimeInYoung() => _plantStats.BaseGrowTimeYoung;
		/// <summary>
		/// Returns a non-negative value
		/// </summary>
		/// <returns>a # >= 0</returns>
		public int GetCurrentGrowTime(bool ignoreSeedPhase=false) //traits cant be null
		{
			int seedPhase = ignoreSeedPhase ? 0 : 1;

			var rawGrowTime = GetCurrentPlantStat(ePlantAttribute.GROWTIME, true, _traits.GetTraits());
			//var currVal = rawGrowTime - ( GetGrowTimeYoung() +1);
			var floored = Mathf.FloorToInt(rawGrowTime) + seedPhase;
			return Mathf.Max(floored, 0); //cant allow negative
		}

		/// <summary>
		/// for young and seed only-otherwise return 0?
		/// Want from curr stage TO adult, so seed is not 1, its 1+ GetGrowTimeYoung()
		/// </summary>
		/// <returns></returns>
		public virtual int GetHowManyTurnsTillGrown()
		{
			return 0;
		}

		public float GetCurrentPlantStat(ePlantAttribute attribute, bool includeGlobalModifiers, IReadOnlyList<PlantTrait> traits)
		{
			return _plantStats.GetCurrentValueFor(attribute, traits, includeGlobalModifiers, true);
		}

		public void AddModifier(PlantModifier plantModifier)
		{
			_plantStats.AddPermaModifier(plantModifier);
		}
		
		/************************************************************************************************************************/
		private void SetModel(bool cond)
		{
			_plantModel.gameObject.SetActive(cond);
		}
	}
}