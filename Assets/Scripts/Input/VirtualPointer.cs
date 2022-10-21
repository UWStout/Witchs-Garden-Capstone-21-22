using UnityEngine;

namespace CustomInput
{
	public static class VirtualPointer
	{
		private static Vector3 _pointerLocation;

		// How long the virtual "pointer" remains offset from Vector3.zero
		// Higher number means previous mouse deltas have a higher effect
		private  static readonly float _pointerLatency = 0.002f;
		/************************************************************************************************************************/		
		public static Vector3 PointerRotation(Vector3 mouseAxis, Vector3 pointerDirection, float rotationSpeed = 8f)
		{
			_pointerLocation += mouseAxis;

			// Default
			if (_pointerLocation == Vector3.zero)
			{
				_pointerLocation = Vector3.Lerp(_pointerLocation, Vector3.zero, _pointerLatency);
				return pointerDirection;
			}

			Vector3 targetDirection = new Vector3(_pointerLocation.x, 0, _pointerLocation.y).normalized;

			_pointerLocation = Vector3.Lerp(_pointerLocation, Vector3.zero, _pointerLatency);
			return Vector3.RotateTowards(pointerDirection, targetDirection, rotationSpeed, 0f);
		}

		public static void ResetPointerLocation()
		{
			_pointerLocation = Vector3.zero;
		}
	}
}