using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Garden
{
    [RequireComponent(typeof(MeshFilter))]
    [RequireComponent(typeof(MeshRenderer))]
    public class PatchRenderer : MonoBehaviour
    {
        private MeshFilter _meshFilter;
        private MeshRenderer _meshRenderer;

        private GameObject _hybridHighlight;

        private PatchData _patchData;

        private ePatchState _currState;

        private static readonly int _shaderOutlineThicknessID = Shader.PropertyToID("_OutlineThickness");
        private const float SHADER_OUTLINE_THICKNESS = 0.025f;
        /************************************************************************************************************************/

        public void Init(PatchData data)
        {
            _meshFilter = GetComponent<MeshFilter>();
            _meshRenderer = GetComponent<MeshRenderer>();
            _patchData = data;
            _meshFilter.mesh = _patchData.DirtMesh;
            
            _hybridHighlight = Instantiate(_patchData.HybridHighlight, transform);
            _hybridHighlight.transform.localPosition = Vector3.zero;
            _hybridHighlight.SetActive(false);
        }

        public void ChangeState(ePatchState state)
        {
            _currState = state;
            _meshRenderer.material = _patchData.GetMaterial(_currState);
        }

        public void SetShaderHighlighted(bool cond)
        {
            //NPE on destroy during scene cleanup, something here is destroyed
            if (!_meshRenderer)
                return;

            _meshRenderer.material.shader = cond ? _patchData.HighlightedShader :_patchData.DefaultShader;
 
            if(cond)
            {
                //Set the dirtpatch HighlightShader Thinkness to be a bit bigger thn default 
                _meshRenderer.material.SetFloat(_shaderOutlineThicknessID, SHADER_OUTLINE_THICKNESS);
            }
        }

        public void ToggleHybridHighlight(bool cond)
        {
            _hybridHighlight.SetActive(cond);
        }
    }
}

