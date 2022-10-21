using System.Collections;
using System.Collections.Generic;
using Spells;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_SpellWheel_Slot : MonoBehaviour
    {

        [Header("In Project Resources")]
        [SerializeField]
        Sprite wheelBasicSpriteReference;
        [SerializeField]
        Sprite wheelSparkleSpriteReference;
        [SerializeField]
        Sprite wheelGraySpriteReference;

        [Header("Self Components")]
        [SerializeField]
        Image slotImageReference;
        [SerializeField]
        Image slotIconImageReference;
        [SerializeField]
        Transform transformReference;
        [SerializeField] UI_TweenScale _tweenScale;
        [SerializeField] UI_TweenFade _tweenFade;

        private SpellData _storedSpell;
        private bool _isSelected = false;
        private bool _isLocked;

        public void AssignSpell(Spell spell, bool isUnlocked)
        {
           // Debug.Log($"assign: {spell.SpellData.SpellName} isUnlocked={isUnlocked}");
            //Not sure if we should store the whole spell, or just the data, or what-TODO-well find out -Steve
            _storedSpell = spell.SpellData;
            if (_storedSpell == null)
                return;
            slotIconImageReference.sprite = _storedSpell.SpellIcon;
            string spellName = _storedSpell.SpellName;
            int manaCost = _storedSpell.ManaCost;
            _isLocked = !isUnlocked;

            UpdateDisplay();
        }

        /// <summary>
        /// Get the spell data that was assigned here,
        /// Null if locked
        /// </summary>
        /// <returns>Null if the spell is not available</returns>
        public SpellData GetSpell()
        {
            return _isLocked? null: _storedSpell;
        }
        
        
        public void SetSelected(bool selected)
        {
            if (selected != _isSelected)
            {
                _isSelected = selected;
                UpdateDisplay();
            }
        }

        public void SetOpen(bool open)
        {
            if (!_isSelected)
            {
                if (_tweenFade != null)
                    _tweenFade.RunTween(!open);
            }
        }

        private void UpdateDisplay()
        {
            if (_isLocked)
            {
                slotImageReference.sprite = wheelGraySpriteReference;
            }
            else
            {
                if (_isSelected)
                {
                    slotImageReference.sprite = wheelSparkleSpriteReference;
                    _tweenFade.RunTween(!_isSelected);
                }
                else
                    slotImageReference.sprite = wheelBasicSpriteReference;

                _tweenScale.RunTween(_isSelected);
            }
        }

        public Sprite GetIconImageSprite()
        {
            return slotIconImageReference.sprite;
        }

        public bool GetIsSelected()
        {
            return _isSelected;
        }

#if UNITY_EDITOR
            void Reset()
            {
                if (slotImageReference == null)
                    slotImageReference = this.GetComponent<Image>();
                if (slotIconImageReference == null)
                    slotIconImageReference = this.GetComponentInChildren<Image>();
                if (transformReference == null)
                    transformReference = this.GetComponent<Transform>();
            }
        #endif
    }
}