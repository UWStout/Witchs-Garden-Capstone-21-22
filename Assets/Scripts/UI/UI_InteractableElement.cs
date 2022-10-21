using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI
{
    public class UI_InteractableElement : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler
    {
        protected bool _isSelected = false;
        protected bool _isHighlighted = false;
        private int _index = -1;

        [SerializeField] protected Image _highlightImage;

        [SerializeField] private AK.Wwise.Event highlightEvent;
        [SerializeField] private AK.Wwise.Event clickEvent;

        protected virtual bool TrySetSelected(bool doSelect)
        {
            if (doSelect != _isSelected)
            {
                _isSelected = doSelect;
                clickEvent.Post(gameObject);
                return true;
            }
            return false;
        }

        public bool GetSelected()
        {
            return _isSelected;
        }

        public virtual bool TrySetHighlighted(bool doHighlight)
        {
            if (doHighlight != _isHighlighted)
            {
                _isHighlighted = doHighlight;
                highlightEvent.Post(gameObject);
                return true;
            }
            return false;
        }
        
        /// Why isn't  TrySetHighlighted calling This??-Steve
        protected void UpdateHighlightDisplay()
        {
            //Update Highlighted Overlay
            if (_highlightImage != null)
            {
                _highlightImage.enabled = _isHighlighted;
            }
        }

        public void SetIndex(int index)
        {
            _index = index;
        }

        public int GetIndex()
        {
            return _index;
        }

        public virtual void OnPointerEnter(PointerEventData eventData)
        {
            //OnSlotEnter?.Invoke(this);
        }
        public virtual void OnPointerExit(PointerEventData eventData)
        {
            //OnSlotExit?.Invoke(this);
        }
    }
}