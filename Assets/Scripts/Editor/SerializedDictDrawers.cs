using System.Collections;
using System.Collections.Generic;
using Helpers;
using Items;
using Plants;
using Player;
using UnityEditor;
using UnityEngine;


/// <summary>
/// This class is required to be in an EDITOR folder,
/// and any customs script that wants a custom dictionary drawn,
/// needs to be added to the CystomPropertDrawer tag.
/// Note this is the actual ClassDict <k,v> not the thing wrapping the dict as a serialized field
/// </summary>
[CustomPropertyDrawer(typeof(SeedMap))]
[CustomPropertyDrawer(typeof(YieldMap))]
[CustomPropertyDrawer(typeof(PotionMap))]
[CustomPropertyDrawer(typeof(PlantPotionEffectDict))]
[CustomPropertyDrawer(typeof(PlayerPotionEffectDict))]
 public class SerializedDictDrawer : SerializedDictionaryPropertyDrawer
 {
 		
 }