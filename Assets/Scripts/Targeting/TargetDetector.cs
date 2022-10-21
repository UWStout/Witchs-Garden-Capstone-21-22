using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Targeting
{
	public class TargetDetector : MonoBehaviour
	{
		[Header("Settings")]
		[Range(0.1f, 5)] //How far away we look for items (has to be far enough away that we dont target items under us)
		[SerializeField] private float _interactDistance = 1.1f;
		[Range(0.1f, 1)] //How large the area is we search
		[SerializeField] private float _interactRadius = 0.35f;
		[Range(0.1f, 1)] //How often we look for a new item
		[SerializeField] private float _searchFrequency = 0.3f;

		[Header("Dev Tools")]
		[SerializeField] private bool _debugMe = false;

		private Transform _t;
		private ITargetable _nearestTarget;
		private Coroutine _searchCoroutine;

		/************************************************************************************************************************/
		private void Awake()
		{
			// https://github.com/JetBrains/resharper-unity/wiki/Avoid-multiple-unnecessary-property-accesses
			//https://forum.unity.com/threads/cache-transform-really-needed.356875/
			//cache transform is somehow more efficient even past unity 5, since we ask for this a lot, just cache it
			_t = transform;
		}

		private void OnEnable()
		{
			_searchCoroutine = StartCoroutine(UpdateNearestTarget());
		}

		private void OnDisable()
		{
			if (_searchCoroutine != null)
				StopCoroutine(_searchCoroutine);
			//If we had something selected-un highlight it
			_nearestTarget?.OnHoverEnd();
			_nearestTarget = null;
			//Debug.Log($"Cleared nearestTarget");
		}

#if UNITY_EDITOR
		private void OnDrawGizmos()
		{
			if (!_debugMe)
				return;
			_t = this.transform; //cache this otherwise NPE in editor
			Gizmos.DrawSphere(GetInteractLocation(), _interactRadius);
		}
#endif
	
		/************************************************************************************************************************/
		public ITargetable GetClosestTarget()
		{
			return _nearestTarget;
		}
		
		public Vector3 GetInteractLocation()
		{
			Vector3 forward = _t.forward * _interactDistance;
			forward.y = 0;
			return _t.position + forward;
			//var pos = _t.position;
			//return new Vector3(pos.x, 0, pos.z); //cant zero out position anymore w underground house
		}
		
		/************************************************************************************************************************/
		private IEnumerator UpdateNearestTarget()
		{
			while (Application.isPlaying)
			{
				ITargetable closerTargetThisFrame = null;
				var colliders = new Collider[15];
				Physics.OverlapSphereNonAlloc(GetInteractLocation(), _interactRadius, colliders);
				foreach (var col in colliders)
				{
					if (col == null || !col.TryGetComponent<ITargetable>(out var targ))
						continue;
					//If nearest is null, set it:
					if (_nearestTarget == null)
					{
						SwitchTarget(targ);
					}
					var myPos = this.transform.position;
					var currClosest = Distance(myPos, _nearestTarget.Transform.position);
					var newDis = Distance(myPos, targ.Transform.position);

					if (newDis <= currClosest)
					{
						closerTargetThisFrame = targ;
					}
			#if UNITY_EDITOR
					if (_debugMe)
					{
						Garden.Patch p = closerTargetThisFrame as Garden.Patch;
						string printName = p == null ? "missing" : p.gameObject.name;
						Debug.Log($"<color=white>{col.gameObject.name}</color> Distance = {newDis} vs  <color=green>{printName}</color> old:{currClosest}");
						Debug.DrawLine(col.transform.position, col.transform.position + Vector3.up, Color.green, 0.5f);
						Debug.DrawLine(myPos, myPos + (Vector3.up * 4), Color.red, 0.5f);
					}
			#endif
				}

				if(_nearestTarget != closerTargetThisFrame)
					SwitchTarget(closerTargetThisFrame);
				
				yield return new WaitForSeconds(_searchFrequency);
			}
		}
		
		private void SwitchTarget(ITargetable newTarg)
		{
			_nearestTarget?.OnHoverEnd();
			_nearestTarget = newTarg;
			_nearestTarget?.OnHoverBegin();
		}
		
		private static float Distance(Vector3 a, Vector3 b)
		{
			return Vector3.Distance(a, b);
		}
	}
}
