/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections.Generic;
using System.IO;
using Diagrams;
using Helpers;
using UnityEngine;
using NaughtyAttributes;
using Items;
using Narrative;
using Research;

namespace SaveLoad
{
	public class SaveSystem : MonoSingleton<SaveSystem>
	{
		private const string SAVE_DIR = "/SaveData/";
		private const string SAVE_FILE_NAME = "WG_Save.txt";

        /************************************************************************************************************************/
        private void Start()
        {
			string dirPath = Application.persistentDataPath + SAVE_DIR;

			if (!Directory.Exists(dirPath))
			{
				Directory.CreateDirectory(dirPath);
			}
		}

        [Button]
	     public static void Save()
		{
			string fullPath = Application.persistentDataPath + SAVE_DIR + SAVE_FILE_NAME;

			GameData saveData = new GameData();

			//Gather all saveable objects in Scene (some will not be GameObjects so must register through a system)
			RegisteredItems.AddToSaveData(saveData);

			string json = JsonUtility.ToJson(saveData);
			//This seems to handle creating the file if it doesnt exist (creating manually.. locks read/write access for some reason)
			File.WriteAllText(fullPath, json);

			//Debug.Log($"<color=green> Saved File </color>: {fullPath} ");
		}


		[Button]
		public static void Load()
		{
			string fullPath = Application.persistentDataPath + SAVE_DIR + SAVE_FILE_NAME;

			if (!File.Exists((fullPath)))
				return;

			string json = File.ReadAllText(fullPath);
			GameData saveData = JsonUtility.FromJson<GameData>(json);

			RegisteredItems.LoadFromData(saveData);

			//Debug.Log($"<color=green> Loaded File </color>: {fullPath} ");
		}

		public static void LoadDefault()
        {
			GameData saveData = new GameData();

			//LOAD IN Default Starting items
			List<IItem> iItemsForSave = new List<IItem>();
            foreach (var item in ItemManager.Instance.GetStartingItems())
            {
				iItemsForSave.Add(item);
			}
			saveData.PlayerItems = SaveableItem.GenerateSaveList(iItemsForSave);
			
			//LOAD IN Default Starting Diagrams
			List<DiagramTemplate> diagsForSave = new List<DiagramTemplate>();
			foreach (var diag in ItemManager.Instance.GetStartingDiagrams())
			{
				diagsForSave.Add(diag);
			}
			saveData.KnownDiagrams = SaveableDiagram.GenerateSaveList(diagsForSave);

			//LOAD RESEARCH
			List<UnlockedChapter> chsForSave = new List<UnlockedChapter>();
			foreach (var startingCh in ResearchSystem.Instance.GetStartingChForSaveLoad())
			{
				chsForSave.Add(new UnlockedChapter(startingCh));
			}
			saveData.KnownResearch = SaveableResearchChapter.GenerateSaveList(chsForSave);
			
	        //LOAD Narrative
	        saveData.ActiveRequests = SaveableNarrativeRequest.GenerateSaveList(NarrativeSystem.Instance.GetStartingNarrativeSequenceForLoading());
			
	        //pass data to registered systems
	        RegisteredItems.LoadFromData(saveData);
        }


		//For the main menu button
		public static bool DoesHaveSaveData()
        {
			return File.Exists((Application.persistentDataPath + SAVE_DIR + SAVE_FILE_NAME));
        }
	}

}