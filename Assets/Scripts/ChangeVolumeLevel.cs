using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ChangeVolumeLevel : MonoBehaviour
{
    [SerializeField] private Slider _masterSlider;
    [SerializeField] private Slider _musicSlider;
    [SerializeField] private Slider _sfxSlider;
    
    public void SetVolume(string value)
    { 
        if (value == "Master")
        {
            // Debug
            float masterVolume = _masterSlider.value;
            AkSoundEngine.SetRTPCValue("Master Audio Bus", masterVolume);
        }

        if (value == "Music")
        {
            // Debug
            float musicVolume = _musicSlider.value;
            AkSoundEngine.SetRTPCValue("Music", musicVolume);
        }

        if (value == "Sounds")
        {
            // Debug
            float SFXVolume = _sfxSlider.value;
            AkSoundEngine.SetRTPCValue("SFX", SFXVolume);
        }
    }
}
