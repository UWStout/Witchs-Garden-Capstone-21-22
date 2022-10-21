using Plants;
using UnityEngine;

namespace Items
{
    public class SeedItem : RuntimeItem, IPlantableItem
    {
        
        /************************************************************************************************************************/

        public SeedItem(IPlantableItem item, int runtimeQuality=50) : base(item, runtimeQuality)
        {
            PlantData = item.PlantData;
            PlantModels = item.PlantModels;
            _suffix = "Seed";
        }
        /************************************************************************************************************************/
        
        public PlantData PlantData { get; }
        public PlantModels PlantModels { get; }
    }
}
