using CustomInput;
using Narrative;
using System;
using System.Collections;
using System.Collections.Generic;
using Tutorial;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_PopupDisplayer : MonoBehaviour
    {
        [SerializeField] private UI_NotificationBox _notificationBox;
        [SerializeField] private UI_PopupCharacterDisplay _popupCharacterDisplay;
        [SerializeField] private UI_NotificationBoxWithImage _notificationBoxWithImage;
        [SerializeField] private UI_TutorialPrompt _tutorialPrompt;
        [SerializeField] private Image _darkBackgroundOverlay;

        private Action<bool> _onPopCallback;
        private bool _isPopupOpen = false;

        private Queue<PopupMessageData> _popupMessageQueue = new Queue<PopupMessageData>();
        private Queue<PopupMessageWithImageData> _popupMessageWithImageQueue = new Queue<PopupMessageWithImageData>();
        private Queue<PopupCharacterData> _popupCharacterQueue = new Queue<PopupCharacterData>();
        private Queue<PopupTutorialMessageData> _popupTutorialMessageQueue = new Queue<PopupTutorialMessageData>();
        

        /************************************************************************************************************************/

        public void OpenNotificationBox()
        {
            if (_notificationBox == null)
                return;
            _notificationBox.gameObject.SetActive(true);
        }

        public void OpenNotificationBoxWithImage()
        {
            if (_notificationBoxWithImage == null)
                return;
            _notificationBoxWithImage.gameObject.SetActive(true);
        }

        /************************************************************************************************************************/

        public void AddPopupMessage(string text, bool allowDeny, Action<bool> responseCallback = null)
        {
            var processedText = text.Replace("\\n", "\n"); //<-- Used because typing \n into string in inspector processes it as \\n
            var messageData = new PopupMessageData(processedText, allowDeny, responseCallback);
            _popupMessageQueue.Enqueue(messageData);

            if (!_isPopupOpen)
                StartCoroutine(TryDequeue());
        }

        public void AddPopupMessageWithImage(string text, Sprite imageSprite)
        {
            var messageData = new PopupMessageWithImageData(text, imageSprite);
            _popupMessageWithImageQueue.Enqueue(messageData);

            if (!_isPopupOpen)
                StartCoroutine(TryDequeue());
        }

        public void AddCharacterPopupMessage(ActiveCharacterRequest request, bool isOpeningRequest)
        {
            //if no opening line, ignore popup message. Used for Crazy Potion guy
            if (isOpeningRequest && request.NCRequest.DialogueLines.OpeningLine == "")
                return;

            var messageData = new PopupCharacterData(request, isOpeningRequest);
            _popupCharacterQueue.Enqueue(messageData);
            //Debug.Log("QUEUEING CHARACTER POPUP " + request.NCRequest.name);

            if (!_isPopupOpen)
                StartCoroutine(TryDequeue());
        }

        public void AddTutorialPopupMessage(List<TutorialPrompt> tutorialPrompts)
        {
            //Debug.Log("ADDING TUTORIAL POPUP MESSAGE");
            if (tutorialPrompts == null || tutorialPrompts.Count == 0)
            {
                Debug.Log("Tutorial Prompt was empty (was it unassigned?)");
                return;
            }

            if (tutorialPrompts[0].IsDialogueBox)
            {
                //Because setting a chain of prompts is not supported for dialogue boxes, split up the prompts and try to display them again here.
                if (tutorialPrompts.Count > 1)
                {
                    foreach (TutorialPrompt tp in tutorialPrompts)
                    {
                        AddTutorialPopupMessage(new List<TutorialPrompt> { tp });
                    }
                    return;
                }
            }

            var messageData = new PopupTutorialMessageData(tutorialPrompts);
            _popupTutorialMessageQueue.Enqueue(messageData);

            if (!_isPopupOpen)
                StartCoroutine(TryDequeue());
        }

        IEnumerator TryDequeue()
        {
            yield return new WaitForSeconds(0.1f);

            //Debug.Log("TRYING TO DEQUEUE");
            if (!_isPopupOpen)
            {
                if (_popupTutorialMessageQueue.Count > 0)
                {
                    //Debug.Log("DEQUEING TUTORIAL");
                    DisplayTutorialMessage(_popupTutorialMessageQueue.Dequeue());
                }
                else if (_popupMessageQueue.Count > 0)
                {
                    //Debug.Log("DEQUEING MESSAGE - character queue size: " + _popupCharacterQueue.Count);
                    DisplayPopupMessage(_popupMessageQueue.Dequeue());
                }
                else if (_popupMessageWithImageQueue.Count > 0)
                {
                    //Debug.Log("DEQUEING MESSAGE WITH IMAGE - character queue size: " + _popupCharacterQueue.Count);
                    DisplayPopupMessageWithImage(_popupMessageWithImageQueue.Dequeue());
                }
                else if (_popupCharacterQueue.Count > 0)
                {
                    //Debug.Log("DEQUEING CHARACTER QUEUE - left in queue: " + (_popupCharacterQueue.Count - 1));
                    DisplayPopupCharacterDisplay(_popupCharacterQueue.Dequeue());
                }
                else
                {
                    //Debug.Log("NOTHING TO DEQUEUE");
                    //if (!InputReader.Instance.IsCurrentMapDisabled())
                    InputReader.Instance.EnablePreviousInputMap();
                    _darkBackgroundOverlay.gameObject.SetActive(false);
                }
            }
            else
            {
                //Debug.Log("CAN'T DQ, POPUP OPEN");
            }
        }

        /************************************************************************************************************************/

        //For house confirmation popup; Queue up if no response callback
        // Play audio here(?)
        private void DisplayPopupMessage(PopupMessageData popupMessageData)
        {
            if (!_isPopupOpen && _notificationBox != null)
            {
                if (!InputReader.Instance.IsCurrentMapPopup())
                    InputReader.Instance.EnablePopupInput();
                SetPopupVariableOpen(true);
                _onPopCallback = popupMessageData.ResponseCallback;
                _notificationBox.SetPopupPreset(popupMessageData.Text, popupMessageData.AllowDeny, ePopupType.MESSAGE, OnPopupClosedCallback);
                OpenNotificationBox();
            }
        }

        //For something unlocked popup; Queue up
        // Play audio here
        private void DisplayPopupMessageWithImage(PopupMessageWithImageData popupMessageWithImageData)
        {
            if (!_isPopupOpen && _notificationBoxWithImage != null)
            {
                if (!InputReader.Instance.IsCurrentMapPopup())
                    InputReader.Instance.EnablePopupInput();
                SetPopupVariableOpen(true);
                _notificationBoxWithImage.SetPopupPreset(popupMessageWithImageData.Text, false, ePopupType.MESSAGE, OnPopupClosed);
                _notificationBoxWithImage.SetImageDisplay(popupMessageWithImageData.ImageSprite);
                OpenNotificationBoxWithImage();
            }
        }

        //For character requests popup; Queue up
        private void DisplayPopupCharacterDisplay(PopupCharacterData popupCharacterData)
        {
            //Debug.Log($"Display pop up for new narration request: {request.NCRequest.CharacterTemplate.CharacterName} for item {request.NCRequest.ItemRequested.ItemTemplate.ItemName}");
            //Debug.Log($"[{popupCharacterData.Request.NCRequest.CharacterTemplate.CharacterName}]: {popupCharacterData.Request.NCRequest.DialogueLines.OpeningLine}");
            if (!_isPopupOpen && _popupCharacterDisplay != null)
            {
                if (!InputReader.Instance.IsCurrentMapPopup())
                    InputReader.Instance.EnablePopupInput();
                SetPopupVariableOpen(true);
                _popupCharacterDisplay.SetRequest(popupCharacterData.Request, popupCharacterData.IsOpeningRequest);
                _popupCharacterDisplay.SetOnCompleteResponse(OnPopupClosed);
                _popupCharacterDisplay.gameObject.SetActive(true);
            }
            else
                Debug.Log("Popup open is " + _isPopupOpen);
        }

        private void DisplayTutorialMessage(PopupTutorialMessageData popupTutorialMessageData)
        {
            if (!_isPopupOpen && popupTutorialMessageData.TutorialPrompts.Count >= 1)
            {
                if (!InputReader.Instance.IsCurrentMapPopup())
                    InputReader.Instance.EnablePopupInput();
                SetPopupVariableOpen(true);

                if (popupTutorialMessageData.TutorialPrompts[0].IsDialogueBox)
                {
                    _popupCharacterDisplay.SetCatMessage(popupTutorialMessageData.TutorialPrompts[0].Text);
                    _popupCharacterDisplay.SetOnCompleteResponse(OnPopupClosed);
                    _popupCharacterDisplay.gameObject.SetActive(true);
                }
                else
                {
                    _tutorialPrompt.SetCurrentPrompts(popupTutorialMessageData.TutorialPrompts);
                    _tutorialPrompt.SetOnCompleteResponse(OnPopupClosed);
                    _tutorialPrompt.gameObject.SetActive(true);
                }
            }
            else
                Debug.Log("Error: Popup open is " + _isPopupOpen);
        }
        /************************************************************************************************************************/

        public struct PopupMessageData {
            public string Text { get; }
            public bool AllowDeny { get; }
            public Action<bool> ResponseCallback { get; }

            public PopupMessageData(string text, bool allowDeny, Action<bool> responseCallback = null)
            {
                Text = text;
                AllowDeny = allowDeny;
                ResponseCallback = responseCallback;
            }
        }

        public struct PopupMessageWithImageData
        {
            public string Text { get; }
            public Sprite ImageSprite { get; }

            public PopupMessageWithImageData(string text, Sprite imageSprite)
            {
                Text = text;
                ImageSprite = imageSprite;
            }
        }

        public struct PopupCharacterData
        {
            public ActiveCharacterRequest Request { get; }
            public bool IsOpeningRequest { get; }

            public PopupCharacterData(ActiveCharacterRequest request, bool isOpeningRequest)
            {
                Request = request;
                IsOpeningRequest = isOpeningRequest;
            }
        }

        public struct PopupTutorialMessageData
        {
            public List<TutorialPrompt> TutorialPrompts { get; }

            public PopupTutorialMessageData(List<TutorialPrompt> tutorialPrompts)
            {
                TutorialPrompts = tutorialPrompts;
            }
        }

        /************************************************************************************************************************/

        private void OnPopupClosed(bool result)
        {
            //Debug.Log("Popup confirmation result was " + result);
            SetPopupVariableOpen(false);
            //Debug.Log("POPUP CLOSED");
            StartCoroutine(TryDequeue());
        }

        private void OnPopupClosedCallback(bool result)
        {
            OnPopupClosed(result);
            _onPopCallback?.Invoke(result);
            _onPopCallback = null;
            
        }

        private void SetPopupVariableOpen(bool doOpen)
        {
            _isPopupOpen = doOpen;
            if (doOpen)
                _darkBackgroundOverlay.gameObject.SetActive(true);
        }
    }
}