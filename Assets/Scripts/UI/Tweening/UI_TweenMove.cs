using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class UI_TweenMove : MonoBehaviour
{
    private Vector3 startPosition;
    private Vector3 endPosition;
        
    [SerializeField]
    private Vector3 moveRelativeDistance = Vector3.zero;
    [SerializeField]
    private float desiredDuration = 1f;

    void Awake()
    {
        startPosition = transform.position;
        endPosition = transform.position + moveRelativeDistance;
    }

    public void RunTween(bool directionOn)
    {
        if (directionOn)
        {
            transform.DOMove(endPosition, desiredDuration).SetEase(Ease.Linear);
        }
        else
        {
            transform.DOMove(startPosition, desiredDuration).SetEase(Ease.Linear);
        }
    }
}