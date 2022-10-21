using Helpers;
using Ingredients;
using NaughtyAttributes;
using Plants;
using UnityEngine;

namespace Items
{
    [CreateAssetMenu(fileName = "YieldItem_", menuName = "Data/Items/Yield Template", order = 0)]
    public class YieldItemTemplate : SerializedItemTemplate, IHybridItem
    {
        [SerializeField] private PlantData _plantData;
        public override eItemType ItemType => eItemType.YIELD;
        public override string ItemName => _plantData.PlantName;
        public override string FlavorText => _flavorText;
        [SerializeField] private string _flavorText;
        public Ingredient IngredientType => _plantData.IngredientType;
        public int Level => _plantData.IngredientType.Level; //could rename to Rating
        

        public override Sprite ItemImage => _itemImage;
        [ShowAssetPreview]
        [SerializeField] private Sprite _itemImage;

        //This will be calculated at runtime, could set a base quality here if we ever wanted
        public int Quality => 0;
        
        public override float BaseValue => _baseValue;
        [Tooltip("Base Value that will be scaled by Quality at runtime")]
        [SerializeField] private float _baseValue;

        
        public override void OnScreenshotTaken(Sprite s)
        {
            Debug.Log($"<color=green> SAVED SPRITE:</color> {s}");
            _itemImage = s;
        }
    }
}
