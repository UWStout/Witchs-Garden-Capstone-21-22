using Diagrams;
using Items;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{ 
    public class UI_PotionRecipeList : UI_ItemListDisplay
    {
        private DiagramHandler _diagramHandler;

		[SerializeField] TextMeshProUGUI _unlockedPercentText;

		/************************************************************************************************************************/

		public void Init(DiagramHandler diagramHandler)
        {
			//Debug.Log("INITIALIZED PotionRecipeList");
			_diagramHandler = diagramHandler;
            _diagramHandler.OnDiagramUnlocked += Refresh;

			GenerateSlots(ItemManager.Instance.GetAllPotionItems());
			UpdateDisplay();
		}

		/************************************************************************************************************************/

		public override void OnDestroy()
		{
			base.OnDestroy();

			if (_diagramHandler != null)
				_diagramHandler.OnDiagramUnlocked -= Refresh;
		}

		/************************************************************************************************************************/

		private void Refresh(DiagramTemplate newDiag)
		{
			UpdateDisplay();
		}

		private void UpdateDisplay()
        {
			if (_unlockedPercentText != null)
				_unlockedPercentText.text = _diagramHandler.GetPotionDiagramsUnlockedCount() + "/" + ItemManager.Instance.GetAllPotionsCount() + " Unlocked";
			UpdateSlotOrders();
		}

		private void UpdateSlotOrders()
        {
            for (int i = _slots.Count - 1; i >= 0; i--)
            {
				if (_slots[i] is UI_PotionRecipeSlot recipeSlot)
					recipeSlot.UpdateRecipeSlotDisplay();
			}
		}

		public void TintSlots()
		{
			var potionRecipeBoxTint = new Color(0.724f, 0.57685f, 0.82075f);
			foreach (var slot in _slots)
			{
				slot.gameObject.GetComponent<Image>().color = potionRecipeBoxTint;
			}
		}
	}
}