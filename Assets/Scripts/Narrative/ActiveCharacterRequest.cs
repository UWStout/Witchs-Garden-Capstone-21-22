/*
* AUTHOR : Steve Datz
* DESC : A runtime request from a character for a specific item, and an action to invoke when complete
*/
using System;

namespace Narrative
{
	public class ActiveCharacterRequest
	{
		//public string ID { get; }
		public NarrativeCharacterRequest NCRequest { get; }
		private readonly Action<ActiveCharacterRequest> _onCompleteResponse;
		
		/*********************************************************************************************/
		public ActiveCharacterRequest(string id, NarrativeCharacterRequest request, Action<ActiveCharacterRequest> onCompleteResponse)
		{
			//ID = id; //No longer being used, also loading from save doesnt preserve these
			NCRequest = request;
			_onCompleteResponse = onCompleteResponse;
		}

		/*********************************************************************************************/
		public void InvokeOnCompleteResponse()
		{
			_onCompleteResponse?.Invoke(this);
		}
	}
}