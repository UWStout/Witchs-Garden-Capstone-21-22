/*
* AUTHOR : Steve Datz
* DESC :
*/

using System.Collections.Generic;
using Research;
using UnityEngine;

namespace Diagrams
{
	[CreateAssetMenu(fileName = "All_diagrams", menuName = "Data/Diagrams/All Diags", order = 0)]
	public class MasterDiagramLists : ScriptableObject
	{
		[field: SerializeField]
		public List<DiagramTemplate> PotionDiags = new List<DiagramTemplate>();
		
		[field: SerializeField]
		public List<DiagramTemplate> HybridDiags = new List<DiagramTemplate>();
	}
}