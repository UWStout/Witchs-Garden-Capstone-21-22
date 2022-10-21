
namespace SaveLoad
{

	public interface ISaveable : IRegisterable
	{
		void Save(GameData data);
		
	}
}