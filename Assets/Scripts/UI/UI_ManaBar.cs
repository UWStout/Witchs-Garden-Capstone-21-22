using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_ManaBar : MonoBehaviour
    {
        [SerializeField] private Image _fillbar;
        [SerializeField] private UI_TextFeedElement _feedElementPrefab;

        private int _previousMana = 0;

        public void SetManaBarFill(int manaAmount, int maxManaAmount)
        {
            SetManaBarFill((float)manaAmount / maxManaAmount);
            AddManaFeedElement(manaAmount - _previousMana);

            _previousMana = manaAmount;
        }

        private void SetManaBarFill(float amount)
        {
            if (_fillbar != null)
                _fillbar.fillAmount = amount;
        }

        private void AddManaFeedElement(int amount)
        {
            if (_feedElementPrefab == null || amount == 0)
                return;

            UI_TextFeedElement element = Instantiate(_feedElementPrefab, Vector3.zero, Quaternion.identity);
            element.transform.parent = transform;
            element.transform.position = transform.position + new Vector3(110f, -0f, 0f);
            element.transform.localScale = Vector3.one;
            element.SetText(amount);
        }
    }
}