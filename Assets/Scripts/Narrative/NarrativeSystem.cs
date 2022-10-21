/*
* AUTHOR : Steve Datz
* DESC : Loads starting sequences and keeps track of active/completed narrative character requests, Handles rewards
 *       Sort of like one big event system focused around the potion requests
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Helpers;
using Items;
using Player;
using TurnManaging;
using SaveLoad;
using Tutorial;


namespace Narrative
{
	[RequireComponent(typeof(NarrationTurnMonitor))]
	public class NarrativeSystem : InstancedMonoBehaviour<NarrativeSystem>, ISaveable, ILoadable
	{
		public event Action<ActiveCharacterRequest> OnGenerateNewRequest;
		public event Action<ActiveCharacterRequest> OnRequestComplete;
		public event Action<ActiveCharacterRequest> OnRequestCompleteDelayed; //when the next day starts
		public event Action<ActiveCharacterRequest> OnRequestExpired;
		
		[SerializeField] private List<NarrativeSequence> _startingSequences = default;
		[SerializeField] private PlayerController _player;
		
		private NarrativeRequestPayloadHandler _payloadHandler;
		
		private readonly List<ActiveCharacterRequest> _activeRequests = new List<ActiveCharacterRequest>();
		//We are technically holding onto this when we could throw this away- but if we ever had a save/reload system we'd need to hold this
		private List<NarrativeCharacterRequest> _completedRequests = new List<NarrativeCharacterRequest>();
		private readonly Queue<ActiveCharacterRequest> _completedRequestsToProcess = new Queue<ActiveCharacterRequest>();
		//we have to hold onto this independantly because of processing items through a delayed queue 
		private int _numRequestsCompleted = 0;
		/************************************************************************************************************************/
		protected override void OnInitializeFromAwake()
		{
			_payloadHandler = new NarrativeRequestPayloadHandler(_player);
		}

		private void Start()
		{
			Subscribe(true);
			RegisterTo();
		}
		
		private void OnDestroy()
		{
			Subscribe(false);
			UnRegisterTo();
		}

		/************************************************************************************************************************/
		public void ReCheckConditionsForNewTurn(int turnNo)
		{
			TurnValidator.CheckIfInvalidActiveRequestByNewTurn(turnNo, _activeRequests, RemoveStaleRequests);
			TurnValidator.CheckIfNewTurnUnlockedAnyNewRequests(turnNo, _startingSequences, _completedRequests, _activeRequests, GenerateNewRequest);

			ProcessCompletedRequests();
		}
		
		public List<NarrativeCharacterRequest> GetStartingNarrativeSequenceForLoading()
		{
			List<NarrativeCharacterRequest> startingReqs = new List<NarrativeCharacterRequest>();
			foreach (var seq in _startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					//Assume anything marked as none we want q'd up from the start
					if (req.ActivationCondition.GetCondition() == eTriggerCondType.NONE)
					{
						//startingReqs.Add(seq.SequenceID, req);
						startingReqs.Add(req);
					}
				}
			}

			return startingReqs;
		}

		public List<NarrativeCharacterRequest> GetAllNarrativeCharacterRequests()
		{
			List<NarrativeCharacterRequest> list = new List<NarrativeCharacterRequest>();
			foreach (var seq in _startingSequences)
			{
				foreach (var req in seq.CharacterRequests)
				{
					list.Add(req);
				}
			}
			return list;
		}

		public int GetCompletedRequestsCount()
		{
			return _completedRequests.Count;
		}

		public int GetStoryRequiredCompletedRequestsCount()
		{
			int count = 0;
			foreach (var request in _completedRequests)
			{
				if (request.IsStoryRequired)
					count++;
			}
			return count;
		}

		public bool IsRequestComplete(NarrativeCharacterRequest narrativeCharacterRequest)
		{
			return _completedRequests.Contains(narrativeCharacterRequest);
		}
		
		public bool IsRequestActive(NarrativeCharacterRequest narrativeCharacterRequest)
		{
			foreach (var req in _activeRequests)
			{
				if (req.NCRequest == narrativeCharacterRequest)
					return true;
			}
			return false;
		}

		public int GetRequestActiveCount()
		{
			return _activeRequests.Count;
		}
	
		/************************************************************************************************************************/
		
		//id is no longer being used meaningfully, but left because its a good way to identify if we need the functionality back
		private void GenerateNewRequest(string id, NarrativeCharacterRequest request)
		{
			var activeRequest = new ActiveCharacterRequest(id, request, RequestComplete);
			_activeRequests.Add(activeRequest);
			OnGenerateNewRequest?.Invoke(activeRequest);
		}

		private void RequestComplete(ActiveCharacterRequest activeRequest)
		{
			if (!_activeRequests.Contains(activeRequest))
				return;
			
			_activeRequests.Remove(activeRequest);
			_completedRequests.Add(activeRequest.NCRequest);
			//Figure out if there's a follow up request
			OnRequestComplete?.Invoke(activeRequest);
			_payloadHandler.GiveReward(activeRequest);
			//put this in a queue to be processed when day begins (so we don't immediately show in house)
			_completedRequestsToProcess.Enqueue(activeRequest);
		}

		private void ProcessCompletedRequests()
		{	
			while(_completedRequestsToProcess.Count != 0)
            {
				var completedReq = _completedRequestsToProcess.Dequeue();
				ReCheckConditionsFromFinishedRequest(completedReq.NCRequest);
				OnRequestCompleteDelayed?.Invoke(completedReq);
				++_numRequestsCompleted;
			}
			//For the mayor
			TotalRequestValidator.CheckIfNumCompletedRequestsUnlocksAnything(_numRequestsCompleted, _startingSequences, IsRequestActive, GenerateNewRequest);
		}
		/************************************************************************************************************************/
		private void ReCheckConditionsFromFinishedRequest(NarrativeCharacterRequest activeRequestNcRequest)
		{
			PrevRequestValidator.CheckIfInvalidedActiveRequestsByFinishedRequest(activeRequestNcRequest, _activeRequests, RemoveStaleRequests);
			PrevRequestValidator.CheckIfFinishedRequestUnlockedAnyNewRequests(activeRequestNcRequest, _startingSequences, GenerateNewRequest);
		}
		
		private void ReCheckConditionsFromFailedRequest(NarrativeCharacterRequest activeRequestNcRequest)
		{			
			PrevRequestValidator.CheckIfInvalidedActiveRequestsByFailedRequest(activeRequestNcRequest, _activeRequests, RemoveStaleRequests);
			PrevRequestValidator.CheckIfFailedRequestUnlockedAnyNewRequests(activeRequestNcRequest, _startingSequences, GenerateNewRequest);
		}
		/// <summary>
		/// Check if the player having this new items - invalidates any old requests
		/// if so - removes them
		/// </summary>
		/// <param name="itemAdded"></param>
		private void ReCheckConditionsForPlayerItemAdded(IItem itemAdded)
		{
			ItemValidator.CheckIfInvalidRequestForHeldItem(itemAdded, _activeRequests, RemoveStaleRequests);
			ItemValidator.CheckIfAddingItemUnlockedAnyNewRequests(itemAdded, _startingSequences, GenerateNewRequest);
		}
		/// <summary>
		/// Checks if the item removed might possibly invalidate a request,
		/// If so, does a deeper check to see if the player has anymore of the same item,
		/// if not- removes the request
		/// </summary>
		/// <param name="itemRemoved"></param>
		private void ReCheckConditionsForPlayerItemRemoved(IItem itemRemoved)
		{
			ItemValidator.CheckIfInvalidRequestForRemovedItem(itemRemoved, _activeRequests, RemoveStaleRequests, _player.PlayerInventory);
			ItemValidator.CheckIfRemovingItemUnlockedAnyNewRequests(itemRemoved, _startingSequences, GenerateNewRequest);
		}
		
		private void ReCheckConditionsForPlayerGold(int goldAmnt)
		{
			GoldValidator.CheckIfInvalidRequestForPlayerGold(goldAmnt, _activeRequests, RemoveStaleRequests);
			GoldValidator.CheckIfPlayerGoldUnlocksNewRequest(goldAmnt, _startingSequences, _completedRequests, _activeRequests, GenerateNewRequest);
		}
		
		private void ReCheckConditionsForTutorial(List<TutorialPrompt> tutorialPrompts)
		{
			TutorialPromptValidator.CheckIfPromptUnlocksRequest(tutorialPrompts, _payloadHandler, _startingSequences, _completedRequests, _activeRequests, GenerateNewRequest);
		}

		
		/************************************************************************************************************************/
		//HELPERS:
		private void RemoveStaleRequests(List<ActiveCharacterRequest> staleRequests)
		{
			//Remove stale once done iterating thru
			foreach (var old in staleRequests)
			{
				OnRequestExpired?.Invoke(old);
				_activeRequests.Remove(old);
				ReCheckConditionsFromFailedRequest(old.NCRequest);
				//Debug.Log($"We removed a Request {old}");
			}
		}
		
		private void Subscribe(bool cond)
		{
			//Application is quitting so singleton is null
			var tm = TurnManager.Instance;
			var tut = TutorialManager.Instance;
			
			if (cond)
			{
				if (tm )
					tm.OnTurnEnd += ReCheckConditionsForNewTurn;
				if (tut)
					tut.OnPromptIdOccurred += ReCheckConditionsForTutorial;
				
				_player.PlayerInventory.OnItemAdded += ReCheckConditionsForPlayerItemAdded;
				_player.PlayerInventory.OnItemRemoved += ReCheckConditionsForPlayerItemRemoved;
				_player.PlayerGold.OnValueChanged += ReCheckConditionsForPlayerGold;

			}
			else
			{
				if (tm)
					tm.OnTurnEnd -= ReCheckConditionsForNewTurn;
				if (tut)
					tut.OnPromptIdOccurred -= ReCheckConditionsForTutorial;
				_player.PlayerInventory.OnItemAdded -= ReCheckConditionsForPlayerItemAdded;
				_player.PlayerInventory.OnItemRemoved -= ReCheckConditionsForPlayerItemRemoved;
				_player.PlayerGold.OnValueChanged -= ReCheckConditionsForPlayerGold;
			}
		}
		

		/************************************************************************************************************************/
        // ---------- SAVING AND LOADING 
        /************************************************************************************************************************/

        //Make sure u call this on Start (cuz shared instanced mono's would be gross?-and I keep forgetting)
        public void RegisterTo()
        {
            RegisteredItems.Register(this);
        }

        //Make sure u call this on Destroy (cuz shared instanced mono's would be gross?-and I keep forgetting)
        public void UnRegisterTo()
        {
            RegisteredItems.Unregister(this);
        }


        public void Save(GameData data)
        {
            data.ActiveRequests = SaveableNarrativeRequest.GenerateSaveList(_activeRequests);
            data.CompletedRequests = SaveableNarrativeRequest.GenerateSaveList(_completedRequests);
        }

        public void Load(GameData data)
        {
	        _completedRequests = SaveableNarrativeRequest.GenerateLoadList(data.CompletedRequests);
	        _numRequestsCompleted = _completedRequests.Count;
	        foreach (var req in SaveableNarrativeRequest.GenerateLoadList(data.ActiveRequests))
	        {
		        GenerateNewRequest("LOAD_FROM_SAVE", req);
	        }
        }
	}

}