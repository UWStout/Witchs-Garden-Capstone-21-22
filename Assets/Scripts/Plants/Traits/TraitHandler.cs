using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Plants
{
    public class TraitHandler : MonoBehaviour
    {
        [SerializeField] private TraitGenerator _traitGenerator;

        public IReadOnlyList<PlantTrait> GetTraits() => _traits;
        private List<PlantTrait> _traits;
        /************************************************************************************************************************/

        public void GenerateForPlant(PlantData data)
        {
            //UNIVERSAL Same chance for all trait generation for now:
            //could become unique to each plant with a lookup using PlantData
            _traits = _traitGenerator.GenerateNewModifiers(GlobalPlantModifiers.TRAIT_SPAWNING_CHANCE_BONUS);
            //PrintTraits();
        }

        public void LoadFromSave(List<PlantTrait> traits)
        {
            _traits = traits;
        }
        

        public void CloneFromPlant(IPlant otherPlant)
        {
            _traits = CloneTraitsWithRNG(otherPlant.GetTraitHandler().GetTraits(), GlobalPlantModifiers.TRAIT_CARRY_OVER_CHANCE);
        }

        public void Clear()
        {
            _traits.Clear();
        }
        
        /// <summary>
        /// Only allows one of each trait , cannot stack
        /// </summary>
        /// <param name="trait"></param>
        public void AddPlantTrait(PlantTrait trait)
        {
            if (_traits.Contains(trait))
                return;
            _traits.Add(trait);
        }
        /************************************************************************************************************************/
        private void PrintTraits()
        {
            foreach (var trait in _traits)
            {
                var idk = trait.GetPlantModifiers()[0];
                Debug.Log($"Plant has Trait: {trait} {idk.GetAttributeType()} v {idk.GetModifier().StatAffected}, {idk.GetModifier().Value}");
            }
        }
        private static List<PlantTrait> CloneTraitsWithRNG(IReadOnlyList<PlantTrait> traits, float chance = 50)
        {
            List<PlantTrait> clonedTraits = new List<PlantTrait>();

            foreach (var trait in traits)
            {
                var nextRng = UnityEngine.Random.Range(0, 100);
                Debug.Log($"Cloning plant trait {trait} with chance : {nextRng}");
                if (chance >= nextRng)
                {
                    clonedTraits.Add(trait);
                }
            }

            return clonedTraits;
        }

    }
}
