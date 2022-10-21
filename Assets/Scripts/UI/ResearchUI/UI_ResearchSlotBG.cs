/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchSlotBG : MonoBehaviour
	{
		[SerializeField] private Image _slotBg;
		
		/************************************************************************************************************************/

		public void SetIsSelected(bool cond)
		{
			var color = Color.white;
			color.a = cond ? 1 : 0.75f;
			_slotBg.color = color;
		}

	}

}