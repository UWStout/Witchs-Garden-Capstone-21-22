using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Targeting
{

    public class FollowCursor : MonoBehaviour
    {
        [SerializeField] private TargetDetector _playersTargetDetector;
        [SerializeField] private GameObject _vfx;

        [Header("Settings")]
        [Range(1,25)]
        [SerializeField] float _noTargetDelta = 20;
        [Range(1,25)]
        [SerializeField] float _hasTargetDelta = 10f;
        [Range(1, 50)]
        [SerializeField] private float _rotSpeed = 25;
        [Range(0.1f, 2f)]
        [SerializeField] private float _vertSpeed = 0.5f;
        [Tooltip("Local so small #s")]
        [SerializeField] private float _localHeightTop = 0.5f;
        [Tooltip("Local so small #s")]
        [SerializeField] private float _localHeightBot = 0.25f;



        public bool DebugMe = false;

        private bool _isWaiting = false;
        private bool _isGoingUp = false;
        private float _tweenTime = 0;

        private float _timeSpentBeforeTurnOff;
        /************************************************************************************************************************/

        private void Update()
        {
            TweenAnim();
        }

        private void TweenAnim()
        {
            float y = 0;
            if(_isGoingUp)
            {
                y = Mathf.Lerp(_localHeightBot, _localHeightTop, _tweenTime);

                if(y== _localHeightTop)
                {
                    _isGoingUp = false;
                    _tweenTime = 0;
                }
            }
            else
            {
                y = Mathf.Lerp(_localHeightTop, _localHeightBot, _tweenTime);

                if (y == _localHeightBot)
                {
                    _isGoingUp = true;
                    _tweenTime = 0;
                }
            }

            var t = _vfx.transform;
            t.localPosition = new Vector3(t.localPosition.x, y, t.localPosition.z);
            t.Rotate(Vector3.up, _rotSpeed * Time.deltaTime);
            _tweenTime += Time.deltaTime * _vertSpeed;
        }

        private void LateUpdate()
        {
            if (_isWaiting)
                return;

            var target = _playersTargetDetector.GetClosestTarget();
            if (target == null)
            {
                if (DebugMe)
                    Debug.Log($"<color=orange>No targ</color> Lerp to {_playersTargetDetector.GetInteractLocation()}");

                LerpToPosition(_playersTargetDetector.GetInteractLocation(), _noTargetDelta * Time.deltaTime);

                //toggle cursor to inactive
                if (_vfx != null && _vfx.activeInHierarchy)
                {
                    _timeSpentBeforeTurnOff += Time.deltaTime;
                    if (_timeSpentBeforeTurnOff > 0.5f)
                        _vfx.SetActive(false);
                    //TODO : instead of just turning off, lerp the opacity of the arrow to FADE out if shader supports
                }
            }
            else
            {
                if (DebugMe)
                    Debug.Log($"<color=green> targ</color> Lerp to {target.Transform.gameObject.name}  -> {target.Transform.position}");

                LerpToPosition(target.Transform.position, _hasTargetDelta * Time.deltaTime);

                //toggle cursor active
                if (_vfx != null && !_vfx.activeInHierarchy)
                {
                    _vfx.SetActive(true);
                    _timeSpentBeforeTurnOff = 0;
                }
            }
        }


        /************************************************************************************************************************/

        public void ForceTeleportToLocation(Vector3 pos)
        {
            StartCoroutine(ForceMoveToPos(pos));
        }
        /************************************************************************************************************************/

        private void LerpToPosition(Vector3 pos, float delta)
        {
            var t = transform;
            t.position = Vector3.Lerp(t.position, pos, delta);
        }
        private IEnumerator ForceMoveToPos(Vector3 pos)
        {
            _isWaiting = true;
            yield return new WaitForEndOfFrame();
            yield return new WaitForEndOfFrame();
            this.transform.position = pos;
            yield return new WaitForEndOfFrame();
           // _isWaiting = false;
        }

    }
}
