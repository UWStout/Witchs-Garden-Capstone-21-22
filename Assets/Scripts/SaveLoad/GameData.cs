/*
* AUTHOR : Steve Datz
* DESC :
*/

using Items;
using System.Collections.Generic;
using Diagrams;
using Narrative;
using Tutorial;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace SaveLoad
{
	[System.Serializable]
	public class GameData 
	{
		//MISC
		public int CurrentTurn = 1;
		public bool TutorialEnabled = true;
		public TutorialOneOffEvents TutorialEvents = new TutorialOneOffEvents();
		//PLAYER
		public int PlayerGold = -1;
		public int PlayerManaCurr = -1;
		public List<SaveableItem> PlayerItems = new List<SaveableItem>(); 
		public List<SaveableDiagram> KnownDiagrams = new List<SaveableDiagram>();
		public List<SaveableResearchChapter> KnownResearch = new List<SaveableResearchChapter>();
		public string CurrentResearch = "";
		public List<SaveableNarrativeRequest> ActiveRequests = new List<SaveableNarrativeRequest>();
		public List<SaveableNarrativeRequest> CompletedRequests = new List<SaveableNarrativeRequest>();
		public List<SaveablePatch> Patches = new List<SaveablePatch>();

		/************************************************************************************************************************/
		
	}

}