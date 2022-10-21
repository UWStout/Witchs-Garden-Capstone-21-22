using Ingredients;

namespace Plants
{
	public interface IPlantTemplate
	{
		PlantData PlantData { get; }

		PlantModels PlantModels { get; }
	}
}