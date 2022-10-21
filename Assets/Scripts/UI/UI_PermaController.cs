using System;
using System.Collections.Generic;
using CustomInput;
using Items;
using Narrative;
using Player;
using TurnManaging;
using Tutorial;
using UI.MainMenu;
using UnityEngine;

namespace UI
{
    public class UI_PermaController : MonoBehaviour
    {
        //[SerializeField] private UI_Calendar _calendar;
        [SerializeField] private UI_TimeIcon _timeIcon;
        [SerializeField] private UI_GoldDisplay _goldDisplay;
        [SerializeField] private UI_BookOverlay _bookOverlay;
        [SerializeField] private UI_DiagramDisplayer _diagramDisplayer;
        [SerializeField] private UI_PickupFeed _pickupFeed;
        [SerializeField] private UI_PopupDisplayer _popupDisplayer;
        [SerializeField] private EscMenu _escMenu;

        [SerializeField] private AK.Wwise.Event bookOpenEvent;
        [SerializeField] private AK.Wwise.Event bookCloseEvent;

        [SerializeField] private UI_TweenMove _bookOverlaySideTween;
        [SerializeField] private UI_TweenFade _darkBackgroundTweenFade;
        [SerializeField] private UI_TweenMove _bookOverlayTweenMove;

        private bool _isBookOverlayOpen = false;
        private bool _isEscapeMenuOpen = false;

        /************************************************************************************************************************/

        public void InitPermaUI(TurnManager tm, PlayerController player, IBundleContainer bundleContainer, TryMakePotionDelegate makePotionDelegate)
        {

            //Init UI Elements for Listening:
            tm.OnTimeChange += _timeIcon.SetTimeIcon;
            player.PlayerGold.OnValueChanged += _goldDisplay.SetGoldText;

            //Set player inventory bundle container to inventory display
            var bookOverlayInventory = _bookOverlay.GetPlayerInventory();
            bookOverlayInventory.SetItemBundleContainer(bundleContainer);

            //Set item feed bundle container to inventory display
            _pickupFeed.SetItemBundleContainer(bundleContainer);

            //Run method to fix stale starting data
            _goldDisplay.SetGoldText(player.PlayerGold.GetGold());
            _diagramDisplayer.Init(player.DiagramHandler);

            //Set diagram handler to cauldron's potion recipe list
            _bookOverlay.GetCauldron().InitCauldron(makePotionDelegate, player.DiagramHandler);

            //Set Reference Potion Recipes Menu
            _bookOverlay.ReferencePotionRecipesMenu.Init(player.DiagramHandler);

            //Tell book overlay to bind ItemListDisplay to ItemInfoBox
            _bookOverlay.BindListsToInfoBox();

            //Initialize UI Research Stats Menu
            _bookOverlay.GetResearchStatsMenu().Init(player);
            _bookOverlay.GetResearchReferenceRightMenu().Init();

            //Register for TutorialEvents
            TutorialManager.Instance.OnPromptIdOccurred += AddTutorialPopupMessage;
        }

        public void DestroyPermaUI(TurnManager tm, PlayerController player)
        {
            if(tm)
                tm.OnTimeChange -= _timeIcon.SetTimeIcon;
            //Unregister UI element Listeners:
            if(player)
                player.PlayerGold.OnValueChanged -= _goldDisplay.SetGoldText;

            var tutorial = TutorialManager.Instance;
            if (tutorial)
                tutorial.OnPromptIdOccurred -= AddTutorialPopupMessage;
        }

        public void EscapePressed()
        {
            if (_isBookOverlayOpen)
            {
                CloseBookOverlay();
                //Debug.Log($" returned cuz of bookoverlay");
                return;
            }

            if (_isEscapeMenuOpen)
            {
                bool wasMenuClosed = _escMenu.CloseMenu();
                if (wasMenuClosed)
                {
                    EscMenuClosed();
                }
            }
            else
            {
                _escMenu.OpenMenu();
                _isEscapeMenuOpen = true;
                InputReader.Instance.EnableMenuInput();
                _escMenu.OnManuallyClosed += EscMenuClosed;
            }
        }

        private void EscMenuClosed()
        {
            _isEscapeMenuOpen = false;
            InputReader.Instance.EnablePreviousInputMap();
            _escMenu.OnManuallyClosed -= EscMenuClosed;
        }

        public void OpenBookOverlay()
        {
            if (_isBookOverlayOpen)
                return;
            _isBookOverlayOpen = true;
            if (_bookOverlay != null)
                _bookOverlay.gameObject.SetActive(_isBookOverlayOpen);
            if (_bookOverlay.GetIsShowingReferenceBook())
                _bookOverlaySideTween.RunTween(true);
            _darkBackgroundTweenFade.RunTween(false);
            _bookOverlayTweenMove.RunTween(false);
            InputReader.Instance.EnableMenuInput();
            bookCloseEvent.Post(gameObject);
        }

        public void CloseBookOverlay()
        {
            if (!_isBookOverlayOpen)
                return;
            _isBookOverlayOpen = false;
            if (_bookOverlay != null)
                _bookOverlay.gameObject.SetActive(_isBookOverlayOpen);
            _bookOverlaySideTween.RunTween(false);
            _darkBackgroundTweenFade.RunTween(true);
            _bookOverlayTweenMove.RunTween(true);
            InputReader.Instance.EnableGameplayInput();
            bookCloseEvent.Post(gameObject);
        }

        public void ToggleDisplayInventory()
        {
            if (!_isBookOverlayOpen)
            {
                _bookOverlay.PresetMenuPlayerInventory();
                OpenBookOverlay();
                // bookOpenEvent.Post(gameObject);
            }
            else
            {
                CloseBookOverlay();
                // bookCloseEvent.Post(gameObject);
            }
        }

        public void DisplayShopBuy()
        {
            if (!_isBookOverlayOpen)
            {
                _bookOverlay.PresetMenuShopBuy();
                OpenBookOverlay();
            }
        }
       
        public void DisplayShopSell()
        {
            if (!_isBookOverlayOpen)
            {
                _bookOverlay.PresetMenuShopSell();
                OpenBookOverlay();
            }
        }

        public void DisplayCauldron()
        {
            if (!_isBookOverlayOpen)
            {
                _bookOverlay.PresetMenuBrewing();
                OpenBookOverlay();
            }
        }

        public void DisplayResearch()
        {
            if (!_isBookOverlayOpen)
            {
                OpenBookOverlay();
            }

            _bookOverlay.PresetMenuResearch();
        }
		
        public void DisplayMailboxMessage()
        {
            AddPopupMessage("<i>The inside of the mailbox looks very empty</i>", false);
        }

        //Popup Stuff
        public void AddPopupMessage(string text, bool allowDeny, Action<bool> responseCallback = null)
        {
            _popupDisplayer.AddPopupMessage(text, allowDeny, responseCallback);
        }

        public void AddPopupMessageWithImage(string text, Sprite imageSprite)
        {
            _popupDisplayer.AddPopupMessageWithImage(text, imageSprite);
        }

        public void AddCharacterPopupMessage(ActiveCharacterRequest request, bool isOpeningRequest)
        {
            _popupDisplayer.AddCharacterPopupMessage(request, isOpeningRequest);
        }

        private void AddTutorialPopupMessage(List<TutorialPrompt> tutorialPrompts)
        {
            _popupDisplayer.AddTutorialPopupMessage(tutorialPrompts);
        }
    }
}
