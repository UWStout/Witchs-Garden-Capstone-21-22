/*
* AUTHOR : Steve Datz
* DESC :
*/
#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

using Ingredients;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Garden;
using Items;
using SaveLoad;
using Statistics;
using UnityEngine;


namespace Plants
{
    public enum ePlantPhase { SEED, YOUNG, ADULT , WITHERING, DEAD}
    public class RunTimePlant : MonoBehaviour, IPlant
    {
        [SerializeField] private TraitHandler _traits;
        [SerializeField] private PlantVFX _plantVfx;

        public PlantModels PlantModels { get; private set; }
        public PlantData PlantData { get; private set; }


        private PlantStats _plantStats;
        //States:
        private PlantState _seedPhase;
        private PlantState _youngPhase;
        private PlantState _adultPhase;
        private PlantState _witherPhase;
        private PlantState _deathPhase;
        private PlantState _currentState;
        
      

        private bool _hasBeenWatered;

        /************************************************************************************************************************/
        /// <summary>
        /// Initialize from starting data
        /// </summary>
        /// <param name="template"></param>
        /// <param name="traitGenerator"></param>
        public void Initialize(IPlantableItem template)
        {
            PlantData = template.PlantData;
            PlantModels = template.PlantModels;
            CreateNewStats();
            CreatePlantStates(); //sort of lazy to remake these states every time we do a new plant but its fine
            InitPlantStates();
            //Start in seed phase for now
            ChangePlantPhase(ePlantPhase.SEED);
            this.gameObject.SetActive(true);
            _hasBeenWatered = false;
            _traits.GenerateForPlant(PlantData);

        }

        public void Initialize(SaveablePlant data)
        {
            var template = data.GetPlantTemplate();
            if (template == null)
            {
                this.gameObject.SetActive(false);
                return;
            }
            PlantData = template.PlantData;
            PlantModels = template.PlantModels;
            _plantStats = new PlantStats(data.Stats);
            CreatePlantStates();
            InitPlantStates();
            ChangePlantPhase(GetPhaseFromString(data.CurrentState));
            this.gameObject.SetActive(data.IsActive);
            _hasBeenWatered = data.HasBeenWatered;
            _traits.LoadFromSave(data.GetTraits());
            
        }

        public void SaveSelf(SaveablePlant data)
        {
            data.SaveOffTemplate(PlantData, PlantModels);
            SaveablePlantStats savedStats = new SaveablePlantStats();
            _plantStats.SaveSelf(savedStats);
            data.Stats = savedStats;
            data.CurrentState = GetCurrentStateForSave();
            data.IsActive = this.gameObject.activeInHierarchy;
            data.HasBeenWatered = _hasBeenWatered;
            data.SaveOffTraits(_traits.GetTraits());
        }
        

        public void Clone(IPlant otherPlant, ePlantPhase phase= ePlantPhase.YOUNG)
        {
            PlantData = otherPlant.PlantData;
            PlantModels = otherPlant.PlantModels;
            CreateClonedStats(otherPlant);
            CreatePlantStates(); //sort of lazy to remake these states every time we do a new plant but its fine
            InitPlantStates();
            ChangePlantPhase(phase);
            this.gameObject.SetActive(true);
            _hasBeenWatered = false;
            _traits.CloneFromPlant(otherPlant);
        }

        public void Hybritize(IPlantableItem template, ePlantPhase phase )
        {
            bool wasWatered = _hasBeenWatered;
            Initialize(template);
            ChangePlantPhase(phase);
            _hasBeenWatered = wasWatered;
        }

        public PlantStats CloneStats()
        {
            return new PlantStats(_plantStats);
        }
        
        /************************************************************************************************************************/

        //Spells:
        /// <summary>
        /// Can only water a plant once per turn,
        /// Only certain states can be watered
        /// </summary>
        public bool CanBeWatered()
        {
            if (_hasBeenWatered || !gameObject.activeInHierarchy)
                return false;

            return _currentState.CanBeWatered();
        }

        /// <summary>
        /// Sets the has been watered flag, then
        /// If a plant has been watered when AdvanceGrowCycle() is called (end turn) 
        /// It will increase growtime / change state
        /// </summary>
        public void WaterPlant()
        {
            if (CanBeWatered())
                _hasBeenWatered = true;
        }

