using System;
using UnityEngine;

namespace Helpers
{
	public static class ColorDebugger
	{
		public enum eScriptType { UI, PAWN, TURN, EVENT, CAMPAIGN}
		private static string[] _colors;
		private const string _cUI = "blue";
		private const string _cPAWN = "green";
		private const string _cTURN = "yellow";
		private const string _cEVENT = "white";
		private const string _cCampaign = "orange";

		public static void Print(eScriptType type, Type T , string msg)
        {
			Debug.Log($"<color={GetColor(type)}>[{T.Name}]</color> {msg}");
        }

		private static string GetColor(eScriptType type)
        {
			if (_colors == null)
			{
				InitColors();
			}
			return _colors[(int)type];
        }
		private static void InitColors()
        {
			_colors = new string[]
			{
				_cUI,
				_cPAWN,
				_cTURN,
				_cEVENT,
				_cCampaign
			};

		}
	}
}
