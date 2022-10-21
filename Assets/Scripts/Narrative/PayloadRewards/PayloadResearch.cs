/*
* AUTHOR : Steve Datz
* DESC :  A payload reward that results in new technology unlock
*/

using UnityEngine;
using Research;

namespace Narrative
{
	[CreateAssetMenu(fileName = "PL_Research", menuName = "Data/Narrative/Reward Payload Research")]
	public class PayloadResearch : Reward
	{
		public override ePayloadType GetPayloadType() => ePayloadType.RESEARCH;

		public ResearchChapterTemplate Chapter => _unlockableChapter;
		[SerializeField] private ResearchChapterTemplate _unlockableChapter ;
		
		public override string GetFormattedUIRewardText()
		{
			return "Research " + _unlockableChapter.ChapterName;
		}
	}
}