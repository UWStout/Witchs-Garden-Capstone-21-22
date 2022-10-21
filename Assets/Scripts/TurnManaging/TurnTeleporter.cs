/*
* AUTHOR : Steve Datz
* DESC : A script thats very coupled to the logic for teleporting and transitions in Witchs Garden.
*        Also handles controlling a circle fade transition     
*/
#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"


using System.Collections;
using CustomInput;
using Targeting;
using UnityEngine;
using Player;
using SaveLoad;
using TMPro;

namespace TurnManaging
{
    public class TurnTeleporter : MonoBehaviour
    {
        [SerializeField] private TurnSpawnLocation _insideLocation;
        [SerializeField] private TurnSpawnLocation _outsideLocation;
        [SerializeField] private PlayerController _player;
        [SerializeField] private FollowCursor _followCursor;
        [SerializeField] private CircleFaderController _uiFader;

        [SerializeField] private Color _dayColor = Color.yellow;
        [SerializeField] private Color _nightColor = Color.blue;

        [SerializeField] private Material[] _dayPlayerMats;
        [SerializeField] private Material[] _nightPlayerMats;
        
        [SerializeField] private float _transitionTime = 1f;

        [SerializeField] private TextMeshProUGUI _savingText;
        /************************************************************************************************************************/

        private void Start()
        {
            //Turn off the fader till we need it
            _uiFader.enabled = false;
        }
        /************************************************************************************************************************/

        public void BeginTeleportTransition(bool teleportOutside)
        {
            //Debug.Log($"Teleport outside= {teleportOutside}");
            TurnSpawnLocation spawnChoice = teleportOutside ? _outsideLocation : _insideLocation;
            Color fadeColor = teleportOutside ? _nightColor : _dayColor;
            _uiFader.SetColor(fadeColor);

            //Toggle GardenHUD on/off
            PlayerActionHandler.Instance.ActivateGardenUI(teleportOutside);
            //Save the Game is we are about to go inside for the night
            if(!teleportOutside)
            {
                SaveSystem.Save();
            }

            StartCoroutine(ManageTransition(spawnChoice.position, teleportOutside));
        }


        /************************************************************************************************************************/

        /// <summary>
        /// This thing could use some refactoring, but its fine..
        /// Not sure how I could make a FadeToBlack Method, that isnt an IEnumerator? -starting a routine in a routine?
        /// I guess I could use the beauroutines to chain them with callbacks?
        /// </summary>
        /// <param name="telePos">loc to teleport to</param>
        /// <param name="teleportOutside">if were teleporting inside or out</param>
        /// <returns></returns>
        private IEnumerator ManageTransition(Vector3 telePos, bool teleportOutside)
        {
            //Debug.Log($"teleport to : {telePos}");
            //Make the cursor stop during transition:
            _followCursor.gameObject.SetActive(false);
            //Stop receiving input:
            InputReader.Instance.DisableAllInput();
            if(!teleportOutside)
                _savingText.gameObject.SetActive(true);
            _uiFader.enabled = true;
            _uiFader.SetRadius(1.2f);
            //Fade to Black:
            float fadeToBlackTime = _transitionTime;
            while (fadeToBlackTime > 0)
            {
                _uiFader.SetRadius( fadeToBlackTime / _transitionTime);
                fadeToBlackTime -= Time.deltaTime;
                yield return null;
            }
            _uiFader.SetRadius(0);
            yield return new WaitForEndOfFrame();
            //Disable player so we can teleport safely [once screens black]:
            _player.gameObject.SetActive(false);
            yield return new WaitForEndOfFrame();
            yield return new WaitForEndOfFrame();
            yield return new WaitForEndOfFrame();
            //Move Player and cursor:
            _player.transform.position = telePos;
            _followCursor.transform.position = telePos;
            //Change player texture
            var playerMatRenderer = _player.GetComponentInChildren<SkinnedMeshRenderer>();
            if (teleportOutside)
                playerMatRenderer.materials = _dayPlayerMats;
            else
                playerMatRenderer.materials = _nightPlayerMats;

            //Wait for the Camera?:
            yield return new WaitForSeconds(_transitionTime / 2);
            //re-enable the player/cursor

            _player.gameObject.SetActive(true);
            _followCursor.gameObject.SetActive(true);
            //Fade to normal:
            float fadeToNormal = 0;
            while (fadeToNormal < _transitionTime)
            {
                _uiFader.SetRadius( fadeToNormal / _transitionTime);
                fadeToNormal += Time.deltaTime;
                yield return null;
            }
            //Turn off the fader till we need it again:
            _uiFader.enabled = false;
            if(!teleportOutside)
                _savingText.gameObject.SetActive(false);
            //Resume Input:
            //InputReader.Instance.gameObject.SetActive(true);
            InputReader.Instance.UnDisableAllInput();
            InputReader.Instance.ResumeCurrentInputMap();
            //Advance the time:
            TurnManager.Instance.ToggleTime();
        }
    }

}
