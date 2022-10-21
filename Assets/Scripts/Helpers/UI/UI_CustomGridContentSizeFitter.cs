/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Helpers.UI
{
	public class UI_CustomGridContentSizeFitter : UI_ChildSizeCounter
	{
		[SerializeField] private GridLayoutGroup _gridLayout;
 		/************************************************************************************************************************/

        [ContextMenu("CalculateSizeInspector")]
        public void CalculateSizeInspector()
        {
	        _rt = this.GetComponent<RectTransform>();
	        DetermineSizeByChildrenSize();
        }
        
        
		protected override void DetermineSizeByChildrenSize()
		{
			if (_gridLayout == null)
			{
				Debug.Log($"<color=yellow>_gridLayout is null</color>");
				return;
			}

			if (_gridLayout.constraint == GridLayoutGroup.Constraint.Flexible)
			{
				Debug.Log($"<color=yellow>Calculations for 'Flexible' GridLayout Not Supported</color> : {_gridLayout.gameObject.name}");
				return;
			}
			
			Vector2 sizeDelta = FindStartingSizeDelta();
			int childCount = 0;
			foreach (RectTransform child in transform)
			{
				++childCount;
				// if (_factorWidth)
				// 	sizeDelta.x += child.sizeDelta.x;
				// if (_factorHeight)
				// 	sizeDelta.y += child.sizeDelta.y;
			}

			if (_factorHeight && _gridLayout.constraint == GridLayoutGroup.Constraint.FixedColumnCount)
			{
				var individualCellHeight=_gridLayout.cellSize.y;
				var cellPerCol=_gridLayout.constraintCount;
				if (childCount <= cellPerCol)
				{
					sizeDelta = new Vector2(sizeDelta.x, individualCellHeight );
				}
				else
				{
					var rollOver = (childCount / cellPerCol);
					var spacing = _gridLayout.spacing.y * rollOver-1;
					var rowHeights = individualCellHeight * (rollOver+1);
					sizeDelta = new Vector2(sizeDelta.x, rowHeights+ spacing );
					//Debug.Log($"RT size Height = {individualCellHeight} * {iterationSituation} = {rowHeights}  Spacing={spacing} from { _gridLayout.spacing.y}*{iterationSituation}  ..   MODS={childCount % cellPerCol},  MODR={cellPerCol % childCount}");
				}
			}
			else if (_factorWidth && _gridLayout.constraint == GridLayoutGroup.Constraint.FixedRowCount)
			{
				var individualCellWidth=_gridLayout.cellSize.x;
				var cellPerRow=_gridLayout.constraintCount;
				if (childCount <= cellPerRow)
				{
					sizeDelta = new Vector2(individualCellWidth, sizeDelta.y );
				}
				else
				{
					var rollOver = (childCount / cellPerRow);
					var spacing = _gridLayout.spacing.x * rollOver-1;
					var colheights = individualCellWidth * (rollOver+1);
					sizeDelta = new Vector2(colheights + spacing, sizeDelta.y );
				}
			}
			else
			{
				Debug.Log($"<color=yellow>Calculations for _factorHeight, _factorWidth, GridLayoutGroup.Constraint Setting combination  Not Supported</color>");
			}
			
			_rt.sizeDelta = sizeDelta;
		}
	}

}