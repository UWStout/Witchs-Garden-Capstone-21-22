using Ingredients;
using System.Collections;
using System.Collections.Generic;
using Helpers;
using NaughtyAttributes;
using UnityEngine;
namespace Items
{
    [CreateAssetMenu(fileName = "PotionItem_", menuName = "Data/Items/Potion Template", order = 0)]
    public class PotionTemplate : SerializedItemTemplate, IPotion
    {
        public IngredientSet IngredientTypes => _ingredientTypes.GetIngredientSet();
        [SerializeField] private RigidIngredientSet _ingredientTypes;

        public override eItemType ItemType => eItemType.POTION;

        public override string ItemName => _itemName;
        [SerializeField] private string _itemName;
        public override string FlavorText => _flavorText;
        [SerializeField] private string _flavorText;

        //Starting base value at runtime scaled by quality
        public override float BaseValue => _baseValue;
        [SerializeField] private float _baseValue;

        public override Sprite ItemImage => _itemImage;
        [ShowAssetPreview]
        [SerializeField] private Sprite _itemImage;
        
        // Math equation in a future fuction?
        //Handle quality at runtime
        public int Quality => 0;

        public bool UsedOnPlayer => _usedOnPlayer;
        [SerializeField] private bool _usedOnPlayer;

        public bool UsedOnPlant => _usedOnPlant;
        [SerializeField] private bool _usedOnPlant;

        public override void OnScreenshotTaken(Sprite s)
        {
            _itemImage = s;
        }
    }
}