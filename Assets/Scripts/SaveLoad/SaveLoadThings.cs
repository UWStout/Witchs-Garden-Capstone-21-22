using System;
using System.Collections.Generic;
using Diagrams;
using Helpers;
using Items;
using Narrative;
using Plants;
using UnityEngine;
using Research;

namespace SaveLoad
{
    public class SaveLoadThings : InstancedMonoBehaviour<SaveLoadThings>
    {
        [Header("This is a really gross hack that serializes a ton of stuff we already serialize in a different spot slightly differently, but need in 1 place in lists for saving/loading..")]
        //ITEMS
        [SerializeField] List<SerializedItemTemplate> _seedTemplates = new List<SerializedItemTemplate>();
        [SerializeField] List<SerializedItemTemplate> _yieldTemplates = new List<SerializedItemTemplate>();
        [SerializeField] List<SerializedItemTemplate> _potionTemplates = new List<SerializedItemTemplate>();
        //DIAG
        [SerializeField] List<DiagramTemplate> _diagTemplates = new List<DiagramTemplate>();
        //RESEARCH
        [SerializeField] List<ResearchChapterTemplate> _rsrchTemplates = new List<ResearchChapterTemplate>();
        //NARRATIVE
        [SerializeField] List<NarrativeCharacterRequest> _narrRequests = new List<NarrativeCharacterRequest>();
        //PLANTS
        [SerializeField] List<PlantTemplate> _plantTemplates = new List<PlantTemplate>();
        [SerializeField] List<PlantTrait> _plantTraits = new List<PlantTrait>();
        /************************************************************************************************************************/

        public RuntimeItem LoadItemFromSaveData(SaveableItem saveItem)
        {
            eItemType type = (eItemType)saveItem.ItemType;
            List<SerializedItemTemplate> listRef = new List<SerializedItemTemplate>();
            switch(type)
            {
                case eItemType.SEED:
                {
                    listRef = _seedTemplates;
                    break;
                }
                case eItemType.YIELD:
                {
                    listRef = _yieldTemplates;
                    break;
                }
                case eItemType.POTION:
                {
                    listRef = _potionTemplates;
                    break;
                }
            }

            var template= FindTemplateFromName(saveItem.ItemName, listRef);
            return ItemManager.CreateRuntimeItem(template, (int)saveItem.QualityBase);
        }
    
        public DiagramTemplate LoadDiagramFromSave(SaveableDiagram item)
        {
            var itemName = item.DiagName;
            foreach (var diag in _diagTemplates)
            {
                if (diag.DiagramName == itemName)
                    return diag;
            }

            return null;
        }

        public UnlockedChapter LoadResearchChapterFromSave(SaveableResearchChapter ch)
        {
            var chId = ch.ChapterIDArr;
            foreach (var template in _rsrchTemplates)
            {
                if (template.ChapterIDArr != chId)
                    continue;
                //FOUND CHAPTER
                UnlockedChapter newCh = new UnlockedChapter(template);
                for (int i = 0; i < ch.IndividualProgress.Count; i++)
                {
                    var newProg = newCh.ResearchItems[i];
                    var savedProg = ch.IndividualProgress[i];
                    if (newProg.ResearchItemTemplate.ResearchName != savedProg.ResearchItemTemplateName)
                    {
                        Debug.Log($"[SaveLoad]<color=red>resarch loading fucked up</color> : {chId} , {newProg.ResearchItemTemplate.ResearchName}, {savedProg.ResearchItemTemplateName}");
                        continue;
                    }
                    newProg.IncreaseProgress(savedProg.Progress);
                }

                return newCh;
            }

            return null;
        }
        
        public NarrativeCharacterRequest LoadNarrativeReq(SaveableNarrativeRequest savedRequest)
        {
            foreach (var narReq in _narrRequests)
            {
                if (narReq.ToString().Equals(savedRequest.ReqName))
                {
                    //Debug.Log($"Request match : {savedRequest.ReqName} to {narReq.ToString()}");
                    return narReq;
                }
            }

            return null;
        }

        /************************************************************************************************************************/

        private SerializedItemTemplate FindTemplateFromName(string searchKey, IReadOnlyList<SerializedItemTemplate> listToSearch)
        {
            foreach (var listElement in listToSearch)
            {
                if (listElement.ItemName == searchKey)
                    return listElement;
            }

            return null;
        }


        public PlantTemplate FindTemplateForPlant(PlantData plantData, PlantModels plantModels)
        {
            foreach (var template in _plantTemplates)
            {
                if (template.PlantData == plantData && template.PlantModels == plantModels)
                    return template;
            }

            return null;
        }
        
        public PlantTemplate FindTemplateForPlant(string templateName)
        {
            foreach (var template in _plantTemplates)
            {
                if (template.ToString() == templateName )
                    return template;
            }

            return null;
        }

        public List<PlantTrait> FindTraitsFromList(List<string> traitStrings)
        {
            List<PlantTrait> traits = new List<PlantTrait>();
            foreach (var str in traitStrings)
            {
                foreach (var trait in _plantTraits)
                {
                    if (!trait.ToString().Equals(str)) 
                        continue;
                    traits.Add(trait);
                    break;
                }
            }

            return traits;
        }
    }
}
