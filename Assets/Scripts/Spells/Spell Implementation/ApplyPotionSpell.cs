/*
* AUTHOR : Steve Datz
* DESC :
*/


using System;
using Items;
using UnityEngine;

namespace Spells
{
	public class ApplyPotionSpell : Spell
	{

		/************************************************************************************************************************/

		public ApplyPotionSpell(SpellData data) : base(data) { }
		
		/************************************************************************************************************************/

		public override bool Cast(SpellContext context,  Action<bool, SpellContext> onFinishedResult)
		{
			//Debug.Log($"Cast Apply Poiton spell: {context is ApplyPotionSpellContext}");
			if (!(context is ApplyPotionSpellContext castedContext))
			{
				onFinishedResult?.Invoke(false, context);
				return false;
			}
			
			var potionUsed = castedContext.PotionUsed;
			var dirtTarget = castedContext.SpellTarget;
			var player = castedContext.Player;

			//bool success = false;

			bool willSucceed = false;
			ePotionTarget target;

			// canapplypotion for dirt target and player
			// set canSucceed


			if (potionUsed.UsedOnPlant && dirtTarget!=null && dirtTarget.HasPlant())
            {
				target = ePotionTarget.PLANT;
				willSucceed = dirtTarget.PotionHandler.CanApplyPotion(potionUsed.ItemTemplate as PotionTemplate);

				(castedContext.SpellData.TimedEvents as PotionTimedEvents).Begin(castedContext, SpellAction(target), target);
				//success = dirtTarget.PotionHandler.ApplyPotion(potionUsed.ItemTemplate as PotionTemplate);
				//Debug.Log($"<color=orange>Plant Potion result =</color>  {success}   [{potionUsed.ItemTemplate.ItemName}]");
			}
			else if(potionUsed.UsedOnPlayer && player!=null)
            {
				target = ePotionTarget.SELF;
				willSucceed = player.PotionHandler.CanApplyPotion(potionUsed.ItemTemplate as PotionTemplate);

				(castedContext.SpellData.TimedEvents as PotionTimedEvents).Begin(castedContext, SpellAction(target), target);

				//success = player.PotionHandler.ApplyPotion(potionUsed.ItemTemplate as PotionTemplate);
				//Debug.Log($"What is the usedPotionTemplate: {potionUsed.ItemTemplate}  Type:{potionUsed.ItemTemplate.GetType()} ");
			}
			else
			{
				var potion = potionUsed.ItemTemplate as PotionTemplate;
			#if UNITY_EDITOR
				//Debug.Log($"<color=red>[FAILED TO USE {potion}]</color> UsedOnPlant={potionUsed.UsedOnPlant} dirtTarget={dirtTarget}  HasPlant={dirtTarget?.HasPlant()}");
				//Debug.Log($"<color=red>[FAILED TO USE {potion}]</color> UsedOnPlayer={potionUsed.UsedOnPlayer} player={player} ");
			#endif
			}

			if(willSucceed)
            {
				player.PlayerInventory.RemoveItem(potionUsed);
            }

			onFinishedResult?.Invoke(willSucceed, context);
			return willSucceed;

			Action SpellAction(ePotionTarget target)
			{
				if (target == ePotionTarget.PLANT)
					return () => dirtTarget.PotionHandler.ApplyPotion(potionUsed.ItemTemplate as PotionTemplate);
				else
					return () => player.PotionHandler.ApplyPotion(potionUsed.ItemTemplate as PotionTemplate);
			}
		}
	}

}