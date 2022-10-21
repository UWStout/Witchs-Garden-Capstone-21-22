using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Tutorial
{
    [RequireComponent(typeof(Collider))]
    public class GardenTutorialComponent : MonoBehaviour
    {
        [SerializeField] private TutorialTrigger _onEnter;
        [SerializeField] private TutorialTrigger _onExit;


        private void OnTriggerEnter(Collider other)
        {
            _onEnter.Trigger();

        }

        private void OnTriggerExit(Collider other)
        {
            _onExit.Trigger();
        }

    }

}
