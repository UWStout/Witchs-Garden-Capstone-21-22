/*
* AUTHOR : Steve Datz
* DESC : A way to specifiy an event condition related to a previous request
*/
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "COND_PrevRequest", menuName = "Data/Narrative/Condition Previous Request")]
	public class CondPrevRequest: EventCondition
	{
		public override eTriggerCondType GetCondition() => eTriggerCondType.PREVIOUS_REQUEST;

		public bool IsCompleted => _isCompleted;
		[Tooltip("True-Finishing a request will trigger an activation, Alternatively can set this to False-and if a player fails to complete a request -this will trigger")]
		[SerializeField] private bool _isCompleted;
		
		
		public NarrativeCharacterRequest CharacterRequest => _characterRequest;
		[SerializeField] private NarrativeCharacterRequest _characterRequest;



		protected override string FormatUIDescription()
		{
			string condTxt = _isCompleted ? "Completed" : "Not Completed";
			return $"{_characterRequest.CharacterTemplate.CharacterName} Request {condTxt} ";
		}
	}
}