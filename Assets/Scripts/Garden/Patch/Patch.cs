using System;
using System.Collections;
using System.Collections.Generic;
using Items;
using NaughtyAttributes;
using UnityEngine;
using Plants;
using SaveLoad;
using Spells;
using TMPro;
using UI;

namespace Garden
{
	// Enum holds possible states for a patch. WATERED state is shortened from planted & watered
	public enum ePatchState { UNPLANTED, PLANTED, WATERED }

    [RequireComponent(typeof(PatchRenderer))]
    [RequireComponent(typeof(PatchTurnMonitor))]
    [RequireComponent(typeof(BoxCollider))]
    public class Patch : MonoBehaviour, ISpellTarget , ISaveable, ILoadable
    {
	    public Transform Transform { get; private set; } //Slightly more optimized to cache a transform of something that gets asked a lot for it 

	    [SerializeField] private RunTimePlant _plant = default;
		
	    private PatchRenderer _patchRenderer; // MonoBehaviour responsible for model/texture changes
		private BoxCollider _collider;

		public ePatchState CurrentState { get; private set; }

		/************************************************************************************************************************/
		
		//Initializes GameObject. Currently only calls PatchRenderer setup.
		//param PatchData data: model set scriptable object for renderer
		public void Initialize(PatchData data)
		{
			Transform = transform;
			_patchRenderer = GetComponent<PatchRenderer>();
			_patchRenderer.Init(data);
			_patchRenderer.ChangeState(ePatchState.PLANTED);
			CurrentState = ePatchState.UNPLANTED;
			_plant.gameObject.SetActive(false); //mimick being harvested
			
			_collider = GetComponent<BoxCollider>();
			_collider.size = data.ColliderSize;
			_collider.isTrigger = true;
			RegisterTo();
		}

		private void OnDestroy()
		{
			UnRegisterTo();
		}
		
		/************************************************************************************************************************/
		/// <summary>
		/// This is somewhat a problem..and circular but fine for this project (Steve)
		/// </summary>
		public PlantPotionHandler PotionHandler => this.GetComponent<PlantPotionHandler>();
		
		public void OnHoverBegin()
		{
		    //Change color on shader - selected
		    _patchRenderer.SetShaderHighlighted(true);
			UI_HoverController.Instance?.OnItemHovered(this, true);
		}

		public void OnHoverEnd()
		{ 
			//Change color on shader - default
			_patchRenderer.SetShaderHighlighted(false);
			UI_HoverController.Instance?.OnItemHovered(this, false);
		}

		public void OnInteract()
		{
		    
		}
		
		public bool HasPlant()
		{
			return CurrentState != ePatchState.UNPLANTED;
		}

    #region Patch Actions
        //*************************************************************************************
        
        public bool CanPlantSeed(IPlantableItem plant)
        {
			if (CurrentState != ePatchState.UNPLANTED || plant == null)
				return false;
			else
				return true;
		}
		
		public bool PlantSeed(IPlantableItem plant)
        {
			if (CanPlantSeed(plant))
            {
				_plant.Initialize(plant);
				CurrentState = ePatchState.PLANTED;

				return true;
			}
			return false;			
        }

		public bool ClonePlant(IPlant plant)
		{
			if (CurrentState != ePatchState.UNPLANTED || plant==null)
				return false;

			_plant.Clone(plant);
			CurrentState = ePatchState.PLANTED;
			return true;
		}

		public bool HybridPlant(IPlantableItem plant, ePlantPhase phase)
        {
			// Must have a plant to hybritize
			if (CurrentState == ePatchState.UNPLANTED || plant == null)
			{
				return false;
			}

			_plant.Hybritize(plant, phase);
			CurrentState = _plant.CanBeWatered() ? ePatchState.PLANTED : ePatchState.WATERED;
			
			return true;
		}

		public void HarvestPlant()
		{
			ChangeState(ePatchState.UNPLANTED);
		}
		
		/// <summary>
		/// Calls WaterPlant() on Plant here if correct conditions
		/// </summary>
		/// <returns>true if successful.</returns>
		public bool CanWaterPatch()
        {
			if (CurrentState != ePatchState.PLANTED || !_plant.CanBeWatered()) // dont waste mana if it cant be
				return false;
			else
				return true;
		}

		public bool WaterPatch()
		{
			if (CanWaterPatch())
            {
				_plant.WaterPlant();
				ChangeState(ePatchState.WATERED);
				//Debug.Log($"We watered <color=blue> {this.gameObject.name} </color>");

				return true;
			}
			return false;
		}

		//Fast solution to fix hybrid issue
		public void ForceWaterPatchHack()
		{
			ChangeState(ePatchState.WATERED);
		}

		[Button("TellMeWater")]
		public void TellMe()
		{
			Debug.Log($"{this.gameObject.name} current state= {CurrentState} CanWater={CanWaterPatch()} becuz plant state canwater= {_plant.CanBeWatered()}");
		}
		
		public bool CanSpeedUpPlant()
		{
			if (CurrentState == ePatchState.UNPLANTED || !_plant.CanBeSpeedup())
				return false;
			return true;
		}

		public bool SpeedUpPlant()
		{
			if (CanSpeedUpPlant())
			{
				_plant.SpeedUp();
				return true;
			}
			return false;
		}

		public bool CanRewindPlant()
		{
			if (CurrentState == ePatchState.UNPLANTED || !_plant.CanRewind())
				return false;
			return true;
		}

		public bool RewindPlant()
		{
			if (CanRewindPlant()) {
				_plant.Rewind();
				return true;
			}

			return false;
		}

    #endregion
		//*************************************************************************************
			
		public RunTimePlant GetPlant()
        {
	        return _plant;
        }
				
		// Reverts patch to unwatered state. Used by PatchTurnMonitor
		public void TurnAdvance()
		{
			//Debug.Log($" {this.gameObject.name} <color=white>{_currentState}</color> : {_plant.CanBeWatered()}");
			if (CurrentState == ePatchState.WATERED)
			{
				//Debug.Log($" {this.gameObject.name} <color=green>{_currentState}</color> : {_plant.CanBeWatered()}");
				ChangeState(ePatchState.PLANTED);
			}
			//Always advance as each state handles its own conditions indepdent of this patches water state
			_plant.AdvanceGrowCycle();
		}

		public void ToggleHybridHighlight(bool cond)
        {
			_patchRenderer.ToggleHybridHighlight(cond);
        }

		/************************************************************************************************************************/
		private void ChangeState(ePatchState state)
		{
			CurrentState = state; // keep track of our state
			_patchRenderer.ChangeState(CurrentState);
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
			if(CurrentState != ePatchState.UNPLANTED)
				data.Patches.Add(new SaveablePatch(this));
		}

		public void Load(GameData data)
		{
			var myName = this.gameObject.name;
			foreach (var savedPatch in data.Patches)
			{
				if (savedPatch.PatchID != myName)
					continue;
				
				_plant.Initialize(savedPatch.PlantData);
				ChangeState(savedPatch.PatchState);
				return;
			}
		}
    }
}
