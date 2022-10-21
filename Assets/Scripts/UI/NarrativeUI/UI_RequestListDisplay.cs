using CustomInput;
using Items;
using Narrative;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_RequestListDisplay : UI_MenuContent
    {
        protected int _highlightedBox;

        [SerializeField] private int ELEMENTS_PER_ROW = 1;

        [SerializeField] protected List<UI_CharacterRequestBox> _boxes;

        private int _selectedCharacterRequestIndex = -1;

        [SerializeField] private UI_CharacterRequestBox _requestBoxPrefab;
        [SerializeField] private Transform _boxesContent;

        protected Action<UI_ItemSlot> _onSlotHighlighted;
        protected event Action _onCharacterBoxSelected;

        [SerializeField] private bool _canRequestBoxBeSelected;

        public virtual void Start()
        {
            if (_boxes == null)
                _boxes = new List<UI_CharacterRequestBox>();
        }

        public virtual void OnDestroy()
        {
            RegisterForInput(false);
        }

        protected virtual void RegisterForInput(bool cond)
        {
            if (cond)
            {
                InputReader.NavigateEvent += SetBoxHighlighted;
                InputReader.SelectEvent += ToggleBoxSelected;
            }
            else
            {
                InputReader.NavigateEvent -= SetBoxHighlighted;
                InputReader.SelectEvent -= ToggleBoxSelected;
            }
        }

        public override void UpdateGlobalFocus(bool cond)
        {
        }

        public void SetOnSlotHighlighted(Action<UI_ItemSlot> onSlotHighlighted)
        {
            _onSlotHighlighted = onSlotHighlighted;
        }

        /************************************************************************************************************************/

        protected void GenerateBoxes(IReadOnlyList<ActiveCharacterRequest> requestList)
        {
            //Debug.Log("--Generating Boxs--");
            if (_requestBoxPrefab == null || _boxesContent == null)
            {
                Debug.Log($"<color=yellow>Assign _requestBoxPrefab && _boxesContent for UI_SHOP</color>");
                return;
            }
            if (requestList == null)
                return;
            
            //Generate Boxs with List of Requests
            //Debug.Log("Box Generator: Generating " + requests.Count + " requests with " + _boxes.Count + " slot count!");
            for (int i = 0; i < requestList.Count; i++)
            {
                var request = requestList[i];
                UI_CharacterRequestBox boxScript;
                if (i > _boxes.Count - 1) //Create more boxes
                {
                    //Debug.Log("Box Generator: CREATING slot #" + i);
                    boxScript = Instantiate(_requestBoxPrefab, Vector3.zero, Quaternion.identity);
                    boxScript.transform.parent = _boxesContent;
                    boxScript.transform.localScale = Vector3.one;
                    boxScript.SetIndex(i);
                    _boxes.Add(boxScript);
                    //Set as clickable slot with mouse
                    var createdBoxButton = boxScript.gameObject.GetComponent<Button>();
                    createdBoxButton.onClick.AddListener(ToggleBoxSelected);
                    //Set as hoverable slot with mouse
                    boxScript.OnRequestBoxEnter += OnBoxHovered;
                    boxScript.OnRequestBoxExit += OnBoxUnHovered;
                }
                else //Set to existing slots
                {
                    //Debug.Log("Box Generator: REASSIGNING slot #" + i);
                    boxScript = _boxes[i];
                    _boxes[i].gameObject.SetActive(true);
                }

                boxScript.SetCharacterRequest(request, _canRequestBoxBeSelected);
                //if (_bookOverlay.GetItemsSelected().Contains(item))
                    //boxScript.SetSelected(true);
                //else
                    //boxScript.SetSelected(false);
            }
            
            //Disable existing slot objects if requests greater than it
            if (requestList.Count < _boxes.Count)
            {
                var slotsCount = _boxes.Count;
                for (int i = requestList.Count; i < slotsCount; i++)
                {
                    //Debug.Log("Box Generator: DISABLING slot #" + i);
                    _boxes[i].gameObject.SetActive(false);
                }
            }

            //Set selected box to top
            ResetSelectedBox();
        }

        //Display a list of active character requests from the narrative system:
        public void UpdateDisplay(IReadOnlyList<ActiveCharacterRequest> requests)
        {
            GenerateBoxes(requests);
        }

        private void SetBoxHighlighted(Vector2 inputAxis)
        {
            int targetBox = _highlightedBox;

            targetBox += (int)inputAxis.x;
            targetBox += (int)inputAxis.y * ELEMENTS_PER_ROW;

            //Check to see if trying to navigate out of focus of the menu, otherwise set slot highlighted
            //If highlightedSlot is on the edge of the menu and navigating one more further
            if ((int)inputAxis.x > 0 && ((_highlightedBox % ELEMENTS_PER_ROW == (ELEMENTS_PER_ROW - 1)) || _highlightedBox == _boxes.Count))
            {
                Debug.Log("LIST DISPLAY RIGHT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.RIGHT);
            }
            else if ((int)inputAxis.x < 0 && _highlightedBox % ELEMENTS_PER_ROW == 0)
            {
                Debug.Log("LIST DISPLAY LEFT EDGE TRIGGER");
                _bookOverlay.SetFocus(UI_BookOverlay.MenuSide.LEFT);
            }
            else
                SetBoxHighlighted(targetBox);
        }

        protected virtual void SetBoxHighlighted(int slotHighlighted)
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

            //Invoke ItemInfoBox to show highlighted item's info
            if (_isFocused)
            {
                var highlightedBox = GetHighlightedBox();
                if (highlightedBox.gameObject.activeSelf)
                {
                    _onSlotHighlighted?.Invoke(highlightedBox.PotionSlot);
                }
            }
        }

        protected void UpdateBoxHighlighted()
        {
            //Update the selector for display
            foreach (UI_CharacterRequestBox box in _boxes)
            {
                if (_isFocused)
                    box.SetHighlighted(box.GetIndex() == _highlightedBox);
                else
                    box.SetHighlighted(false);
            }
        }

        private UI_CharacterRequestBox GetHighlightedBox()
        {
            if (_boxes != null && _boxes.Count != 0)
                return _boxes[_highlightedBox];
            else
                return null;
        }

        public ActiveCharacterRequest GetHighlightedCharacter()
        {
            if (_boxes != null && _boxes.Count != 0)
                return _boxes[_highlightedBox].GetCharacterRequest();
            else
                return null;
        }

        /***************************************/

        protected UI_CharacterRequestBox GetSelectedBox()
        {
            if (_selectedCharacterRequestIndex != -1)
                return _boxes[_selectedCharacterRequestIndex];
            else
                return null;
        }

        protected void ToggleBoxSelected()
        {
            var highlightedBox = GetHighlightedBox();
            if (highlightedBox != null)
            {
                if (!highlightedBox.GetSelected() || _selectedCharacterRequestIndex != highlightedBox.GetIndex()) //highighted box is selected and box index is selected index (unselect)
                {
                    if (_selectedCharacterRequestIndex != -1)
                        GetSelectedBox().SetSelected(false);
                    _selectedCharacterRequestIndex = highlightedBox.GetIndex();
                    highlightedBox.SetSelected(true);
                    //Debug.Log("Set box selected to index " + _selectedCharacterRequestIndex);
                    _onCharacterBoxSelected?.Invoke();
                }
            }
        }

        private void SetBoxSelected(int index)
        {
            var targettedBox = _boxes[index];
            if (targettedBox != null)
            {
                ClearSelectedBox();
                _selectedCharacterRequestIndex = index;
                targettedBox.SetSelected(true);
            }
        }

        public void ResetSelectedBox()
        {
            SetBoxSelected(0);
        }

        private void ClearSelectedBox()
        {
            if (_selectedCharacterRequestIndex != -1)
            {
                _boxes[_selectedCharacterRequestIndex].SetSelected(false);
                _selectedCharacterRequestIndex = -1;
            }
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
        protected void OnBoxHovered(UI_CharacterRequestBox slot)
        {
            if (slot != null && _menuType != UI_BookOverlay.MenuType.NONE)
            {
                _bookOverlay.SetFocus(_menuType);
                SetBoxHighlighted(slot.GetIndex());
            }

        }

        protected void OnBoxUnHovered(UI_CharacterRequestBox slot)
        {

        }
    }
}