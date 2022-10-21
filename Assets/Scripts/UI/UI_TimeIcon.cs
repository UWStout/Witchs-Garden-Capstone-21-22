using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace UI
{
    public class UI_TimeIcon : MonoBehaviour
    {
        [SerializeField] Sprite[] iconSpriteReference;
        [SerializeField] Image timeIconImageReference;

        public void SetTimeIcon(bool isDay, int turnNo)
        {
            if (timeIconImageReference != null && iconSpriteReference != null)
            {
                if (isDay)
                {
                    timeIconImageReference.sprite = iconSpriteReference[0];
                }
                else
                {
                    timeIconImageReference.sprite = iconSpriteReference[1];
                }
            }
        }
    }
}