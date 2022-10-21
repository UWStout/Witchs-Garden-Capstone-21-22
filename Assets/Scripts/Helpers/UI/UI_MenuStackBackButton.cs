using System;
using UnityEngine;
using UnityEngine.UI;

namespace Helpers.UI
{
	[RequireComponent(typeof(Button))]
	public class UI_MenuStackBackButton : MonoBehaviour
	{
		private void Awake()
		{
			UI_MenuStack menuStack = this.GetComponentInParent<UI_MenuStack>();
			if (!menuStack)
			{
				Debug.Log($"<color=red> NO menu stack found in parent for </color> {this.gameObject.name}");
				return;
			}
			Button b = this.GetComponent<Button>();
			b.onClick.AddListener(menuStack.CloseCurrentMenu);
			
			Destroy(this);
		}
	}
}