using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Items
{
    [Serializable] //doesnt seem to work
    public abstract class RuntimeItem : IItem
    {
        public IItem ItemTemplate => _item;
        protected readonly IItem _item;
        protected readonly int _quality;
        [SerializeField] protected string _suffix = "item";
        
        /************************************************************************************************************************/
        protected RuntimeItem(IItem item, int runtimeQuality)
        {
            _item = item;
            //Use the new quality, because it is generated at runtime
            _quality = Mathf.Clamp(runtimeQuality, 1, 100);
        }
        /************************************************************************************************************************/
        public eItemType ItemType => _item.ItemType;

        //Use this for logic like comparing items by name
        public string ItemName => $"{_item.ItemName}";
        //Use this for UI
        public string ItemNameTyped => $"{_item.ItemName} {_suffix}" ;
        public string FlavorText => _item.FlavorText;
        public Sprite ItemImage => _item.ItemImage;
        public float BaseValue => _item.BaseValue;
        //Runtime Items generate its values based on _quality
        public virtual int BuyPrice => ItemValue.GetBuyValue(this);
        public virtual int SellPrice => ItemValue.GetSellValue(this);
        /// <summary>
        /// Returns the raw float quality(1-100) or star quality (0-3)
        /// </summary>
        /// <param name="isStarQuality">whether its in 0-100 format or 0-3</param>
        /// <returns>(1-100) or (0-3)</returns>
        public float GetQuality(bool isStarQuality)
        {
            return isStarQuality ? StarQualityGenerator.GetQualityStarsFromQualityFloat(_quality) : _quality;
        }




    }


}
