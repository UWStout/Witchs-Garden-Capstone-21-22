using System.Collections.Generic;

namespace SaveLoad
{
	public static class RegisteredItems
	{
		
		private static readonly List<ISaveable> _registeredSaveables = new List<ISaveable>();
		private static readonly List<ILoadable> _registeredLoadables = new List<ILoadable>();


		/************************************************************************************************************************/

		public static void Register(IRegisterable registerable)
		{
			if (registerable is ISaveable saveable)
			{

				if (!_registeredSaveables.Contains(saveable))
					_registeredSaveables.Add(saveable);
			}
			
			if (registerable is ILoadable loadable)
			{

				if (!_registeredLoadables.Contains(loadable))
					_registeredLoadables.Add(loadable);
			}
		}

		public static void Unregister(IRegisterable registerable)
		{
			if (registerable is ISaveable saveable)
			{

				if (_registeredSaveables.Contains(saveable))
					_registeredSaveables.Remove(saveable);
			}
			
			if (registerable is ILoadable loadable)
			{

				if (_registeredLoadables.Contains(loadable))
					_registeredLoadables.Remove(loadable);
			}
		}
		

		
		/************************************************************************************************************************/

		public static void AddToSaveData(GameData data)
		{
			foreach (var saveable in _registeredSaveables)
			{
				saveable.Save(data);
			}
		}

		public static void LoadFromData(GameData data)
		{
			foreach (var loadable in _registeredLoadables)
			{
				loadable.Load(data);
			}
		}
		
			
		/************************************************************************************************************************/

		
	}
}