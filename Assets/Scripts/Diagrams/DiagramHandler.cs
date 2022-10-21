/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Collections.Generic;
using Garden;
using Helpers;
using Ingredients;
using Items;
using UnityEngine;


#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Diagrams
{
	///Normally wouldnt make this  singleton,but for the sake of the project speed, we did
	public class DiagramHandler : InstancedMonoBehaviour<DiagramHandler>
	{
		public event Action<DiagramTemplate> OnDiagramUnlocked;

		[SerializeField] private MasterDiagramLists _masterDiagrams;
		
		private readonly List<PotionComboDiagTemplate> _potionDiags = new List<PotionComboDiagTemplate>();
		private readonly List<HybridComboDiagTemplate> _hybridDiags = new List<HybridComboDiagTemplate>();

        /************************************************************************************************************************/
        private void Start()
        {
            if (DevModeToggle.Instance.DevMode )
            {
				if (DevModeToggle.Instance.DoUnlockAllPlantHybrids)
				{
					foreach (var hybrid in _masterDiagrams.HybridDiags)
					{
						AddDiagram(hybrid);
					}
				}
				if (DevModeToggle.Instance.DoUnlockAllPotionRecipes)
				{
					foreach (var potion in _masterDiagrams.PotionDiags)
					{
						AddDiagram(potion);
					}
				}
			}


        }
		/************************************************************************************************************************/


		public IReadOnlyList<PotionComboDiagTemplate> KnownPotionDiags => _potionDiags;
		public IReadOnlyList<HybridComboDiagTemplate> KnownHybridDiags => _hybridDiags;

		public IReadOnlyList<DiagramTemplate> GetKnownDiagsForSave()
		{
			List<DiagramTemplate> knownDiags = new List<DiagramTemplate>();
			foreach (var diag in _potionDiags)
			{
				knownDiags.Add(diag);
			}
			foreach (var diag in _hybridDiags)
			{
				knownDiags.Add(diag);
			}

			return knownDiags;
		}

		/************************************************************************************************************************/

		public void AddDiagram(DiagramTemplate template)
		{
			if (template is PotionComboDiagTemplate comboDiag)
			{
				if(!_potionDiags.Contains(comboDiag))
				{
					_potionDiags.Add(comboDiag);
					OnDiagramUnlocked?.Invoke(template);
				}

				//Debug.Log($"added new Potion Diag: {comboDiag.DiagramName}");
			}
			else if (template is HybridComboDiagTemplate hybridDiag)
			{
				if(!_hybridDiags.Contains(hybridDiag))
				{
					_hybridDiags.Add(hybridDiag);
					OnDiagramUnlocked?.Invoke(template);
				}
				
				//Debug.Log($"added new Hybrid Diag: {hybridDiag.DiagramName}");
			}
			
			
		}
		
		public bool IsDiagramUnlocked(IngredientSet ingredientSet)
        {
			if (ingredientSet == null)
				return false;
			foreach (var diagram in _potionDiags)
            {
				if (ingredientSet.CompareTo(diagram.PotionTemplate.IngredientTypes) == 0)
                {
					//Debug.Log("INGREDIENT SET" + ingredientSet + " IS UNLOCKED");
					return true;
				}
            }
			return false;
		}

		public int GetPotionDiagramsUnlockedCount()
		{
			return _potionDiags.Count;
		}

        public void CheckIfPotionUnlocksDiagram(PotionItem potionResult)
        {
	        foreach (var diag in _masterDiagrams.PotionDiags)
			{
			   if(!(diag is PotionComboDiagTemplate pDiag))
				   continue;

			   var diagTemplate = pDiag.PotionTemplate;
			   //Might be verbose
			   if (diagTemplate.ItemName != potionResult.ItemName ||
			       !diagTemplate.IngredientTypes.Equals(potionResult.IngredientTypes)) 
				   continue;
			   //Found
			   AddDiagram(diag);
			   Debug.Log($"Added Diagram: {pDiag}");
			   return;
			}
        }

		// TODO
		public void CheckIfHybridUnlocksDiagram(HybridFormation hybridResult)
		{
			foreach (var diag in _masterDiagrams.HybridDiags)
			{
				if (!(diag is HybridComboDiagTemplate hDiag))
					continue;

				var diagFormation = hDiag.HybridFormation;

				if (diagFormation != hybridResult)
					continue;

				// Found
				AddDiagram(diag);
				Debug.Log($"Added Diagram: {hDiag}");
				return;
			}
		}
        
        /************************************************************************************************************************/

    }

}