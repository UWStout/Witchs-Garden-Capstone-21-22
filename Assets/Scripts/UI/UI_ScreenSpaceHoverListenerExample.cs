
using System;
using UnityEngine;
using UnityEngine.UI;
using Targeting;
using TMPro;


namespace UI
{
    public class UI_ScreenSpaceHoverListenerExample : UI_ScreenSpaceHoverListener
    {
        [SerializeField] GameObject _bg;
        [SerializeField] TextMeshProUGUI _text;
        /************************************************************************************************************************/

        private void Awake()
        {
            ToggleComponents(false);
        }
        /************************************************************************************************************************/

        protected override void ChangeDisplay(ITargetable targ)
        {
            //Debug.Log($"Example heard: {targ}");
            if (targ == null || targ.Transform==null)
            {
                ToggleComponents(false);
                return;
            }
            ToggleComponents(true);
            
            var patch = targ.Transform.gameObject.GetComponent<Garden.Patch>();
            if (patch != null)
                _text.text = "Plant Grow Time: " + patch.GetPlant().GetCurrentGrowTime();
            else
                _text.text = targ.Transform.gameObject.name;

            //an example of how you can move a screenspace element, to a world space point
           var screenPos= WorldToScreenPoint(targ.Transform.position);
            //You will want to do some math based off of screen pos to figure out where to actually offset this- instead of dead ontop of
            //var offset = new Vector3(0, 0, 0);
           // this.transform.position = screenPos + offset;
           
            //TODO-gain access to the players position in relation to this tooltip and use it to offset            
            SetToolTipPos(screenPos);
        }
        /************************************************************************************************************************/

        private void ToggleComponents(bool isOn)
        {
            _text.gameObject.SetActive(isOn);
            _bg.SetActive(isOn);
        }

        /************************************************************************************************************************/

    }
}
