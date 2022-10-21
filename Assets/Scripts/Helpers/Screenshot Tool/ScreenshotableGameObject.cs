/*
* AUTHOR : Steve Datz
* DESC : Allows us to define a Screenshot/File name,
*		and and asset that cares about storing a screenshot made from this object
*/


using UnityEngine;

namespace Helpers
{
	public class  ScreenshotableGameObject : MonoBehaviour
	{

		public string OutputName => _itemName;
		[SerializeField] private string _itemName = "Icon_";


		public ScreenshotSaver ScreenshotSaver => _scriptableAssetTemplate;
		[SerializeField] private ScreenshotSaver _scriptableAssetTemplate = default;

	}
}