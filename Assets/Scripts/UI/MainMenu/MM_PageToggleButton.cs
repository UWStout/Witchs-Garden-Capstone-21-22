using UnityEngine;
using UnityEngine.UI;

namespace UI.MainMenu
{

    [RequireComponent(typeof(Button))]
    public class MM_PageToggleButton : MonoBehaviour
    {

        [SerializeField] private MM_SidePanel _sidePanel;
        [SerializeField] private eSidePages _pageToToggle;

        /************************************************************************************************************************/


        void Start()
        {
            this.GetComponent<Button>().onClick.AddListener(ToggleObj);
        }


        /************************************************************************************************************************/

      
        public void ToggleObj()
        {
            _sidePanel.TogglePage(_pageToToggle);
        }
    }
}
