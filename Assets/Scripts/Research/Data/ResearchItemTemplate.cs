/*
* AUTHOR : Steve Datz
* DESC : A parent class whos child implementation(s) will contain the information needed to hand out rewards from research sys
*/

using UnityEngine;

namespace Research
{
   // public enum eResearchItemType { RESEARCH_RATE_MOD, NARR_MOD, PLAYER_MOD , PLANT_MOD, SHOP_MOD, POTION_DIAGRAM, HYBRID_DIAGRAM, SPELL_UNLOCK}
    
    public abstract class ResearchItemTemplate : ScriptableObject
    {
       // public abstract eResearchItemType GetResearchItemType();
        /******************************************************************/
        public string ResearchName => _researchName;
        [SerializeField] private string _researchName = "";

        public string EasyUIDescription => _easyUIDescription;
        [SerializeField] private string _easyUIDescription = "";
        
        public Sprite Icon => _icon;
        [SerializeField] private Sprite _icon ;
        
    }
}