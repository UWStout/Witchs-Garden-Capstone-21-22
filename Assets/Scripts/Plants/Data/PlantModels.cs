using System.Collections;
using System.Collections.Generic;
using NaughtyAttributes;
using UnityEngine;


namespace Plants
{
    [CreateAssetMenu(fileName = "_ModelSet", menuName = "Data/Plants/Plant Model Set", order = 1)]
    public class PlantModels : ScriptableObject
    {
        [ShowAssetPreview]
        [SerializeField] private GameObject _seedPrefab;
        [ShowAssetPreview]
        [SerializeField] private GameObject _youngPrefab;
        [ShowAssetPreview]
        [SerializeField] private GameObject _adultPrefab;
        [ShowAssetPreview]
        [SerializeField] private GameObject _witheringPrefab;  //Make a prefab that is the adultPrefab but includes a VFX-aura that autoplays
        [ShowAssetPreview]
        [SerializeField] private GameObject _deathPrefab;


        public GameObject GetPlantModel(ePlantPhase phase)
        {
            switch(phase)
            {
                case ePlantPhase.SEED:
                    return _seedPrefab;
                case ePlantPhase.YOUNG:
                    return _youngPrefab;
                case ePlantPhase.ADULT:
                    return _adultPrefab;
                case ePlantPhase.WITHERING:
                    return _witheringPrefab;
                case ePlantPhase.DEAD:
                    return _deathPrefab;
            }

            return null;
        }

    }
}
