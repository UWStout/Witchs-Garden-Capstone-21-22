using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class UI_Fade : MonoBehaviour
{
    [SerializeField]
    private float startAlpha;
    [SerializeField]
    private float endAlpha;

    [SerializeField]
    private float desiredDuration = 1f;

    private float _elapsedTime;

    private bool _doRunFade = false;
    private bool _lerpDirectionOn = true;

    [SerializeField]
    private List<Image> _imagesToFade;
    [SerializeField]
    private List<Text> _textsToFade;
    [SerializeField]
    private List<TextMeshProUGUI> _textProsToFade;

    // Start is called before the first frame update
    void Start()
    {
        if (_imagesToFade == null)
            _imagesToFade = new List<Image>();
        if (_textsToFade == null)
            _textsToFade = new List<Text>();
        if (_textProsToFade == null)
            _textProsToFade = new List<TextMeshProUGUI>();
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (!_doRunFade) 
            return;
        
        _elapsedTime += Time.deltaTime;
        float percentageComplete = _elapsedTime / desiredDuration;

        if (_lerpDirectionOn)
        {
            foreach (Image img in _imagesToFade)
            {
                var tempColor = img.color;
                tempColor.a = Mathf.Lerp(startAlpha, endAlpha, percentageComplete);
                img.color = tempColor;
            }
            foreach (Text tex in _textsToFade)
            {
                var tempColor = tex.color;
                tempColor.a = Mathf.Lerp(startAlpha, endAlpha, percentageComplete);
                tex.color = tempColor;
            }
            foreach (TextMeshProUGUI tex in _textProsToFade)
            {
                var tempColor = tex.color;
                tempColor.a = Mathf.Lerp(startAlpha, endAlpha, percentageComplete);
                tex.color = tempColor;
            }
        }
        else
        {
            foreach (Image img in _imagesToFade)
            {
                var tempColor = img.color;
                tempColor.a = Mathf.Lerp(endAlpha, startAlpha, percentageComplete);
                img.color = tempColor;
            }
            foreach (Text tex in _textsToFade)
            {
                var tempColor = tex.color;
                tempColor.a = Mathf.Lerp(endAlpha, startAlpha, percentageComplete);
                tex.color = tempColor;
            }
            foreach (TextMeshProUGUI tex in _textProsToFade)
            {
                var tempColor = tex.color;
                tempColor.a = Mathf.Lerp(endAlpha, startAlpha, percentageComplete);
                tex.color = tempColor;
            }
        }

        if (percentageComplete >= 1)
            _doRunFade = false;
    }

    public void RunFade(bool lerpDirectionOn)
    {
        _elapsedTime = 0;
        this._lerpDirectionOn = lerpDirectionOn;
        _doRunFade = true;
    }
}
