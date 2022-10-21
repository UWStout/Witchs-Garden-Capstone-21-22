using Narrative;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_PopupCharacterDisplay : UI_NotificationBoxWithImage
    {
        [SerializeField] private Sprite _catPortraitReference;

        public void SetRequest(ActiveCharacterRequest activeCharacterRequest, bool isOpeningRequest)
        {
            SetImageDisplay(activeCharacterRequest.NCRequest.CharacterTemplate.CharacterPortrait);

            string message = "";
            if (isOpeningRequest)
                message = activeCharacterRequest.NCRequest.DialogueLines.OpeningLine;
            else
                message = activeCharacterRequest.NCRequest.DialogueLines.ClosingLine;
            SetPopupPreset("<b>" + activeCharacterRequest.NCRequest.CharacterTemplate.CharacterName + ":</b>\n" + message, false, ePopupType.MESSAGE);
        }

        public void SetCatMessage(string message)
        {
            SetImageDisplay(_catPortraitReference);
            SetPopupPreset("<b>Cat:</b>\n" + message, false, ePopupType.MESSAGE);
        }
    }
}