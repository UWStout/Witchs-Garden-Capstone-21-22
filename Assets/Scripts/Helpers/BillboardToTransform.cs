using System;
using UnityEngine;

namespace Helpers
{
    public class BillboardToTransform : MonoBehaviour
    {
        // Reference to the transform that this will be pointed at
        private Transform _facingTrans;

        bool _enabled = false;


        private void Start()
        {
            Initialize(Camera.main.transform);
        }
        

        private void Update()
        {
            FaceCamera();
        }


        /// <summary>Intitialize the billboard script.</summary>
        /// <param name="transToFace">Transform that this billboard will orient itself with.</param>
        public void Initialize(Transform transToFace)
        {
            _facingTrans = transToFace;
            _enabled = true;
        }

        /// <summary>Points this gameobject to be facing the camera and calls the update sprite function.</summary>
        private void FaceCamera()
        {
            if (_enabled)
            {
                Vector3 camEuler = _facingTrans.rotation.eulerAngles;
                transform.rotation = Quaternion.Euler(camEuler.x, camEuler.y, camEuler.z);
            }
        }

        //Ethans Way:
        ///just incase
        // private void Update()
        // {
        //   //item sprite always face the camera
        //    _itemSpriteRenderer.transform.forward = Camera.main.transform.forward;
        //  }
        }

}