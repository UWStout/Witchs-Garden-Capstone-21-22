using Items;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

namespace UI
{
    public class UI_InventoryTab : UI_Button
    {
        public eItemType ButtonCategory => _buttonCategory;
        [SerializeField] private eItemType _buttonCategory;
    }
}