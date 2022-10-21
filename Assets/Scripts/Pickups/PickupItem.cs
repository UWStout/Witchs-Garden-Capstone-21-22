/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using Items;
using Player;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Pickups
{
	[RequireComponent(typeof(Collider))]
	public class PickupItem : MonoBehaviour
	{
		[SerializeField] private ParticleSystem _vfx;
		[SerializeField] private SpriteRenderer _itemSpriteRenderer;

		private IItemBundle _itemBundle;

		private bool _active = true;
		/************************************************************************************************************************/

		public void SetItem(IItemBundle itemBundle)
		{
			_itemBundle = itemBundle;
			if (itemBundle != null)
				_itemSpriteRenderer.sprite = itemBundle.ItemTemplate.ItemImage;
		}

		public void SetActive(bool cond)
		{
			_active = cond;
			_vfx.gameObject.SetActive(cond);
			_itemSpriteRenderer.gameObject.SetActive(cond);
		}

		/************************************************************************************************************************/

		private void OnTriggerEnter(Collider other)
		{
			if (!_active)
				return;
			
			Debug.Log($"collided with : {other.gameObject.name}");

			var player = other.gameObject.GetComponent<PlayerController>();
			if (player == null)
				return;

			//TODO- play sound (eric)
			
			
			foreach (var item in _itemBundle.Items)
			{
				player.PlayerInventory.AddItem(item);
			}

			SetActive(false);
		}

    }
}