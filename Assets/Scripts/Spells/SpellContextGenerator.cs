using Garden;
using Player;
using System;
using System.Collections;
using System.Collections.Generic;
using Items;
using Plants;
using Targeting;
using UnityEngine;


namespace Spells
{
    public class SpellContextGenerator
    {
        // TODO it'd be nice to make this higher level so more has access to it
        private const eSpellID PLANTING_SPELL = eSpellID.PLANT;//= "Plant Spell";
        private const eSpellID WATERING_SPELL = eSpellID.WATER;//= "Water Spell";
        private const eSpellID HARVESTING_SPELL = eSpellID.HARVEST;//= "Harvest Spell";
        private const eSpellID SPEEDUP_SPELL = eSpellID.SPEED_UP ;//= "Speed Up Spell";
        private const eSpellID REWIND_SPELL  = eSpellID.REWIND ;//= "Rewind Spell";
        private const eSpellID CLONE_SPELL  = eSpellID.CLONE ;//= "Clone Spell";
        private const eSpellID POTION_SPELL  = eSpellID.APPLY_POTION;//= "Potion Spell";
        private const eSpellID HYBRID_SPELL  = eSpellID.HYBRID;//= "Hybrid Spell";
        
        private readonly PlayerController _player;
        private readonly TargetDetector _targetDetector;
        private readonly GardenController _garden;

        private readonly CloneSpellPreviewModel _clonePreviewer;
        /************************************************************************************************************************/

        public SpellContextGenerator(PlayerController pc, CloneSpellPreviewModel clonePreviewer,  GardenController garden)
        {
            _player = pc;
            _targetDetector = _player.GetComponentInChildren<TargetDetector>();
            _clonePreviewer = clonePreviewer;
            _garden = garden;
        }
        /************************************************************************************************************************/

        public SpellContext GenerateContextFor(SpellData data, IItem item = null)
        {
            ISpellTarget target = _targetDetector.GetClosestTarget() as ISpellTarget;
            return data.SpellID switch
            {
                PLANTING_SPELL => GeneratePlantingSpellContext(data, target, item),
                WATERING_SPELL => GenerateWateringSpellContext(data, target),
                HARVESTING_SPELL => GenerateHarvestingContext(data, target),
                SPEEDUP_SPELL => GenerateSpeedUpContext(data, target, _garden),
                REWIND_SPELL => GenerateRewindContext(data, target, _garden),
                CLONE_SPELL=> GenerateCloneContext(data,target, _garden),
                POTION_SPELL=> GenerateApplyPotionContext(data, target, item),
                HYBRID_SPELL=> GenerateHybridContext(data, target, _garden),
                _ => null
            };
        }

        private SpellContext GenerateHybridContext(SpellData data, ISpellTarget target, GardenController garden)
        {
            return new HybridSpellContext(data, target, garden );
        }

        /************************************************************************************************************************/
        private SpellContext GeneratePlantingSpellContext(SpellData data, ISpellTarget targ, IItem seed)
        {
            IPlantableItem template = seed as SeedItem;
            //Debug.Log($"Turned {seed} into {template}");
            return new PlantingSpellContext(data,targ, template, _player.PlayerInventory);
        }
        private SpellContext GenerateWateringSpellContext(SpellData data, ISpellTarget targ)
        {
            return new WateringSpellContext(data,targ);
        }
        private SpellContext GenerateHarvestingContext(SpellData data, ISpellTarget targ)
        {
            return new HarvestingSpellContext(data,targ, _player.PlayerInventory);
        }
        private SpellContext GenerateSpeedUpContext(SpellData data, ISpellTarget targ, GardenController garden)
        {
            return new SpeedUpSpellContext(data, targ, garden);
        }
        
        private SpellContext GenerateRewindContext(SpellData data, ISpellTarget targ, GardenController garden)
        {
            return new RewindSpellContext(data, targ, garden);
        }
        
        private SpellContext GenerateCloneContext(SpellData data, ISpellTarget target, GardenController garden)
        {
            return new CloneSpellContext(data, target, garden, _clonePreviewer);
        }
        private SpellContext GenerateApplyPotionContext(SpellData data, ISpellTarget target, IItem potion)
        {
            return new ApplyPotionSpellContext(data, target, potion, _player);
        }

    }

}
