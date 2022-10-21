using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Targeting
{
    [RequireComponent(typeof(MeshRenderer))]
    public abstract class HighlightableTarget : MonoBehaviour, ITargetable
    {
        public Transform Transform { get; protected set; }
        [SerializeField] protected HighlightShaders _shaders;
        private MeshRenderer _meshRenderer;
        //[Range(1f, 5f)][SerializeField]
        private readonly float _pulsateTime = 5f;
        
        [SerializeField] private Color _outlineColorOn = new Color(0.9144436f, 0.763172f, 0.9245283f, 1);
        [SerializeField] private Color _outlineColorOff = new Color(1f, 1f, 1f, 1);
        private readonly Vector2 _outlineThicknessRange = new Vector2(0.008f, 0.015f);

        private static readonly int _shaderOutlineID = Shader.PropertyToID("_OutlineColor");
        private static readonly int _shaderOutlineThicknessID = Shader.PropertyToID("_OutlineThickness");

        private bool _isHighlighted;
        private Coroutine _currRoutine;
        private bool _isPulsating;
        private Vector2 _pulsateThicknessSettings;

        /************************************************************************************************************************/

        protected virtual void AssignTransform()
        {
            Transform = transform;
        }
        private void Start()
        {
            AssignTransform();
            _meshRenderer = GetComponent<MeshRenderer>();
            // _meshRenderer.material.shader = _shaders.Highlight;
            if (_shaders != null)
            {
                var clonedMat = new Material(_shaders.Highlight)
                {
                    mainTexture = _meshRenderer.material.mainTexture,
                };
                _meshRenderer.material = clonedMat;
            }

            _pulsateThicknessSettings = new Vector2(_outlineThicknessRange.y, _outlineThicknessRange.x);
            SetShaderHighlighted(false);
        }

        private void OnDestroy()
        {
            CancelPulsateRoutine();
        }
        /************************************************************************************************************************/

        void Update()
        {
            if (_isHighlighted || _isPulsating)
                return;

            _currRoutine =  StartCoroutine(Pulsate());
        }
        /************************************************************************************************************************/
        public virtual void OnHoverBegin()
        {
            SetShaderHighlighted(true);
        }

        public virtual void OnHoverEnd()
        {
            SetShaderHighlighted(false);
        }
       

        public abstract void OnInteract();

        /************************************************************************************************************************/

        private void SetShaderHighlighted(bool cond)
        {
            if (_meshRenderer == null)
                return;
            _isHighlighted = cond;
            if(!_isHighlighted)
                CancelPulsateRoutine();
            //_meshRenderer.material.shader = cond ? _shaders.Highlight : _shaders.Default;
            Color outlineColor = _isHighlighted ? _outlineColorOn : _outlineColorOff;
            //Debug.Log($"Set Color: {outlineColor}");
            _meshRenderer.material.SetColor(_shaderOutlineID, outlineColor);
            if (_isHighlighted)
            {
                SetOutlineThickness(_outlineThicknessRange.y);
            }
            
        }

        private void SwapLerpColor(Vector2 oldColor)
        {
            _pulsateThicknessSettings = new Vector2(oldColor.y, oldColor.x);
        }
        
        private IEnumerator Pulsate()
        {
            _isPulsating = true;
            SwapLerpColor(_pulsateThicknessSettings);

            float currTime = 0;

            while (currTime < _pulsateTime)
            {
                currTime += Time.deltaTime;
                yield return null;
                float thicknessLerp = Mathf.Lerp(_pulsateThicknessSettings.x, _pulsateThicknessSettings.y, currTime / _pulsateTime);
                SetOutlineThickness(thicknessLerp);
            }

            _isPulsating = false;
        }

        private void SetOutlineThickness(float val)
        {
            _meshRenderer.material.SetFloat(_shaderOutlineThicknessID, val);
        }

        private void CancelPulsateRoutine()
        {
            if(_currRoutine!=null)
                StopCoroutine(_currRoutine);
            _isPulsating = false;
        }
    }
}
