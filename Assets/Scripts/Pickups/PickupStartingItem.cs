/*
* AUTHOR : Steve Datz
* DESC : A way to set starting items to hold an item bundle without
* altering the functionality of the base pickup item
*/


using UnityEngine;
using Items;

namespace Pickups
{

    public class PickupStartingItem : MonoBehaviour
    {
        [SerializeField] private PickupItem _pickupToSet;
        [SerializeField] private SerializedItemTemplate _itemToSet;
        [Range(1, 100)]
        [SerializeField] private int _itemQuality = 50;

        /************************************************************************************************************************/

        void Start()
        {
            var newBundle = new SameQualityItemBundle(ItemManager.CreateRuntimeItem(_itemToSet, _itemQuality));
            _pickupToSet.SetItem(newBundle);
            _pickupToSet.SetActive(true);
        }

        /************************************************************************************************************************/

    }
}
