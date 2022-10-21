/*
* AUTHOR : Steve Datz
* DESC :
*/

using Research;
using TMPro;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchCurrentInfo : MonoBehaviour
	{
		[SerializeField] private TextMeshProUGUI _currResearchTxt;
		[SerializeField] private TextMeshProUGUI _currResearchRateTxt;
		/************************************************************************************************************************/

		public void ShowChapterDetails(UnlockedProgressableResearchItem currResearch, float resrchRate)
		{
			if (currResearch == null)
				_currResearchTxt.text = "none";
			else
				_currResearchTxt.text = $" {currResearch.ResearchItemTemplate.ResearchName}  <size=75%><i>(CH{currResearch.Chapter.ChapterTemplate.ChapterIDArr+1}</i></size>)";
			
			_currResearchRateTxt.text = $"Current Research Rate = <color=green>{resrchRate}</color> % per day";
		}
	}

}