
using Diagrams;
using Helpers;
using Spells;
using UnityEngine;
using VFX;
using SaveLoad;
using GameAnalyticsSDK;
using Tutorial;

namespace Player
{
    // start point for player system, manages connections.
    [RequireComponent(typeof(PlayerMovement))]
    [RequireComponent(typeof(PlayerSpells))]
    public class PlayerController : InstancedMonoBehaviour<PlayerController>, ISaveable, ILoadable
    {
        public int StartingMana => _startingMana;
        [SerializeField] private int _startingMana = 50;
        [SerializeField] private int _startingGold = 50;

        private bool _canAct = true;
        public bool CanAct { get => _canAct; }

        // Items
        public PlayerInventory PlayerInventory { get; private set; }
        // Money
        public PlayerGold PlayerGold { get; private set; }
        //Mana
        public PlayerMana PlayerMana { get; private set; }
        // Spells
        public PlayerSpells Spells { get; private set; }
        //Potions
        public PlayerPotionHandler PotionHandler { get; private set; }
        //Diagrams
        public DiagramHandler DiagramHandler { get; private set; }
        
        private PlayerAnimStateController _animController;

        private GameObject _jar;

        //a height used to place the VFX slightly above the dirtpatch mesh
        private const float VFX_Y_OFFSET = 0.2f;

        [SerializeField] private TutorialTrigger _tutorialHarvestTrigger; //temporarily disabled
        /************************************************************************************************************************/

        protected override void OnInitializeFromAwake()
        {
            PlayerInventory = new PlayerInventory();
            PlayerGold = new PlayerGold(_startingGold);
            PlayerMana = new PlayerMana(_startingMana);
            DiagramHandler = GetComponent< DiagramHandler>();
            Spells = GetComponent<PlayerSpells>();
            PotionHandler = GetComponent<PlayerPotionHandler>();
            PotionHandler.Init(this);
            Spells.Initialize();
            _animController = GetComponentInChildren<PlayerAnimStateController>();

            _jar = GetComponentInChildren<JarComponent>().gameObject;
            TogglePotionJar(false);
        }

        void Start()
        {
            RegisterTo();
        }

        void OnDestroy()
        {
            UnRegisterTo();
        }
        
        /************************************************************************************************************************/

        public void TryUseSpell(SpellContext context)
        {
            if (context == null)
                return;
            
            var spellData = context.SpellData;
            //Prevent access to locked spells (UI-should also prevent- TODO)
            if (!Spells.IsSpellUnlocked(spellData.SpellID))
                return;
            //If spell wasnt generated.. (Just remove so we can fail early?)
            var spell = Spells.GetSpellForData(spellData);
            if (spell == null)
                return;
            
            if (!PlayerMana.HasEnoughMana(spellData.ManaCost))
                return;

            spell.Cast(context, OnSpellFinished);
        }

        private void OnSpellFinished(bool success, SpellContext context)
        {
            var spellData = context.SpellData;
            if (success)
            {
                PlayerMana.UseMana(spellData.ManaCost);
                GameAnalytics.NewResourceEvent(GAResourceFlowType.Sink, "Mana", spellData.ManaCost, "SPELL", spellData.name);

                //Trigger Tutorial for successful harvesting
                //if (spellData.SpellID == eSpellID.HARVEST)
                //    _tutorialHarvestTrigger.Trigger();
            }
        }

        public void ToggleCanAct(bool cond)
		{
            // enabling actions from state unable
            if (cond && !_canAct)
            {
                CustomInput.InputReader.Instance.UnDisableAllInput();
                CustomInput.InputReader.Instance.ResumeCurrentInputMap();
            }  

            // disabling actions from state able
            if (!cond && _canAct)
                CustomInput.InputReader.Instance.DisableAllInput();

            _canAct = cond;
        }

        // Spell timed events
        // **********************************************************************************************************
        public void PlayAnimation(SpellContext context, ePotionTarget target = ePotionTarget.NULL)
        {
            _animController.CastSpell(context.SpellData.SpellID, target);
        }

        public void PlayVFX(SpellContext context)
        {
            // this.transform.position used when target is player, ie drinkpotion spell
            Vector3 spellPos = context.SpellTarget != null ? context.SpellTarget.Transform.position : this.transform.position;
            var pos = spellPos + new Vector3(0, VFX_Y_OFFSET, 0);
            VFXManager.Instance.PlayVfx(context.SpellData.SpellVfx, pos);
        }

        public void PlaySFX(SpellContext context)
        {
            // Play Sound HERE
            // Pull _spellSFX from SpellData
            var spellSound = context.SpellData.SpellSFX;
            spellSound.Post(gameObject);
            // this.gameObject
            //Call for sound to be played
            // Post(SFX);
        }

        public void TogglePotionJar(bool cond)
		{
            _jar.SetActive(cond);
		}

        /************************************************************************************************************************/
        // ---------- SAVING AND LOADING 
        /************************************************************************************************************************/

        public void RegisterTo()
        {
            RegisteredItems.Register(this);
        }

        public void UnRegisterTo()
        {
            RegisteredItems.Unregister(this);
        }


        public void Save(GameData data)
        {
            data.PlayerGold = PlayerGold.GetGold();
            data.PlayerManaCurr = PlayerMana.GetCurrent();
            data.PlayerItems = SaveableItem.GenerateSaveList(PlayerInventory.GetAllItems());
            data.KnownDiagrams = SaveableDiagram.GenerateSaveList(DiagramHandler.GetKnownDiagsForSave());
        }

        public void Load(GameData data)
        {

            var playerGold = data.PlayerGold;
            if (playerGold != -1)
                PlayerGold.SetGold(playerGold);

            var playerMana = data.PlayerManaCurr;
            if (playerMana != -1)
                PlayerMana.SetMana(playerMana);

            //LOAD ITEMS
            var loadedItems = SaveableItem.GenerateLoadList(data.PlayerItems);
            foreach (var item in loadedItems)
            {
                PlayerInventory.AddItem(item);
            }

            //LOAD DIAGRAMS (might want to comment out, and see if these load in from other systems, like research etc, but the diag handler should not allow duplicates, no harm)
            var loadedDiags = SaveableDiagram.GenerateLoadList(data.KnownDiagrams);
            foreach (var diag in loadedDiags)
            {
                DiagramHandler.AddDiagram(diag);
            }

            // Debug.Log($"PLAYER LOADED--");
            // Debug.Log($"             -> gold={playerGold} , mana={playerMana}");
            // Debug.Log($"             -> iitems={loadedItems.Count} , diags={loadedDiags.Count}");
        }

    }

}