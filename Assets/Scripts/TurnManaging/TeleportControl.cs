using System.Collections;
using System.Collections.Generic;
using UI;
using UnityEngine;
using GameAnalyticsSDK;

namespace TurnManaging
{
    public class TeleportControl : MonoBehaviour
    {
        [SerializeField] private TurnTeleporter _teleporter;

        [SerializeField] private bool _isTeleportOutside;

        [SerializeField] private UI_PermaController _uiConfirmationController;

        [SerializeField] private string _teleportConfirmationString = "";

        [SerializeField] private AK.Wwise.Event teleport;
        /************************************************************************************************************************/

        public void RequestTeleport()
        {
            _uiConfirmationController.AddPopupMessage(_teleportConfirmationString, true, OnPopUpResult);
        }


        /************************************************************************************************************************/

        private void OnPopUpResult(bool cond)
        {
            if (cond)
                DoTeleport();
        }

        private void DoTeleport()
        {
            GameAnalytics.NewProgressionEvent(GAProgressionStatus.Complete, "DaytimePhase");
            _teleporter.BeginTeleportTransition(_isTeleportOutside);
            teleport.Post(gameObject);
        }
    }
}
