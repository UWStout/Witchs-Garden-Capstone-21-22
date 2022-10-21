using UnityEngine;
using UnityEngine.UI;

namespace UI.MainMenu
{

    [RequireComponent(typeof(Button))]
    public class MM_PlayButton : MonoBehaviour
    {
        [SerializeField] GameObject _mainMenuUI;
        [SerializeField] GameObject _loadingUI;
        /************************************************************************************************************************/

        private void Start()
        {
            this.GetComponent<Button>().onClick.AddListener(PlayGame);
        }
        /************************************************************************************************************************/

        public void PlayGame()
        {
            _mainMenuUI.SetActive(false);
            _loadingUI.SetActive(true);
            GameManager.Instance.LoadGame();
        }
    }
}
