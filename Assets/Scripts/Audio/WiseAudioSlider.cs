
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Slider))]
public class WiseAudioSlider : MonoBehaviour
{
    [SerializeField] private string _wiseSoundID;
    //[SerializeField] private AK.Wwise.RTPC _rtpc;

    // Range MUST be 0-100 as to account for the WWise range of Audio
    [SerializeField] [Range(0f, 100f)] private float _initialValue;
    //Master Audio Bus
    //Music
    //SFX

    private void Awake()
    {
        AdjustWiseBank(_initialValue);
    }

    private void Start()
    {
        var slider = this.GetComponent<Slider>();
        slider.value = _initialValue;
        slider.onValueChanged.AddListener(AdjustWiseBank);
    }

    public void AdjustWiseBank(float sliderVal)
    {
        AkSoundEngine.SetRTPCValue(_wiseSoundID, sliderVal);
        //_rtpc.SetValue(gameObject, sliderVal);
        //Debug.Log($"{_wiseSoundID} set to {sliderVal}");
    }


    /// <summary>
    /// Needs to get into range of -90 to +0
    /// </summary>
    /// <param name="sliderVal"></param>
    /// <returns></returns>
    private float ConvertSlideValueToWiseRange(float sliderVal)
    {
        //TODO-eric set slider value 1 to max and zero to -90
        return sliderVal;
    }



}
