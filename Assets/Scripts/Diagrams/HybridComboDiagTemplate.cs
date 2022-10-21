/*
* AUTHOR : Steve Datz
* DESC :
*/
using Garden;
using UnityEngine;

namespace Diagrams
{
	[CreateAssetMenu(fileName = "_hybridDiag", menuName = "Data/Diagrams/Hybrid Combo Diagram")]
	public class HybridComboDiagTemplate : DiagramTemplate
	{
		public HybridFormation HybridFormation => _hybridFormation;
		[SerializeField] private HybridFormation _hybridFormation;
	}
}