using System.Collections.Generic;
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEngine;

namespace Helpers
{
	/// <summary>
	/// This class exists to help with git and unity don't play nice together in regards to people pushing empty folders into the repo
	/// </summary>
	public static class FolderScanner
	{
		private static int _numDeleted = 0;
	#if UNITY_EDITOR
		[MenuItem("Tools/Delete Empty Folders and Meta data")]
		public static void ScanFolders()
		{
			Debug.Log($"..Scanning for empty folders and associated meta files @ {Application.dataPath}");
			_numDeleted = 0;
			ExploreSubFolders(Application.dataPath, "");
			Debug.Log($"<color=green>Deleted </color> {_numDeleted} <color=green> empty folder and associated meta files</color> ");
			//refresh Unity otherwise folders stay till you click out and back into editor in a specific way
			AssetDatabase.Refresh();
		}

		private static void ExploreSubFolders(string path, string lastFolder)
		{
			//Debug.Log($".. found folder: {path.ToString()} .. num subfolders= {Directory.GetDirectories(path).Length} , numFiles={Directory.GetFiles(path).Length}");
			if (IsDirectoryEmpty(path))
			{
				DeleteFolderAndMetaFile(path, lastFolder);
				//Now that we deleted the empty folder, check again for empty folder in empty folder
				ExploreSubFolders(lastFolder, Directory.GetParent(lastFolder)?.ToString());
				return;
			}

			foreach (var subFolder in Directory.GetDirectories(path))
			{
				ExploreSubFolders(subFolder, path);
			}
		}

		private static bool IsDirectoryEmpty(string path)
		{
			return Directory.GetDirectories(path).Length == 0 && Directory.GetFiles(path).Length == 0;
		}

		private static void DeleteFolderAndMetaFile(string path, string lastFolder)
		{
			Debug.Log($" ..<color=red>Deleting Empty folder @</color> {path}");
			Directory.Delete(path);
			TryDeleteMetaFile(path);
			++_numDeleted;
		}


		private static void TryDeleteMetaFile(string path)
		{
			Debug.Log($" ....<color=red>Deleting meta file @:</color>    {path}.meta  ");
			File.Delete($"{path}.meta");
		}

		// private static void TryDeleteMetaFile2(string path)
		// {
		// 	int lastSlashIndex = path.LastIndexOf('\\'); //double to detect single
		// 	Debug.Log($"Last Index= {lastSlashIndex} , Len = {path.Length}");
		// 	//I have no idea why this index out of bounds when we just got the bounds FROM the string...
		// 	string emptyFolderName = path.Substring(lastSlashIndex, path.Length - 1);
		// 	Debug.Log($"..looking for meta file named {emptyFolderName}");
		// 	foreach (var file in Directory.GetFiles(path))
		// 	{
		// 		if (file.Contains(emptyFolderName))
		// 		{
		// 			Debug.Log($"Found associated meta file {file}");
		// 			File.Delete(file);
		// 		}
		// 	}
		// }

		// private static void TryDeleteMetaFile3(string parentDir)
		// {
		// 	Debug.Log($"<color=orange>Trying to get files in </color>: {parentDir}    <color=orange>count =</color> { Directory.GetFiles(parentDir).Length}");
		// 	var filesInParentDir = Directory.GetFiles(parentDir);
		// 	if (filesInParentDir.Length > 1)
		// 		return;
		// 	Debug.Log($"<color=yellow>Try delete associated meta file</color> {filesInParentDir[0]}");
		// 	File.Delete(filesInParentDir[0]);
		// }
	#endif
	}
}