        public bool CanBeSpeedup()
        {
            //Debug.Log($"asking if can speedUP => {!gameObject.activeInHierarchy} , {_currentState.CanBeSpeedUp()} state= {_currentState}");
            if (!gameObject.activeInHierarchy)
                return false;
            
            return _currentState.CanBeSpeedUp();
        }

        public void SpeedUp()
        {
            if (CanBeSpeedup())
                _currentState.Speedup();
        }

        public bool CanRewind()
        {
            if (!gameObject.activeInHierarchy)
                return false;

            return _currentState.CanBeReWound();
        }

        public void Rewind()
        {
            if (CanRewind())
                _currentState.Rewind();
        }
        /************************************************************************************************************************/
        /// <summary>
        /// Checks if the plants internal state should update
        /// Increases Growtime and or changes Phase
        /// </summary>
        public void AdvanceGrowCycle()
        {
            bool shouldAdvance = CheckAdvanceConditions();

            if (shouldAdvance)
                _currentState.AdvanceGrowCycle();
            
            //Reset the watering flag for the next day
            _hasBeenWatered = false;


            /********--LOCAL--********/
            bool CheckAdvanceConditions()
            {
                if (_currentState == null)
                    return false;
                
                bool canAdvance = false;
                if (_hasBeenWatered && _currentState.CanBeWatered())
                {
                    canAdvance = true;
                   // Debug.Log($"{gameObject.name}<color=white> { _currentState}</color> .. advanced => {true}");

                }
                else if (!_hasBeenWatered && !_currentState.CanBeWatered())
                {
                    canAdvance = true;
                    //Debug.Log($"{gameObject.name}<color=yellow> { _currentState}</color> .. advanced => {true}");
                }

                return canAdvance;
            }
        }
        //Traits:
        public TraitHandler GetTraitHandler() => _traits;

        //Stats:
        public float GetCurrentPlantStat(ePlantAttribute attribute, bool includeGlobalModifiers, bool includeTraits)
        {
            if (_currentState == null)
            { 
                //Debug.Log($"CurrentState for {this.gameObject.name} is null,<color=yellow>no yield possible!</color>");
                return 0;
            }
            //Keep traits separate from perma modifiers (pass in empty list if we dont want the calculation)
            IReadOnlyList<PlantTrait> traits = includeTraits ? _traits.GetTraits() : new List<PlantTrait>();
            return _currentState.GetCurrentPlantStat(attribute, includeGlobalModifiers, traits);
        }

        /// <summary>
        /// I think plant quality is very different than final harvested item quality, as final harvest item q is based on growTime stuff
        /// </summary>
        /// <returns></returns>
        public float GetCurrentQuality()
        {
            return GetCurrentPlantStat(ePlantAttribute.QUALITY, true, true);
        }

        public int GetCurrentYield()
        {
            return Mathf.FloorToInt(GetCurrentPlantStat(ePlantAttribute.YIELDAMOUNT, true, true));
        }

        public bool CanBeHarvested()
        {
            return _currentState != _youngPhase; ;
        }

        public bool GetIsSeed()
        {
            return  _currentState!=null && _currentState == _seedPhase;
        }
        
        public bool GetIsYoung()
        {
            return _currentState!=null && _currentState == _youngPhase;
        }
       
        public bool GetIsAdult()
        {
            return _currentState!=null && _currentState == _adultPhase;
        }
       
        public bool GetIsWithering()
        {
            return _currentState!=null && _currentState == _witherPhase;
        }
       
        public bool GetIsDead()
        {
            return _currentState!=null &&  _currentState == _deathPhase;
        }
       
        public IReadOnlyList<IItem> HarvestPlant()
        {
            if (!CanBeHarvested())
                return new List<IItem>();


            if (_currentState == _seedPhase)
            {
                var returnSeed = PlantYieldGenerator.GenerateReturnSeedForPlantInSeedState(this);
                CleanupReset();
                return returnSeed;
            }
            
            //Have to ask for yield BEFORE clearing current state:
            var harvestedItems = _currentState != _deathPhase ? PlantYieldGenerator.GenerateYieldForPlant(this) : new List<IHybridItem>();
            CleanupReset();
            return harvestedItems;
        }

