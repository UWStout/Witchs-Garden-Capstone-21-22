/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Helpers.UI
{
	[RequireComponent(typeof(Button))]
	public class UI_MenuStackOpenButton : MonoBehaviour
	{
		[SerializeField] private GameObject _menuToOpen;
		/************************************************************************************************************************/
		private void Awake()
		{
			if (_menuToOpen == null)
			{
				Debug.Log($"<color=red> NO menu assigned to open for </color> {this.gameObject.name}");
				return;
			}
			UI_MenuStack menuStack = this.GetComponentInParent<UI_MenuStack>();
			if (!menuStack)
			{
				Debug.Log($"<color=red> NO menu stack found in parent for </color> {this.gameObject.name}");
				return;
			}
			Button b = this.GetComponent<Button>();
			b.onClick.AddListener(delegate { menuStack.OpenMenu(_menuToOpen);});
			
			Destroy(this);
		}
	}

}