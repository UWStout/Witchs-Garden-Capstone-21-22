/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using Garden;
using Spells;
using UI;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Tutorial
{
	public class TutorialSpellWheelListener : MonoBehaviour
	{
		[SerializeField] private TutorialTrigger _hybridTutTrigger;
		/************************************************************************************************************************/

		private void Start()
		{
			UI_GardenController.SpellChangeEvent += ListenForHybrid;
		}


		private void ListenForHybrid(SpellData spell)
		{
			if (spell.SpellID != eSpellID.HYBRID)
				return;
			_hybridTutTrigger.Trigger();
			//We dont need to listen anymore
			UI_GardenController.SpellChangeEvent -= ListenForHybrid;
			Destroy(this);
		}
	}

}