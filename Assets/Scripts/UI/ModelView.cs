using System.Collections.Generic;
using UnityEngine;
using Items;
using Player;
using System;
using Helpers;
using Spells;

namespace UI
{

	public interface IBundleContainer
	{
		IReadOnlyList<IItemBundle> GetAllItemBundles();
		IReadOnlyList<IItemBundle> GetItemBundlesOfType(eItemType itemType);
		public IReadOnlyList<SeedItemBundle> GetSeedItems();
		IReadOnlyList<YieldItemBundle> GetYieldItems();
		IReadOnlyList<PotionItemBundle> GetPotionItems();

		void RegisterToBundleChanged(bool isRegister, Action callback);
		void RegisterToItemAdded(bool isRegister, Action<IItem> callback);
	}
	
	public class ModelView : MonoBehaviour, IBundleContainer
	{
		public PlayerController PlayerController => _playerCharacter;
		[SerializeField] private PlayerController _playerCharacter;

		//Have to be of base type, otherwise cant do a generic Internal ReturnItems of Type base, need new list
		private readonly List<SameQualityItemBundle> _seedBundles = new List<SameQualityItemBundle>();
		private readonly List<SameQualityItemBundle> _yieldBundles = new List<SameQualityItemBundle>();
		private readonly List<SameQualityItemBundle> _potionBundles = new List<SameQualityItemBundle>();

		private event Action OnBundleChanged;

		/************************************************************************************************************************/

		public void Start()
        {
			RegisterDataBindings();
        }

        private void RegisterDataBindings()
        {
			var inventory = _playerCharacter.PlayerInventory;

			inventory.OnItemAdded += OnItemAdded;
			inventory.OnItemRemoved += OnItemRemoved;
			//Debug.Log($"Registered Databindings in ModelView");
		}

        /************************************************************************************************************************/
        public void RegisterToBundleChanged(bool isRegister, Action callback)
        {
	        if(isRegister)
		        OnBundleChanged += callback;
	        else
		        OnBundleChanged -= callback;
        }
		public void RegisterToItemAdded(bool isRegister, Action<IItem> callback)
		{
			var inventory = _playerCharacter.PlayerInventory;
			if (isRegister)
				inventory.OnItemAdded += callback;
			else
				inventory.OnItemAdded -= callback;
		}
		public IReadOnlyList<IItemBundle> GetAllItemBundles()
        {
	        List<IItemBundle> converted = new List<IItemBundle>();
	        converted.AddRange(_seedBundles);
	        converted.AddRange(_yieldBundles);
	        converted.AddRange(_potionBundles);
	        return converted;
        }
		public IReadOnlyList<IItemBundle> GetItemBundlesOfType(eItemType itemType)
        {
	        return GetItemsOfTypeInternal(itemType); 
		}
		public IReadOnlyList<SeedItemBundle> GetSeedItems()
		{
			return GetBundlesOfTypeCasted(eItemType.SEED, SeedCaster);
		}
		public IReadOnlyList<YieldItemBundle> GetYieldItems()
		{
			return GetBundlesOfTypeCasted(eItemType.YIELD, YieldCaster);
		}
		public IReadOnlyList<PotionItemBundle> GetPotionItems()
		{
			return GetBundlesOfTypeCasted(eItemType.POTION, PotionCaster);
		}
		
		public static RuntimeItem ConvertTemplateToRuntime(IItem template)
        {
			if(template == null)
            {
				Debug.Log($"..<color=yellow>template is null,</color> will return Null");
				return null;
			}
			if(template is RuntimeItem)
            {
				Debug.Log($"..<color=yellow>Asked to convert an item thats already runtime,</color> will return self");
				return template as RuntimeItem;
            }

			Debug.Log($"<color=red> could not convert template</color>");
			return ItemManager.CreateRuntimeItem(template, 50);
        }
		public static SameQualityItemBundle ConvertIItemToBundle(IItem item)
        {
			if (item is RuntimeItem  == false)
			{
				item = ConvertTemplateToRuntime(item);
			}

			//bundle handles null items, safe to use "as" over (Runtime) cast
			return  new SameQualityItemBundle(item as RuntimeItem);
		}

		/************************************************************************************************************************/

