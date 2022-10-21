using System;


namespace Player
{
    public class PlayerGold
    {
        public Action<int> OnValueChanged;

        private int _gold;
        public int GetGold() => _gold;
        /************************************************************************************************************************/
        public PlayerGold(int gold) => SetGold(gold);

        public void IncrementGold(int amount)
        {
            _gold += amount;
            InvokeOnValueChanged();
        }

        public void SetGold(int amount)
        {
            _gold = amount;
            InvokeOnValueChanged();
        }
        /************************************************************************************************************************/
        private void InvokeOnValueChanged()
        {
            OnValueChanged?.Invoke(_gold);
        }
    }
}