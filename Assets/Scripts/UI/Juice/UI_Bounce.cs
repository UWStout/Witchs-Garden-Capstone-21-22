using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Bounce : MonoBehaviour
{
    private Vector3 startScale;
    private Vector3 endScale;

    [SerializeField]
    private Vector3 scaleRelativeSize = Vector3.one * 0.2f;
    [SerializeField]
    private float desiredDuration = 1f;
    [SerializeField]
    private AnimationCurve curve;

    private float elapsedTime;

    private bool doRunBounce = false;
    private bool lerpDirectionOn = true;

    // Start is called before the first frame update
    void Start()
    {
        startScale = transform.localScale;
        endScale = transform.localScale + scaleRelativeSize;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (doRunBounce)
        {
            elapsedTime += Time.deltaTime;
            float percentageComplete = elapsedTime / desiredDuration;

            if (lerpDirectionOn)
                transform.localScale = Vector3.Lerp(startScale, endScale, curve.Evaluate(percentageComplete));
            else
                transform.localScale = Vector3.Lerp(endScale, startScale, curve.Evaluate(percentageComplete));

            if (percentageComplete >= 1)
                doRunBounce = false;
        }
    }

    public void RunBounce(bool lerpDirectionOn)
    {
        elapsedTime = 0;
        this.lerpDirectionOn = lerpDirectionOn;
        doRunBounce = true;
    }
}
