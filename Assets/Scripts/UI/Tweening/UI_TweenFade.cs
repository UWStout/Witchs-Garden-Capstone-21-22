using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;

public class UI_TweenFade : MonoBehaviour
{
    [SerializeField] private CanvasGroup _canvasGroup;

    [SerializeField]
    private float startAlpha;
    [SerializeField]
    private float endAlpha;

    [SerializeField]
    private float desiredDuration = 1f;

    public void RunTween(bool directionOn)
    {
        if (directionOn)
        {
            _canvasGroup.DOFade(endAlpha, desiredDuration);
        }
            
        else
        {
            _canvasGroup.DOFade(startAlpha, desiredDuration);
        }  
    }
}
