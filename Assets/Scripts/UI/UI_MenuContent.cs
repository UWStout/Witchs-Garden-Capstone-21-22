using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UI.UI_BookOverlay;

namespace UI
{
    public class UI_MenuContent : MonoBehaviour
    {
        [SerializeField] protected UI_BookOverlay _bookOverlay;

        [SerializeField] protected MenuType _menuType = MenuType.NONE;
        public MenuType GetMenuType() => _menuType;

        protected bool _isFocused = false;

        public virtual bool TrySetFocus(bool isFocus)
        {
            return _isFocused != isFocus;
        }

        protected void SetFocus(bool isFocus)
        {
            _isFocused = isFocus;
        }

        public virtual void UpdateGlobalFocus(bool cond)
        {

        }
    }
}