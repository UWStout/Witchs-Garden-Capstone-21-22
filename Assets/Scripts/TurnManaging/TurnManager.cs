/*
* AUTHOR : Steve Datz
* DESC :
*/
#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

using System;
using CustomInput;
using Helpers;
using SaveLoad;
using GameAnalyticsSDK;
using UnityEngine;

namespace TurnManaging
{
	public class TurnManager : InstancedMonoBehaviour<TurnManager> , ISaveable, ILoadable
	{
		/// <summary>
		/// int = day number
		/// </summary>
		public Action<int> OnTurnEnd;
		/// <summary>
		/// True = is day, false= is night
		/// </summary>
		public Action<bool, int> OnTimeChange;

		private int _currentTurn = 1;
		private bool _timeIsDay = true;
		/************************************************************************************************************************/

		public void Start()
		{
			RegisterForInput(true);
			RegisterTo();
		}

		public void OnDestroy()
		{
			RegisterForInput(false);
			UnRegisterTo();
		}

		/************************************************************************************************************************/

		public void ToggleTime()
		{
			GameAnalytics.NewProgressionEvent(GAProgressionStatus.Complete, (_timeIsDay ? "DaytimePhase" : "EveningPhase"), _currentTurn.ToString());

			_timeIsDay = !_timeIsDay;
			//Debug.Log("TIME IS NOW " + (_timeIsDay ? "DaytimePhase" : "EveningPhase"));

			//If going from night to day, increment turn
			if (_timeIsDay)
				EndTurn();

			//Invoke time change after ending turn, to get accurate _currentTurn
			OnTimeChange?.Invoke(_timeIsDay, _currentTurn);

			GameAnalytics.NewProgressionEvent(GAProgressionStatus.Start, (_timeIsDay ? "DaytimePhase" : "EveningPhase"), _currentTurn.ToString());
		}

		/************************************************************************************************************************/

		private void RegisterForInput(bool cond)
		{
			if (cond)
			{
				InputReader.DeveloperSkipDayEvent += ToggleTime;
			}
			else
			{
				InputReader.DeveloperSkipDayEvent -= ToggleTime;
			}
		}

		private void EndTurn()
		{
			GameAnalytics.NewProgressionEvent(GAProgressionStatus.Complete, "Day", _currentTurn.ToString());

			_currentTurn++;
			//Debug.Log("CURRENT TURN IS NOW " + _currentTurn);
			OnTurnEnd?.Invoke(_currentTurn);

			GameAnalytics.NewProgressionEvent(GAProgressionStatus.Start, "Day", _currentTurn.ToString());
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
			data.CurrentTurn = _currentTurn;
        }

		public void Load(GameData data)
		{
			_currentTurn = data.CurrentTurn;
			OnTurnEnd?.Invoke(_currentTurn);
			//Always want to start out in the day time outside house
			_timeIsDay = true;
			OnTimeChange?.Invoke(_timeIsDay, _currentTurn);
		}
	}
}