        public void CleanupReset()
        {
            _hasBeenWatered = true; //fake not being able to be watered
            _currentState = null; //fake not being able to advance
            _traits.Clear(); //reset traits incase anyone asks
            GetRidOfSubPlantModels();
            this.gameObject.SetActive(false); // not really needed anymore if we get rid of models? - but save system might be using. this.gameObject.ActiveInHierarchy?
        }

        public float GetCurrentGrowTime()
        {
            if (_currentState != null)
                return _currentState.GetCurrentGrowTime();
            else
                return 0;
        }
        
        public int GetHowManyTurnsTillGrown()
        {
            if (_currentState == null)
                return 0;

            return _currentState.GetHowManyTurnsTillGrown();
        }

        public float GetStartingGrowTime() => _currentState?.GetBaseGrowTimeInYoung() ?? 0;
       
        public bool GetHasBeenWatered() => _hasBeenWatered;
        //Mods:
        public void AddPermaModifier(ePlantAttribute attribute, eModifierType type, float value) =>  AddPermaModifier(new PlantModifier(attribute, type, value));
       
        public void AddPermaModifier(PlantModifier modifier) => _currentState?.AddModifier(modifier);

       
        /************************************************************************************************************************/
        /// <summary>
        /// State machine behavior
        /// </summary>
        /// <param name="state"></param>
        private void ChangePlantPhase(ePlantPhase state)
        {
            _currentState?.OnDisable();
            //Switch expression:
            _currentState = state switch
            {
                ePlantPhase.SEED => _seedPhase,
                ePlantPhase.YOUNG => _youngPhase,
                ePlantPhase.ADULT => _adultPhase,
                ePlantPhase.WITHERING => _witherPhase,
                ePlantPhase.DEAD => _deathPhase,
                _ => _currentState
            };
            _currentState?.OnEnable();
            _plantVfx.DisplayVfxForState(state);
        }
        
        private void GetRidOfSubPlantModels()
        {
 
            foreach (var item in this.GetComponentsInChildren<MeshRenderer>(true))
            {
                Destroy(item.gameObject);
            }
        }
        
        private void CreatePlantStates()
        {
            _seedPhase = new SeedState();
            _youngPhase = new YoungState();
            _adultPhase = new AdultState();
            _witherPhase = new WitheringState();
            _deathPhase = new DeathState();
        }

        private void CreateNewStats()
        {
            PlantAttributes startingAttributes = PlantData.Attributes;
            _plantStats = new PlantStats(startingAttributes);
        }

        private void CreateClonedStats(IPlant otherPlant)
        {
            _plantStats = otherPlant.CloneStats();
        }
        
        private void InitPlantStates()
        {
            //Init our individual states
            _seedPhase.Init(Instantiate(PlantModels.GetPlantModel(ePlantPhase.SEED)), this.transform, ref _plantStats, ChangePlantPhase, _traits);
            _youngPhase.Init(Instantiate(PlantModels.GetPlantModel(ePlantPhase.YOUNG)), this.transform, ref _plantStats, ChangePlantPhase, _traits);
            _adultPhase.Init(Instantiate(PlantModels.GetPlantModel(ePlantPhase.ADULT)), this.transform, ref _plantStats, ChangePlantPhase, _traits);
            _witherPhase.Init(Instantiate(PlantModels.GetPlantModel(ePlantPhase.WITHERING)), this.transform, ref _plantStats, ChangePlantPhase, _traits);
            _deathPhase.Init(Instantiate(PlantModels.GetPlantModel(ePlantPhase.DEAD)), this.transform, ref _plantStats, ChangePlantPhase, _traits);
        }
       
        private static ePlantPhase GetPhaseFromString(string saveStr)
        {
            if (saveStr.Contains("SEED"))
                return ePlantPhase.SEED;
            if (saveStr.Contains("YOUNG"))
                return ePlantPhase.YOUNG;
            if(saveStr.Contains("ADULT"))
                return ePlantPhase.ADULT;
            if (saveStr.Contains("WITHER"))
                return ePlantPhase.WITHERING;

            return ePlantPhase.DEAD;
        }

        private string GetCurrentStateForSave()
        {
            if (_currentState == _seedPhase)
                return "SEED";
            if (_currentState == _youngPhase)
                return "YOUNG";
            if (_currentState == _adultPhase)
                return "ADULT";
            if (_currentState == _witherPhase)
                return "WITHER";
            
            //If its null, guess we make it dead too
            return "DEAD";
        }
    }

}