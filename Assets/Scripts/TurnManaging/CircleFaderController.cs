using System;
using UnityEngine;

//Guide:
//https://www.youtube.com/watch?v=p60ISYgo8xA


namespace TurnManaging
{
    [RequireComponent(typeof(Camera))] //to use OnRenderImage()
    public class CircleFaderController : MonoBehaviour
    {
        private static readonly int RADIUS_ID = Shader.PropertyToID("_Radius");
        private static readonly int ASPECT_ID = Shader.PropertyToID("_AspectRatio");
        private static readonly int RADIAL_ID = Shader.PropertyToID("_RadialSpeed");
        private static readonly int ALPHA_ID = Shader.PropertyToID("_Alpha");
        private static readonly int FADE_COLOR_ID = Shader.PropertyToID("_FadeColor");
        [SerializeField] private Shader _circleFadeShader;

        [SerializeField] private Vector2 _aspectRatio = new Vector2(16, 9);
        
        private Material _mat;
        /************************************************************************************************************************/

        private void Start()
        {
            _mat = new Material(_circleFadeShader);
            //shaders only take in v4s
            _mat.SetVector(ASPECT_ID,new Vector4(_aspectRatio.x,_aspectRatio.y,0,0));
            //This ensure the scaling is between 0-1.2 ish for the full anim
            float radiusSpeedInterval = Mathf.Max(_aspectRatio.x, _aspectRatio.y);
            _mat.SetFloat(RADIAL_ID, radiusSpeedInterval);
            //Start circle open: (normal)
            SetRadius(1.2f);
        }

        /// <summary>
        /// Must be on a camera, and this will get called before rendering the final img
        /// </summary>
        private void OnRenderImage(RenderTexture source, RenderTexture destination)
        {
            //Give the final image-our mat which has our custom shader:
            Graphics.Blit(source, destination, _mat);
        }

        /************************************************************************************************************************/
        public void SetColor(Color c)
        {
            _mat.SetColor(FADE_COLOR_ID, c);
        }
        /// <summary>
        /// Needs to be between 0 (fullyFaded to black) - 1 (normal)
        /// Theres an issue... where 1.2 is actually fully normal...
        /// so just turn this script off when u dont want it
        /// </summary>
        /// <param name="radius"></param>
        public void SetRadius(float radius)
        {
            _mat.SetFloat(RADIUS_ID, radius);
            _mat.SetFloat(ALPHA_ID, Mathf.Clamp(radius, 0,1));
        }
        
        /************************************************************************************************************************/



        /************************************************************************************************************************/
    }
}
