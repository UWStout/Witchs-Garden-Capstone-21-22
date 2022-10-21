/*
* AUTHOR : Steve Datz
* DESC : A parent class whos child implementation will contain the information needed to hand out rewards from events
*/

using UnityEngine;

namespace Narrative
{
	public enum ePayloadType {GOLD, RESEARCH, ITEM, DIAGRAM, NARR_EVENT , SPELL}
	
	//[CreateAssetMenu(fileName = "FILENAME", menuName = "MENUNAME", order = 0)]
	public abstract class Reward : ScriptableObject
	{
		public abstract ePayloadType GetPayloadType();
		public abstract string GetFormattedUIRewardText();
	}
}