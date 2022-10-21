using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Tutorial
{
	[CreateAssetMenu(fileName = "PromptCollection", menuName = "Data/Tutorials/Timed Prompt Collection", order = 10)]
	public class TimedPromptCollection : ScriptableObject
	{
		[SerializeField] private List<TutorialPromptTimed> _allPrompts;

		public List<TutorialPrompt> GetPrompts(int turn, bool isDay)
		{
			List<TutorialPrompt> prompts = new List<TutorialPrompt>();

			foreach (TutorialPromptTimed p in _allPrompts)
			{
				if (p.Turn == turn && p.WhileDay == isDay)
					prompts.Add(p as TutorialPrompt);
			}

			return prompts;
		}
	}
}