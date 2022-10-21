using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;

namespace Player
{

    public class PlayerInventory 
    {

        public Action<IItem> OnItemAdded;
        public Action<IItem> OnItemRemoved;

        private readonly List<IItem> _playerItems = new List<IItem>();
        
        /************************************************************************************************************************/
        /// <summary>
        /// These really need to be runtime items for this WitchesGarden because of an architecture flaw
        /// </summary>
        /// <param name="item"></param>
        public void AddItem(IItem item)
        {
            if (!(item is RuntimeItem))
            {
                Debug.Log($"<color=yellow> Adding a non-runtim item thru the IItem interface not supported for WG </color> : {item}" );
                return;
            }
            
            if (_playerItems.Contains(item))
            {
                Debug.Log($"<color=yellow> Player already has Item?? </color> : {item}");
                return;
            }

            //Debug.Log($"Added {item.ItemType} {item.ItemName} to player inv BASE");
            _playerItems.Add(item);
            OnItemAdded?.Invoke(item);
        }

        public void RemoveItem(IItem item)
        {
            if (!_playerItems.Contains(item))
                return;

            _playerItems.Remove(item);
            OnItemRemoved?.Invoke(item);
        }

        public bool Contains(IItem item)
        {
            var itemsOfType = GetItemsOfType(item.ItemType);
            if (itemsOfType.Count == 0)
                return false;
            
            return itemsOfType.Contains(item);
        }
        
        public List<IItem> GetAllItems()
        {
            //Return the items in the inventory
            return _playerItems;
        }
        
        public List<IItem> GetItemsOfType(eItemType itemType)
        {
            List<IItem> sortedInventory = new List<IItem>();
            foreach (var item in _playerItems)
            {
                if(item.ItemType == itemType)
                {
                    sortedInventory.Add(item);
                }
            }
            return sortedInventory;
        }

    }
    
}
