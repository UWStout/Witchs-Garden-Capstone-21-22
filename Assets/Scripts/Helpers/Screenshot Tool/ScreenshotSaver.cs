/*
* AUTHOR : Steve Datz
* DESC : A generic way of saving a sprite to a ScriptableObject
*		Used by our screenshot system 
*/


using UnityEngine;

namespace Helpers
{
	public abstract class ScreenshotSaver : ScriptableObject
	{
		public abstract void OnScreenshotTaken(Sprite s);
	}
}