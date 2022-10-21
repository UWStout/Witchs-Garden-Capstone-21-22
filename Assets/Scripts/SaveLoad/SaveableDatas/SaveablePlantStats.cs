/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Plants;
using Statistics;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace SaveLoad
{
	[Serializable]
	public class SaveablePlantStats
	{
		public int BaseGrowTimeYoung;
		public bool SkippedSeedPhase = false;
		public Stat[] Stats;
		public List<PlantModSet> Modifiers = new List<PlantModSet>();
		/************************************************************************************************************************/

		
	}

}