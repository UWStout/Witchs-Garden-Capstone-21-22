/*
* AUTHOR : Steve Datz
* DESC : A parent class whos child implementation will contain the information needed to specific activation and deactivation for events
*/
using System;
using UnityEngine;

namespace Narrative
{
	public enum eTriggerCondType{ NONE, NARR_EVENT, PREVIOUS_REQUEST, PLAYER_ITEM, PLAYER_GOLD, CURR_TURN , NUM_COMPLETED_REQUESTS, TUT_EVENT}
	[Serializable]
	public abstract class EventCondition : ScriptableObject
	{
		public abstract eTriggerCondType GetCondition();

		public string UIDescription => FormatUIDescription();

		protected abstract string FormatUIDescription();
	}
}