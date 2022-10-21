using UnityEngine;

namespace Helpers.UI
{
	public class UI_RectMonitorContentSizeFitter : MonoBehaviour
	{
		[Tooltip("The rect transform to copy from")]
		[SerializeField] private RectTransform _transformToMonitor;
		[Header("Settings")]
		[SerializeField] bool _matchWidth;
		[SerializeField] bool _matchHeight;
    
		protected RectTransform _rt;
		/************************************************************************************************************************/
		private void Awake()
		{
			_rt = this.GetComponent<RectTransform>();
		}

		private void LateUpdate()
		{
			if(_transformToMonitor)
				DetermineSizeByTransformToMonitor();
		}

		private void DetermineSizeByTransformToMonitor()
		{
			Vector2 sizeDelta = _rt.sizeDelta;
			if (_matchWidth)
				sizeDelta.x = _transformToMonitor.sizeDelta.x;
			if (_matchHeight)
				sizeDelta.y = _transformToMonitor.sizeDelta.y;

			_rt.sizeDelta = sizeDelta;
		}
	}
}
