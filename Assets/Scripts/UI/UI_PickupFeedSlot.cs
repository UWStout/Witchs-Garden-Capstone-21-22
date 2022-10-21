using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_PickupFeedSlot : UI_ItemSlot
    {
        [SerializeField] private Text _nameText;

        protected override void UpdateDisplay()
        {
            base.UpdateDisplay();
            //Debug.Log("Updating ItemInfoBox");

            //Set Item Info Name Text
            if (_nameText != null)
            {
                if (_slotItem != null)
                    _nameText.text = _slotItem.ItemName;
                else
                    _nameText.text = "";
            }
        }
    }
}