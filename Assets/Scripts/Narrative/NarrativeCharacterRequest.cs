/*
* AUTHOR : Steve Datz
* DESC : All the components that make up a narrative request from a character
*/

using Items;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "NCRequest_", menuName = "Data/Narrative/Narrative Character Request")]
	public class NarrativeCharacterRequest : ScriptableObject
	{
		public EventCondition ActivationCondition => _activationCondition;
		[SerializeField] private EventCondition _activationCondition;	
		public EventCondition InvalidCondition => _invalidCondition;
		[SerializeField] private EventCondition _invalidCondition;	
		
		public NarrativeCharacterTemplate CharacterTemplate => _characterTemplate;
		[SerializeField] private NarrativeCharacterTemplate _characterTemplate;
		
		public CharacterDialogue DialogueLines => _dialogueLines;
		[SerializeField] private CharacterDialogue _dialogueLines;
		
		public ItemRequest ItemRequested => _itemRequest;
		[SerializeField] private ItemRequest _itemRequest;

		public bool IsStoryRequired => _isStoryRequired;
		[SerializeField] private bool _isStoryRequired;
		
		
		/*********************************************************************************************/
	}
}