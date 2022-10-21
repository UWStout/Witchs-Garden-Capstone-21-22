using System.Collections.Generic;

namespace Research
{
	public class UnlockedChapter
	{
		public ResearchChapterTemplate ChapterTemplate { get; }

		public IReadOnlyList<UnlockedProgressableResearchItem> ResearchItems => _researchItems;
		private readonly List<UnlockedProgressableResearchItem> _researchItems;
		
		/************************************************************************************************************************/

		public UnlockedChapter(ResearchChapterTemplate template)
		{
			ChapterTemplate = template;
			_researchItems = new List<UnlockedProgressableResearchItem>();
			foreach (var unlockItem in template.AvailableResearchItems)
			{
				_researchItems.Add(new UnlockedProgressableResearchItem(this, unlockItem));
			}
		}

		/************************************************************************************************************************/

	}
}