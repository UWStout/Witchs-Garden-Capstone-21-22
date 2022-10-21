/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using UnityEngine.EventSystems;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Helpers.UI
{
	public abstract class UI_Hoverable : MonoBehaviour, IHoverable
	{
		/************************************************************************************************************************/

		public void OnPointerEnter(PointerEventData eventData)
		{
			OnHoverBegin();
		}

		public void OnPointerExit(PointerEventData eventData)
		{
			OnHoverEnd();
		}

		protected abstract void OnHoverBegin();
		protected abstract void OnHoverEnd();
	}

}