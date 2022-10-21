using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Tutorial
{
	[CreateAssetMenu(fileName = "_Prompt", menuName = "Data/Tutorials/Tutorial Prompt Timed", order = 10)]
	public class TutorialPromptTimed : TutorialPrompt
	{
		[SerializeField] private int _turn;
		[SerializeField] private bool _whileDay;

		public int Turn => _turn;
		public bool WhileDay => _whileDay;
	}
}