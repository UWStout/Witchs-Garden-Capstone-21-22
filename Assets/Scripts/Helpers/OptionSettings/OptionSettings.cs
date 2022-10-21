/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Helpers.OptionSettings
{
	//public enum  eGraphicSettings {VERY_LOW, LOW , MED, HIGH, VERY_HIGH, ULTRA}
	public class OptionSettings : MonoSingleton<OptionSettings>
	{

		[SerializeField] private TMP_Dropdown _resolutionDropDown;
		[SerializeField] private TMP_Dropdown _graphicsDropDown;
		[SerializeField] private Toggle _fullScreenButton;
		[SerializeField] private GameObject _menuRoot;
		[SerializeField] private Button _closeButton;
		private Resolution[] _availableResolutions;

		private const string QUALITY_BOOL_KEY = "ResolutionSettingBOOL";
		private const string QUALITY_VAL_KEY = "ResolutionSetting";
		/************************************************************************************************************************/
		protected override void OnInitializeFromAwake()
		{
			ShowMenu(false);
			_closeButton.onClick.AddListener(()=>ShowMenu(false));
		}
		private void Start()
		{
			SetupResolutionOptions();
			SetupGraphicsOptions();
			_fullScreenButton.onValueChanged.AddListener(SetFullScreen);
		}
		
		/************************************************************************************************************************/

		public void ShowMenu(bool cond = true)
		{
			_menuRoot.SetActive(cond);
		}
		
		/************************************************************************************************************************/
		/// <summary>
		/// See EDIT->Project Settings->Quality Settings
		/// </summary>
		/// <param name="setting"></param>
		private void SetGraphicQuality(int setting)
		{
			QualitySettings.SetQualityLevel(setting);
			Debug.Log($"Set Graphics Quality: {setting}");
		}

		private void SetFullScreen(bool isFull)
		{
			Screen.fullScreen = isFull;
		}

		private void SetResolution(int resIndex)
		{
			var selectedRes = _availableResolutions[resIndex];
			Screen.SetResolution(selectedRes.width, selectedRes.height, Screen.fullScreen );
			PlayerPrefs.SetInt(QUALITY_BOOL_KEY, 1);
			PlayerPrefs.SetInt(QUALITY_VAL_KEY, resIndex);
		}

		private void SetupResolutionOptions()
		{
			_availableResolutions = Screen.resolutions;
			_resolutionDropDown.ClearOptions();
			List<string> options = new List<string>();
			int currResIndex = 0;
			Resolution currentResolution = Screen.currentResolution;
			for (int i = 0; i < _availableResolutions.Length; i++)
			{
				var res = _availableResolutions[i];
				string resolutionText = $"{res.width} x {res.height}";
				//Multiple Monitors seems to add duplicate entries
				if (options.Contains(resolutionText))
					continue;
				options.Add(resolutionText);
				if (res.width == currentResolution.width && res.width == currentResolution.width)
				{
					currResIndex = i;//I guess this could be out of bounds if we're removing things.. but drop down seems to handle it??
					Debug.Log($"Set Current res index to: {currResIndex} for [{res.width} x {res.height}]");
				}
			}

			_resolutionDropDown.AddOptions(options);
			//_resolutionDropDown.SetValueWithoutNotify(currResIndex);
			_resolutionDropDown.value = currResIndex;
			_resolutionDropDown.RefreshShownValue();
			_resolutionDropDown.onValueChanged.AddListener(SetResolution);
		}
		
		private void SetupGraphicsOptions()
		{
			_graphicsDropDown.ClearOptions();
			// See EDIT->Project Settings->Quality Settings
			int currIndex = 5;
			if (PlayerPrefs.GetInt(QUALITY_BOOL_KEY) != 0)
			{
				currIndex = PlayerPrefs.GetInt(QUALITY_VAL_KEY);
			}

			List<string> options = new List<string>()
			{
				"Very Low",
				"Low",
				"Medium",
				"High",
				"Very High",
				"Ultra"
			};
			_graphicsDropDown.AddOptions(options);
			_graphicsDropDown.value = currIndex;
			_graphicsDropDown.RefreshShownValue();
			SetGraphicQuality(currIndex);
			_graphicsDropDown.onValueChanged.AddListener(SetGraphicQuality);
		}

		
		
	}

}