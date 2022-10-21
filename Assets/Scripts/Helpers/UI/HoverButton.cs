using UnityEngine.EventSystems;
using UnityEngine.UI;

namespace Helpers.UI
{
    /// <summary>
    /// Button class that has events for the mouse entering and exiting in addition to clicking.
    /// </summary>
    public class HoverButton : Button
    {
        // Mouse enter event
        private ButtonClickedEvent _pointerEnterEvent = new ButtonClickedEvent();
        public ButtonClickedEvent onPointerEnter { get { return _pointerEnterEvent; } set { _pointerEnterEvent = value; } }
        // Mouse exit event
        private ButtonClickedEvent _pointerExitEvent = new ButtonClickedEvent();
        public ButtonClickedEvent onPointerExit { get { return _pointerExitEvent; } set { _pointerExitEvent = value; } }


        public override void OnPointerEnter(PointerEventData eventData)
        {
            base.OnPointerEnter(eventData);
            onPointerEnter?.Invoke();
        }

        public override void OnPointerExit(PointerEventData eventData)
        {
            base.OnPointerExit(eventData);
            onPointerExit?.Invoke();
        }
    }
}