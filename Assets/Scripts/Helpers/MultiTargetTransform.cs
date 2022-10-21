/*
* Author : Wyatt Senalik
*/

using System.Collections.Generic;
using UnityEngine;

namespace Helpers
{
    public class MultiTargetTransform : MonoBehaviour
    {
        public enum eUpdateMode { UPDATE, FIXED_UPDATE, LATE_UPDATE }

        [SerializeField] private List<Transform> _targets = new List<Transform>();
        [SerializeField] private Vector3 _offset = Vector3.zero;
        [SerializeField] [Min(0.0f)] private float _smoothTime = 0.5f;
        [SerializeField] private eUpdateMode _updateMode = eUpdateMode.LATE_UPDATE;

        private Vector3 _smoothVelocity = Vector3.zero;


        private void Update()
        {
            if (_updateMode == eUpdateMode.UPDATE)
            {
                Move();
            }
        }
        private void LateUpdate()
        {
            if (_updateMode == eUpdateMode.LATE_UPDATE)
            {
                Move();
            }
        }
        private void FixedUpdate()
        {
            if (_updateMode == eUpdateMode.FIXED_UPDATE)
            {
                Move();
            }
        }


        public void AddTarget(Transform target)
        {
            _targets.Add(target);
        }
        public bool RemoveTarget(Transform target)
        {
            return _targets.Remove(target);
        }
        public void ClearTargets()
        {
            _targets.Clear();
        }


        private void Move()
        {
            if (_targets.Count == 0) { return; }

            Vector3 centerPoint = GetCenterPoint();
            Vector3 newPosition = centerPoint + _offset;
            transform.position = Vector3.SmoothDamp(transform.position, newPosition, ref _smoothVelocity, _smoothTime);
        }
        private Vector3 GetCenterPoint()
        {
            if (_targets.Count == 0) { return Vector3.zero; }
            if (_targets.Count == 1)
            {
                return _targets[0].position;
            }

            Bounds bounds = new Bounds(_targets[0].position, Vector3.zero);
            foreach (Transform curTarget in _targets)
            {
                bounds.Encapsulate(curTarget.position);
            }

            return bounds.center;
        }
    }
}
