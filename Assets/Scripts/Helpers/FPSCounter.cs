using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FPSCounter:MonoBehaviour
{
    public Text m_text;

    public float m_tickRate = 4.0F;

    int m_frameCount = 0;
    float m_deltaTime = 0.0F;
    float m_totalFPS = 0.0F;

    private void Start()
    {
        m_text = GetComponentInChildren<Text>();
    }
    void Update()
    {
        m_frameCount++;
        m_deltaTime += Time.unscaledDeltaTime;
        if (m_deltaTime > 1.0 / m_tickRate)
        {
            m_totalFPS = m_frameCount / m_deltaTime;
            m_frameCount = 0;
            m_deltaTime -= 1.0F / m_tickRate;
        }
        m_text.text = m_totalFPS.ToString("n0");
    }
}
