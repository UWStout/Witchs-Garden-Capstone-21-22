using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using CustomInput;
using Targeting;
using Helpers;
namespace Player
{
    // Note for PlayerMovement class: controls are defined for
    // positive z facing away from camera and positive x is 
    // toward the right
    [RequireComponent(typeof(CharacterController))]
    public class PlayerMovement : InstancedMonoBehaviour<PlayerMovement>
    {
        public float MovementSpeed => _movementSpeed;
        [SerializeField] private float _movementSpeed = 1.9f;
        public float StartingMovementSpeed => _startingMovementSpeed;
        private float _startingMovementSpeed;

        [SerializeField] private float _rotationSpeed = 10;  // radians per second

        [SerializeField] private float _lockRotationAtSpeed = 0.5f;

        private bool _preventTransformUpdates = false;

        private const float MOVE_SPEED_MAX = 5;
        private TargetDetector _targetDetector;
        private CharacterController _characterController;
        private Vector3 _movementDir;
        private Vector3 _cursorAxis;

        private bool _isReadingInput = true;
        private bool _isInit = false;

        public MovementDataStruct MovementData => _movementData;
        private MovementDataStruct _movementData; // used for passing small amount of data to animator

        /************************************************************************************************************************/

        protected override void OnInitializeFromAwake()
        {
            _targetDetector = gameObject.GetComponentInChildren<TargetDetector>();
            _characterController = GetComponent<CharacterController>();

            _startingMovementSpeed = _movementSpeed;
        }

		#region Input Registry
		private void OnEnable()
        {
            RegisterForInput(true);
        }

        private void OnDisable()
        {
            RegisterForInput(false);
        }

        private void RegisterForInput(bool cond)
        {
            //Already in this state
            if (_isInit == cond)
                return;

            if (cond)
            {

                InputReader.MovementEvent += SetMovementDirection;
                InputReader.LookEvent += SetLookDirection;
                InputReader.PrimaryInteractEvent += PrimaryInteract;
                InputReader.SecondaryInteractEvent += SecondaryInteract;
            }
            else
            {
                InputReader.MovementEvent -= SetMovementDirection;
                InputReader.LookEvent -= SetLookDirection;
                InputReader.PrimaryInteractEvent -= PrimaryInteract;
                InputReader.SecondaryInteractEvent -= SecondaryInteract;
            }
            _isInit = cond;
        }
		#endregion

		private void Update()
        {
            if (!_isReadingInput)
                return;

            if (!_preventTransformUpdates)
			{
                UpdateMovement();
			}
        }
        /************************************************************************************************************************/
        //public:
        public void IncreaseMoveSpeed(float incrementVal)
        {
            Debug.Log($"Incrase player mspeed {_movementSpeed}");
            _movementSpeed += incrementVal;

            //Prevent out of range:
            _movementSpeed = Mathf.Clamp(_movementSpeed, 1, MOVE_SPEED_MAX);
            Debug.Log($"..Result: {_movementSpeed}");
        }
        
        /// <summary>
        /// Toggles transform's ability to be updated (movement/rotation)
        /// </summary>
        /// <returns>_preventTransformUpdates</returns>
        public bool ToggleTransformUpdates()
		{
            _preventTransformUpdates = !_preventTransformUpdates;
            return _preventTransformUpdates;
		}

        /************************************************************************************************************************/

        
        private void UpdateMovement()
		{
			Vector3 movementDirection = _movementDir * _movementSpeed;
            Quaternion rotationDirection = PlayerRotation(movementDirection);

            // transform.forward and transform.rotation still saved, set data here
            UpdateAnimData(movementDirection, rotationDirection);

			_characterController.SimpleMove(movementDirection);
            transform.rotation = rotationDirection;

            void UpdateAnimData(Vector3 movementDir, Quaternion rotationDir) {
                _movementData.movement = movementDir;

                MovementDataStruct.ERotationDir eRotation = MovementDataStruct.ERotationDir.NULL;
                if (movementDir.magnitude <= _lockRotationAtSpeed)
				{
                    // left
                    if (transform.rotation.eulerAngles.y > rotationDir.eulerAngles.y + .2)
                    {
                        eRotation = MovementDataStruct.ERotationDir.LEFT;
                    }
                    // right
                    else if (transform.rotation.eulerAngles.y < rotationDir.eulerAngles.y - .2)
                    {
                        eRotation = MovementDataStruct.ERotationDir.RIGHT;
                    }
                }
                _movementData.rotationDir = eRotation;
			}
        }

        // Calculates which way the player character should be facing based on its movement
        private Quaternion PlayerRotation(Vector3 movement)
		{
            Vector3 lookRotation;
            float rotationSpeedPerFrame = _rotationSpeed * Time.deltaTime;

            if (movement.magnitude > _lockRotationAtSpeed)
			{
                // look rotation is movement direction
                VirtualPointer.ResetPointerLocation();
                lookRotation = Vector3.RotateTowards(transform.forward, movement.normalized, rotationSpeedPerFrame, 0);
			}
            else
			{
                // look rotation is input based
                lookRotation = VirtualPointer.PointerRotation(_cursorAxis, transform.forward, rotationSpeedPerFrame);
            }

            return Quaternion.LookRotation(lookRotation);
		}

        private void SetMovementDirection(Vector2 inputAxis)
        {
            //_movementDir = RotateWithCam(inputAxis.x, inputAxis.y);
            _movementDir = new Vector3(inputAxis.x, 0, inputAxis.y);
        }

        private void SetLookDirection(Vector2 inputAxis)
        {
            if (!PlayerActionHandler.Instance.PreventRotation)
                _cursorAxis = new Vector3(inputAxis.x, inputAxis.y, 0);
        }

        private void PlayingActionAnimation(bool cond)
		{
            _preventTransformUpdates = cond;
		}

        private void PrimaryInteract()
        {
            ITargetable target = _targetDetector.GetClosestTarget();
            target?.OnInteract();
        }
        
        private void SecondaryInteract()
        {
            // TODO implement secondary interact (right-click)
        }

    }

}