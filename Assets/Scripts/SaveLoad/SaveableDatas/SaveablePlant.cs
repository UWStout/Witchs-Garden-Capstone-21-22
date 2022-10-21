/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Plants;
using UnityEngine;


#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace SaveLoad
{
	[Serializable]
	public class SaveablePlant 
	{
		public string PlantTemplateName;
		public string CurrentState;
		public bool HasBeenWatered;
		public SaveablePlantStats Stats;
		public List<string> Traits = new List<string>();

		public bool IsActive;
		/************************************************************************************************************************/

		public PlantTemplate GetPlantTemplate()
		{
			if (PlantTemplateName == "EMPTY")
				return null;
			return SaveLoadThings.Instance.FindTemplateForPlant(PlantTemplateName);
		}

		public void SaveOffTemplate(PlantData data, PlantModels models)
		{
			PlantTemplate template = SaveLoadThings.Instance.FindTemplateForPlant(data, models);
			PlantTemplateName = template == null ? "EMPTY" : template.ToString();
		}

		public void SaveOffTraits(IReadOnlyList<PlantTrait> traits)
		{
			foreach (var trait in traits)
			{
				Traits.Add(trait.ToString());
			}
		}

		public List<PlantTrait> GetTraits()
		{
			return SaveLoadThings.Instance.FindTraitsFromList(Traits);
		}

		
	}
}