
using UnityEngine;
using UnityEngine.UI;
using SaveLoad;

[RequireComponent(typeof(Button))]
public class MM_Continue : MonoBehaviour
{

    /************************************************************************************************************************/
    private void Start()
    {
        this.GetComponent<Button>().onClick.AddListener(()=> GameManager.Instance.LoadGame(true));
    }

    private void OnEnable()
    {
        this.GetComponent<Button>().interactable = SaveLoad.SaveSystem.DoesHaveSaveData();
    }

    /************************************************************************************************************************/
}
