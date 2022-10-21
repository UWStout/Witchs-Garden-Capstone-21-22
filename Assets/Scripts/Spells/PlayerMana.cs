using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GameAnalyticsSDK;

namespace Spells
{
    public class PlayerMana
    {
        /// <summary>
        /// Gets invoked whenever a value changes in the players mana
        /// </summary>
        public Action<int, int> OnValueChanged;
        
        private int _currentMana;
        private int _maxMana;

        private int _dailyRefreshRate = 30;
        /************************************************************************************************************************/

        public PlayerMana(int maxMana) 
        {
            _maxMana = _currentMana = maxMana;
        }
        /************************************************************************************************************************/

        public int GetMax() => _maxMana;
      
        public int GetCurrent() => _currentMana;

        public bool HasEnoughMana(int val)
        {
            return _currentMana >= val && val >= 0;
        }

        public bool UseMana(int mana)
        {
            if (mana < 0)
                throw new System.Exception("UseMana must take a positive value");

            if (mana > _currentMana)
                return false;

            _currentMana -= mana;
            InvokeOnValueChanged();
            return true;
        }

        /// <summary>
        /// Only expects positive values
        /// </summary>
        /// <param name="mana"></param>
        /// <returns></returns>
        public bool GainMana(int mana)
        {
            if (_currentMana == _maxMana)
                return false;
            Debug.Log($" try set mana from {_currentMana} to  {_currentMana + mana}");
            _currentMana = Mathf.Min(_currentMana + mana, _maxMana);
            InvokeOnValueChanged();
            return true;
        }

        /// <summary>
        /// Only expects negative values
        /// </summary>
        /// <param name="mana"></param>
        /// <returns></returns>
        public bool LoseMana(int mana)
        {
            if (_currentMana == 0 || mana > 0)
                return false;
            Debug.Log($" try set mana from {_currentMana} to  {_currentMana + mana}");
            _currentMana = Mathf.Max(_currentMana + mana, 0);
            InvokeOnValueChanged();
            return true;
        }

        /// <summary>
        /// Should only be used from save system, since its unsafe
        /// </summary>
        /// <param name="val"></param>
        public void SetMana(int val)
        {
            _currentMana = val; //No out of bounds check for save system
            InvokeOnValueChanged();
        }

        public void IncreaseMax(int mana)
        {
            if (mana < 0)
                throw new System.Exception("int mana must be positive");

            _maxMana += mana;
            InvokeOnValueChanged();
        }

        public void RestoreMana()
        {
            int oldMana = _currentMana;
            _currentMana += _dailyRefreshRate;
            _currentMana = Mathf.Clamp(_currentMana, 0, _maxMana);
            //Analytics wont accept ZERO or negative #s... so do this...
            GameAnalytics.NewResourceEvent(GAResourceFlowType.Source, "Mana", Mathf.Clamp(_currentMana - oldMana, 0.0001f, _maxMana), "REFRESH", "dailyRefresh");
            InvokeOnValueChanged();
        }

        public void IncreaseRefreshRate(int incrementValue)
        {
            _dailyRefreshRate += incrementValue;
            _dailyRefreshRate = Mathf.Clamp(_dailyRefreshRate, 1, _maxMana);
            GameAnalytics.NewDesignEvent("MAX_DAILY_REFRESH_INCREASE", _dailyRefreshRate);
        }
        /************************************************************************************************************************/

        private void InvokeOnValueChanged()
        {
            OnValueChanged?.Invoke(_currentMana, _maxMana);
        }
    

    }
}