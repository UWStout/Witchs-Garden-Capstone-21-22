/*
* AUTHOR : Steve Datz
* DESC : I know theres a way to greatly reduce the duplicated List Generation code with SaveableItem<T,E>
 *       But I couldnt quite get an elegant solution, so were gonna go the fast route
*/

using System;
using System.Collections.Generic;
using Diagrams;
using UnityEngine;


#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace SaveLoad
{
	[Serializable]
	public class SaveableDiagram
	{
		public string DiagName;
		/************************************************************************************************************************/

		public SaveableDiagram(DiagramTemplate template)
		{
			DiagName = template.DiagramName;
		}
		/************************************************************************************************************************/
		
		public static List<SaveableDiagram> GenerateSaveList(IReadOnlyList<DiagramTemplate> items)
		{
			List<SaveableDiagram> saveList = new List<SaveableDiagram>();

			foreach (var item in items)
			{
				//Debug.Log($"--Trying to save DIAG: {item}");
				saveList.Add(new SaveableDiagram(item));
			}

			return saveList;
		}
		
		public static List<DiagramTemplate> GenerateLoadList(IReadOnlyList<SaveableDiagram> items)
		{
			List<DiagramTemplate> loadList = new List<DiagramTemplate>();

			foreach (var item in items)
			{
				loadList.Add(SaveLoadThings.Instance.LoadDiagramFromSave(item));
			}

			return loadList;
		}
		/************************************************************************************************************************/

	}







}