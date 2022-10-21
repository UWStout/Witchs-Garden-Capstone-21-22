/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Narrative;
using Research;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace SaveLoad
{
	[Serializable]
	public class SaveableNarrativeRequest
	{
		public string ReqName;
		/************************************************************************************************************************/
		public SaveableNarrativeRequest(NarrativeCharacterRequest req)
		{
			ReqName = req.ToString();
		}
		/************************************************************************************************************************/
		public static List<SaveableNarrativeRequest> GenerateSaveList(IReadOnlyList<NarrativeCharacterRequest> items)
		{
			List<SaveableNarrativeRequest> saveList = new List<SaveableNarrativeRequest>();

			foreach (var item in items)
			{
				saveList.Add(new SaveableNarrativeRequest(item));
			}

			return saveList;
		}
		
		public static List<SaveableNarrativeRequest> GenerateSaveList(IReadOnlyList<ActiveCharacterRequest> items)
		{
			List<SaveableNarrativeRequest> saveList = new List<SaveableNarrativeRequest>();

			foreach (var item in items)
			{
				saveList.Add(new SaveableNarrativeRequest(item.NCRequest));
			}

			return saveList;
		}


		public static List<NarrativeCharacterRequest> GenerateLoadList(IReadOnlyList<SaveableNarrativeRequest> items)
		{
			List<NarrativeCharacterRequest> loadList = new List<NarrativeCharacterRequest>();

			foreach (var item in items)
			{
				loadList.Add(SaveLoadThings.Instance.LoadNarrativeReq(item));
			}

			return loadList;
		}
		/************************************************************************************************************************/
	}

}