/*
* AUTHOR : Steve Datz
* DESC : Used to debugg test things in editor for the narr event system - ignored for builds
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

using Player;
using UnityEngine;


namespace Narrative
{
#if UNITY_EDITOR
	public class NarrationDevTestingHacks : MonoBehaviour
	{
		[SerializeField] private PlayerController _pc;

		private ActiveCharacterRequest _testRequest;
		/************************************************************************************************************************/
		private void Start()
		{
			NarrativeSystem.Instance.OnGenerateNewRequest += HoldThisRequest;
		}

		private void HoldThisRequest(ActiveCharacterRequest testRequest)
		{
			_testRequest = testRequest;
		}

		[ContextMenu("Complete Last Request")]
		private void CompleteLastRequest()
		{
			_testRequest.InvokeOnCompleteResponse();	
			Debug.Log($"(TMP) : [{_testRequest.NCRequest.CharacterTemplate.CharacterName}]: {_testRequest.NCRequest.DialogueLines.ClosingLine}");
		}
		
		[ContextMenu("Give Player Gold (25)")]
		private void GivePcGold()
		{
			_pc.PlayerGold.IncrementGold(25);
		}

	}
#endif

}