/*
* AUTHOR : Steve Datz
* DESC :
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

using TurnManaging;
using UnityEngine;


namespace Garden
{
	public class PatchTurnMonitor : TurnListener
	{
		[SerializeField] private Patch _dirtPatch = default;
		
		//a hack for syncing with loading from a save
		private int _syncedTurnNum = 0; 
		//if you save on day 1..possible to adv an extra day, could make -1 but havent tested what this will do to normal gameplay
		//I think it would do the reverse, and not allow plants to grow on day 1 at all..
		/************************************************************************************************************************/
		
		protected override void OnTurnAdvance(int turnNo)
		{
			var lastTurn = _syncedTurnNum;
			_syncedTurnNum = turnNo;
			if (turnNo != lastTurn+1)
			{
				//Weird hack to not adv a curr research when loading from save data on Init
				return;
			}
			
			if (_dirtPatch == null)
				FindDirtPatch();
			
			_dirtPatch.TurnAdvance();
		}


		/************************************************************************************************************************/
		private void FindDirtPatch()
		{
			_dirtPatch = this.GetComponentInParent<Patch>();
		}


		/************************************************************************************************************************/
	#if UNITY_EDITOR
		private void Reset()
		{
			FindDirtPatch();
		}
	#endif
		/************************************************************************************************************************/
	}
}