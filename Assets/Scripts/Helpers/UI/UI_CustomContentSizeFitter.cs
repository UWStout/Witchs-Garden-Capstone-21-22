/*
* AUTHOR : Steve Datz
* DESC : An Attempt to create a better content size fitter
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System;
using UnityEngine;


namespace Helpers.UI
{
	public class UI_CustomContentSizeFitter : UI_ChildSizeCounter
	{
		/************************************************************************************************************************/
		/// <summary>
		/// Dont forget to reset booleans for factor height/width
		/// </summary>
		private void Reset()
		{
			_rt = this.GetComponent<RectTransform>();
		}
	#if UNITY_EDITOR
		/// <summary>
		/// A hacky way to recalculate bounds when in editor
		/// (called every frame in editor)
		/// </summary>
		private void OnDrawGizmos()
		{
			ForceRecalculate();
		}
	#endif
		/************************************************************************************************************************/

	#if UNITY_EDITOR
		[ContextMenu("Force Recalculate By Child Size")] //Can manually do this in editor if OnDrawGizmos was removed
		public void ForceRecalculate()
		{
			if(_rt==null)
				_rt = this.GetComponent<RectTransform>();
			DetermineSizeByChildrenSize();
		}
	#endif
		
	}

}