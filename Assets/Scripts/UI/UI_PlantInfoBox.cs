using Plants;
using Garden;
using System.Collections;
using System.Collections.Generic;
using Targeting;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace UI
{
    public class UI_PlantInfoBox : UI_ScreenSpaceHoverListener
    {
        [SerializeField] private TextMeshProUGUI _description;
        [SerializeField] private TextMeshProUGUI _titleText;
        [SerializeField] private UI_IngredientLabel _ingredientLabel;

        [SerializeField] private UI_TweenFade _tweenFade;

        private bool _isOn = true;

        const string GREEN_COLOR_STRING = "<color=#005500>";
        const string RED_COLOR_STRING = "<color=\"red\">";
        const string ICON_SPRITESHEET_NAME = "PlantAttributes_Spritesheet";
        /************************************************************************************************************************/

        private void Awake()
        {
            ToggleComponents(false);
        }
        /************************************************************************************************************************/

        protected override void ChangeDisplay(ITargetable targ)
        {
            //Debug.Log($"Example heard: {targ}");
            if (targ == null || targ.Transform == null)
            {
                ToggleComponents(false);
                return;
            }

            var patch = targ.Transform.gameObject.GetComponent<Patch>();
            //Debug.Log("Patch is: " + patch);
            if (patch != null)
            {
                //Debug.Log("Plant is: " + plant);
                if (patch.HasPlant())
                {
                    var plant = patch.GetPlant();
                    string descriptionText = "";
                    //descriptionText += plant.PlantData.PlantFlavorText + "\n"; //"Plant Grow Time: " + plant.GetCurrentGrowTime() + " Day(s)";
                    //days until grown
                    int daysUntilGrown = plant.GetHowManyTurnsTillGrown();
                    //Debug.Log($"daysUntilGrown = {daysUntilGrown}");
                    if (daysUntilGrown > 0)
                    {
                        //days until grown
                        descriptionText += "<sprite=\"" + ICON_SPRITESHEET_NAME + "\" name=\"PlantAttributes_GrowTime\">";
                        
                        /*
                        var currentGrowtime = plant.GetCurrentGrowTime();
                        var baseGrowtime = plant.GetStartingGrowTime(); //plant.PlantData.Attributes.GetAttributeValue(ePlantAttribute.GROWTIME);
                        Debug.Log("GetHowManyTurnsTillGrown " + plant.GetHowManyTurnsTillGrown());
                        Debug.Log("GetCurrentGrowTime " + plant.GetCurrentGrowTime());
                        Debug.Log("GetStartingGrowTime " + plant.GetStartingGrowTime());
                        Debug.Log("GetAttributeValue " + plant.PlantData.Attributes.GetAttributeValue(ePlantAttribute.GROWTIME));
                        Debug.Log("GetAttributeValue 1  " + plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, true, true));
                        Debug.Log("GetAttributeValue 2  "  + plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, false, true));
                        Debug.Log("GetAttributeValue 3  " + plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, true, false));
                        Debug.Log("GetAttributeValue 4  " + plant.GetCurrentPlantStat(ePlantAttribute.GROWTIME, false, false));

                        if (currentGrowtime != baseGrowtime)
                        {
                            var differenceGrowtime = currentGrowtime - baseGrowtime;
                            if (differenceGrowtime < 0)
                                descriptionText += "<b>" + daysUntilGrown + "</b>" + GREEN_COLOR_STRING + " (" + differenceGrowtime + ")</color>" + " days(s) to fully grown";
                            else
                                descriptionText += "<b>" + daysUntilGrown + "</b>" + RED_COLOR_STRING + " (+" + differenceGrowtime + ")</color>" + " days(s) to fully grown";
                        }
                        else
                        */
                        descriptionText += daysUntilGrown + " day(s) to fully grown";

                        if (plant.GetIsSeed())
                            descriptionText += " - Seed";
                        else if (plant.GetIsYoung())
                            descriptionText += " - Young";

                        descriptionText += "\n";
                    }
                    else
                    {
                        descriptionText += "Harvestable";
                        if (plant.GetIsDead())
                            descriptionText += " - Dead\n";
                        else if (plant.GetIsWithering())
                            descriptionText += " - Adult Withering<sprite=\"" + ICON_SPRITESHEET_NAME + "\" name=\"PlantAttributes_Wither\">\n";
                        else if (plant.GetIsAdult())
                            descriptionText += " - Adult\n";
                        else
                            descriptionText += "\n";
                    }

                    //watered
                    if (patch.CurrentState == ePatchState.WATERED)
                       descriptionText += "\tWatered";
                    else
                        descriptionText += "\tNot Watered";

                    //Attributes
                    descriptionText += "\n";

                    //yield
                    descriptionText += "<sprite=\"" + ICON_SPRITESHEET_NAME + "\" name=\"PlantAttributes_Yield\">Yield: ";
                    var currentYield = plant.GetCurrentPlantStat(ePlantAttribute.YIELDAMOUNT, true, true);
                    var baseYield = plant.GetCurrentPlantStat(ePlantAttribute.YIELDAMOUNT, false, false);
                    if (currentYield != baseYield)
                    {
                        var differenceYield = currentYield - baseYield;
                        if (differenceYield < 0)
                            descriptionText += "<b>" + currentYield + "</b>" + RED_COLOR_STRING + " (" + differenceYield + ")</color>";
                        else
                            descriptionText += "<b>" + currentYield + "</b>" + GREEN_COLOR_STRING + " (+" + differenceYield + ")</color>";
                    }
                    else
                        descriptionText += currentYield;
                    descriptionText += "\n";

                    //quality
                    descriptionText += "<sprite=\"" + ICON_SPRITESHEET_NAME + "\" name=\"PlantAttributes_Quality\">Quality: ";
                    var currentQuality = plant.GetCurrentPlantStat(ePlantAttribute.QUALITY, true, true);
                    var baseQuality = plant.GetCurrentPlantStat(ePlantAttribute.QUALITY, false, false);
                    if (currentQuality != baseQuality)
                    {
                        var differenceQuality = currentQuality - baseQuality;
                        if (differenceQuality < 0)
                            descriptionText += "<b>" + currentQuality + "%</b>" + RED_COLOR_STRING + " (" + differenceQuality + "%)</color>";
                        else
                            descriptionText += "<b>" + currentQuality + "%</b>" + GREEN_COLOR_STRING + " (+" + differenceQuality + "%)</color>";
                    }
                    else
                        descriptionText += currentQuality + "%";
                    descriptionText += "\n";

                    //traits
                    var traits = plant.GetTraitHandler().GetTraits();
                    if (traits.Count > 0)
                        descriptionText += "<b>Traits:</b>\n";
                    foreach (PlantTrait pt in traits)
                    {
                        descriptionText += "\t<b>" + pt.TraitName + "</b> (" + pt.TraitFlavorText + ")\n";
                    }

                    //set description text from built string:
                    _description.SetText(descriptionText);

                    var plantData = plant.PlantData;
                    if (plantData != null)
                    {
                        _titleText.text = plantData.PlantName;
                        _ingredientLabel.SetIngredientDisplay(plantData.IngredientType);
                    }

                    ToggleComponents(true);
                }
                else
                    ToggleComponents(false);
            }
            else
                ToggleComponents(false);

            //an example of how you can move a screenspace element, to a world space point
            var screenPos = WorldToScreenPoint(targ.Transform.position);
            //You will want to do some math based off of screen pos to figure out where to actually offset this- instead of dead ontop of
            var offset = new Vector3(-380, 160, 0);
            this.transform.position = screenPos + offset;
        }
        /************************************************************************************************************************/

        private void ToggleComponents(bool isOn)
        {
            //_content.gameObject.SetActive(isOn);
            if (this._isOn != isOn)
            {
                this._isOn = isOn;
                if (_tweenFade != null)
                    _tweenFade.RunTween(isOn);
            }
        }
        /************************************************************************************************************************/
    }
}