using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Garden
{
	[CreateAssetMenu(fileName = "PatchData", menuName = "Data/Garden/Patch Data")]
	public class PatchData : ScriptableObject
	{
		// private fields
		[SerializeField] private Mesh _dirtMesh;

		[SerializeField] private Material _unwatered;
		[SerializeField] private Material _watered;

		[SerializeField] private Shader _default;
		[SerializeField] private Shader _highlight;

		[SerializeField] private GameObject _hybridHighlight;

		[SerializeField] private Vector3 _colliderSize;

		// public accessors
		public Mesh DirtMesh => _dirtMesh;
		public Shader DefaultShader => _default;
		public Shader HighlightedShader => _highlight;
		public GameObject HybridHighlight => _hybridHighlight;
		public Vector3 ColliderSize => _colliderSize;

		public Material GetMaterial(ePatchState state)
        {
			return state switch
			{
				ePatchState.PLANTED => _unwatered,
				ePatchState.WATERED => _watered,
				_ => _unwatered //If we want a slightly different tex for not-planted add here
			};
        }
	}

}