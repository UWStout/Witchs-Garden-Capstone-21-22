using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_Button : UI_InteractableElement
    {
        [SerializeField] Button _button;

        [SerializeField] UI_TweenScale _tweenScale;

        private bool _isInteractable = true;

        public bool SetSelected(bool selected)
        {
            if (_button.interactable && base.TrySetSelected(selected))
            {
                UpdateDisplay();
                return true;
            }
            return false;
        }

        public void SetInteractable(bool doInteractable)
        {
            //Debug.Log("button interactable set to " + doInteractable);
            //_button.interactable = doInteractable;
            _isInteractable = doInteractable;
            gameObject.SetActive(doInteractable);
        }

        public bool CanSetSelected(bool doSelect)
        {
            return _isInteractable && doSelect != _isSelected;
        }

        private void UpdateDisplay()
        {
            if (_tweenScale != null)
                _tweenScale.RunTween(_isSelected);
        }
    }

}
