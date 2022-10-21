/*
* AUTHOR : Steve Datz
* DESC : Used to parse CSV files into ScriptableObjects for data storage
*/

using UnityEngine;
using UnityEditor;
using System.IO;
using Ingredients;


public static class CSVParser 
	{
		private const string CSV_PATH_INGREDIENT = "/GameFiles/CSVs/WG_Ingredients.csv";
		private const string SAVE_PATH_INGREDIENT = "Assets/GameFiles/ScriptableAssets/Ingredients/";


		/************************************************************************************************************************/
		[MenuItem("Tools/CSV/Generate Ingredients")]
		public static void GenerateIngredients()
		{
			string[] allLines = File.ReadAllLines(Application.dataPath+CSV_PATH_INGREDIENT);
			bool first = true;
			foreach (var line in allLines)
			{
				//Skip the first line
				if (first)
				{
					first = false;
					continue;
				}

				string[] splitData = line.Split(',');

				string igName = splitData[0];
				string level = splitData[1];
				string assetName = FormateIngredientAssetName(igName, level);
				string assetPath = $"{SAVE_PATH_INGREDIENT}{assetName}";
				var exists = AssetDatabase.LoadAssetAtPath(assetPath, typeof(Ingredient));
				//Either replace existing or create new
				Ingredient ingredient = exists != null ? (Ingredient) exists : ScriptableObject.CreateInstance<Ingredient>();
				ingredient.Generate(igName, level, splitData[2]);
				//Save the asset if it didnt already exist
				if (exists == null)
				{
					AssetDatabase.CreateAsset(ingredient, assetPath);
				}
			}

			AssetDatabase.SaveAssets();
		}
		
		/************************************************************************************************************************/

		private static string FormateIngredientAssetName(string igName, string level)
		{
			return $"{level}_{igName}.asset";
		}
	}
