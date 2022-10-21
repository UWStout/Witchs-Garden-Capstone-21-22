using System.Collections.Generic;
using UnityEngine;

namespace Helpers
{
    /// <summary>
    /// Handles creating a dotted line to preview a path.
    /// </summary>
    public class DottedLine
    {
        // Constants
        // If the dots are closer than this, they are culled from the line
        private const float END_POS_TOO_CLOSE_SQR_DIST = 2.0f;

        // Active dots that are currently in use
        private Stack<DotVisual> _activeVisuals = new Stack<DotVisual>();
        // Dots that are not currently being used and are hidden
        private Stack<DotVisual> _inactiveVisuals = new Stack<DotVisual>();

        // Visual for the end of the line
        private GameObject _lineEndVisual = null;
        // Prefab for spawning new dots
        private GameObject _dotPrefab = null;
        // Parent of all the dots
        private Transform _dotParent = null;

        // If the dotted line is active or inactive (renderers on or off)
        private bool _isActive = false;


        /// <summary>
        /// Constructs and initializes the dotted line.
        /// Spawns a new gameobject to serve as the parent of the dots.
        /// </summary>
        /// <param name="endObj">The visual component to display at the end of the line.</param>
        /// <param name="dotPrefab">Prefab to spawn the dots based on.</param>
        public DottedLine(GameObject endObj, GameObject dotPrefab)
        {
            _lineEndVisual = endObj;
            _dotPrefab = dotPrefab;
            _dotParent = new GameObject("Dot Parent").transform;
        }
        /// <summary>
        /// Changes the line to display dots along the given points with the specified spacing.
        /// </summary>
        /// <param name="points">Path to display the dots along.</param>
        /// <param name="spacing">Distance to space the dots from each other.</param>
        public void CreateLine(Vector3[] points, float spacing)
        {
            // Confirm that there are points
            if (points.Length < 1)
            {
                return;
            }

            // Show all the dots if they have turned off
            SetDotsActive(true);
            // Deactivate all the previous dots so they can be reused
            DeactivateAllDots();
            // Create a beginning dot at the start
            ActivateDot(points[0]);
            // Create the majority of the dots from the path
            ActivateDotsFromPath(points, spacing);
            // Potentially remove some of the ending points if they are too close to the final point
            RemoveLastDotsIfCloseToEnd(points[points.Length - 1]);

            // Move the ending visual to the end
            _lineEndVisual.SetActive(true);
            _lineEndVisual.transform.position = points[points.Length - 1];
        }
        /// <summary>
        /// Turn off the renderers for the line.
        /// </summary>
        public void HideLine()
        {
            _lineEndVisual.SetActive(false);
            DeactivateAllDots();
            // Turn off the renderers for all the dots to save performance later
            SetDotsActive(false);
        }


