using System;
using System.Collections.Generic;
using System.IO;
using Diagrams;
using Ingredients;
using Items;
using UnityEditor;
using UnityEngine;


public static class DiagramGenerator 
	{
		private const string POTIONS_PATH = "Assets/GameFiles/ScriptableAssets/Items/Potions";
		private const string DIAG_SAVE_PATH = "Assets/GameFiles/ScriptableAssets/Diagrams/PotionCombo/";
		/************************************************************************************************************************/
		[MenuItem("Tools/Generate Potion Diags")]
		public static void GenerateDiagrams()
		{
			foreach (var filePath in Directory.GetFiles(POTIONS_PATH))
			{
				if(filePath.Contains(".meta"))
					continue;

				//Debug.Log($"filePath=> {filePath} count={filePath.Length} looking for Items/Potions");
				var foundIndex = filePath.IndexOf(POTIONS_PATH, StringComparison.Ordinal);
				string shortenedFilename = filePath.Substring(foundIndex + POTIONS_PATH.Length);
				//Debug.Log($"shortenedFilename= <color=orange> {shortenedFilename} </color>");
				var potionAsset = AssetDatabase.LoadAssetAtPath(filePath, typeof(PotionTemplate));
				if (potionAsset == null)
				{
					Debug.Log($"<color=red> Didn't load {shortenedFilename} properly</color> ??  -FilePath-> {filePath}");
					continue;
				}
				
				string diagName = GetDiagNameFromFile(shortenedFilename);
				//Debug.Log($"<color=green>{diagName}</color>");

				string newAssetPath = $"{DIAG_SAVE_PATH}{diagName}_potionDiag.asset";
				var exists = AssetDatabase.LoadAssetAtPath(newAssetPath , typeof(PotionComboDiagTemplate));
				//Debug.Log($"Exists= {exists!=null} @  {newAssetPath}");
				PotionComboDiagTemplate diagTemplate = exists != null ? (PotionComboDiagTemplate) exists : ScriptableObject.CreateInstance<PotionComboDiagTemplate>();
				diagTemplate.Generate($"{diagName} Diagram", $"A recipe on how to make a {diagName} potion", (PotionTemplate)potionAsset);
				if (exists == null)
				{
					AssetDatabase.CreateAsset(diagTemplate, newAssetPath);
				}
			}
			AssetDatabase.SaveAssets();
		}
		
		/************************************************************************************************************************/


		private static string GetDiagNameFromFile(string f)
		{
			var searchKey = "PotionItem_";
			var indexOfPrefix = f.IndexOf(searchKey, StringComparison.Ordinal) + searchKey.Length;
			var indexOfSuffix = f.IndexOf(".asset", StringComparison.Ordinal);
			return f.Substring(indexOfPrefix, indexOfSuffix-indexOfPrefix);
		}
	}
