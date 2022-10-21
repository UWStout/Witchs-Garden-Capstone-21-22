using System;
using System.Collections;
using System.Collections.Generic;
using Tutorial;
using UnityEngine;

namespace Targeting
{
    public class CatTarget : HighlightableTarget
    {
        [SerializeField] private TutorialTrigger _tutorialTrigger;

        [SerializeField] private Transform _customTransformOffset;

        public override void OnInteract()
        {
            _tutorialTrigger.Trigger();
        }

        protected override void AssignTransform()
        {
            Transform = _customTransformOffset;
        }
    }
}