/*
* Author : Steve Datz
* Desc : 
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using UnityEngine;
using UnityEngine.UI;

namespace Helpers.UI
{
	[RequireComponent(typeof(Button))]
	public abstract class UI_ButtonListenerSetter : MonoBehaviour
	{

        /************************************************************************************************************************/
        private void Start()
        {
            Button b = this.GetComponent<Button>();
            AssignCallBack(b);
            ///Dont destroy this, otherwise somehow the callback gets broken..........
            Destroy(this);
        }

        /// <summary>
        /// Make sure to not use any cached references that are assigned via this callback, otherwise ONDESTROY will negate these references and callback will be null
        /// </summary>
        /// <param name="b"></param>
        protected abstract void AssignCallBack(Button b);
    }
}
