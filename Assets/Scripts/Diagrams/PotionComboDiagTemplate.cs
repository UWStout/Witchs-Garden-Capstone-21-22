/*
* AUTHOR : Steve Datz
* DESC :
*/

using Ingredients;
using UnityEngine;
using Items;

namespace Diagrams
{
	[CreateAssetMenu(fileName = "_potionDiag", menuName = "Data/Diagrams/Potion Combo Diagram", order = 0)]
	public class PotionComboDiagTemplate : DiagramTemplate
	{
		public PotionTemplate PotionTemplate => _potionTemplate;
		[SerializeField] private PotionTemplate _potionTemplate;

		
		
		public void Generate(string diagName, string diagDesc, PotionTemplate template)
		{
			_diagName = diagName;
			_diagDesc = diagDesc;
			_potionTemplate = template;
		}
	}
}