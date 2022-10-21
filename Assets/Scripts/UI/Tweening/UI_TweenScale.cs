using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class UI_TweenScale : MonoBehaviour
{
    private Vector3 startScale;
    private Vector3 endScale;

    [SerializeField]
    private Vector3 scaleRelativeSize = Vector3.one * 0.2f;
    [SerializeField]
    private float desiredDuration = 1f;

    void Awake()
    {
        startScale = transform.localScale;
        endScale = transform.localScale + scaleRelativeSize;
    }

    public void RunTween(bool directionOn)
    {
        if (directionOn)
        {
            if (endScale == Vector3.zero)
            {
                //Debug.Log("END SCALE IS ZERO " + (transform.localScale + scaleRelativeSize));
                transform.DOScale(transform.localScale + scaleRelativeSize, desiredDuration);
            }
                
            else
            {
                transform.DOScale(endScale, desiredDuration);
                //Debug.Log("SCALING TO END SCALE " + startScale);
            }
        }
        else
        {
            transform.DOScale(startScale, desiredDuration);
            //Debug.Log("SCALING TO START SCALE " + startScale);
        }
    }
}