        /// <summary>
        /// Helper function for CreateLine. Activates dots along the given path.
        /// </summary>
        /// <param name="path">Path to display the dots along.</param>
        /// <param name="spacing">Distance to space the dots from each other.</param>
        private void ActivateDotsFromPath(Vector3[] path, float spacing)
        {
            // Keep track of how much distance we have travelled from the last dot
            float curDist = 0.0f;
            for (int i = 1; i < path.Length; ++i)
            {
                // Get the current and last point
                Vector3 lastPoint = path[i - 1];
                Vector3 curPoint = path[i];
                // Calculate some variables from the difference between the two points
                Vector3 difference = curPoint - lastPoint;
                float distance = difference.magnitude;
                Vector3 direction = difference.normalized;
                // Find out the distance needed to increase the curDist to be equal to spacing
                float distToNextDot = spacing - curDist;
                // Increment the current distance
                curDist += distance;
                // If the current distance is larger than the spacing, we need to keep placing dots
                // until that distance is shorter than the desired spacing
                while (curDist >= spacing)
                {
                    // Place the next dot the distance to the next dot away from the last point
                    Vector3 newDotPos = lastPoint + distToNextDot * direction;
                    ActivateDot(newDotPos);
                    curDist -= spacing;
                    // Update the last point to be where the last dot was
                    // so that the next dot isn't place ontop of the last dot
                    lastPoint = newDotPos;
                    // Change the distance to the next dot to be spacing so that
                    // the next dot is placed an accurate amount away
                    distToNextDot = spacing;
                }
            }
        }
        /// <summary>
        /// Hides dots if they are too close to the end point.
        /// </summary>
        /// <param name="endPoint">Last point in the path.</param>
        private void RemoveLastDotsIfCloseToEnd(Vector3 endPoint)
        {
            Vector3 difference = Vector3.zero;
            float sqrDist = difference.sqrMagnitude;
            // Remove points until we reach the end of the points or until
            // we find a point that is far enough away from the end
            while (_activeVisuals.Count > 0 && sqrDist < END_POS_TOO_CLOSE_SQR_DIST)
            {
                DotVisual lastDot = _activeVisuals.Peek();
                difference = endPoint - lastDot.GetPosition();
                sqrDist = difference.sqrMagnitude;

                if (sqrDist < END_POS_TOO_CLOSE_SQR_DIST)
                {
                    DeactivateLastDot();
                }
            }
        }
        /// <summary>
        /// Activates a dot and places it at the given position.
        /// If there are no more inactive dots to activate, it instantiates a new dot.
        /// </summary>
        /// <param name="pos">Position to place the next dot at.</param>
        private void ActivateDot(Vector3 pos)
        {
            if (_inactiveVisuals.Count < 1)
            {
                _inactiveVisuals.Push(CreateNewDot());
            }

            DotVisual dotToActivate = _inactiveVisuals.Pop();
            dotToActivate.ActivateVisual(pos);
            _activeVisuals.Push(dotToActivate);
        }
        /// <summary>
        /// Deactivates all dots.
        /// </summary>
        private void DeactivateAllDots()
        {
            while (_activeVisuals.Count > 0)
            {
                DeactivateLastDot();
            }
        }
        /// <summary>
        /// Deactivates the last dot in the active visuals and adds it to the inactive visuals.
        /// </summary>
        private void DeactivateLastDot()
        {
            DotVisual dotToDeactivate = _activeVisuals.Pop();
            dotToDeactivate.DeactivateVisual();
            _inactiveVisuals.Push(dotToDeactivate);
        }
        /// <summary>
        /// Instantiates a new dot and returns it.
        /// </summary>
        /// <returns>Instantiated dot.</returns>
        private DotVisual CreateNewDot()
        {
            GameObject dotObj = Object.Instantiate(_dotPrefab, _dotParent);
            return new DotVisual(dotObj);
        }
        /// <summary>
        /// Toggles if the visuals of each dot are active or inactive.
        /// </summary>
        /// <param name="value">True - enables the visuals. False - disables the visuals.</param>
        private void SetDotsActive(bool value)
        {
            if (_isActive != value)
            {
                foreach (DotVisual dot in _inactiveVisuals)
                {
                    dot.SetActive(value);
                }

                _isActive = value;
            }
        }


        /// <summary>
        /// Represents a dot that is being displayed in the dotted line.
        /// </summary>
        class DotVisual
        {
            // Constants
            // Position to place the dot when it is deactivated.
            private static readonly Vector3 DEACTIVATED_POSITION = new Vector3(0, -100, 0);


            // Reference to the game object of the dot
            private GameObject _gameObject = null;


            /// <summary>
            /// Constructs a dot with the given object as the dot.
            /// </summary>
            /// <param name="obj">GameObject that is the visual dot in the world.</param>
            public DotVisual(GameObject obj)
            {
                _gameObject = obj;
            }
            /// <summary>
            /// Constructs a dot with the given object at the given position.
            /// </summary>
            /// <param name="obj">GameObject that is the visual dot in the world.</param>
            /// <param name="pos">Position to place the dot at.</param>
            public DotVisual(GameObject obj, Vector3 pos) : this(obj)
            {
                ActivateVisual(pos);
            }


            /// <summary>
            /// Activates the dot by moving it to the given position.
            /// </summary>
            /// <param name="pos">Position to place the dot at.</param>
            public void ActivateVisual(Vector3 pos)
            {
                _gameObject.transform.position = pos;
            }
            /// <summary>
            /// Deactivates the dot by moving it to an unseeable position.
            /// </summary>
            public void DeactivateVisual()
            {
                _gameObject.transform.position = DEACTIVATED_POSITION;
            }
            /// <summary>
            /// Gets the position of the dot in the world.
            /// </summary>
            /// <returns>World Position of the dot.</returns>
            public Vector3 GetPosition()
            {
                return _gameObject.transform.position;
            }
            /// <summary>
            /// Sets the gameobject visuals of the dot active/inactive.
            /// </summary>
            /// <param name="value">True - activate. False - deactivate.</param>
            public void SetActive(bool value)
            {
                _gameObject.SetActive(value);
            }
        }
    }
}