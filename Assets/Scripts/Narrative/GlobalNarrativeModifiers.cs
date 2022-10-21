/*
* AUTHOR : Steve Datz
* DESC : Modifiyable settings for the narrative system
*/



namespace Narrative
{
    public static class GlobalNarrativeModifiers
    {
        public static float NARR_GOLD_REWARD_MOD { get; private set; } = 1;
        //TODO: not currently a thing
        public static float NARR_CHANCE_MOD { get; private set; } = 1;


        private static float NARR_GOLD_REWARD_MOD_MAX = 10;
        private static float NARR_NARR_CHANCE_MOD_MAX = 10;

        /************************************************************************************************************************/

        public static void IncreaseGoldRewardRate(float incrementVal)
        {
            NARR_GOLD_REWARD_MOD += incrementVal;
            //Range prevention:
            if (NARR_GOLD_REWARD_MOD < 1)
            {
                NARR_GOLD_REWARD_MOD = 1;
            }
            else if (NARR_GOLD_REWARD_MOD > NARR_GOLD_REWARD_MOD_MAX)
            {
                NARR_GOLD_REWARD_MOD = NARR_GOLD_REWARD_MOD_MAX;
            }
        }


        public static void IncreaseNarrEventChanceRate(float incrementVal)
        {
            NARR_CHANCE_MOD += incrementVal;
            //Range prevention:
            if (NARR_CHANCE_MOD < 1)
            {
                NARR_CHANCE_MOD = 1;
            }
            else if (NARR_CHANCE_MOD > NARR_NARR_CHANCE_MOD_MAX)
            {
                NARR_CHANCE_MOD = NARR_NARR_CHANCE_MOD_MAX;
            }
        }

        /************************************************************************************************************************/

    }
}
