
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace Helpers.UI
{
	[RequireComponent(typeof(EventTrigger))] /// To access PointerEvents [instead of OnMouseEnter]
	[RequireComponent(typeof(Image))] ///To raycast the eventTrigger
	public abstract class UI_InspectorHoverable : MonoBehaviour
	{
		/// <summary>
		/// Must assign EventTrigger's Component PointerEnter
		/// </summary>
		public abstract void OnHoverBegin();
		/// <summary>
		/// Must assign EventTrigger's Component PointerExit
		/// </summary>
		public abstract void OnHoverExit();
    }
}
