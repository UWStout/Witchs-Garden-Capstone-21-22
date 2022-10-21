/*
* AUTHOR : Steve Datz
* DESC :
*/

using NaughtyAttributes;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "NCDialogue_", menuName = "Data/Narrative/Character Dialogue")]
	public class CharacterDialogue : ScriptableObject
	{
		public string OpeningLine => _openingLine;
		[ResizableTextArea]
		[SerializeField] private string _openingLine = "";

		public string MiddleShopLine => _middleShopLine;
		[ResizableTextArea]
		[SerializeField] private string _middleShopLine = "";

		public string ClosingLine => _closingLine;
		[ResizableTextArea]
		[SerializeField] private string _closingLine = "";
		
		/*********************************************************************************************/
	}
}