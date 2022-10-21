using System;
using SaveLoad;

namespace Tutorial
{
    [Serializable]
    public class TutorialOneOffEvents
    {
        public bool ChestOccurred = false;
        public bool CauldronOccurred = false;
        public bool ShopOccurred = false;
        public bool GardenEnterOccurred = false;
        public bool GardenExitOccurred = false;
        public bool ResearchOccurred = false;
        public bool FencesOccurred = false;

        public bool ShopFirstRequestedOccurred = false;
        public bool HybridUnlockedOccurred = false;
        public bool CloneUnlockedOccurred = false;
        public bool Ch2UnlockedOccurred = false;
        public int HarvestsCount = 0;
        public bool ThirdHarvestOccurred = false;

        /************************************************************************************************************************/


        //Kinda gross quick DRY-hack because value types arent pass by reference 

        public bool CanOccur(eOneOffPromptID id)
        {
            switch(id)
            {
                case eOneOffPromptID.CAULDRON:
                    {
                        return !CauldronOccurred;
                    }
                case eOneOffPromptID.CHEST:
                    {
                        return !ChestOccurred;
                    }
                case eOneOffPromptID.SHOP:
                    {
                        return !ShopOccurred;
                    }
                case eOneOffPromptID.GARDEN_ENTER:
                    {
                        return !GardenEnterOccurred;
                    }
                case eOneOffPromptID.GARDEN_EXIT:
                    {
                        return !GardenExitOccurred;
                    }
                case eOneOffPromptID.RESEARCH:
                    {
                        return !ResearchOccurred;
                    }
                case eOneOffPromptID.FENCES:
					{
                        return !FencesOccurred;
					}
                case eOneOffPromptID.SHOP_FIRST_REQUESTED:
                    {
                        return !ShopFirstRequestedOccurred;
                    }
                case eOneOffPromptID.UNLOCKED_HYBRID_SPELL:
                    {
                        return !HybridUnlockedOccurred;
                    }
                case eOneOffPromptID.UNLOCKED_CLONE_SPELL:
                    {
                        return !CloneUnlockedOccurred;
                    }
                case eOneOffPromptID.UNLOCKED_CH_2:
                    {
                        return !Ch2UnlockedOccurred;
                    }
                case eOneOffPromptID.THIRD_HARVEST:
                    {
                        return !ThirdHarvestOccurred && HarvestsCount >= 3;
                    }
            }

            return true;
        }

        public void SetOccurred(eOneOffPromptID id)
        {
            switch (id)
            {
                case eOneOffPromptID.CAULDRON:
                    {
                        CauldronOccurred = true;
                        break;
                    }
                case eOneOffPromptID.CHEST:
                    {
                        ChestOccurred = true;
                        break;
                    }
                case eOneOffPromptID.SHOP:
                    {
                        ShopOccurred = true;
                        break;
                    }
                case eOneOffPromptID.GARDEN_ENTER:
                    {
                        GardenEnterOccurred = true;
                        break;
                    }
                case eOneOffPromptID.GARDEN_EXIT:
                    {
                        GardenExitOccurred = true;
                        break;
                    }
                case eOneOffPromptID.RESEARCH:
                    {
                        ResearchOccurred = true;
                        break;
                    }
                case eOneOffPromptID.FENCES:
					{
                        FencesOccurred = true;
                        break;
					}
                case eOneOffPromptID.SHOP_FIRST_REQUESTED:
                    {
                        ShopFirstRequestedOccurred = true;
                        break;
                    }
                case eOneOffPromptID.UNLOCKED_HYBRID_SPELL:
                    {
                        HybridUnlockedOccurred = true;
                        break;
                    }
                case eOneOffPromptID.UNLOCKED_CLONE_SPELL:
                    {
                        CloneUnlockedOccurred = true;
                        break;
                    }
                case eOneOffPromptID.UNLOCKED_CH_2:
                    {
                        Ch2UnlockedOccurred = true;
                        break;
                    }
                case eOneOffPromptID.THIRD_HARVEST:
                    {
                        ThirdHarvestOccurred = true;
                        break;
                    }
            }
        }
    }
}
