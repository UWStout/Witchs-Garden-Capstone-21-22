using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UI_Lerp : MonoBehaviour
{
    private Vector3 startPosition;
    private Vector3 endPosition;

    [SerializeField]
    private Vector3 moveRelativeDistance = Vector3.zero;
    [SerializeField]
    private float desiredDuration = 1f;

    private float elapsedTime;

    private bool doRunLerp = false;
    private bool lerpDirectionOn = true;
    
    // Start is called before the first frame update
    void Start()
    {
        startPosition = transform.position;
        endPosition = transform.position + moveRelativeDistance;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (doRunLerp)
        {
            elapsedTime += Time.deltaTime;
            float percentageComplete = elapsedTime / desiredDuration;

            if (lerpDirectionOn)
                transform.position = Vector3.Lerp(startPosition, endPosition, percentageComplete);
            else
                transform.position = Vector3.Lerp(endPosition, startPosition, percentageComplete);

            if (percentageComplete >= 1)
                doRunLerp = false;
        }
    }

    public void RunLerp(bool lerpDirectionOn)
    {
        elapsedTime = 0;
        this.lerpDirectionOn = lerpDirectionOn;
        doRunLerp = true;
    }
}
