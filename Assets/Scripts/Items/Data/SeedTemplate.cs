
using Plants;
using System.Collections;
using System.Collections.Generic;
using NaughtyAttributes;
using UnityEngine;
namespace Items
{
    [CreateAssetMenu(fileName = "SeedItem_", menuName = "Data/Items/Seed Template", order = 0)]
    public class SeedTemplate : SerializedItemTemplate, IPlantableItem
    {
        public PlantAttributes PlantAttributes => _plantTemplate.PlantData.Attributes;
        [SerializeField] private PlantTemplate _plantTemplate;
        public override eItemType ItemType => eItemType.SEED;
        public override string ItemName => _plantTemplate.PlantData.PlantName;
        
        public override string FlavorText => _flavorText;
        [SerializeField] private string _flavorText;
        public override float BaseValue => _baseValue;
        [SerializeField] private float _baseValue;

        public override Sprite ItemImage => _itemImage;
        [ShowAssetPreview]
        [SerializeField] private Sprite _itemImage;

        /// ehh this really doesnt belong for SEED, but is a base item attr
        public int Quality => Mathf.FloorToInt(PlantData.Attributes.GetAttributeValue(ePlantAttribute.QUALITY));

        public PlantData PlantData => _plantTemplate.PlantData;
        public PlantModels PlantModels => _plantTemplate.PlantModels;
        public override void OnScreenshotTaken(Sprite s)
        {
            Debug.Log($"Screenshots Not supported for seeds. [Do By Hand] {s}");
        }
    } 
}