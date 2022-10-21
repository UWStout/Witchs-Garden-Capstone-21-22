using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TurnManaging;

namespace Targeting
{
    [RequireComponent(typeof(TeleportControl))]
    public class DoorTarget : HighlightableTarget
    {

        [SerializeField] TeleportControl _teleportControl;

        /************************************************************************************************************************/
        public override void OnInteract()
        {
            _teleportControl.RequestTeleport();
        }

        /************************************************************************************************************************/

    }

}
