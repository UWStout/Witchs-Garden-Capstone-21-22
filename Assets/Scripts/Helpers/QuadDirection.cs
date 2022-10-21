using UnityEngine;

namespace Helpers
{
    public enum eQuadDirection { FORWARD, RIGHT, BACKWARD, LEFT }

    /// <summary>
    /// Class to hold extensions for a eQuadDirection.
    /// </summary>
    public static class QuadDirectionExtensions
    {
        /// <summary>
        /// Gets the current direction as a Vector3 from the given transform.
        /// </summary>
        /// <param name="direction">Current direction.</param>
        /// <param name="transform">Transform to get the direction from.</param>
        public static Vector3 GetDirection(this eQuadDirection direction, Transform transform)
        {
            switch (direction)
            {
                case eQuadDirection.FORWARD:
                    return transform.forward;
                case eQuadDirection.RIGHT:
                    return transform.right;
                case eQuadDirection.BACKWARD:
                    return -(transform.forward);
                case eQuadDirection.LEFT:
                    return -(transform.right);
                default:
                    Debug.LogError($"Unhandled {direction.GetType().Name} of {direction}");
                    return Vector3.zero;
            }
        }
    }
}