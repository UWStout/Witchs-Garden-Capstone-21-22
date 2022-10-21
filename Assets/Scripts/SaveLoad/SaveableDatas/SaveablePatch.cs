/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Garden;
using Plants;


namespace SaveLoad
{
	[Serializable]
	public class SaveablePatch
	{
		public string PatchID;
		public ePatchState PatchState;
		public SaveablePlant PlantData;
		
		/************************************************************************************************************************/
		public SaveablePatch(Patch patch)
		{
			PatchID = patch.gameObject.name;
			PatchState = patch.CurrentState;
			PlantData = new SaveablePlant();
			patch.GetPlant().SaveSelf(PlantData);
		}

		/************************************************************************************************************************/


		/************************************************************************************************************************/
	}
	

}