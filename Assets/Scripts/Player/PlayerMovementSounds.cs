using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Player
{
    public class PlayerMovementSounds : MonoBehaviour
    {
        [SerializeField] private PlayerAnimStateController _animState;

        [SerializeField] private float _footstepInterval = 0.5f;
        private float _currFootstepInterval = 0;

        [SerializeField] private AK.Wwise.Event _walkInside;
        [SerializeField] private AK.Wwise.Event _walkOutside;


        private bool _isDay = true;

        /************************************************************************************************************************/

        private void Start()
        {
            SubscribeToEvents(true);
        }

        private void OnDestroy()
        {
            SubscribeToEvents(false);
        }


        private void Update()
        {
            if (!_animState.IsWalking)
                return;
            
            _currFootstepInterval += Time.deltaTime;
            if (_currFootstepInterval > _footstepInterval)
            {
                PlaySound();
                _currFootstepInterval = 0;
            }
            
        }


        /************************************************************************************************************************/

        private void SubscribeToEvents(bool cond)
        {
            TurnManaging.TurnManager tm = TurnManaging.TurnManager.Instance;
            if (tm == null)
                return;

            if (cond)
            {
                tm.OnTimeChange += TimeChanged;
            }
            else
            {
                tm.OnTimeChange -= TimeChanged;
            }
        }

        private void TimeChanged(bool isDay, int turnNo)
        {
            _isDay = isDay;
        }


        private void PlaySound()
        {
            //Do this based on time
            if(_isDay)
                _walkOutside.Post(gameObject);
            // If inside 
            else
                _walkInside.Post(gameObject);
        }
    }
}
