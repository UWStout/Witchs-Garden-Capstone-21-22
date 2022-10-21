/*
* AUTHOR : Steve Datz
* DESC : A DRY way to reduce lines of casting code foreach type of cond/validator
*/


namespace Narrative
{
	public static class EventTypeValidator 
	{
		/************************************************************************************************************************/

		public static bool ConditionIsOfType<T>( EventCondition eventCondition, eTriggerCondType triggerType, out T casted) where T:EventCondition
		{
			casted = null;
			//Safe some troubles if its not even the right type
			if (eventCondition.GetCondition() != triggerType) 
				return false;
			//Extra safety - casting failure
			if (!(eventCondition is T castedCond)) 
				return false;
			
			casted = castedCond;
			return true;
		}
	}

}