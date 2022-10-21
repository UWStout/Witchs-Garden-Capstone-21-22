using System;
using Statistics;
using UnityEngine;

namespace Plants
{
    [Serializable]
    public class PlantModifier
    {
        //Keep everything here private, its for serialized initiation only , to get vals, use GetModifier()
        private ePlantAttribute _attributeModified;
        private eModifierType _modifierType;
        private Modifier<ePlantAttribute> _modifier;

        /************************************************************************************************************************/
        public PlantModifier(PlantModSet modSet)
        {
            _attributeModified = modSet.AttributeModified;
            _modifierType = modSet.ModifierType;
            //Have to pass in pre-seralized values, instead of serializing them in our own class
            _modifier = new Modifier<ePlantAttribute>(_attributeModified, _modifierType, modSet.Value);
        }
        public PlantModifier(ePlantAttribute attr, eModifierType modifierType, float value) // : this() // cant call base ctor, becuz this happens BEFORE we set our vars
        {
            _attributeModified = attr;
            _modifierType = modifierType;

            _modifier = new Modifier<ePlantAttribute>(_attributeModified, _modifierType, value);
        }
        /************************************************************************************************************************/
        /// <summary>
        /// Use this to get the wrapped Modifier that encapsulates all data needed 
        /// </summary>
        public Modifier<ePlantAttribute> GetModifier() => _modifier;

        public ePlantAttribute GetAttributeType() => _attributeModified;
    }


    [Serializable]
    public struct PlantModSet
    {
        public ePlantAttribute AttributeModified;
        public eModifierType ModifierType;
        public float Value;
    }
}