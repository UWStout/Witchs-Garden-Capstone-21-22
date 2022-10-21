/*
* AUTHOR : Steve Datz
* DESC :
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System;
using UnityEngine;


namespace TurnManaging
{
	public abstract class TurnListener : MonoBehaviour
	{
		 private TurnManager _turnManager;
		
		/************************************************************************************************************************/
		protected virtual void Awake()
		{
			_turnManager = TurnManager.Instance;
			
		}

		protected virtual void Start()
		{
			if (_turnManager)
			{
				_turnManager.OnTurnEnd += OnTurnAdvance;
				_turnManager.OnTimeChange += OnTimeAdvance;
			}
				
		}

		protected virtual void OnDestroy()
		{
			if (_turnManager)
			{
				_turnManager.OnTurnEnd -= OnTurnAdvance;
				_turnManager.OnTimeChange -= OnTimeAdvance;
			}
		}

		protected abstract void OnTurnAdvance(int turnNo);
		protected virtual void OnTimeAdvance(bool isDay, int turnNo)
		{

		}
	}

}