/*
* AUTHOR : Steve Datz
* DESC : Monitors the narration system and forwards info to the UI
*/

using System.Collections.Generic;
using Narrative;
using UnityEngine;

namespace UI
{

	public class UI_NarrationMonitor : MonoBehaviour
	{
		[SerializeField] private UI_PermaController _permaController;
		[SerializeField] private UI_ShopSellMenu _sellMenu;
		[SerializeField] private UI_RequestListDisplay _currentOrdersReferenceMenu;

		private readonly List<ActiveCharacterRequest> _activeRequests = 
			new List<ActiveCharacterRequest>();
		
		/************************************************************************************************************************/
		private void Start()
		{
			Subscribe(true);
		}

		private void OnDestroy()
		{
			Subscribe(false);
		}

		/************************************************************************************************************************/

		private void NewRequestMade(ActiveCharacterRequest newRequest)
		{
			_activeRequests.Add(newRequest);
			UpdateDisplays();

			_permaController.AddCharacterPopupMessage(newRequest, true);
		}

		private void RequestComplete(ActiveCharacterRequest oldRequest)
		{
			if (!_activeRequests.Contains(oldRequest))
				return;
			_activeRequests.Remove(oldRequest);
			UpdateDisplays();

			_permaController.AddCharacterPopupMessage(oldRequest, false);
		}

		private void UpdateDisplays()
		{
			//Tell UI about the new order
			_sellMenu.UpdateDisplay(_activeRequests);
			_currentOrdersReferenceMenu.UpdateDisplay(_activeRequests);
		}
		
		private void Subscribe(bool cond)
		{
			var narrSys = NarrativeSystem.Instance;
			if (narrSys == null)
				return;
			if (cond)
			{

				narrSys.OnGenerateNewRequest += NewRequestMade;
				narrSys.OnRequestComplete += RequestComplete;
			}
			else
			{
				narrSys.OnGenerateNewRequest -= NewRequestMade;
				narrSys.OnRequestComplete -= RequestComplete;
			}
		}
		
		/************************************************************************************************************************/
	}
}