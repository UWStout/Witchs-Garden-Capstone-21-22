using CustomInput;
using Spells;
using System;
using System.Collections;
using UnityEngine;

namespace Player
{
    public class PlayerAnimStateController : MonoBehaviour
    {
        private Animator _animator;

        private float _lockRotationAtSpeed = 0.5f;

        // Using StringToHash increases performance
        private readonly int _isWalkingHash = Animator.StringToHash("IsWalking");
        private readonly int _isTurningLeftHash = Animator.StringToHash("IsTurningLeft");
        private readonly int _isTurningRightHash = Animator.StringToHash("IsTurningRight");

        public bool IsWalking => _isWalking;     
        private bool _isWalking;

        private bool _isTurningLeft;
        private bool _isTurningRight;

        private int _noRotationFrameCounter;

        private MovementDataStruct _movementData;

        private void Start()
        {
            _animator = GetComponentInChildren<Animator>();

            _noRotationFrameCounter = 0;
        }

		#region Delegate Registry
		//private void OnEnable()
  //      {
  //          RegisterDelegates(true);
  //      }

  //      private void OnDisable()
  //      {
  //          RegisterDelegates(false);
  //      }

  //      private void RegisterDelegates(bool cond)
  //      {
  //          if (cond)
  //          {
  //              // Direct input
  //              InputReader.MovementEvent += Move;
  //              InputReader.LookEvent += Rotate;
  //          }
  //          else
  //          {
  //              // Direct Input
  //              InputReader.MovementEvent -= Move;
  //              InputReader.LookEvent -= Rotate;
  //          }
  //      }
        #endregion

        private void FixedUpdate()
        {
            _movementData = PlayerMovement.Instance.MovementData;

            UpdateBools();
        }


        #region Animation Methods
        //*******************************************************************************************************

        public void CastSpell(eSpellID id, ePotionTarget potionTarget)
        {
            ResetAllTriggers();

            if (potionTarget == ePotionTarget.NULL)
			{
                _animator.SetTrigger(id switch
                {
                    eSpellID.PLANT => "CastPlantSpell",
                    eSpellID.WATER => "CastWaterSpell",
                    eSpellID.HARVEST => "CastHarvestSpell",
                    _ => "CastDefaultSpell"
                });
            }
            else
			{
                _animator.SetTrigger(potionTarget switch
                {
                    ePotionTarget.SELF => "DrinkPotion",
                    ePotionTarget.PLANT => "PourPotion",
                    _ => "CastDefaultSpell"
                });
            }
        }

        private void ResetAllTriggers()
		{
            foreach (var param in _animator.parameters)
			{
                if (param.type == AnimatorControllerParameterType.Trigger)
                    _animator.ResetTrigger(param.nameHash);
			}
		}

        //*******************************************************************************************************
        #endregion

        private void UpdateBools()
		{
            if (_movementData.movement.magnitude > _lockRotationAtSpeed)
                _isWalking = true;
            else
			{
                _isWalking = false;
                switch (_movementData.rotationDir)
				{
                    case MovementDataStruct.ERotationDir.LEFT:
                        _isTurningLeft = true;
                        _isTurningRight = false;
                        break;
                    case MovementDataStruct.ERotationDir.RIGHT:
                        _isTurningLeft = false;
                        _isTurningRight = true;
                        break;
                    case MovementDataStruct.ERotationDir.SMOOTHING:
                        break;
                    case MovementDataStruct.ERotationDir.NULL:
                        if (IncrementFrameCounter())
						{
                            _isTurningLeft = false;
                            _isTurningRight = false;
                        }
                        break;
				}
                if (_movementData.rotationDir != MovementDataStruct.ERotationDir.NULL)
				{
                    ResetFrameCounter();
				}
			}

            _animator.SetBool(_isTurningLeftHash, _isTurningLeft);
            _animator.SetBool(_isTurningRightHash, _isTurningRight);
            _animator.SetBool(_isWalkingHash, _isWalking);

            bool IncrementFrameCounter()
			{
                _noRotationFrameCounter++;
                if (_noRotationFrameCounter > 7)
				{
                    ResetFrameCounter();
                    return true;
				}
                return false;
			}

            void ResetFrameCounter()
			{
                _noRotationFrameCounter = 0;
			}
		}
   
    }

    public struct MovementDataStruct
	{
        public enum ERotationDir { LEFT, RIGHT, NULL, SMOOTHING };
        public ERotationDir rotationDir;
        public Vector3 movement;
	}

}
