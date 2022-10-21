using CustomInput;
using Narrative;
using Plants;
using Player;
using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

namespace UI
{
    public class UI_ResearchReferenceRightMenu : UI_MenuContent
    {
        [SerializeField] private UI_HybridDiagramDisplayer _hybridDiagramDisplayer;

        public void Init()
        {
            _hybridDiagramDisplayer.Init(true);
        }

        //Needed to be apart of the controllers menu system 
        public override void UpdateGlobalFocus(bool cond)
        {
            if (cond)
            {
                InputReader.SecondaryScrollEvent += OnSecondaryScrollIncremented;
            }
            else
            {
                InputReader.SecondaryScrollEvent -= OnSecondaryScrollIncremented;
            }
        }

        private void OnSecondaryScrollIncremented(int val)
        {
            _hybridDiagramDisplayer.ScrollDiagram(val);
        }

        /************************************************************************************************************************/
        //FOCUS:
        public override bool TrySetFocus(bool isFocus)
        {
            return false;
        }
    }
}
