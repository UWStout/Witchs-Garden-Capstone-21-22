using System;
using System.Collections;
using UnityEngine;
using Helpers;
using Targeting;

namespace UI
{
    public class UI_HoverController : InstancedMonoBehaviour<UI_HoverController>
    {
        /// <summary>
        /// Invokes null if no current target- receiving end needs to handle
        /// </summary>
        public static event Action<ITargetable> OnHoverChanged;

        [Range(0,5)]
        [SerializeField] private float _hoverDelay = 1;

        ITargetable _currTarget;
        private bool _isRecentTarget = false;
        private float _timeTillNotify = 0;
        /************************************************************************************************************************/

        private void OnDestroy()
        {
            //Stop ticking? idk some weird Cleanup Error
            _isRecentTarget = false;
        }

        private void Update()
        {
            TryIncrementNotifyTime();
        }

        /************************************************************************************************************************/
        /// <summary>
        /// TODO- need to make this get re-invoked if the target changes
        /// easiest is probably clearing the tooltip system when player does interaction - either directly setting target to null here,
        /// or clearing target in the players target detector
        /// </summary>
        /// <param name="targ"></param>
        /// <param name="isBegin"></param>
        public void OnItemHovered(ITargetable targ, bool isBegin=true)
        {
            //Debug.Log($"Hover Controller heard: {targ.Transform.gameObject.name} isBegin={isBegin} , currTarg={_currTarget} ");
            if (isBegin)
            {
                bool isNewTarget = targ != _currTarget;
                if (!isNewTarget) 
                    return;
                //Set our internal target for ticking
                SetCurrentTarget(targ);
                //Set up the update to tick 
                _isRecentTarget = true;
                _timeTillNotify = _hoverDelay;
                //Clear the UI - as we're looking at something new 
                InvokeCurrentTargetChanged(null);

            }
            else //Incase the new targets Notify is somehow called before the old's end
            {
                if (targ != _currTarget) 
                    return;
                //Stop Ticking
                _isRecentTarget = false;
                //Reset Target
                SetCurrentTarget( null);
                //Clear the UI
                InvokeCurrentTargetChanged(null);
            }
        }
        /************************************************************************************************************************/
        private void TryIncrementNotifyTime()
        {
            if (!_isRecentTarget)
                return;

            //Debug.Log($"Actually trying to count down : {_timeTillNotify}  -> {_currTarget}");
            _timeTillNotify -= Time.deltaTime;
            if (_timeTillNotify <= 0)
            {
                InvokeCurrentTargetChanged(_currTarget);
                _isRecentTarget = false;
            }
        }
        private void SetCurrentTarget(ITargetable targ)
        {
            _currTarget = targ;
            //Debug.Log($"Set curr targ to: <color=green> {targ} </color>  ");
        }
        
        private static void InvokeCurrentTargetChanged(ITargetable targ)
        {
            //Debug.Log($"Hover Controller INVOKE!: {targ}  time={_timeTillNotify} ");
            OnHoverChanged?.Invoke(targ);
        }

 
    }
}