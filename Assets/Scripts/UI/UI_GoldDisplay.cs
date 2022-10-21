using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_GoldDisplay : MonoBehaviour
    {
        [SerializeField] Text _goldDisplayTextReference;
        [SerializeField] UI_TextFeedElement _feedElementPrefab;

        private int _previousGold = 0;

        public void SetGoldText(int gold)
        {
            if (_goldDisplayTextReference != null)
                _goldDisplayTextReference.text = gold.ToString();

            AddGoldFeedElement(gold - _previousGold);

            _previousGold = gold;
        }

        private void AddGoldFeedElement(int gold)
        {
            if (_feedElementPrefab == null || gold == 0)
                return;

            UI_TextFeedElement element = Instantiate(_feedElementPrefab, Vector3.zero, Quaternion.identity);
            element.transform.parent = transform;
            element.transform.position = transform.position + new Vector3(0f, -100, 0f);
            element.transform.localScale = Vector3.one;
            element.SetText(gold);
        }
    }
}