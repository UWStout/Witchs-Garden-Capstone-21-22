using System;
using Tutorial;
using UnityEngine;


namespace Targeting
{
    public class CauldronTarget : HighlightableTarget
    {
        public static event Action OnCauldronClick;

        [SerializeField] private TutorialTrigger _tutorialTrigger;

        public override void OnInteract()
        {
            OnCauldronClick?.Invoke();
            _tutorialTrigger.Trigger();
        }
    }
}
