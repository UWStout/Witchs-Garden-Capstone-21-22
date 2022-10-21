
using System;
using Targeting;
using UnityEngine;
using UnityEngine.UI;


namespace UI
{
    public abstract class UI_ScreenSpaceHoverListener : MonoBehaviour
    {
        private static Camera _mainCamera;
        private static int _screenWidth = 1920;
        private static int _screenHeight = 1080;
        
        
        private RectTransform _rectTransform;
        
        /************************************************************************************************************************/
        protected virtual void Start()
        {
            if (_mainCamera == null)
            {
                _mainCamera = Camera.main;
                _screenWidth = Screen.width;
                _screenHeight = Screen.height;
            }

            _rectTransform = this.GetComponent<RectTransform>();
        }

        protected virtual void OnEnable()
        {
            UI_HoverController.OnHoverChanged += ChangeDisplay;
        }


        protected virtual void OnDisable()
        {
            UI_HoverController.OnHoverChanged -= ChangeDisplay;
        }

        /************************************************************************************************************************/

        protected abstract void ChangeDisplay(ITargetable targ);


        protected static Vector3 WorldToScreenPoint(Vector3 worldPos)
        {
            if (_mainCamera == null)
            {
                Debug.Log($"no main camera???");
                return new Vector3(0, 0, 0);
            }
            return _mainCamera.WorldToScreenPoint(worldPos);
        }
        /************************************************************************************************************************/
        //EXPERIMENTAL:
        
        /// <summary>
        /// Use the Mouse Pos to calculate display
        /// </summary>
        public void SetToolTipPos(Vector2 screenPos)
        {
            var screenWidth = Screen.width;
            var screenHeight = Screen.height;
            //pivots do stuff like anchors?
            var pivotX = screenPos.x / screenWidth ; //closer to 0 = left side , closer to 1 = right side
            var pivotY = screenPos.y / screenHeight ; //closer to 0 = bot side, closer to 1 = top side
			
			
            Vector2 offsetFromMouse = Vector2.zero;

            //offsetPadding based on screen res inrelation to 1920x1080
            float paddingX = 35f * (screenWidth / 1920f);
            float paddingY = 25f * (screenHeight / 1080f);
			
            if (pivotX < 0.5)
            {
                //Debug.Log($" Pivot on LEFT side?  {_pivotX}");
                offsetFromMouse.x += paddingX;
            }
            else if (pivotX > 0.5)
            {
                //Debug.Log($" Pivot on Right side?  {_pivotX}");
                offsetFromMouse.x -= paddingX;
            }
            if (pivotY < 0.5)
            {
                //Debug.Log($" Pivot on BOT side?  {_pivotY}");
                offsetFromMouse.y += paddingY;
            }
            else if (pivotY > 0.5)
            {
                //Debug.Log($" Pivot on TOP side?  {_pivotY}");
                offsetFromMouse.y -= paddingY;
            }

            _rectTransform.pivot = new Vector2(pivotX, pivotY);
            transform.position = screenPos + offsetFromMouse;
        }
        
        /// <summary>
        /// This is adapted from a different tooltip system I had, wont quite make sense for ours,
        /// but a starting point to look at (example)
        /// </summary>
        /// <returns></returns>
        protected Vector3 GetScreenSpaceOffset()
        {
            // Convert our rect coordinates into overall screen space
            Rect convertedRect = RectTransformToScreenSpace(this.GetComponent<RectTransform>()); //cache this TODO
            
            var newOffset = new Vector2(
                ((convertedRect.x - _screenWidth / 2f) / _screenWidth),
                ((convertedRect.y - _screenHeight / 2f) / _screenHeight));
            
            newOffset.Normalize();
            
            //make sure our tool tip is offset completely to one axis or the other
            if (newOffset.x > newOffset.y)
            {
                Vector2 sizeDelta = _rectTransform.sizeDelta;
                newOffset.x = Mathf.Sign(newOffset.x) * ((convertedRect.width + sizeDelta.x) / _screenWidth);
                newOffset.y = newOffset.y * ((convertedRect.height + sizeDelta.y) / _screenHeight);
            }
            else
            {
                newOffset.x = newOffset.x * ((convertedRect.width + _rectTransform.sizeDelta.x) / _screenWidth);
                newOffset.y = Mathf.Sign(newOffset.y) * ((convertedRect.height + _rectTransform.sizeDelta.y) / _screenHeight);
            }
            // // Set pivot values
            // var pivotX = (convertedRect.x / _screenWidth) + newOffset.x;
            // var pivotY = (convertedRect.y / _screenHeight) + newOffset.y;
            //
            // // Update our tool tip pivot and position
            // _rectTransform.pivot = new Vector2(pivotX, pivotY);
            // transform.position = new Vector2(convertedRect.x, convertedRect.y);

            return newOffset;
        }
        /// <summary>
        /// hmmm this is a screenspace rect already, not sure what were doing?
        /// </summary>
        /// <param name="rt"></param>
        /// <returns></returns>
        private static Rect RectTransformToScreenSpace(RectTransform rt)
        {
            Vector2 size = Vector2.Scale(rt.rect.size, rt.lossyScale);
            return new Rect((Vector2)rt.position - (size * rt.pivot), size);
        }
        
        /************************************************************************************************************************/

    }
}
