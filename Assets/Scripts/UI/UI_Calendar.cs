using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using TurnManaging;
using System;
using UnityEngine.UI;

namespace UI
{
    public class UI_Calendar : TurnListener
    {
        [SerializeField] Text _text;

        protected override void OnTurnAdvance(int turnNo)
        {
            //Only use OnTimeAdvance because we need both isDay and turnNo, not just turnNo
        }

        protected override void OnTimeAdvance(bool isDay, int turnNo)
        {
            SetCalendarText(isDay, turnNo);
        }

        public void SetCalendarText(bool isDay, int turnNo)
        {
            if (_text != null)
            {
                if (isDay)
                    _text.text = "DAY\n" + turnNo.ToString();
                else
                    _text.text = "NIGHT\n" + turnNo.ToString();
                //Debug.Log("CALENDAR: " + _text.text);
            }
        }

        #if UNITY_EDITOR
                void Reset()
                {
                    if (_text == null)
                    {
                        _text = this.GetComponentInChildren<Text>();
                    }
                }

        #endif

    }
}
