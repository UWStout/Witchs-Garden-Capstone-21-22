/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using Research;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchSlot : UI_InteractableElement
	{
		[SerializeField] private UI_ResearchSlotBG _slotBg;
		[SerializeField] private Image _slotHighlightBorder;
		[SerializeField] private Image _slotIcon;
		[SerializeField] private TextMeshProUGUI _researchNameTxt;
		[SerializeField] private UI_ResearchProgessBar _slotProgressBar;
		
		private UnlockedProgressableResearchItem _researchItem;
		private bool _isCurrentResearch = false;
		private bool _isPreviewResearch = false;
		private bool _isLockedDisplay = false;
		private bool _is100perc = false;
		private Action<UI_ResearchSlot> _onDisplayMe;
		private Action<UI_ResearchSlot> _onHoverEnter;
		private Action<UI_ResearchSlot> _onHoverExit;
		/************************************************************************************************************************/
		public void Init(Action<UI_ResearchSlot> onDisplayMe, Action<UI_ResearchSlot> onHoverEnter, Action<UI_ResearchSlot> onHoverExit)
		{
			_onDisplayMe = onDisplayMe;
			_onHoverEnter = onHoverEnter;
			_onHoverExit = onHoverExit;
			_slotIcon.GetComponent<Button>().onClick.AddListener(ImClicked);
		}
		
		public UnlockedProgressableResearchItem GetResearchItem() => _researchItem;

		public void AssignResearchItem(UnlockedProgressableResearchItem rsrchItem)
		{
			_isLockedDisplay = false;
			_researchItem = rsrchItem;
			UpdateDisplay(rsrchItem.ResearchItemTemplate, rsrchItem.Progress);
		}

		public void AssignResearchItemLocked(ResearchItemTemplate rsrchItemTemplate)
		{
			_isLockedDisplay = true;
			_researchItem = null;
			_isSelected=false;
			_isCurrentResearch = false;
			UpdateDisplay(rsrchItemTemplate, 0);
		}

		public bool IsLockedDisplay() => _isLockedDisplay;

		/************************************************************************************************************************/

		public void SetSlotAsCurrentResearch(bool cond)
		{
			_isCurrentResearch = cond;
			UpdateInternalSelectionState();
		}

		public void SetSlotAsPreviewResearch(bool cond)
		{
			_isPreviewResearch = cond;
			UpdateInternalSelectionState();
		}

		public void OnControllerHover()
		{
			OnHoverBeginManual(true);
		}

		public void OnControllerExit()
		{
			OnHoverFinishManual(true);
		}

		public override void OnPointerEnter(PointerEventData eventData)
		{
			OnHoverBeginManual(false);
		}

		public override void OnPointerExit(PointerEventData eventData)
		{
			OnHoverFinishManual(false);

		}

		/************************************************************************************************************************/

		private void OnHoverBeginManual(bool isSilent)
		{
			if (_isLockedDisplay)
				return;

			SetIconColor(true);
			_slotProgressBar.gameObject.SetActive(true);

			if (!isSilent)
				_onHoverEnter?.Invoke(this);
		}

		private void OnHoverFinishManual(bool isSilent)
		{
			if (_isLockedDisplay)
				return;

			if (_is100perc)
			{
				_slotProgressBar.gameObject.SetActive(true);
				SetIconColor(true);
			}
			else if (!_isCurrentResearch && !_isPreviewResearch)
			{
				SetIconColor(false);
				_slotProgressBar.gameObject.SetActive(false);
			}

			if (!isSilent)
				_onHoverExit?.Invoke(this);
		}
		private void ImClicked()
		{
			if (_isLockedDisplay)
				return;
			_onDisplayMe?.Invoke(this);
		}
		
		private void UpdateInternalSelectionState()
		{
			if (_isCurrentResearch)
			{
				_slotBg.SetIsSelected(true);
				_slotProgressBar.SetSelected(true);
				_slotProgressBar.gameObject.SetActive(true);
				_slotHighlightBorder.gameObject.SetActive(true);
				_slotHighlightBorder.color = Color.white;
				base.TrySetSelected(true);
				SetIconColor(true);
				return;
			}

			_slotBg.SetIsSelected(_isPreviewResearch);
			_slotProgressBar.gameObject.SetActive(_isPreviewResearch);
			_slotProgressBar.SetSelected(_isPreviewResearch);
			_slotHighlightBorder.gameObject.SetActive(_isPreviewResearch);
			_slotHighlightBorder.color = _isPreviewResearch ? Color.yellow : Color.white;
			if(_researchItem!=null && _researchItem.Progress < 100)
				SetIconColor(_isPreviewResearch);
			
		}
		
		private void UpdateDisplay(ResearchItemTemplate template, float progress)
		{
			if (template == null)
			{
				//Clear- defaults
				ClearSlot();
				_onHoverExit?.Invoke(this);
				return;
			}
			//Debug.Log($"{template.ResearchName} progress= {progress}");
			//var template = _researchItem.ResearchItemTemplate;
			_slotIcon.sprite = template.Icon;
			SetIconColor(_isSelected);
			_researchNameTxt.text = template.ResearchName;
			_slotProgressBar.SetFillBar(progress);
			_is100perc = progress >= 100;
			if (_is100perc)
			{
				_slotProgressBar.gameObject.SetActive(true);
				SetIconColor(true);

			}
		}

		private void ClearSlot()
		{
			_slotIcon.sprite = null;
			_researchNameTxt.text = "";
			_slotProgressBar.SetFillBar(0);
			//_slotProgressBar.gameObject.SetActive(false);
		}

		private void SetIconColor(bool isFullColor)
		{
			var color = _slotIcon.color;
			color.a = isFullColor ? 1 : 0.6f;
			_slotIcon.color = color;
		}
	}

}