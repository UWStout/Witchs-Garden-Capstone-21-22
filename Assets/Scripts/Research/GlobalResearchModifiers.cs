/*
* AUTHOR : Steve Datz
* DESC : Holds modifiers to the research system
*/


namespace Research
{
    public static class GlobalResearchModifiers
    {
        public static readonly float DEFAULT_RESEARCH_RATE = 100; // 15 , 50
        public static float RESEARCH_SPEED_MOD { get; private set; } = 1;

        private const float RESEARCH_SPEED_MAX = 10;
        /************************************************************************************************************************/

        public static void IncreaseResearchRate(float incrementVal)
        {
            RESEARCH_SPEED_MOD += incrementVal;
            //Range prevention:
            if(RESEARCH_SPEED_MOD < 1)
            {
                RESEARCH_SPEED_MOD = 1;
            }
            else if(RESEARCH_SPEED_MOD > RESEARCH_SPEED_MAX)
            {
                RESEARCH_SPEED_MOD = RESEARCH_SPEED_MAX;
            }
        }

        public static float GetResearchRate()
        {
            return DEFAULT_RESEARCH_RATE * RESEARCH_SPEED_MOD;
        }
    }
}
