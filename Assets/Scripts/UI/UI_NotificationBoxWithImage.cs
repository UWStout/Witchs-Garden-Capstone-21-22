using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_NotificationBoxWithImage : UI_Popup
    {
        [SerializeField] Image _image;

        public void SetImageDisplay(Sprite sprite)
        {
            if (_image != null)
                _image.sprite = sprite;
        }
    }
}