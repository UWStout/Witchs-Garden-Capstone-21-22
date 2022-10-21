using System.Collections;
using System.Collections.Generic;
using TurnManaging;
using UnityEngine;

namespace Targeting
{
    [RequireComponent(typeof(TeleportControl))]
    public class BedTarget : HighlightableTarget
    {
        [SerializeField] TeleportControl _teleportControl;
        [SerializeField] private Transform _customTransformOffset;
        /************************************************************************************************************************/
        public override void OnInteract()
        {
            //tell the Perma controller to display a confirmation
            _teleportControl.RequestTeleport();
        }

        /************************************************************************************************************************/
        protected override void AssignTransform()
        {
            Transform = _customTransformOffset;
        }
    }
}