		/// <summary>
		/// cached member bundles have to be of List<baseType> otherwise we have to newup lists here, which is undesired.
		/// On the contrary.. we could new them up, add/remove to them, then set the cached ref to the new list...which is also gross
		/// </summary>
		/// <param name="itemType"></param>
		/// <returns></returns>
		private List<SameQualityItemBundle> GetItemsOfTypeInternal(eItemType itemType)
		{
			return itemType switch
			{
				eItemType.SEED => _seedBundles,
				eItemType.YIELD => _yieldBundles,
				eItemType.POTION => _potionBundles,
				_=> new List<SameQualityItemBundle>()
			};
		}
		/// <summary>
		/// Expectes a runtime item, if a template, will be ignored
		/// </summary>
		/// <param name="item">Runtime [not Template]</param>
		private void OnItemAdded(IItem item)
		{
			if(item is ScriptableObject)
            {
				//Will make a default avg quality item as a fail safe
				
				Debug.Log($"<color=yellow>MV failsafe create runtime item from SO:</color>{item}");
				item = ItemManager.CreateRuntimeItem(item, 50);
            }
			//Debug.Log($"<color=white>MV try add item:{item}</color>");
			var bundleGroup = GetItemsOfTypeInternal(item.ItemType);
			foreach (var bundle in bundleGroup)
			{
				var runtimeItem = item as RuntimeItem;
				//If a null cause of being a Template-wont be accepted
				if (!bundle.CanAcceptItem(runtimeItem))
					continue;
				if (bundle.AddItem(runtimeItem))
				{
					//Debug.Log($"<color=green>..MV added item:{item}</color> to existing bundle [ {item.ItemType}:: q={bundle.Quality} ]");
					OnBundleChanged?.Invoke();
					return;
				}
			}

			//We never found a place for this item, so make one
			var newBundle = CreateNewBundleForRuntimeItem(item as RuntimeItem);
			bundleGroup.Add(newBundle);
			//Debug.Log($"<color=green>..MV added item:{item}</color> to new bundle  [ {item.ItemType}:: q={newBundle.Quality} ]");
			OnBundleChanged?.Invoke();
		}

		private void OnItemRemoved(IItem item)
		{
			var items = GetItemsOfTypeInternal(item.ItemType);
			foreach (var bundle in items)
			{
				var runtimeItem = item as RuntimeItem;
				if (!bundle.CanAcceptItem(runtimeItem))
					continue;
				if (bundle.RemoveItem(runtimeItem))
                {
					if (bundle.NumItems == 0)
					{
						items.Remove(bundle);
					}
					OnBundleChanged?.Invoke();
					return;
				}
			}
		}
		
		/// <summary>
		/// Here is where we have to rebuild the data dynamically and handle the casting,
		/// A sideeffect of this- is that the lists returned arent our actual cached member bundles,
		/// but since its read only data- this shud be fine
		/// </summary>
		/// <typeparam name="T"></typeparam>
		/// <returns></returns>
		private IReadOnlyList<T> GetBundlesOfTypeCasted<T>(eItemType bundleItemType, ItemBundleCaster<T> caster)
		{
			List<T> castedBundles = new List<T>();

			foreach (var itemBundle in GetItemBundlesOfType(bundleItemType))
			{
				//castedBundle.Add(new T(itemBundle.ItemTemplate as E));
				castedBundles.Add(caster(itemBundle));
			}
			
			return castedBundles;
		}
		private delegate T ItemBundleCaster<T>(IItemBundle original);

		// private ItemBundleCaster<T> MegaGeneric<T, G>(SameQualityItemBundle type) where T: SameQualityItemBundle
		// {
		// 	return new T(type.ItemTemplate as G);
		// }

		//I feel like theres a way to make this even more generic with <T,G>: - talk to Wyatt
		private static SeedItemBundle SeedCaster(IItemBundle original)
		{
			//return new SeedItemBundle(original);
			return original as SeedItemBundle;
		}
		private static YieldItemBundle YieldCaster(IItemBundle original)
		{
			//return new YieldItemBundle(original);
			return original as YieldItemBundle;
		}
		private static PotionItemBundle PotionCaster(IItemBundle original)
		{
			//return new PotionItemBundle(original);
			return original as PotionItemBundle;
		}
		
		private static SameQualityItemBundle CreateNewBundleForRuntimeItem(RuntimeItem item)
		{
			switch (item.ItemType)
			{
				case eItemType.SEED:
					return new SeedItemBundle(item as SeedItem);
				case eItemType.YIELD:
					return new YieldItemBundle(item as YieldItem);
				case eItemType.POTION:
					return new PotionItemBundle(item as PotionItem);
				default:
					throw new ArgumentOutOfRangeException();
			}
		}

	}
}