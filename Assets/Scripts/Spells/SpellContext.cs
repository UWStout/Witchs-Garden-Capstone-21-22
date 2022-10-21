using System;
using Garden;
using UnityEngine;
using Plants;
using Items;
using Player;

namespace Spells
{
	public abstract class SpellContext
	{
		public SpellData SpellData { get; }
		public ISpellTarget SpellTarget { get; }

		protected SpellContext(SpellData spellData, ISpellTarget target)
		{
			SpellTarget = target;
			SpellData = spellData;
		}
	}

	public class PlantingSpellContext : SpellContext
	{
		public IPlantableItem PlantTemplate { get; }
		public PlayerInventory PlayerInventory { get; }
		public PlantingSpellContext(SpellData spellData, ISpellTarget target, IPlantableItem template, PlayerInventory playerInv) : base(spellData,target)
		{
			PlantTemplate = template;
			PlayerInventory = playerInv;
			//SpellTimedEvents = new SpellTimedEvents();
		}
	}

	public class WateringSpellContext : SpellContext
	{
		public WateringSpellContext(SpellData spellData, ISpellTarget target) : base(spellData,target)
		{
			//nothing special needed
		}
	}

	public class HarvestingSpellContext : SpellContext
	{
		public PlayerInventory PlayerInventory { get; }

		public HarvestingSpellContext(SpellData spellData, ISpellTarget target, PlayerInventory playerInv) : base(spellData,target)
		{
			PlayerInventory = playerInv;
		}
	}
	
	public class SpeedUpSpellContext : SpellContext
	{
		public GardenController GardenController { get; }

		public SpeedUpSpellContext(SpellData spellData, ISpellTarget target, GardenController garden) : base(spellData, target)
		{
			GardenController = garden;
		}
	}
	public class RewindSpellContext : SpellContext
	{
		public GardenController GardenController { get; }

		public RewindSpellContext(SpellData spellData, ISpellTarget target, GardenController garden) : base(spellData, target)
		{
			GardenController = garden;
		}
	}

	public class CloneSpellContext : SpellContext
	{
		public CloneSpellPreviewModel PreviewModel { get; }

		public GardenController GardenController { get; }

		public CloneSpellContext(SpellData spellData, ISpellTarget target, GardenController garden, CloneSpellPreviewModel previewModel) : base(spellData, target)
		{
			PreviewModel = previewModel;
			GardenController = garden;
		}
	}

	public class ApplyPotionSpellContext : SpellContext
	{
		public PotionItem PotionUsed { get; }
		//This is a nasty hack-because "ISpellTarget" is a lie. Its all about dirt patches, but the player shud also implement this 
		public PlayerController Player { get; }

		public ApplyPotionSpellContext(SpellData spellData, ISpellTarget target, IItem potionUsed, PlayerController player) : base(spellData, target) 
		{
			PotionUsed = potionUsed as PotionItem;
			Player = player;
			Debug.Log($"generated context for apply potion");
		}
	}
	public class HybridSpellContext : SpellContext
	{
		public GardenController GardenController { get; }

		public HybridSpellContext(SpellData spellData, ISpellTarget target, GardenController garden) : base(spellData, target)
		{
			GardenController = garden;
		}
	}
	
	// Unimplemented spell contexts
	//******************************************************************************************************



	
}