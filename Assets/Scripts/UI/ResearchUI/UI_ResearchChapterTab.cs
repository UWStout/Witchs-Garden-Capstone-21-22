/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using Research;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchChapterTab : MonoBehaviour
	{
		[SerializeField] private Button _button;
		[SerializeField] private TextMeshProUGUI _txt;
		private ResearchChUnlockInfo _researchChUnlockInfo;
		private UnlockedChapter _ch;
		private bool _isSelected;

		[SerializeField] private Vector2 _defaultSize = new Vector2(64, 64);
		[SerializeField] private Vector2 _selectedSize = new Vector2(64, 90);
		/************************************************************************************************************************/
		public ResearchChUnlockInfo GetChapterUnlockInfo() => _researchChUnlockInfo;
		public UnlockedChapter GetChapter() => _ch;
		
		public void SetChapterUnlockInfo(ResearchChUnlockInfo researchChUnlockInfo, int index)
		{
			_researchChUnlockInfo = researchChUnlockInfo;
			//_txt.text = $"Ch {index+1}";
			_txt.text = GetRomanNumeralFromInt(index+1);
			SetUnlocked(false);
		}

		public void SetChapterAsUnlocked(UnlockedChapter ch)
        {
			_ch = ch;
			SetUnlocked(_ch != null);
		}

		public void SetSelected(bool cond)
		{
			_isSelected = cond;
			this.GetComponent<RectTransform>().sizeDelta = _isSelected ? _selectedSize : _defaultSize;
			if (!_button.interactable)
			{
				_txt.fontStyle = FontStyles.Italic;
			}
			else if (_isSelected)
			{
				_txt.fontStyle = FontStyles.Underline;
			}
			else //normal
			{
				_txt.fontStyle = FontStyles.Normal;
			}

		}

		public void SetOnClick(Action<UI_ResearchChapterTab, int> onChangeChapter, int index)
		{
			_button.onClick.AddListener(()=>onChangeChapter(this, index));
		}

		public void ManuallyClickButtonHack()
		{
			_button.onClick.Invoke();
		}
		
		/************************************************************************************************************************/

		private void SetUnlocked(bool cond)
		{
			var textCol = _txt.color;
			textCol.a = cond ? 1 : 0.5f;
			_txt.color = textCol;
			//_button.interactable = cond;
			//TODO- set on the onclick event to be different??
		}
		
		private string GetRomanNumeralFromInt(int number)
		{
			if (number == 1)
				return "I";
			else if (number == 2)
				return "II";
			else if (number == 3)
				return "III";
			else if (number == 4)
				return "IV";
			else if (number == 5)
				return "V";
			else if (number == 6)
				return "VI";
			else
				return "";
		}
	}

}