using System;
using System.Collections;
using System.Collections.Generic;
using Spells;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_SpellWheel : MonoBehaviour
    {
        [SerializeField]
        UI_SpellWheel_Slot[] spellWheelSlots;
        [SerializeField]
        Image centerIconImageReference;
        [SerializeField]
        UI_Hotbar hotbarReference;
        [SerializeField]
        TextMeshProUGUI spellTextDisplay;

        [SerializeField] private UI_TweenFade _wheelTextTween;

        [SerializeField] private AK.Wwise.Event spellScrollEvent;
        public bool IsOpen => _isOpen;
        private bool _isOpen;
        private int _currentSlotIndex = 0;
        private const int WHEEL_SLOT_COUNT = 8;

        private int WHEEL_TEXT_FADE_TIME = 150;
        private int fadeCooldownTime;
        /************************************************************************************************************************/

        // Start is called before the first frame update
        private void Start()
        {
            SetCurrentSlotIndex(0);
            SetOpen(false);
            fadeCooldownTime = -1;
        }

        private void FixedUpdate()
        {
            if (fadeCooldownTime > 0 && !_isOpen)
                fadeCooldownTime--;
            else if (fadeCooldownTime == 0)
            {
                fadeCooldownTime = -1;
                _wheelTextTween.RunTween(false);
            }
        }

        /************************************************************************************************************************/
        /// <summary>
        /// Takes a mapping of spells with unlock flags and assigns them to the wheel
        /// </summary>
        public void AssignSpellsToSlots(Dictionary<Spell, bool> spellUnlockDict)
        {
            int count = 0;
            foreach (var spell in spellUnlockDict.Keys)
            {
                if (count > spellWheelSlots.Length)
                    return;
                
                bool isUnlocked = spellUnlockDict[spell];
                spellWheelSlots[count++].AssignSpell(spell,isUnlocked);
            }
        }

        public void ScrollSpellWheel(float scrollDir)
        {
            if(!_isOpen || scrollDir == 0f)
                return;
            //Set temporary current slot index for calculations below
            var tempCurrentSlotIndex = _currentSlotIndex;

            if (scrollDir < 0f)
            {
                //Scroll forward and check to skip over locked spells
                int maxLoopSafety = 8;
                do {
                    tempCurrentSlotIndex = (tempCurrentSlotIndex + 1) % WHEEL_SLOT_COUNT;
                    maxLoopSafety--;
                } while (spellWheelSlots[tempCurrentSlotIndex].GetSpell() == null && maxLoopSafety > 0);
            }
            else
            {
                //Scroll backward and check to skip over locked spells
                int maxLoopSafety = 8;
                do {
                    if (tempCurrentSlotIndex <= 0)
                        tempCurrentSlotIndex = WHEEL_SLOT_COUNT - 1;
                    else
                        tempCurrentSlotIndex--;
                    maxLoopSafety--;
                } while (spellWheelSlots[tempCurrentSlotIndex].GetSpell() == null && maxLoopSafety > 0);
            }
            SetCurrentSlotIndex(tempCurrentSlotIndex);
            spellScrollEvent.Post(gameObject);
        }

        public void SetSpellWheel(int slotNumber)
        {
            var tempCurrentSlotIndex = slotNumber - 1;

            if (!_isOpen || tempCurrentSlotIndex < 0 || tempCurrentSlotIndex >= WHEEL_SLOT_COUNT)
                return;

            if (spellWheelSlots[tempCurrentSlotIndex].GetSpell() != null)
            {
                SetCurrentSlotIndex(tempCurrentSlotIndex);
                //spellScrollEvent.Post(gameObject);
            }
        }

        public SpellData GetSelectedSpell()
        {
            return spellWheelSlots[_currentSlotIndex].GetSpell();
        }

        public void SetOpen(bool open)
        {
            _isOpen = open;
            foreach (UI_SpellWheel_Slot slot in spellWheelSlots)
            {
                //if (!slot.GetIsSelected())
                slot.SetOpen(open);
            }

            if (open)
            {
                UpdateSlotsSelected();
                fadeCooldownTime = WHEEL_TEXT_FADE_TIME;
                _wheelTextTween.RunTween(true);
            }
        }

        public void SetCurrentSlotIndex(int index)
        {
            _currentSlotIndex = index;

            UpdateSlotsSelected();
            SetHotbarWithSelectedSlot();

            //Set spell text display
            if (spellTextDisplay != null)
            {
                var selectedSpell = GetSelectedSpell();
                if (selectedSpell != null)
                {
                    spellTextDisplay.text = selectedSpell.SpellName + "\nCost: " + selectedSpell.ManaCost + " Mana";
                    fadeCooldownTime = WHEEL_TEXT_FADE_TIME;
                    _wheelTextTween.RunTween(true);
                }
                else
                    spellTextDisplay.text = "";
            }
                
        }
        
        /************************************************************************************************************************/
        
        private void SetHotbarWithSelectedSlot()
        {
            if (hotbarReference != null && GetSelectedSpell() != null)
            {
                //Seed slot selected
                if (GetSelectedSpell().SpellID == eSpellID.PLANT)
                    hotbarReference.SetShowAndCategory(true, Items.eItemType.SEED);
                //Potion slot selected
                else if (GetSelectedSpell().SpellID == eSpellID.APPLY_POTION)
                    hotbarReference.SetShowAndCategory(true, Items.eItemType.POTION);
                //Else hide the hotbar
                else
                    hotbarReference.SetShow(false);
            }
        }
        
        private void UpdateSlotsSelected()
        {
            //Set center icon image to selected slot
            if (centerIconImageReference != null)
                centerIconImageReference.sprite = spellWheelSlots[_currentSlotIndex].GetIconImageSprite();

            for (int i = 0; i < WHEEL_SLOT_COUNT; i++)
            {
                spellWheelSlots[i].SetSelected(i == _currentSlotIndex);
            }
        }
    }
}