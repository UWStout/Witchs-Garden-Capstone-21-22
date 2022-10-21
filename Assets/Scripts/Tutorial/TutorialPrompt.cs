
using UnityEngine;

namespace Tutorial
{
	public enum eOneOffPromptID { CAULDRON, CHEST, RESEARCH, SHOP, GARDEN_ENTER, GARDEN_EXIT, FENCES, SHOP_FIRST_REQUESTED, UNLOCKED_HYBRID_SPELL, UNLOCKED_CLONE_SPELL, UNLOCKED_CH_2, THIRD_HARVEST, SPELL_SELECTED, CAT_BONUS}

	[CreateAssetMenu(fileName = "_Prompt", menuName = "Data/Tutorials/Tutorial Prompt", order = 8)]
	public class TutorialPrompt : ScriptableObject
	{
		[TextArea(10, 15)]
		[SerializeField] private string _text;
		[NaughtyAttributes.ShowAssetPreview]
		[SerializeField] private Sprite _image;
		[SerializeField] private bool _isDialogueBox;

		public string Text => _text;
		public Sprite Image => _image;
		public bool IsDialogueBox => _isDialogueBox;
	}
}