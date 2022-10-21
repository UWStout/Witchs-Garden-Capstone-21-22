using System;
using System.Collections;
using System.Collections.Generic;
using Helpers;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.InputSystem;

/**
 * New input system!!
 * 
 * To use:
 *  - Create an action in Assets/GameFiles/Input/GameInput and **MAKE SURE to click the Save Asset button**
 *  - Implement method required by Action Map interface
 *  - Define an event delegate following the pattern at the top of the class
 * 
 *  - In the MonoBehaviour where you need to take input:
 *    - register methods to the newly created event in RegisterForInput
 *    - it is possible to register more than one method to an event
 *    - all registered methods must have the same signature as the event
 *       - ex. UnityAction ExEvent method signature is void ExEvent()
 *       - ex. UnityAction<Vector2> ExEvent method signature is void ExEvent(Vector2 val)
 */

namespace CustomInput
{
    //Cant be a ScriptableObject because they are "read" only in builds
    //[CreateAssetMenu(fileName = "InputReader", menuName = "Data/Input/Input Reader", order = 0)]
    public class InputReader : MonoSingleton<InputReader>, GameInput.IGameplayActions, GameInput.IMenusActions, GameInput.IPopupActions
    {
        // Add new input actions as events with the delegate { } assignment to skip the null check

        // Gameplay actions
        public static event UnityAction<Vector2> MovementEvent = delegate { };
        public static event UnityAction<Vector2> LookEvent = delegate { };
        public static event UnityAction PrimaryInteractEvent = delegate { };
        public static event UnityAction SecondaryInteractEvent = delegate { };
        public static event UnityAction SpellWheelOpenedEvent = delegate { };
        public static event UnityAction SpellWheelClosedEvent = delegate { };
        public static event UnityAction<int> ScrollEvent = delegate { };  // TODO update for controller support
        public static event UnityAction<int> SelectHotbarPageEvent = delegate { };
        public static event UnityAction OpenBookEvent = delegate { };
        public static event UnityAction PauseEvent = delegate { };
        public static event UnityAction<int> ScrollNumberKeysEvent = delegate { };
        public static event UnityAction<int> SecondaryScrollEvent = delegate { };
        public static event UnityAction<int> SecondaryScrollToggleEvent = delegate { };

        // Menu actions
        public static event UnityAction<Vector2> NavigateEvent = delegate { };
        public static event UnityAction<int> ChangePageEvent = delegate { };
        public static event UnityAction CloseBookEvent = delegate { };
        public static event UnityAction OnEscapeEvent = delegate { };
        public static event UnityAction SelectEvent = delegate { };
        public static event UnityAction ConfirmEvent = delegate { };
        public static event UnityAction CancelEvent = delegate { };
        public static event UnityAction ClearEvent = delegate { };
        public static event UnityAction<int> ChangePageSecondaryEvent = delegate { };

        //Popup actions
        public static event UnityAction PopupConfirmEvent = delegate { };
        public static event UnityAction PopupDenyEvent = delegate { };

        // Dev actions
        public static event UnityAction DeveloperSkipDayEvent = delegate { };
        private bool devMode;

        private enum ActionMap { GAMEPLAY, MENU, POPUP, NULL }

        private ActionMap _previousMap = ActionMap.NULL;
        private ActionMap _currentMap = ActionMap.NULL;
        private bool _actionMapDisabled = false;

        // NOTE: GameInput.cs is located in Assets/GameFiles/Input. Regenerating the c# script from the 
        // InputActionAsset causes a duplicate to be created otherwise.
        private GameInput _gameInput;

        private void OnEnable()
        {
            ToggleCursorVisible(false);

            if (_gameInput == null)
            {
                _gameInput = new GameInput();
                _gameInput.Gameplay.SetCallbacks(this);
                _gameInput.Menus.SetCallbacks(this);
                _gameInput.Popup.SetCallbacks(this);
            }

            // NOTE: only have one of these uncommented!
            EnableGameplayInput(); // <-- for starting directly in-scene
            // EnableMenuInput(); // <-- for starting on a menu

            devMode = DevModeToggle.Instance && DevModeToggle.Instance.DevMode;
        }

        //--------------------

        public void EnableGameplayInput()
        {
            if (!_actionMapDisabled)
            {
                _gameInput.Gameplay.Enable();
                _gameInput.Menus.Disable();
                _gameInput.Popup.Disable();
                ToggleCursorVisible(false);
            }
            _previousMap = _currentMap;
            _currentMap = ActionMap.GAMEPLAY;
            //Debug.Log("MAP SET TO " + _previousMap + " | " + _currentMap);
        }

        public void EnableMenuInput()
        {
            if (!_actionMapDisabled)
            {
                _gameInput.Menus.Enable();
                _gameInput.Gameplay.Disable();
                _gameInput.Popup.Disable();
                ToggleCursorVisible(true);
            }
            _previousMap = _currentMap;
            _currentMap = ActionMap.MENU;
            //Debug.Log("MAP SET TO " + _previousMap + " | " + _currentMap);
        }

        public void EnablePopupInput()
        {
            if (!_actionMapDisabled)
            {
                _gameInput?.Menus.Disable();
                _gameInput?.Gameplay.Disable();
                _gameInput?.Popup.Enable();
                ToggleCursorVisible(true);
            }
            _previousMap = _currentMap;
            _currentMap = ActionMap.POPUP;
            //Debug.Log("MAP SET TO " + _previousMap + " | " + _currentMap);
        }

