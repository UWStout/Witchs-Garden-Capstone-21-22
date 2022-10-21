using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using Narrative;
using Items;

namespace UI
{
    public class UI_CharacterRequestBox : UI_InteractableElement
    {
        private ActiveCharacterRequest _characterRequest;

        [SerializeField] private UI_ItemSlot _potionSlot;
        public UI_ItemSlot PotionSlot => _potionSlot;
        [SerializeField] private Image _portrait;
        [SerializeField] private TextMeshProUGUI _title;
        [SerializeField] private TextMeshProUGUI _description;
        [SerializeField] private TextMeshProUGUI _requestedItemTip;
        [SerializeField] private Image _grayoutImage;

        public event Action<UI_CharacterRequestBox> OnRequestBoxEnter;
        public event Action<UI_CharacterRequestBox> OnRequestBoxExit;

        private bool _canBeSelected;

        public void SetCharacterRequest(ActiveCharacterRequest characterRequest, bool canBeSelected)
        {
            _canBeSelected = canBeSelected;
            _characterRequest = characterRequest;
            //Debug.Log("Set Character Request to Box");
            UpdateBoxDisplay();
        }

        public ActiveCharacterRequest GetCharacterRequest()
        {
            return _characterRequest;
        }

        public void UpdateBoxDisplay()
        {
            if (_characterRequest != null)
            {
                base.UpdateHighlightDisplay();

                //Set Item Requested Slot
                var requestedItemTemplate = _characterRequest.NCRequest.ItemRequested.ItemTemplate;
                if (requestedItemTemplate == null)
                {
                    _potionSlot.SetSlotItemNull();
                    _requestedItemTip.gameObject.SetActive(false);
                }
                else
                {
                    _requestedItemTip.gameObject.SetActive(true);
                    _potionSlot.SetSlotItem(requestedItemTemplate);
                }
                    

                //Set Portrait Image
                if (_portrait != null)
                    _portrait.sprite = _characterRequest.NCRequest.CharacterTemplate.CharacterPortrait;

                //Set Name Title Text
                if (_title != null)
                    _title.text = _characterRequest.NCRequest.CharacterTemplate.CharacterName;

                //Set Description Dialogue
                if (_description != null)
                    _description.text = _characterRequest.NCRequest.DialogueLines.MiddleShopLine + FormatTextForReward(_characterRequest.NCRequest.ItemRequested);

                //Update Grayout Overlay
                if (_grayoutImage != null)
                    _grayoutImage.enabled = _isSelected;
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

        public void SetSelected(bool doSelect)
        {
            if (_canBeSelected && base.TrySetSelected(doSelect))
                UpdateBoxDisplay();
        }

        public override void OnPointerEnter(PointerEventData eventData)
        {
            OnRequestBoxEnter?.Invoke(this);
        }
        public override void OnPointerExit(PointerEventData eventData)
        {
            OnRequestBoxExit?.Invoke(this);
        }


        private string FormatTextForReward(ItemRequest itemReq)
        {
            string s = "";
            
            if (itemReq.RewardPayloads.Count > 0)
            {
                s += "\n<b>Reward(s): </b>";
                foreach (var reward in itemReq.RewardPayloads)
                {
                    s += "+" + reward.GetFormattedUIRewardText() + "   ";
                }
            }

            return s;
        }
    }
}