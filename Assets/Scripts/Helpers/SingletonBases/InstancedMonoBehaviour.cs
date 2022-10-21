using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Helpers
{
    public class InstancedMonoBehaviour<T> : MonoBehaviour where T : MonoBehaviour
    {
        protected InstancedMonoBehaviour() { }

        protected static T _instance;
        public static T Instance => GetInstance();

        private static bool _applicationIsQuitting = false;

        private static T GetInstance()
        {
            if (_applicationIsQuitting) { return null; }

            if (_instance == null)
            {
                _instance = FindObjectOfType<T>();
                if (_instance == null)
                {
                    ///Mybe i dont want this -(could be bad with being called with OnDestroy creating a new object)
                    //GameObject obj = new GameObject();
                    //obj.name = typeof(T).Name;
                    //_instance = obj.AddComponent<T>();
                }
            }
            return _instance;
        }
        protected virtual void Awake()
        {

            if (_instance == null)
            {
                _instance = (T)(object)this;
                OnInitializeFromAwake();
            }
            else if (_instance != this)
                Destroy(this);
        }

        protected virtual void OnInitializeFromAwake()
        {

        }

        private void OnApplicationQuit()
        {
            _applicationIsQuitting = true;
        }
    }

}