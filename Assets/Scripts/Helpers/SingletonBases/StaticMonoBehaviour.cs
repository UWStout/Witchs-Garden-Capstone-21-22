using UnityEngine;

namespace Helpers
{
    public class StaticMonoBehaviour<T> : MonoBehaviour where T : MonoBehaviour
    {
        protected StaticMonoBehaviour() { }

        protected static T _instance;
        public static T Instance => GetInstance();


        protected static T GetInstance()
        {
            if (_instance == null)
            {
                _instance = FindObjectOfType<T>();
                if (_instance == null)
                {
                    GameObject singleton = new GameObject();
                    _instance = singleton.AddComponent<T>();
                    singleton.name = "[StaticMono] " + typeof(T).ToString();
                }
            }
            return _instance;
        }

        protected virtual void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
            }
            else
            {
                _instance = (T)(object)this;
            }
            Initialize();
        }
        /// <summary>
        /// Initialization override
        /// </summary>
        public virtual void Initialize() { }

    }
}
