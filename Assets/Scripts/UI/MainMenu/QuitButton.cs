using UnityEngine;
using UnityEngine.UI;

namespace UI.MainMenu
{
    [RequireComponent(typeof(Button))]
    public class QuitButton : MonoBehaviour
    {

        void Start()
        {
            this.GetComponent<Button>().onClick.AddListener(QuitGame);
        }

        public void QuitGame()
        {
            GameManager.QuitGame();
      
        }
    }
}
