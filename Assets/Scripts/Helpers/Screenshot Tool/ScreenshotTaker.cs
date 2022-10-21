/*
* AUTHOR : Steve Datz
* DESC : Allow us to take Screenshots of gameobjects and convert into Sprites
 * ------TODO
 *  It would be nice to add a custom editor for this that has some inspector buttons instead of contextMenu	
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"


using System.Collections;
using NaughtyAttributes;
using UnityEditor;
using UnityEngine;
namespace Helpers
{
	[RequireComponent(typeof(Camera))]
    public class ScreenshotTaker : MonoBehaviour
    {
	    //Cam should be set to depth only for transparent imgs
	    [Header("Scene Components")] 
	    [SerializeField] private Camera _cam;
	    [Tooltip("Used to find childed objects to take pictures of")]
	    [SerializeField] private GameObject _stagingArea;
	    
	    [Header("Settings")] 
	    [Tooltip("Must have starting and ending / {slashes}")]
	    [SerializeField] private string _outputPath = "/Art/2D/UI/Icons/test/";
	    [SerializeField] private string _assetName = "icon_01";
	    [SerializeField] private int _width = 256;
	    [SerializeField] private int _height = 256;
	    [SerializeField] private int _depth = 24;


	    [Header("Dev")] 
	    [SerializeField] private bool _debugMe = false;
	    
	    /********************************************************************/

	    #if UNITY_EDITOR
	    [ContextMenu("Take Single Screenshot")]
	    [Button]
	    public void TakeSingleScreenShot()
	    {
		    TakeScreenshot(Application.dataPath+_outputPath+_assetName);
	    }
	    
	    /// <summary>
	    /// This seems to behave oddly from Editor- it seems to take it time..and big delays with saving
	    /// Best to use from playmode
	    /// </summary>
	    [ContextMenu("Take Screenshots of All Items")]
	    [Button("Take Screenshots of All Items")]
	    public void ProcessScreenShotsOfAllItems()
	    {
		    StartCoroutine(TakePictureOfAllSceneItems());
	    }
	    
	    
	    
	    /********************************************************************/
	   private IEnumerator TakePictureOfAllSceneItems()
	    {
		    string outputLoc = $"{Application.dataPath} {_outputPath}";
		    var models = _stagingArea.GetComponentsInChildren<ScreenshotableGameObject>(true);

		    //Turn off any models - so only take pictures one at a time (prevent user error)
		    foreach (var model in models)
		    {
			    model.gameObject.SetActive(false);
		    }

		    foreach (var model in models)
		    {
			    model.gameObject.SetActive(true);
				yield return null;
			    TakeScreenshot(outputLoc+model.OutputName);
				yield return null;
			    model.gameObject.SetActive(false);
				yield return null;
				string savedAssetLocal = $"Assets/{_outputPath}{model.OutputName}.png";
				Sprite s = AssetDatabase.LoadAssetAtPath<Sprite>(savedAssetLocal);
				if (s)
				{
					var saver = model.ScreenshotSaver;
					if (saver)
					{
						saver.OnScreenshotTaken(s);
						EditorUtility.SetDirty(saver);
					}
					if(_debugMe)
						Debug.Log($"Success");
				}
				else
				{
					if(_debugMe)
						Debug.Log($"<color=yellow>Unable to Save Picture of </color> : {model.OutputName} @ {savedAssetLocal}");
				}
				yield return null;
		    }
	    }
	    
	    private void TakeScreenshot(string fullFilePath)
	    {
		    if (_cam == null)
			    _cam = this.GetComponent<Camera>();

		    
		    RenderTexture rt = new RenderTexture(_width, _height, _depth);
		    _cam.targetTexture = rt;
		    Texture2D screenshot = new Texture2D(_width, _height, TextureFormat.RGBA32, false);
		    _cam.Render();
		    RenderTexture.active = rt;
		    screenshot.ReadPixels(new Rect(0,0,_width, _height), 0, 0);
		    _cam.targetTexture = null;
		    RenderTexture.active = null;

		    //Cleanup
		    if (Application.isEditor)
		    {
			    DestroyImmediate(rt);
		    }
		    else
		    {
			    Destroy(rt);
		    }

		    byte[] bytes = screenshot.EncodeToPNG();
		    //Write to disc (can't be a DIR, needs to include file name)
		    System.IO.File.WriteAllBytes(fullFilePath+".png", bytes);
		    if(_debugMe)
				Debug.Log($"Saved Screenshot to : {fullFilePath}.png");
	    #if UNITY_EDITOR
			AssetDatabase.Refresh();	    
	    #endif
		    
	    }
	    /********************************************************************/
#endif
    }


    //IN ORDER TO HAVE A FILE AUTOMATICALLY CHANGE FROM TEXTURE TO 2DSPRITE/UI We need to unlock the use of "preset-autodetection"
    //REQUIRES UpdateFolderPresetDependency.cs in EDITOR folder to auto detect preset settings 
	#if UNITY_EDITOR



    #endif
}
