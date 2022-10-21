using System;
using UnityEngine;

namespace Helpers.UI
{
	public class UI_ChildSizeCounter : MonoBehaviour
	{
		[SerializeField] protected bool _factorWidth = false;
		[SerializeField] protected bool _factorHeight = false;

		protected RectTransform _rt;
		/************************************************************************************************************************/

		private void Awake()
		{
			_rt = this.GetComponent<RectTransform>();
		}
		
		private void LateUpdate()
		{
			DetermineSizeByChildrenSize();
		}

		protected virtual void DetermineSizeByChildrenSize()
		{
			Vector2 sizeDelta = FindStartingSizeDelta();
			foreach (RectTransform child in transform)
			{
				if (_factorWidth)
					sizeDelta.x += child.sizeDelta.x;
				if (_factorHeight)
					sizeDelta.y += child.sizeDelta.y;
			}

			_rt.sizeDelta = sizeDelta;
		}

		protected Vector2 FindStartingSizeDelta()
		{
			Vector2 sizeDelta = Vector2.zero;
			if (!_factorWidth)
			{
				sizeDelta.x = _rt.sizeDelta.x;
			}

			if (!_factorHeight)
			{
				sizeDelta.y = _rt.sizeDelta.y;
			}

			return sizeDelta;
		}
	}
}