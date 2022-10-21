using System;
using System.Collections.Generic;
using SaveLoad;
using Statistics;
using UnityEngine;

namespace Plants
{
	public class PlantStats
	{
		public int BaseGrowTimeYoung { get; private set; }

		//this is an awesome hack
		public bool SkippedSeedPhase = false;
		
		private readonly Stat[] _plantStats;
		private readonly List<PlantModifier> _plantModifiers;

		/************************************************************************************************************************/

		public PlantStats(PlantAttributes attributes, IReadOnlyList<PlantModifier> plantModifiers = default)
		{
			int statSize = Enum.GetValues(typeof(ePlantAttribute)).Length;
			_plantStats = new Stat[statSize];
			for (int i = 0; i < statSize; i++)
			{
				ePlantAttribute attr=(ePlantAttribute) i;
				var currValue = attributes.GetAttributeValue(attr);
				if (attr == ePlantAttribute.GROWTIME)
				{
					//Handle growtime differently than other stats, since we are counting up with each day
					BaseGrowTimeYoung = Mathf.FloorToInt(currValue) ;
					currValue = 0;
				}
				_plantStats[i] = new Stat(currValue, PlantAttributes.GetMaxAttributeValue(attr));
				//Debug.Log($"<color=purple>Init stat {attr} to {_plantStats[i].CurrentValue}  </color>");
			}
			
			//Seems list = default, can be null which.. is weird
			_plantModifiers =  plantModifiers == null ? new List<PlantModifier>() : new List<PlantModifier>(plantModifiers);
		}

		public PlantStats(PlantStats existingStats)
		{
			BaseGrowTimeYoung = existingStats.BaseGrowTimeYoung;
			SkippedSeedPhase = existingStats.SkippedSeedPhase;
			_plantStats = existingStats.GetClonedStats();
			_plantModifiers = existingStats.GetClonedModifiers();
		}

		public PlantStats(SaveablePlantStats data)
		{
			BaseGrowTimeYoung = data.BaseGrowTimeYoung;
			SkippedSeedPhase = data.SkippedSeedPhase;
			_plantStats = data.Stats;
			_plantModifiers = new List<PlantModifier>();
			foreach (var modSet in data.Modifiers)
			{
				_plantModifiers.Add(new PlantModifier(modSet));
			}
		}

		public void SaveSelf(SaveablePlantStats data)
		{
			data.BaseGrowTimeYoung = BaseGrowTimeYoung;
			data.SkippedSeedPhase = SkippedSeedPhase;
			data.Stats = _plantStats;
			foreach (var pMod in _plantModifiers)
			{
				var mod = pMod.GetModifier();
				PlantModSet set = new PlantModSet
				{
					Value = mod.Value,
					AttributeModified = mod.StatAffected,
					ModifierType = mod.ModType
				};
				data.Modifiers.Add(set);
			}
		}
		
		/************************************************************************************************************************/

		public float GetCurrentValueFor(ePlantAttribute attribute, IReadOnlyList<PlantTrait> traits, bool includeGlobalModifiers=true, bool includePermaModifiers=true)
		{
			var baseValue= _plantStats[(int)attribute].CurrentValue;
			//Debug.Log($"    baseValue={baseValue} for {attribute}");
			return  GetModifiedAmountForStat(attribute, baseValue, GenerateModifiers());

			/**************-----LOCAL ------**********************/
			List<PlantModifier> GenerateModifiers()
			{
				List<PlantModifier> modifiers = new List<PlantModifier>();
				foreach (var plantTrait in traits)
				{
                    foreach (var plantMod in plantTrait.GetPlantModifiers())
                    {
                        if (plantMod.GetAttributeType() != attribute)
                            continue;
                        modifiers.Add(plantMod);
                    }
                }
				
				if (includeGlobalModifiers)
					modifiers.AddRange(GlobalPlantModifiers.GetModifiersFor(attribute));

				if (includePermaModifiers)
					modifiers.AddRange(_plantModifiers);
				
				return modifiers;
			}
		}

		public IReadOnlyList<PlantModifier> GetModifiers()
		{
			return _plantModifiers;
		}

		public void AddPermaModifier(PlantModifier modifier)
		{
			//Debug.Log($"<color=green> Added ModType: {modifier.GetModifier().StatAffected} </color>");
			_plantModifiers.Add(modifier);
		}
		/************************************************************************************************************************/

		private float GetModifiedAmountForStat(ePlantAttribute attribute, float currValue, IReadOnlyList<PlantModifier> plantModifiers)
		{
			float flatBonus = 0;
			float percBonus = 0;
			
			foreach (var plantModifier in plantModifiers)
			{
				var modifier = plantModifier.GetModifier();
				//Debug.Log($"The modifier is {modifier.StatAffected}   vs {attribute}");
				if(modifier.StatAffected != attribute)
					continue;

				switch (modifier.ModType)
				{
					case eModifierType.FLAT:
						flatBonus += modifier.Value;
						//Debug.Log($"{modifier} of type {attribute} has value {modifier.Value}Flat");
						break;
					case eModifierType.PERCENT:
						//Quality is treated oddly in this game.. >.< lol
						if (attribute == ePlantAttribute.QUALITY)
						{
							percBonus += modifier.Value;
						}
						else
						{
							percBonus += currValue * modifier.Value * 0.01f;
						}
						//Debug.Log($"{modifier} of type {attribute} has value {modifier.Value}%");
						break;
				}

			}

			//Debug.Log($"<color=yellow> currValue{currValue}  + flatBonus{flatBonus} + percBonus={percBonus} </color> ");
			return currValue + flatBonus + percBonus;
		}
		
		private Stat[] GetClonedStats()
		{
			Stat[] cloned = new Stat[_plantStats.Length];
			for (int i = 0; i < _plantStats.Length; i++)
			{
				var old=_plantStats[i];
				cloned[i] = new Stat(old.CurrentValue, old.MaxValue);
			}

			return cloned;
		}

		private List<PlantModifier> GetClonedModifiers()
		{
			return new List<PlantModifier>(_plantModifiers);
		}
	}
}