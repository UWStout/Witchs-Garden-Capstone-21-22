/*
* AUTHOR : Steve Datz
* DESC :
*/

using TMPro;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchProgessBar : MonoBehaviour
	{
		[SerializeField] private Image _slotProgressBar;
		[SerializeField] private Image _completed;
		[SerializeField] private TextMeshProUGUI _optionalText;

		[SerializeField] private Color _activeColor = Color.green;
		[SerializeField] private Color _inactiveColor = Color.gray;
		/************************************************************************************************************************/
		public void SetFillBar(float progress)
		{
			_slotProgressBar.fillAmount = progress / 100;
			bool isCompleted = (int) progress == 100;
			_completed.gameObject.SetActive(isCompleted);
			_slotProgressBar.gameObject.SetActive(!isCompleted);

			if (_optionalText)
			{
				_optionalText.text = $"{(int)progress}%";
				_optionalText.gameObject.SetActive(!isCompleted);
			}
			
		}

		public void SetSelected(bool cond)
		{
			_slotProgressBar.color = cond? _activeColor : _inactiveColor;
		}
	}

}