/*
* AUTHOR : Steve Datz
* DESC :
*/


using System;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI.MainMenu
{
	public class EscMenu : MonoBehaviour
	{

		public Action OnManuallyClosed;

		[SerializeField] private GameObject _optionsMenu;
		[SerializeField] private Button _optionsCloseButton;
		
		[SerializeField] private GameObject _settingsMenu;
		[SerializeField] private Button _settingsOpenButton;
		[SerializeField] private Button _settingsCloseButton;

		/************************************************************************************************************************/

		private void Start()
		{
			_optionsCloseButton.onClick.AddListener(TryCloseManual);
			_settingsOpenButton.onClick.AddListener(()=>ShowSettingsMenu(true));
			_settingsCloseButton.onClick.AddListener(TryCloseManual);

			ShowOptionsMenu(false);
			ShowSettingsMenu(false);
		}

		/************************************************************************************************************************/
		/// <summary>
		/// Opens the menu in its default state
		/// </summary>
		public void OpenMenu()
		{
			ShowSettingsMenu(false);
			ShowOptionsMenu(true);
		}

		/// <summary>
		/// Tries to back out of the menu and handles any submenus 
		/// </summary>
		/// <returns> returns false if it was nested (in settings) and isnt closed yet,  returns true if it was closed</returns>
		public bool CloseMenu()
		{
			if (_settingsMenu.activeInHierarchy)
			{
				ShowSettingsMenu(false);
				ShowOptionsMenu(true);
				return false;
			}

			ShowOptionsMenu(false);
			return true;
		}


		/************************************************************************************************************************/

		private void TryCloseManual()
		{
			//TELL THE Perma HUD were being closed manually (from mouse click, not keyevent)
			bool wasClosed= CloseMenu();

			if(wasClosed)
				OnManuallyClosed?.Invoke();

		}


		private void ShowOptionsMenu(bool cond)
		{
			_optionsMenu.SetActive(cond);
		}

		private void ShowSettingsMenu(bool cond)
		{
			_settingsMenu.SetActive(cond);
		}


    }

}