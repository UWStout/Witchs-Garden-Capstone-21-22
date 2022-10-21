using System;
using UnityEngine;
using Tutorial;

namespace Targeting
{
    public class ChestTarget : HighlightableTarget
    {
        public static event Action OnChestClick;
        [SerializeField] private TutorialTrigger _tutorialTrigger;

        public override void OnInteract()
        {
            OnChestClick?.Invoke();
            _tutorialTrigger.Trigger();
        }
    }
}
