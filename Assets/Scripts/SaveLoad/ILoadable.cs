
namespace SaveLoad
{
	public interface ILoadable : IRegisterable
	{
		void Load(GameData data);
	}
}