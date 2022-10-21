namespace SaveLoad
{
	/// <summary>
	/// Force whoever has this interface to be responsible to registering/unregistering from a system
	/// </summary>
	public interface IRegisterable
	{
		void RegisterTo();

		void UnRegisterTo();
	}
}