        //--------------------

        public void DisableAllInput()
        {
            if (_gameInput == null)
             {
                Debug.LogError("Null disable input");
            }
            //Debug.Log("DISABLING INPUT MAP");
            _actionMapDisabled = true;
            _gameInput.Menus.Disable();
            _gameInput.Gameplay.Disable();
            _gameInput.Popup.Disable();
        }

        public void UnDisableAllInput()
        {
            //Debug.Log("UNDISABLING INPUT MAP");
            _actionMapDisabled = false;
        }

        //--------------------

        public void EnablePreviousInputMap()
		{
            //Debug.Log("Resuming prevous input map of " + _previousMap);
            SwitchInputMap(_previousMap);
        }

        public void ResumeCurrentInputMap()
        {
            //Debug.Log("Resuming current input map of " + _currentMap);
            SwitchInputMap(_currentMap);
        }

        //--------------------

        private void SwitchInputMap(ActionMap actionMap)
        {
            switch (actionMap)
            {
                case ActionMap.GAMEPLAY:
                    EnableGameplayInput();
                    break;
                case ActionMap.MENU:
                    EnableMenuInput();
                    break;
                case ActionMap.POPUP:
                    EnablePopupInput();
                    break;
                default:
                    EnableGameplayInput();
                    break;
            };
        }

        //--------------------

        public void ToggleCursorVisible(bool cond)
		{
            if (cond)
                StartCoroutine(LockCursor(CursorLockMode.None));
            else
                StartCoroutine(LockCursor(CursorLockMode.Locked));

            IEnumerator LockCursor(CursorLockMode mode)
            {
                Cursor.lockState = mode;
                yield return new WaitForEndOfFrame();
            }
        }

        public bool IsCurrentMapPopup()
        {
            return _currentMap == ActionMap.POPUP;
        }

        public bool IsCurrentMapDisabled()
        {
            return _actionMapDisabled;
        }

        #region Gameplay Action Map
        //****************************************************************************************
        public void OnMovement(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                MovementEvent.Invoke(context.ReadValue<Vector2>());
            }
            if (context.phase == InputActionPhase.Canceled)
            {
                MovementEvent.Invoke(context.ReadValue<Vector2>());
            }
        }

        public void OnLook(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                LookEvent.Invoke(context.ReadValue<Vector2>());
            }
            if (context.phase == InputActionPhase.Canceled)
            {
                LookEvent.Invoke(context.ReadValue<Vector2>());
            }
        }

        public void OnPrimaryInteract(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                PrimaryInteractEvent.Invoke();
            }
        }

        public void OnSecondaryInteract(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                SecondaryInteractEvent.Invoke();
            }
        }

        public void OnToggleSpellWheel(InputAction.CallbackContext context)
        {
            // Spell wheel button held
            if (context.phase == InputActionPhase.Performed)
            {
                SpellWheelOpenedEvent.Invoke();
            }

            // Spell wheel button released
            if (context.phase == InputActionPhase.Canceled)
            {
                SpellWheelClosedEvent.Invoke();
            }
        }

        public void OnScroll(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                ScrollEvent.Invoke((int)value);
            }
        }

        public void OnSelectHotbarPage(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                SelectHotbarPageEvent.Invoke((int)value);
            }
        }

        public void OnOpenBook(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                OpenBookEvent.Invoke();
                //EnableMenuInput();
            }
        }

        public void OnEscapeGameplay(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                OnEscapeEvent.Invoke();
                //EnableGameplayInput();
            }
        }
        public void OnEscapeMenu(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                OnEscapeEvent.Invoke();
                //EnableGameplayInput();
            }
        }

        public void OnScrollNumberKeys(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                ScrollNumberKeysEvent.Invoke((int)value);
            }
        }

        public void OnSecondaryScroll(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                SecondaryScrollEvent.Invoke((int)value);
            }
        }

        public void OnSecondaryScrollToggle(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                SecondaryScrollToggleEvent.Invoke((int)value);
            }
        }
        //****************************************************************************************
        #endregion

        #region Menus Action Map
        //****************************************************************************************
        public void OnNavigate(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                NavigateEvent.Invoke(context.ReadValue<Vector2>());
            }
        }

        public void OnChangePage(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                ChangePageEvent.Invoke((int)value);
            }
        }

        public void OnCloseBook(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                CloseBookEvent.Invoke();
            }
        }

 

        public void OnSelect(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                SelectEvent.Invoke();
            }
        }

        public void OnConfirm(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                ConfirmEvent.Invoke();
            }
        }      

        public void OnCancel(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                CancelEvent.Invoke();
            }
        }

        public void OnClear(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                ClearEvent.Invoke();
            }
        }

        public void OnChangePageSecondary(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                var value = context.ReadValue<float>();
                ChangePageSecondaryEvent.Invoke((int)value);
            }
        }
        //****************************************************************************************
        #endregion

        #region Popup Action Map
        //****************************************************************************************
        public void OnPopupConfirm(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                PopupConfirmEvent.Invoke();
            }
        }

        public void OnPopupDeny(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed)
            {
                PopupDenyEvent.Invoke();
            }
        }


        //****************************************************************************************
        #endregion

        #region Dev Action Map
        public void OnDeveloperSkipDay(InputAction.CallbackContext context)
        {
            if (context.phase == InputActionPhase.Performed && devMode)
            {
                DeveloperSkipDayEvent.Invoke();
            }
        }
		
		#endregion
	}
}
