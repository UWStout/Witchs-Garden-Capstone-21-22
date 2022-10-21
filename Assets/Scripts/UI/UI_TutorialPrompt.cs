using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UI;
using Tutorial;
using System;
using Helpers;
using CustomInput;

public class UI_TutorialPrompt : UI_Popup
{
    [SerializeField] private Image _image;

	private int _promptIndex;
	private List<TutorialPrompt> _currentPrompts;

	protected override void OnEnable()
	{
		RegisterForInput(true);
	}

	protected override void RegisterForInput(bool cond)
	{
		if (cond)
		{
			InputReader.PopupConfirmEvent += OnConfirm;

			if (_confirmButton != null)
				_confirmButton.onClick.AddListener(OnConfirm);
			if (_denyButton != null)
				_denyButton.onClick.AddListener(OnDeny);
		}
		else
		{
			InputReader.PopupConfirmEvent -= OnConfirm;

			if (_confirmButton != null)
				_confirmButton.onClick.RemoveListener(OnConfirm);
			if (_denyButton != null)
				_denyButton.onClick.RemoveListener(OnDeny);
		}
	}

	protected override void PopupClose(bool response)
	{
		//Debug.Log("Popup closed by TUTORIAL PopupClose()");
		_onCompleteResponse?.Invoke(response);
		RegisterForInput(false);
		gameObject.SetActive(false);
	}

	protected override void OnConfirm()
    {
		onClickNext();
    }

    protected override void OnDeny()
    {
		onClickPrev();
    }

	public void SetCurrentPrompts(List<TutorialPrompt> currentPrompts)
    {
		_promptIndex = 0;
		_currentPrompts = currentPrompts;
		SetDisplay(GetPromptAt(_promptIndex));
	}

    public void SetPopupPreset(TutorialPrompt prompt)
	{
        base.SetPopupPreset(prompt.Text, true, ePopupType.TUTORIAL, _onCompleteResponse);
        SetPopupImage(prompt.Image);
	}

    private void SetPopupImage(Sprite sprite)
	{
        _image.sprite = sprite;
	}

	private void onClickNext()
	{
		_promptIndex++;
		//Debug.Log("Clicked next");

		if (_promptIndex >= _currentPrompts.Count)
		{
			PopupClose(true);
			//Debug.Log("Closing");
		}
		else
		{
			SetDisplay(GetPromptAt(_promptIndex));
			//Debug.Log("Opening next screen");
		}
	}

	private void onClickPrev()
	{
		
		if (_promptIndex > 0)
		{
			_promptIndex--;
			//Debug.Log("Clicked prev. Set to " + _promptIndex);
		}

		SetDisplay(GetPromptAt(_promptIndex));
	}

	private void SetDisplay(TutorialPrompt prompt)
	{
		SetPopupPreset(prompt);

		//hide back button if no slides to go back to
		SetAllowDeny(_promptIndex != 0);
	}

	protected override void SetAllowDeny(bool cond)
	{
		if (cond)
			InputReader.PopupDenyEvent += OnDeny;
		else
			InputReader.PopupDenyEvent -= OnDeny;

		if (_denyButton != null)
			_denyButton.gameObject.SetActive(cond);
	}

	private TutorialPrompt GetPromptAt(int index)
	{
		if (index >= 0 && index < _currentPrompts.Count)
			return _currentPrompts.ToArray()[index];
		else
			return null;
	}
}
