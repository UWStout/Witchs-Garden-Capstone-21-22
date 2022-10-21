
using Narrative;
using System;
using Tutorial;
using UnityEngine;

namespace Targeting
{
    public class ShopCounterTarget : HighlightableTarget
    {
        public static event Action OnShopClicked;

        [SerializeField] private TutorialTrigger _tutorialTrigger;
        [SerializeField] private TutorialTrigger _tutorialFirstRequestedTrigger;
        [SerializeField] private Transform _customTransformOffset;

        private NarrativeSystem _narrativeSystemInstance;

        public override void OnInteract()
        {
            OnShopClicked?.Invoke();
            _tutorialTrigger.Trigger();

            if (_narrativeSystemInstance == null)
                _narrativeSystemInstance = NarrativeSystem.Instance;
            if (_narrativeSystemInstance.GetCompletedRequestsCount() > 0 || _narrativeSystemInstance.GetRequestActiveCount() > 1)
                _tutorialFirstRequestedTrigger.Trigger();
        }

        protected override void AssignTransform()
        {
            Transform = _customTransformOffset;
        }
    }
}
