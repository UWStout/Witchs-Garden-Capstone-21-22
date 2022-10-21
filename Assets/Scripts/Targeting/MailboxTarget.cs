using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Targeting
{
    public class MailboxTarget : HighlightableTarget
    {
        public static event Action OnMailboxClick;

        [SerializeField] private Transform _customTransformOffset;

        public override void OnInteract()
        {
            OnMailboxClick?.Invoke();
        }

        protected override void AssignTransform()
        {
            Transform = _customTransformOffset;
        }
    }
}