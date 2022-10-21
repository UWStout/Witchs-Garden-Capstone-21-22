/*
* AUTHOR : Steve Datz
* DESC :
*/

using UnityEngine;


namespace Narrative
{
	[CreateAssetMenu(fileName = "NCTemplate", menuName = "Data/Narrative/Narrative Character Template")]
	public class NarrativeCharacterTemplate : ScriptableObject
	{
		public string CharacterName => _characterName;
		[SerializeField] private string _characterName = "";
		
		public Sprite CharacterPortrait => _characterPortrait;
		[SerializeField] private Sprite _characterPortrait = default;

		public Sprite CharacterPortraitLocked => _characterPortraitLocked;
		[SerializeField] private Sprite _characterPortraitLocked = default;

		/*********************************************************************************************/
	}
}