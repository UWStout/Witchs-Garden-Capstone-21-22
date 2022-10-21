using UnityEngine;

namespace Helpers
{
    public abstract class MonoSingleton<T> : MonoBehaviour where T : Component
    {
        private static T _instance;
        public static T Instance => GetInstance();
        private static bool m_applicationIsQuitting = false;
        private static T GetInstance()
        {
            if (m_applicationIsQuitting) { return null; }

            if (_instance == null)
            {
                _instance = FindObjectOfType<T>();
                if (_instance == null)
                {
                    GameObject obj = new GameObject();
                    obj.name = typeof(T).Name;
                    _instance = obj.AddComponent<T>();
                }
            }
            return _instance;
        }

       // private static bool _debugSingletonsPossiblyUsingAwake = true;
        /************************************************************************************************************************/

        /* IMPORTANT!!! To use Awake in a derived class you should override OnInitializeFromAwake */
        protected virtual void Awake()
        {
            if (_instance == null)
            {
                _instance = this as T;
                SetDontDestroyOnLoad(); // causing problems with some of my objects, unhinging children from parents - Chris
            }
            else if (_instance != this as T)
            {
                Destroy(gameObject);
                return;
            }
            else
            {
                SetDontDestroyOnLoad();
            }

            if (transform.parent != null)
            {
                Debug.LogWarningFormat(" [Talk To Frank]: Singleton of type {0} cannot be set DontDestroyOnLoad as it is a child of another object", _instance.GetType().ToString());
            }
            OnInitializeFromAwake();
        }
        /************************************************************************************************************************/
        /// <summary>
        /// IMPORTANT!!! Use this instead of base.Awake()
        /// Will be called if this Singleton is the accepted one
        /// </summary>
        protected virtual void OnInitializeFromAwake()
        {
            
        }
        
        private void SetDontDestroyOnLoad()
        {
            Instance.transform.SetParent(null, true);
            DontDestroyOnLoad(gameObject);
        }

        private void OnApplicationQuit()
        {
            m_applicationIsQuitting = true;
        }


    }
}
