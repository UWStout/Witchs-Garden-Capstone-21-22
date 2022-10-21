using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Plants;
using Helpers;



public class TestPlantStats : MonoBehaviour
{
    [Header("Put this on a plant")]
    [SerializeField] private RunTimePlant _plant;

    [Header("Debugg stats:")]
    [SerializeField] [ReadOnly] private string _plantName = "";
    [SerializeField] [ReadOnly] private string _startingGrowTime = "";
    [SerializeField] [ReadOnly] private string _currentGrowTime = "";
    [SerializeField] [ReadOnly] private string _hasBeenWatered = "";
    [Header("No Modifiers:")]
    [SerializeField] [ReadOnly] private string _growTime = "";
    [SerializeField] [ReadOnly] private string _quality = "";
    [SerializeField] [ReadOnly] private string _yieldAmnt = "";
    [Header("With Modifiers:")]
    [SerializeField] [ReadOnly] List<PlantTrait> _traits = new List<PlantTrait>();
    [SerializeField] [ReadOnly] private string _growTimeModded = "";
    [SerializeField] [ReadOnly] private string _qualityModded = "";
    [SerializeField] [ReadOnly] private string _yieldAmntModded = "";


    /************************************************************************************************************************/


    [ContextMenu("DebuggPlantsStats")]
    public void DebuggPlantsStats()
    {
        _plant = this.GetComponent<RunTimePlant>();
        if (_plant==null)
        {
            Debug.Log($"<color=orange>No Plant for Debugger</color>");
            return;
        }
        _plantName = _plant.PlantData.PlantName;

        _startingGrowTime = _plant.GetStartingGrowTime().ToString();
        _currentGrowTime = _plant.GetCurrentGrowTime().ToString();
        _hasBeenWatered = _plant.GetHasBeenWatered().ToString();
        //NO MODS:
        _growTime = _plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, false, false).ToString();
        _quality = _plant.GetCurrentPlantStat(ePlantAttribute.QUALITY, false, false).ToString();
        _yieldAmnt = _plant.GetCurrentPlantStat(ePlantAttribute.YIELDAMOUNT, false, false).ToString();
        //W MODS:
        _traits = new List<PlantTrait>(_plant.GetTraitHandler().GetTraits());
        _growTimeModded = _plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, true, true).ToString();
        _qualityModded = _plant.GetCurrentPlantStat(ePlantAttribute.QUALITY, true, true).ToString();
        _yieldAmntModded = _plant.GetCurrentPlantStat(ePlantAttribute.YIELDAMOUNT, true, true).ToString();
    }


    /************************************************************************************************************************/

    private void Reset()
    {
        _plant = this.GetComponent<RunTimePlant>();
    }
}
