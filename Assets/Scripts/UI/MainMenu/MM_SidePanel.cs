using UnityEngine;
using UnityEngine.UI;

namespace UI.MainMenu
{
    public enum eSidePages { NONE, CREDITS, SETTINGS }

    public class MM_SidePanel : MonoBehaviour
    {
        [SerializeField] Image _bgImage;
        [SerializeField] GameObject _creditsPg;
        [SerializeField] GameObject _settingsPg;
        [SerializeField] private Button _closeButton;

        private eSidePages _currentPage;

        /************************************************************************************************************************/
        private void Start()
        {
            _closeButton.onClick.AddListener(TurnOffFromButton);
            ChangePanelDisplay(eSidePages.NONE);
        }

        /************************************************************************************************************************/

        public void TurnOffFromButton()
        {
            ChangePanelDisplay(eSidePages.NONE);
        }

        /// <summary>
        /// Encapuslates the idea of a menu stack by turning the page off of its the current page
        /// </summary>
        /// <param name="pg"></param>
        public void TogglePage(eSidePages pg)
        {
            if (_currentPage == pg)
            {
                TogglePage(eSidePages.NONE);
                return;
            }

            ChangePanelDisplay(pg);
        }

        private void ChangePanelDisplay(eSidePages pg)
        {
            _currentPage = pg;
            _bgImage.enabled = _currentPage != eSidePages.NONE;
            switch (_currentPage)
            {
                case eSidePages.NONE:
                    {
                        _creditsPg.SetActive(false);
                        _settingsPg.SetActive(false);
                        _closeButton.gameObject.SetActive(false);
                        break;
                    }
                case eSidePages.CREDITS:
                    {
                        _creditsPg.SetActive(true);
                        _settingsPg.SetActive(false);
                        _closeButton.gameObject.SetActive(true);
                        break;
                    }
                case eSidePages.SETTINGS:
                    {
                        _creditsPg.SetActive(false);
                        _settingsPg.SetActive(true);
                        _closeButton.gameObject.SetActive(true);
                        break;
                    }
            }
        }



        /************************************************************************************************************************/
    }
}
