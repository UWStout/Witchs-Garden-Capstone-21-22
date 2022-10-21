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
	public class UI_ResearchChapterHeader : MonoBehaviour
	{
		[SerializeField] private TextMeshProUGUI _chapterNameTxt;
		[SerializeField] private TextMeshProUGUI _chapterFlavorTxt;
		/************************************************************************************************************************/

		public void ShowChapterDetails(ResearchChapterTemplate ch, bool isUnlocked)
		{
			_chapterNameTxt.text = ch.ChapterName;
			_chapterFlavorTxt.text = ch.ChapterFlavorTxt;

		}

	}

}