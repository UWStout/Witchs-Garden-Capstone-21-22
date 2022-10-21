using System.Collections;
using System.Collections.Generic;
using TurnManaging;
using UnityEngine;
namespace Player
{

	public class PlayerManaMonitor : TurnListener
	{
		[SerializeField] private PlayerController _playerController;
        protected override void OnTurnAdvance(int turnNo)
		{
			_playerController.PlayerMana.RestoreMana();
		}


	}
}
