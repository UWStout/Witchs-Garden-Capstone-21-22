/*
* AUTHOR : Steve Datz
* DESC :
*/

using Diagrams;
using NaughtyAttributes;
using Player;
using Tutorial;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Items
{
	public class PlayerInventoryHacker : MonoBehaviour
	{

		[SerializeField] private PlayerController _player;
		[SerializeField] private SerializedItemTemplate _itemTemplate;
		[SerializeField] private DiagramTemplate _diagTemplate;
		[SerializeField] private float _setQuality;
		[SerializeField] private TutorialTrigger _tutorialtrigger;

		[SerializeField] private int _goldAmnt=200;
		/************************************************************************************************************************/
		
		[Button()]
		public void AddItemToPlayerInv()
		{
			_player.PlayerInventory.AddItem(GenerateItem());
		}
		

		[Button()]
		public void AddGoldToPlayer()
		{
			_player.PlayerGold.IncrementGold(_goldAmnt);
		}
		
		[Button()]
		public void AddDiagToPlayer()
		{
			_player.DiagramHandler.AddDiagram(_diagTemplate);
		}

		[Button()]
		public void ForceInvokeTutPrompt()
		{
			_tutorialtrigger.Trigger();
		}
		/************************************************************************************************************************/
		private RuntimeItem GenerateItem()
		{
			return ItemManager.CreateRuntimeItem(_itemTemplate, (int)_setQuality);
		}

	}

}