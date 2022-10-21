using Items;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace UI
{
    public class UI_PickupFeed : MonoBehaviour
    {
        private Queue<UI_PickupFeedSlot> feedSlotObjectReferences = new Queue<UI_PickupFeedSlot>();

        [SerializeField] UI_PickupFeedSlot feedSlotPrefabReference;

        private IBundleContainer _itemBundleContainer;

        private const int MAX_NUMBER_FEED_SLOTS_SHOWN = 4;

        void OnDestroy()
        {
            if (_itemBundleContainer != null)
                _itemBundleContainer.RegisterToItemAdded(false, (item) => AddItemToFeed(item));
        }

        public void SetItemBundleContainer(IBundleContainer getItemsByType)
        {
            if (getItemsByType == null)
                return;
            //Debug.Log("Feed is registered");
            _itemBundleContainer = getItemsByType;
            _itemBundleContainer.RegisterToItemAdded(true, (item) => AddItemToFeed(item));
        }

        public void AddItemToFeed(IItem item)
        {
            if (feedSlotPrefabReference != null)
            {
                //Debug.Log("Feed adding item!");
                UI_PickupFeedSlot newSlot = Instantiate(feedSlotPrefabReference, Vector3.zero, Quaternion.identity);
                newSlot.transform.parent = transform;
                newSlot.transform.localScale = Vector3.one;
                newSlot.SetSlotItem(item);

                feedSlotObjectReferences.Enqueue(newSlot);

                //Check if the max number of feed slots are shown; if true then dequeue last item
                while (feedSlotObjectReferences.Count > MAX_NUMBER_FEED_SLOTS_SHOWN)
                    DequeueItemFromFeed();

                StartCoroutine(CheckDequeueFeed());
            }
        }

        private void DequeueItemFromFeed()
        {
            //Dequeue from queue and delete the game object
            Destroy(feedSlotObjectReferences.Dequeue().gameObject);
        }

        private IEnumerator CheckDequeueFeed()
        {
            yield return new WaitForSeconds(3f);
            if (feedSlotObjectReferences.Count > 0)
            {
                DequeueItemFromFeed();
                CheckDequeueFeed();
            }
        }
    }
}