
using System;
using Tutorial;
using UnityEngine;

namespace Targeting
{
    public class ResearchNookTarget : HighlightableTarget
    {
        public static event Action OnResearchClicked;

        [SerializeField] private TutorialTrigger _tutorialTrigger;

        [SerializeField] private MeshRenderer _bookOnDesk;

        public override void OnInteract()
        {
            OnResearchClicked?.Invoke();
             _tutorialTrigger.Trigger();
        }

        public override void OnHoverBegin()
        {
            base.OnHoverBegin();
            Material newMat = new Material(_bookOnDesk.material);
            newMat.shader = _shaders.Highlight;
            _bookOnDesk.material = newMat;
           // Debug.Log($"--Highlight sub book TRUE---");
        }

        public override void OnHoverEnd()
        {
            base.OnHoverEnd();
            Material newMat = new Material(_bookOnDesk.material);
            newMat.shader = _shaders.Default;
            _bookOnDesk.material = newMat;
           // Debug.Log($"--Highlight sub book FALSE---");
        }
    }
}
