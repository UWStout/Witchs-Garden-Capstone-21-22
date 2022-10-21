/*
* AUTHOR : Steve Datz
* DESC : Sets the rect size to be the largest of the childrens size
*/

using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Helpers.UI
{
	public class UI_LargestChildContentSizeFitter : UI_ChildSizeCounter
	{
		/************************************************************************************************************************/
		protected override void DetermineSizeByChildrenSize()
		{
			Vector2 sizeDelta = new Vector2(0,0);
			
			if(!_factorWidth)
				sizeDelta.x = FindStartingSizeDelta().x;
			if (!_factorHeight)
				sizeDelta.y = FindStartingSizeDelta().y;

			foreach (RectTransform child in transform)
			{
				if (_factorWidth && child.sizeDelta.x > sizeDelta.x)
				{
					sizeDelta.x = child.sizeDelta.x;
				}

				if (_factorHeight && child.sizeDelta.y > sizeDelta.y)
				{
					sizeDelta.y = child.sizeDelta.y;
				}
			}

			_rt.sizeDelta = sizeDelta;
		}
	}

}