/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;

namespace Diagrams
{
	//[CreateAssetMenu(fileName = "FILENAME", menuName = "MENUNAME", order = 0)]
	public abstract class DiagramTemplate : ScriptableObject
	{
		public string DiagramName => _diagName;
		[SerializeField] protected string _diagName;
		
		public string DiagramDesc => _diagDesc;
		[NaughtyAttributes.ResizableTextArea]
		[SerializeField] protected string _diagDesc;

		public Sprite DiagramImg => _diagImg;
		[Tooltip("Meant to be a handdrawn diag from artists that visually represent ")]
		[SerializeField] protected Sprite _diagImg;
	}
}