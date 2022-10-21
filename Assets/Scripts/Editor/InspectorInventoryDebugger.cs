using System;
using System.Collections.Generic;
using UI;
using UnityEditor;
using UnityEngine;
using Items;

public class InspectorInventoryDebugger : EditorWindow
{
	private ModelView _mv;

	private readonly List<SameQualityItemBundle> _allitems = new List<SameQualityItemBundle>();

	private List<SeedItemBundle> _seeds = new List<SeedItemBundle>();
	private List<YieldItemBundle> _yields = new List<YieldItemBundle>();
	private List<PotionItemBundle> _potions = new List<PotionItemBundle>();

	private bool _ifAllItemsIfExpanded;
	private bool _ifSeedItemsIfExpanded;
	private bool _ifYieldsItemsIfExpanded;
	private bool _ifPotionsItemsIfExpanded;

	/************************************************************************************************************************/
	[MenuItem("Tools/Open Inv Debugger")]
	public static void Open()
	{
		var window = EditorWindow.GetWindow<InspectorInventoryDebugger>();
		window.minSize = new Vector2(100, 100);
		window.maxSize = new Vector2(500, 500);
		window.ShowUtility(); //floating over everything - like a popup window
	}

	private void OnEnable()
	{
		if (EditorApplication.isPlaying)
		{
			FindModelView();
			UpdateView();
		}
		else
			EditorApplication.playModeStateChanged += PlayModeChange;
	}

	private void OnDisable()
	{
		EditorApplication.playModeStateChanged -= PlayModeChange;
		_allitems.Clear();
		_seeds.Clear();
		_yields.Clear();
		_potions.Clear();
		if(_mv!=null)
        {
			_mv.RegisterToBundleChanged(false, ItemsChanged);
		}
	}

	private void OnGUI()
	{
		if (!EditorApplication.isPlaying)
		{
			EditorGUILayout.HelpBox(" InventoryDebugger Only works in playmode ", MessageType.Warning);
			return;
		}

		if (GUILayout.Button("Fetch Inventory Data"))
		{
			UpdateView();
		}

		//Each of these steps is a draw call, which clears
		DisplayCurrentItems();
	}


	/************************************************************************************************************************/
	private void FindModelView()
	{
		if (!_mv)
			_mv = GameObject.FindObjectOfType<ModelView>();
	}

	private void PlayModeChange(PlayModeStateChange mode)
	{
		if (mode != PlayModeStateChange.EnteredPlayMode)
			return;
		UpdateView();
		if (!_mv)
			return;
		FindModelView();
		_mv.RegisterToBundleChanged(true, ItemsChanged);
	}

	private void ItemsChanged()
	{
		UpdateView();
		//CANT CALL GUI Items from outside of ONGUI()
		//DisplayCurrentItems();
	}
	private void UpdateView()
	{
		if (_mv == null)
		{
			FindModelView();
			if (_mv == null)
			{
				Debug.Log($"<color=yellow> No MV Found for debugger in scene</color>");
				return;
			}
		}

		_seeds = new List<SeedItemBundle>(_mv.GetSeedItems());
		_yields = new List<YieldItemBundle>(_mv.GetYieldItems());
		_potions = new List<PotionItemBundle>(_mv.GetPotionItems());

		_allitems.Clear();
		foreach (var interfaceBundle in _mv.GetAllItemBundles())
		{
			_allitems.Add(interfaceBundle as SameQualityItemBundle);
		}
		//var totalIndivid = _seeds.Count + _yields.Count + _potions.Count;
		//Debug.Log($"{_seeds.Count}+{_yields.Count}+{_potions.Count}={totalIndivid}  = {_allitems.Count == totalIndivid}");
	}

	private void DisplayCurrentItems()
	{
		ShowItemGrp(ref _ifAllItemsIfExpanded, _allitems, "All Item Bundles");
		ShowItemGrp(ref _ifSeedItemsIfExpanded, _seeds, "Seed Bundles");
		ShowItemGrp(ref _ifYieldsItemsIfExpanded, _yields, "Yield Bundles");
		ShowItemGrp(ref _ifPotionsItemsIfExpanded, _potions, "Potion Bundles");
	}

	private void ShowItemGrp(ref bool flag, IReadOnlyList<SameQualityItemBundle> bundles, string grpName)
	{
		flag = EditorGUILayout.BeginFoldoutHeaderGroup(flag, grpName);

		if (bundles != null && bundles.Count != 0 && flag)
		{
			int index = 0;
			foreach (var itemBundle in bundles)
			{
				if (itemBundle == null)
				{
					Debug.Log($"<color=red>NULL BUNDLE</color> in {grpName}");
					continue;
				}
				string itemName = itemBundle.ItemTemplate.ItemName;
				int numItems = itemBundle.NumItems;
				int quality = itemBundle.StarQuality;
				using (new EditorGUI.DisabledScope(true)) // wont react to input
				{
					using (new EditorGUI.IndentLevelScope(1))
					{
						EditorGUILayout.TextField($"({index++}) Item Bundle:", $"{itemName}");
						using (new EditorGUI.IndentLevelScope(1))
						{
							using (new EditorGUILayout.HorizontalScope())
							{
								EditorGUILayout.IntField("# Items:", numItems);
								EditorGUILayout.IntField("Quality:", quality);
							}
						}
					}
				}
			}
		}

		EditorGUILayout.EndFoldoutHeaderGroup();
	}
}