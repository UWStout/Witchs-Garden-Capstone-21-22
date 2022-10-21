using CustomInput;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using System;

namespace UI
{
    public class UI_Popup : MonoBehaviour
    {
        [SerializeField] private TextMeshProUGUI _text;
        [SerializeField] protected Button _confirmButton;
        [SerializeField] protected Button _denyButton;

        protected Action<bool> _onCompleteResponse;
        private bool _isAllowDeny = false;

        protected virtual void OnEnable()
        {
            RegisterForInput(true);
        }

        protected virtual void RegisterForInput(bool cond)
        {
            if (cond)
            {
                InputReader.PopupConfirmEvent += OnConfirm;

                if (_confirmButton != null)
                    _confirmButton.onClick.AddListener(OnConfirm);
                if (_denyButton != null)
                    _denyButton.onClick.AddListener(OnDeny);
                SetAllowDeny(_isAllowDeny);
            }
            else
            {
                InputReader.PopupConfirmEvent -= OnConfirm;

                if (_confirmButton != null)
                    _confirmButton.onClick.RemoveAllListeners();
                if (_denyButton != null)
                    _denyButton.onClick.RemoveAllListeners();
                SetAllowDeny(false);
            }
        }

        protected virtual void OnConfirm()
        {
            PopupClose(true);
        }

        protected virtual void OnDeny()
        {
            PopupClose(false);
        }

        protected virtual void PopupClose(bool response)
        {
            //Debug.Log("Popup closed by BASE PopupClose()");
            _onCompleteResponse?.Invoke(response);
            RegisterForInput(false);
            gameObject.SetActive(false);
        }

        protected void SetPopupText(string text)
        {
            _text.text = text;
        }

        protected virtual void SetAllowDeny(bool cond)
        {
            if (cond)
                InputReader.PopupDenyEvent += OnDeny;
            else
                InputReader.PopupDenyEvent -= OnDeny;

            if (_denyButton != null)
                _denyButton.gameObject.SetActive(cond);
        }

        public void SetPopupPreset(string messageText, bool isAllowDeny, ePopupType popupType = ePopupType.MESSAGE, Action<bool> onCompleteResponse = null)
        {

            switch (popupType)
            {
                case ePopupType.MESSAGE:
                    SetPopupText(messageText);
                    _isAllowDeny = isAllowDeny;
                    break;
                case ePopupType.TUTORIAL:
                    SetPopupText(messageText);
                    break;
            }
            
            _onCompleteResponse = onCompleteResponse;
        }

        public void SetOnCompleteResponse(Action<bool> onCompleteResponse)
        {
            _onCompleteResponse = onCompleteResponse;
        }
    }

    public enum ePopupType
    {
        MESSAGE,
        TUTORIAL
    }
}