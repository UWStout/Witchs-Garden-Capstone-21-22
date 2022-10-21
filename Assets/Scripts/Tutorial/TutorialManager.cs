using System;
using System.Collections;
using TurnManaging;
using UI;
using UnityEngine;
using Helpers;
using SaveLoad;
using System.Collections.Generic;

namespace Tutorial
{
	public class TutorialManager : InstancedMonoBehaviour<TutorialManager>, ILoadable, ISaveable
	{
		public event Action<List<TutorialPrompt>> OnPromptIdOccurred;
		
		[SerializeField] TimedPromptCollection _timedPrompts;
		//[SerializeField] private UI_PermaController _permaController;
		[SerializeField] private bool _enableTutorialSystem = true; // Dev only

		private TutorialOneOffEvents _oneOffEvents;
	
		/************************************************************************************************************************/

	#region Setup
		private void Start()
		{
			SubscribeToDelegates(true);
			RegisterTo();
		}

		private void OnDestroy()
		{
			SubscribeToDelegates(false);
			UnRegisterTo();
		}

		private void SubscribeToDelegates(bool cond)
		{
			TurnManager m = TurnManager.Instance;
			if (m == null)
				return;

			if (cond)
			{
				m.OnTimeChange += OnToggleTime;
			}
			else
			{
				m.OnTimeChange -= OnToggleTime;
			}
		}
	#endregion

		/************************************************************************************************************************/



		public void TriggerDynamicPrompt(eOneOffPromptID id, List<TutorialPrompt> prompts, Action callback = null)
        {
			if (id == eOneOffPromptID.THIRD_HARVEST)
				_oneOffEvents.HarvestsCount++;

			if (!_oneOffEvents.CanOccur(id))
			{
				//Debug.Log($"<color=green> Prevented:</color> : {id} : {prompt.Text}");
					return;
			}
			OnPromptIdOccurred?.Invoke(prompts);
			//_permaController.AddTutorialPopupMessage(prompts);
			_oneOffEvents.SetOccurred(id);
			callback?.Invoke();
		}

		/************************************************************************************************************************/

		private IEnumerator SetupPrompts(int turn, bool isDay)
		{
			//Debug.Log($"[TuT]SetupPrompts ({turn}, {isDay})");

			yield return new WaitForSeconds(0f);

			var currentPrompts = _timedPrompts.GetPrompts(turn, isDay);

			if (currentPrompts.Count > 0)
			{
				//_permaController.AddTutorialPopupMessage(currentPrompts);
				OnPromptIdOccurred?.Invoke(currentPrompts);
			}
		}


		private void OnToggleTime(bool isDay, int turnNo)
		{
			//Debug.Log($"OnToggleTime : #{turnNo} isDay={isDay}");
			if (_enableTutorialSystem)
				StartCoroutine(SetupPrompts(turnNo, isDay));
		}



		/************************************************************************************************************************/
		// ---------- SAVING AND LOADING 
		/************************************************************************************************************************/


		public void RegisterTo()
		{
			RegisteredItems.Register(this);
		}

		public void UnRegisterTo()
		{
			RegisteredItems.Unregister(this);
		}
	

        public void Save(GameData data)
        {
			data.TutorialEnabled = _enableTutorialSystem;
			data.TutorialEvents = _oneOffEvents;
			//Dont save the currrent turn, let the turn manager do it 

		}

		public void Load(GameData data)
		{
			//_currentTurn = data.CurrentTurn; //dont really need this, it comes from binding to OnToggleTime()
			//Stop caring about this...
			//_enableTutorialSystem = data.TutorialEnabled;

			//Debug.Log($"--Load Tutorial enabled={_enableTutorialSystem}");

			_oneOffEvents = data.TutorialEvents;
		}

	}
}