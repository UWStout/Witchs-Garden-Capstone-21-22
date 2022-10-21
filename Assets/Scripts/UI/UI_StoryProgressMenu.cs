using CustomInput;
using Narrative;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace UI
{
    public class UI_StoryProgressMenu : UI_MenuContent
    {
        private int _highlightedBox;

        [SerializeField] protected List<UI_StoryPortraitBox> _boxes;
        [SerializeField] private TextMeshProUGUI _percentText;
        [SerializeField] private TextMeshProUGUI _description1;
        [SerializeField] private TextMeshProUGUI _description2;

        public void Start()
        {
            if (_boxes == null)
                _boxes = new List<UI_StoryPortraitBox>();

            AssignStoryPortraitBoxes();
        }

        public void OnEnable()
        {
            UpdateDisplay();
        }

        public void OnDestroy()
        {
            RegisterForInput(false);
        }

        private void AssignStoryPortraitBoxes()
        {
            var allCharacterRequests = NarrativeSystem.Instance.GetAllNarrativeCharacterRequests();
            for (int i = 0; i < _boxes.Count; i++)
            {
                if (i < allCharacterRequests.Count)
                {
                    var box = _boxes[i];
                    box.SetIndex(i);
                    box.SetNarrativeCharacterRequest(allCharacterRequests[i]);
                    //Set as hoverable slot with mouse
                    box.OnPortraitBoxEnter += OnBoxHovered;
                    box.OnPortraitBoxExit += OnBoxUnHovered;
                }
                else
                    Debug.Log("Not enough story requests to assgin to all UI story progress boxes");
            }

            SetBoxHighlighted(0);
        }

        private int GetStoryProgressPercent()
        {
            return (int)(NarrativeSystem.Instance.GetStoryRequiredCompletedRequestsCount() / (float)_boxes.Count * 100);
        }

        private void RegisterForInput(bool cond)
        {
            if (cond)
            {
                InputReader.NavigateEvent += SetBoxHighlighted;
            }
            else
            {
                InputReader.NavigateEvent -= SetBoxHighlighted;
            }
        }

        public override void UpdateGlobalFocus(bool cond)
        {
        }

        public void UpdateDisplay()
        {
            //Update Percent Text
            _percentText.text = GetStoryProgressPercent() + "%";

            //Update Boxes
            foreach (var box in _boxes)
                box.UpdateBoxDisplay();
        }

        private int GetElementsInRow(int index)
        {
            if (index <= 2)
                return 3;
            else if (index <= 4)
                return 2;
            else
                return 1;
        }

        private int GetRowNumber(int index)
        {
            if (index <= 2)
                return 0;
            else if (index <= 4)
                return 1;
            else
                return 2;
        }

        private void SetBoxHighlighted(Vector2 inputAxis)
        {
            int targetBox = _highlightedBox;

            targetBox += (int)inputAxis.x;
            targetBox += (int)inputAxis.y * GetElementsInRow(_highlightedBox);

            /*
            if ((int)inputAxis.y > 0)
            {
                targetBox += GetElementsInRow(_highlightedBox+1);
            }
            else if ((int)inputAxis.y < 0)
            {
                targetBox -= GetElementsInRow(_highlightedBox - 1);
            }
            else
                targetBox += (int)inputAxis.y * GetElementsInRow(_highlightedBox);
            */

            //TODO: Modify these values so it works with the triangle shape of the menu
            //Check to see if trying to navigate out of focus of the menu, otherwise set slot highlighted
            //If highlightedSlot is on the edge of the menu and navigating one more further
            if ((int)inputAxis.x > 0 && (_highlightedBox % GetElementsInRow(_highlightedBox) == (GetElementsInRow(_highlightedBox) - 1) || _highlightedBox == _boxes.Count))
            {
                //Debug.Log("LIST DISPLAY RIGHT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.RIGHT);
            }
            else if ((int)inputAxis.x < 0 && _highlightedBox % GetElementsInRow(_highlightedBox) == 0)
            {
                //Debug.Log("LIST DISPLAY LEFT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.LEFT);
            }
            else
                SetBoxHighlighted(targetBox);
        }

        private void SetBoxHighlighted(int slotHighlighted)
        {
            //Set selected slot with correct bounds
            int targetedBox;
            if (slotHighlighted < 0)
                targetedBox = 0;
            else if (slotHighlighted >= _boxes.Count)
                targetedBox = _boxes.Count - 1;
            else
                targetedBox = slotHighlighted;

            //Verify that targeted slot is active
            if (_boxes[targetedBox].gameObject.activeSelf)
            {
                _highlightedBox = targetedBox;
                UpdateBoxHighlighted();
            }
        }

        private void UpdateBoxHighlighted()
        {
            //Update the highlighter for display
            foreach (UI_StoryPortraitBox box in _boxes)
            {
                if (_isFocused)
                    box.SetHighlighted(box.GetIndex() == _highlightedBox);
                else
                    box.SetHighlighted(false);
            }

            //Update Descriptions based on box highlighted
            TextMeshProUGUI textTarget;
            if (GetRowNumber(_highlightedBox) == 0) //If in the first row, show in description1, else show on description2
            {
                textTarget = _description1;
                _description2.enabled = false;
            }
            else
            {
                textTarget = _description2;
                _description1.enabled = false;
            }
            textTarget.enabled = true;

            if (GetHighlightedBox() != null)
            {
                if (GetHighlightedBox().IsCompleted)
                    textTarget.text = "Potion Delivery Completed";
                else if (GetHighlightedBox().IsActive)
                    textTarget.text = "Potion Requested in Shop";
                else
                    textTarget.text = "Customer Requirement: " + GetHighlightedBox().NarrativeCharacterRequest?.ActivationCondition.UIDescription;
            }
            else
                textTarget.text = "";
        }

        private UI_StoryPortraitBox GetHighlightedBox()
        {
            if (_boxes != null && _boxes.Count != 0)
                return _boxes[_highlightedBox];
            else
                return null;
        }

        /************************************************************************************************************************/
        //FOCUS:
        public override bool TrySetFocus(bool isFocus)
        {
            if (base.TrySetFocus(isFocus) && TrySetFocusSelf(isFocus))
            {
                base.SetFocus(isFocus);
                UpdateBoxHighlighted();

                RegisterForInput(isFocus);
                return true;
            }
            return false;
        }

        public bool TrySetFocusSelf(bool isFocus)
        {
            if (isFocus)
            {
                return (_boxes.Count > 0);
            }
            else
                return true;
        }

        /************************************************************************************************************************/
        //MOUSE HIGHLIGHT SLOT TRIGGER METHODS
        private void OnBoxHovered(UI_StoryPortraitBox slot)
        {
            if (slot != null && _menuType != UI_BookOverlay.MenuType.NONE)
            {
                _bookOverlay.SetFocus(_menuType);
                SetBoxHighlighted(slot.GetIndex());
            }
        }

        private void OnBoxUnHovered(UI_StoryPortraitBox slot)
        {

        }
    }
}
