/*
* AUTHOR : Steve Datz
* DESC : Holds a series of character requests that would be chained together in a story line
*/

using System.Collections.Generic;
using UnityEngine;

namespace Narrative
{
	[CreateAssetMenu(fileName = "NarrativeSeq_", menuName = "Data/Narrative/Sequence")]
	public class NarrativeSequence : ScriptableObject
	{
		public string SequenceID => _sequenceID;
		[SerializeField] private string _sequenceID = "";

		public IReadOnlyList<NarrativeCharacterRequest> CharacterRequests => _charRequests;
		[SerializeField] private List<NarrativeCharacterRequest> _charRequests = default;
		
		/*********************************************************************************************/
		
		public override string ToString()
		{
			return $"NarrativeSeq: {_sequenceID}";
		}

		
	}
}