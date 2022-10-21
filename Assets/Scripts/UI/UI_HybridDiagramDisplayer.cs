using Diagrams;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_HybridDiagramDisplayer : MonoBehaviour
    {
        [SerializeField] private UI_HybridDiagram _hybridDiagram;
		[SerializeField] private TextMeshProUGUI _pageText;

		[SerializeField] private TextMeshProUGUI _hintText;
		[SerializeField] private Image _hintImage;

		[SerializeField] private Button _pageLeftButton;
		[SerializeField] private Button _pageRightButton;

		private List<HybridComboDiagTemplate> _currentHybridDiagrams;
		private int _hybridIndex = 0;

		private bool _doShow;
		private bool _doShowToggle;

		private bool _canNavigateMode = true;

		/************************************************************************************************************************/

		public void Init(bool startingOpenSettingDefault)
		{
			_currentHybridDiagrams = new List<HybridComboDiagTemplate>(DiagramHandler.Instance.KnownHybridDiags);
			DiagramHandler.Instance.OnDiagramUnlocked += Refresh;

			SetShowSetting(startingOpenSettingDefault);
			SetShow(true, false);
		}

		public void OnDestroy()
		{
			if (DiagramHandler.Instance != null)
				DiagramHandler.Instance.OnDiagramUnlocked -= Refresh;
		}

		/************************************************************************************************************************/

		private void Refresh(DiagramTemplate newDiag)
		{
			if (newDiag is HybridComboDiagTemplate diagTemplate)
			{
				_currentHybridDiagrams.Add(diagTemplate);
				SetShowSetting(true);
				SetHybridIndex(_currentHybridDiagrams.Count - 1);
			}
			UpdateDisplay();
		}

		private void SetHybridIndex(int index)
		{
			if (_hybridIndex != index) {
				_hybridIndex = index;
				UpdateDisplay();
			}
		}

		private void UpdateDisplay()
		{
			if (_doShow && _currentHybridDiagrams.Count > 0)
			{
				if (_doShowToggle && _hybridIndex >= 0 && _hybridIndex < _currentHybridDiagrams.Count)
				{
					//Diagram:
					_hybridDiagram.gameObject.SetActive(true);
					_hybridDiagram.SetHybridDiagram(_currentHybridDiagrams[_hybridIndex]);

					//Page Text:
					_pageText.gameObject.SetActive(true);
					if (_canNavigateMode)
					{
						var pageTextTemp = "";
						if (CanScrollPage(-1))
							pageTextTemp += "<  ";
						pageTextTemp += "Page " + (_hybridIndex + 1) + "/" + _currentHybridDiagrams.Count;
						if (CanScrollPage(1))
							pageTextTemp += "  >";
						_pageText.text = pageTextTemp;
					}
					else
						_pageText.text = "Page " + (_hybridIndex + 1) + "/" + _currentHybridDiagrams.Count;

					//Scroll Buttons:
					if (_pageLeftButton != null)
						_pageLeftButton.gameObject.SetActive(CanScrollPage(-1));
					if (_pageRightButton != null)
						_pageRightButton.gameObject.SetActive(CanScrollPage(1));

					//Hint:
					if (_hintImage != null)
						_hintImage.gameObject.SetActive(false);
					if (_hintText != null)
						_hintText.text = "v Hide Plans";
				}
				else
				{
					_hybridDiagram.gameObject.SetActive(false);
					_pageText.gameObject.SetActive(false);
					if (_pageLeftButton != null)
						_pageLeftButton.gameObject.SetActive(false);
					if (_pageRightButton != null)
						_pageRightButton.gameObject.SetActive(false);
					if (_hintImage != null)
						_hintImage.gameObject.SetActive(true);
					if (_hintText != null)
						_hintText.text = "^ Show Plans";
				}
			}
			else
			{
				_hybridDiagram.gameObject.SetActive(false);
				_pageText.gameObject.SetActive(false);
				if (_pageLeftButton != null)
					_pageLeftButton.gameObject.SetActive(false);
				if (_pageRightButton != null)
					_pageRightButton.gameObject.SetActive(false);
				if (_hintImage != null)
					_hintImage.gameObject.SetActive(false);
				if (_hintText != null)
					_hintText.text = "";
			}
		}

		/************************************************************************************************************************/

		public void SetShow(bool show, bool canNavigateMode = false)
		{
			_canNavigateMode = canNavigateMode;
			if (show != _doShow)
			{
				if (show)
					_doShow = true;
				else
					_doShow = false;
				//Debug.Log("Show: " + show);

				UpdateDisplay();
			}
		}

		// Show/Hide window
		public void SetShowSetting(bool show)
		{
			_doShowToggle = show;
			//Debug.Log("Show Setting: " + show);
			UpdateDisplay();
		}

		public void ScrollDiagram(float scrollDir)
		{
			if (_doShow && _doShowToggle)
            {
				if (scrollDir > 0f)
				{
					if (CanScrollPage(scrollDir))
						SetHybridIndex(_hybridIndex + 1);
				}
				else if (scrollDir < 0f)
				{
					if (CanScrollPage(scrollDir))
						SetHybridIndex(_hybridIndex - 1);
				}
			}
		}

		private bool CanScrollPage(float scrollDir)
		{
			if (scrollDir > 0f)
			{
				return _hybridIndex + 1 < _currentHybridDiagrams.Count;
			}
			else
			{
				return _hybridIndex - 1 >= 0;
			}
		}
	}
}