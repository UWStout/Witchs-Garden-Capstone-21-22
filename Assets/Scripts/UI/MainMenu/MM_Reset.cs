/*
* AUTHOR : Steve Datz
* DESC : This is a mega hack to try to get around cleaning up our mono singletons and returning to the MM
*/




using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace UI.MainMenu
{
    public class MM_Reset : MonoBehaviour
    {
        private void Start()
        {

            var singlestons=SceneManager.GetSceneByName("DontDestroyOnLoad");
            if(singlestons!=null )
                Debug.Log($"Found: {singlestons}");

          //  Invoke(nameof(CleanUp), 2);
        }

        private void CleanUp()
        {

            Debug.Log($"# of scenes= {SceneManager.sceneCount}");
            //Doesnt work, I am going to have to write my own add-on to the monosingleton to keep track of whos active and destroy it. - TODO

            List<GameObject> rootGameObjectsExceptDontDestroyOnLoad = new List<GameObject>();
            for (int i = 0; i < SceneManager.sceneCount; i++)
            {
                var scene = SceneManager.GetSceneAt(i);
                rootGameObjectsExceptDontDestroyOnLoad.AddRange(scene.GetRootGameObjects());

                Debug.Log($"<color=green>[Scene]</color>: {scene.name}");
            }

            foreach (var rootObj in rootGameObjectsExceptDontDestroyOnLoad)
            {
                Debug.Log($"..... Found -> {rootObj}");
            }
        }
    }
}
