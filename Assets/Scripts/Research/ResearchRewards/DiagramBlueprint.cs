/*
* AUTHOR : Steve Datz
* DESC :
*/

using Diagrams;
using UnityEngine;

namespace Research
{
	public abstract class DiagramBlueprint : ResearchItemTemplate
	{
		public DiagramTemplate Diagram => _diagram;
		[SerializeField] private DiagramTemplate _diagram ;

	}
}