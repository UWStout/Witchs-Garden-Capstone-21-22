using UnityEngine.SceneManagement;
using UnityEngine;
using Helpers;
using NaughtyAttributes;
using GameAnalyticsSDK;
using CustomInput;

public class GameManager : MonoSingleton<GameManager>
{
    [SerializeField] [Scene] int _mainMenuScene;
    [SerializeField] [Scene] int _gardenScene;

    private bool _shouldLoadFromSave = false;

    /************************************************************************************************************************/
    protected override void OnInitializeFromAwake()
    {
        //Turn off debugging info for GA when inside the editor cuz its flooding the console
#if UNITY_EDITOR
        GameAnalytics.SettingsGA.InfoLogEditor = false;
#endif
    }

    private void Start()
    {
        GameAnalytics.Initialize();

        //Loaded from Playmode Hack 
        if (SceneManager.GetActiveScene().name.ToUpper().Contains("GARDEN"))
        {
            //(after slight delay to prevent race conditions):
            Invoke(nameof(LoadFromSave), 0.5f);
        }

        //Debug.Log($"[{gameObject.name}] <color=red>Start!</color>");
        SceneManager.sceneLoaded += OnSceneLoaded;
    }


    public void LoadMainMenu()
    {
        GameAnalytics.NewProgressionEvent(GAProgressionStatus.Start, "MainMenu");
        SceneManager.LoadSceneAsync(_mainMenuScene);
        InputReader.Instance.EnableMenuInput();
    }

    public void LoadGame(bool fromSave=false)
    {
        GameAnalytics.NewProgressionEvent(GAProgressionStatus.Start, "PlayGame");
        SceneManager.LoadSceneAsync(_gardenScene);
        InputReader.Instance.EnableGameplayInput();
        //parameter used for picking right data after waiting for scene to load 
        _shouldLoadFromSave = fromSave;
        // Debug.Log($"[{gameObject.name}] <color=red>LoadGame</color>  fromSave={fromSave}");
    }


    public static void QuitGame()
    {
        GameAnalytics.NewProgressionEvent(GAProgressionStatus.Complete, "QuitGame");
        Application.Quit();
    }


    /************************************************************************************************************************/
    private void OnSceneLoaded(Scene scene, LoadSceneMode mode)
    {
        if (_gardenScene == scene.buildIndex)
        {
            Invoke(nameof(LoadFromSave), 1); // slight delay to let scripts run awake/start - race condition hack
        }
        //Debug.Log($" OnSceneLoaded {_gardenScene} v {scene.buildIndex}   , scene={scene.name} mode={mode}");
    }

    private void LoadFromSave()
    {
        if (_shouldLoadFromSave)
            SaveLoad.SaveSystem.Load();
        else
            SaveLoad.SaveSystem.LoadDefault();

        //Debug.Log($"[{gameObject.name}] loaded from save  bool={_shouldLoadFromSave}");

    }

}
