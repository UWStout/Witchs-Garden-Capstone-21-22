
using UnityEngine;


namespace SaveLoad
{
    public abstract class SaveLoadableMono : MonoBehaviour, ISaveable, ILoadable
    {

        public virtual void Start()
        {
            RegisterTo();
        }

        public virtual void OnDestroy()
        {
            UnRegisterTo();
        }

        public void RegisterTo()
        {
            RegisteredItems.Register(this);
        }

        public void UnRegisterTo()
        {
            RegisteredItems.Unregister(this);
        }



        public abstract void Save(GameData data);

        public abstract void Load(GameData data);

    }
}
