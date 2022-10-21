using UnityEngine;
using UnityEngine.UI;

namespace UI.MainMenu
{

    [RequireComponent(typeof(Button))]
    public class MM_MainMenuButton : MonoBehaviour
    {

        [SerializeField] private GameObject _UI;
        /************************************************************************************************************************/

        private void Start()
        {
            this.GetComponent<Button>().onClick.AddListener(LoadMM);
        }
        /************************************************************************************************************************/

        public void LoadMM()
        {
            _UI.SetActive(false);
            GameManager.Instance.LoadMainMenu();
        }
    }
}

