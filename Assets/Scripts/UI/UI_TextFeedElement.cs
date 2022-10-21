using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class UI_TextFeedElement : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI _text;

    [SerializeField] UI_Fade _fade;
    [SerializeField] UI_Lerp _lerp;

    public void SetText(int amnt)
    {
        if (_text != null)
        {
            if (amnt >= 0)
                _text.text = "+" + amnt.ToString();
            else
                _text.text = amnt.ToString();
        }
        _fade.RunFade(true);
        _lerp.RunLerp(amnt > 0);

        StartCoroutine(DeleteAfterTime());
    }

    private IEnumerator DeleteAfterTime()
    {
        yield return new WaitForSeconds(1f);
        Destroy(gameObject);
    }
}
