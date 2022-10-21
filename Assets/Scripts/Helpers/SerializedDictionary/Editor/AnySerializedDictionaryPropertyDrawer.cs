using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Helpers
{
	//Make other classes extend this then add 	[CustomPropertyDrawer(typeof(DICT - that gets serialized, not the thing wrapping the dict))]
	public class AnySerializedDictionaryPropertyDrawer : SerializedDictionaryPropertyDrawer
	{
	}
}