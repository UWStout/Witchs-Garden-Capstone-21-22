#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System;
using System.Collections.Generic;
using UnityEngine;

namespace Helpers
{
	public class ManagedInfiniteResourceList<T, E> where T : MonoBehaviour
	{
		private Transform _transform;
		private static T _itemPREFAB;
		private readonly List<T> _infiniteItemList = new List<T>();
		private Action<T> _initializationsAction;
		private Action<T, E> _unboxingAction;

		private static bool _initialized = false;

		/************************************************************************************************************************/
		public void Init(Transform t, T itemPrefab)
		{
			_transform = t;
			_itemPREFAB = itemPrefab;
			_initialized = true;
		}

		public void Init(Transform t, T itemPrefab, Action<T, E> unboxingAction)
		{
			_unboxingAction = unboxingAction;
			Init(t, itemPrefab);
		}

		public void Init(Transform t, T itemPrefab, Action<T> initializationAction)
		{
			_initializationsAction = initializationAction;
			Init(t, itemPrefab);
		}

		public void Init(Transform t, T itemPrefab, Action<T> initializationAction, Action<T, E> unboxingAction)
		{
			_initializationsAction = initializationAction;
			Init(t, itemPrefab, unboxingAction);
		}
		/************************************************************************************************************************/

		//Should find 1 level lower of generic list, its not Enumerable.. or is it? that way we can pass in List<> and IReadOnlyList<> or maybe even Array
		// might have to use the enumeration parser!
		public void DisplayList(List<E> listOfItemsToDisplay)
		{
			///Lazy way, just turn them all off 
			TurnOffUnused();
			for (int i = 0; i < listOfItemsToDisplay.Count; ++i)
			{
				if (_infiniteItemList.Count <= i)
				{
					CreateItem();
				}

				T item = _infiniteItemList[i];
				/// Action to cast If there is one
				_unboxingAction?.Invoke(item, listOfItemsToDisplay[i]);
				///Turn back on the ones we need
				item.gameObject.SetActive(true);
			}
		}

		public void PerformActionOnAllItems(Action<T> action)
		{
			foreach (var item in _infiniteItemList)
			{
				action?.Invoke(item);
			}
		}

		public IReadOnlyList<T> GetItems() => _infiniteItemList;

		public T ManuallyCreateItem()
		{
			if (!_initialized)
			{
				Debug.Log($"<color=red> Failed To Create</color>");
				return null;
			}

			CreateItem();
			return  _infiniteItemList[_infiniteItemList.Count-1];
		}
		/************************************************************************************************************************/

		private void TurnOffUnused()
		{
			foreach (var item in _infiniteItemList)
			{
				item.gameObject.SetActive(false);
			}
		}

		private void CreateItem()
		{
			if (!_initialized)
			{
				Debug.Log($"<color=red> Failed To Create</color>");
				return;
			}

			T newItem = GameObject.Instantiate(_itemPREFAB, _transform).GetComponent<T>();
			/// perform our initialization action if there is one
			_initializationsAction?.Invoke(newItem);
			_infiniteItemList.Add(newItem);
			
		}
	}
}