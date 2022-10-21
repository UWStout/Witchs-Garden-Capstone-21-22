using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UI
{
    public class UI_ButtonList : MonoBehaviour
    {
        [SerializeField] protected UI_Button[] _buttonArray;

        private int _selectedIndex;

        public bool SetButtonSelected(int index)
        {
            if (GetButtonAtIndex(GetSelectedBoundaryChecked(index)).CanSetSelected(true))
            {
                _selectedIndex = GetSelectedBoundaryChecked(index);
                UpdateSelectedButtonDisplay();
                return true;
            }
            return false;
        }

        public bool IncrementButtonSelected(int amnt)
        {
            if (GetButtonAtIndex(GetSelectedBoundaryChecked(_selectedIndex + amnt)).CanSetSelected(true))
            {
                _selectedIndex = GetSelectedBoundaryChecked(_selectedIndex + amnt);
                UpdateSelectedButtonDisplay();
                return true;
            }
            return false;
        }

        public void SetButtonInteractable(int index, bool doInteractable)
        {
            _buttonArray[GetSelectedBoundaryChecked(index)].SetInteractable(doInteractable);
        }

        private UI_Button GetButtonAtIndex(int index)
        {
            return _buttonArray[GetSelectedBoundaryChecked(index)];
        }

        protected UI_Button GetSelectedButton()
        {
            return _buttonArray[GetSelectedBoundaryChecked(_selectedIndex)];
        }

        public int GetSelectedIndex()
        {
            return _selectedIndex;
        }

        private int GetSelectedBoundaryChecked(int selectedIndex)
        {
            if (selectedIndex < 0)
                return 0;
            else if (selectedIndex > _buttonArray.Length - 1)
                return _buttonArray.Length - 1;
            else
                return selectedIndex;
        }

        private void UpdateSelectedButtonDisplay()
        {
            for (int i = 0; i < _buttonArray.Length; i++)
            {
                _buttonArray[i].SetSelected(_selectedIndex == i);
            }
        }
    }

}