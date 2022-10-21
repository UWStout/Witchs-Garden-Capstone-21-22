using System.Collections;
using System.Collections.Generic;
using Items;
using Statistics;
using UnityEngine;

namespace Plants
{
	/// <summary>
	/// I Plant pertains to things needed for RUNTIME data, 
	/// IPlantTemplate is for raw data and not concerned about some of these other things like Init
	/// </summary>
	public interface IPlant : IPlantTemplate
	{
		///We will optimize and go to back to these as needed 
		//public void Initialize(IPlant template);
		//public void Initialize(IPlantTemplate template , TraitGenerator traitGenerator);
		void Initialize(IPlantableItem template);
		void Clone(IPlant plant, ePlantPhase phase= ePlantPhase.YOUNG);
		void Hybritize(IPlantableItem template, ePlantPhase phase);
		PlantStats CloneStats();
		TraitHandler GetTraitHandler();
		float GetCurrentPlantStat(ePlantAttribute attribute, bool ignoreGlobalModifiers, bool includeTraits);
		float GetCurrentQuality();
		float GetCurrentGrowTime();
		float GetStartingGrowTime();
		int GetHowManyTurnsTillGrown();
		bool GetIsSeed();
		bool GetIsYoung();
		bool GetIsAdult();
		bool GetIsWithering();
		bool GetIsDead();
		int GetCurrentYield();
		bool CanBeHarvested();
		IReadOnlyList<IItem> HarvestPlant();

		void AddPermaModifier(ePlantAttribute attribute, eModifierType type, float value);
		void AddPermaModifier(PlantModifier modifier);
	}
}