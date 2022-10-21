/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Runtime.InteropServices;
using Diagrams;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_DiagramDisplayer : MonoBehaviour
	{
		private DiagramHandler _diagramHandler;
		
		/************************************************************************************************************************/

		public void Init(DiagramHandler diagramHandler)
		{
			_diagramHandler = diagramHandler;
			_diagramHandler.OnDiagramUnlocked += Refresh;
			//Debug.Log($"Inited UI Diag displayer");
		}

		private void OnDestroy()
		{
			if(_diagramHandler!=null)
				_diagramHandler.OnDiagramUnlocked -= Refresh;
		}

		private void Refresh(DiagramTemplate newDiag)
		{
			//Debug.Log($"Refresh UI Diag displayer");
			//Todo-Refresh our display
			var currentPotionDiags = _diagramHandler.KnownPotionDiags;
			var currentHybridiags = _diagramHandler.KnownHybridDiags;
			
		}
	}

}