using Narrative;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace UI
{
    public class UI_StoryPortraitBox : UI_InteractableElement
    {
        public NarrativeCharacterRequest NarrativeCharacterRequest => _narrativeCharacterRequest;
        private NarrativeCharacterRequest _narrativeCharacterRequest;
        
        [SerializeField] private Image _portrait;
        [SerializeField] private Image _checkmark;
        [SerializeField] private TextMeshProUGUI _name;

        public event Action<UI_StoryPortraitBox> OnPortraitBoxEnter;
        public event Action<UI_StoryPortraitBox> OnPortraitBoxExit;

        public bool IsCompleted => _isCompleted;
        private bool _isCompleted = false;
        public bool IsActive => _isActive;
        private bool _isActive = false;

        public void SetNarrativeCharacterRequest(NarrativeCharacterRequest characterRequest)
        {
            _narrativeCharacterRequest = characterRequest;
            _isCompleted = false;
            _isActive = false;
            UpdateBoxDisplay();
        }

        public void UpdateBoxDisplay()
        {
            if (_narrativeCharacterRequest != null)
            {
                base.UpdateHighlightDisplay();

                //Set Name Title Text
                if (_name != null)
                    _name.text = _narrativeCharacterRequest.CharacterTemplate.CharacterName;

                //Set Checkmark
                _isCompleted = NarrativeSystem.Instance.IsRequestComplete(_narrativeCharacterRequest);
                _isActive = NarrativeSystem.Instance.IsRequestActive(_narrativeCharacterRequest);
                _checkmark.enabled = _isCompleted;

                //Set Portrait Image
                if (_isCompleted || _isActive)
                    _portrait.sprite = _narrativeCharacterRequest.CharacterTemplate.CharacterPortrait;
                else
                    _portrait.sprite = _narrativeCharacterRequest.CharacterTemplate.CharacterPortraitLocked;
            }
        }

        //Interactable Element Stuff:
        public void SetHighlighted(bool doHighlight)
        {
            if (base.TrySetHighlighted(doHighlight))
            {
                //Debug.Log("Setting highlighted " + doHighlight);
                UpdateBoxDisplay();
            }
        }

        public override void OnPointerEnter(PointerEventData eventData)
        {
            OnPortraitBoxEnter?.Invoke(this);
        }
        public override void OnPointerExit(PointerEventData eventData)
        {
            OnPortraitBoxExit?.Invoke(this);
        }
    }
}