using CustomInput;
using Ingredients;
using Items;
using Narrative;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;
using UnityEngine.UI;

namespace UI
{
    public class UI_BookOverlay : MonoBehaviour
    {
        [SerializeField] private UI_Inventory _inventory;
        [SerializeField] private UI_Cauldron _cauldron;
        [SerializeField] private UI_ShopBuyMenu _shopBuyMenu;
        [SerializeField] private UI_ShopSellMenu _shopSellMenu;
        [SerializeField] private UI_ResearchSelectionController _researchL;
        [SerializeField] private UI_ResearchDetails _researchR;
        [SerializeField] private UI_StoryProgressMenu _storyProgressMenu;
        [SerializeField] private UI_RequestListDisplay _currentOrdersReferenceMenu;
        [SerializeField] private UI_ResearchStatsMenu _researchStatsReferenceMenu;
        [SerializeField] private UI_ResearchReferenceRightMenu _researchReferenceRightMenu;
        public UI_ReferencePotionRecipesMenu ReferencePotionRecipesMenu => _potionRecipesReferenceMenu;
        [SerializeField] private UI_ReferencePotionRecipesMenu _potionRecipesReferenceMenu;

        [SerializeField] private UI_ButtonList _bookTabs;

        [SerializeField] private GameObject _leftMenu;
        [SerializeField] private GameObject _rightMenu;
        private UI_MenuContent _leftMenuContent, _rightMenuContent;
        private bool _isShowingReferenceBook = true;

        private MenuType _focusMenuType = MenuType.NONE;
        private MenuSide _focusMenuSide = MenuSide.LEFT;
        private MenuType _nonInventoryMenuType = MenuType.NONE;

        [SerializeField] private Image _bookImageBackground;
        [SerializeField] private Image _darkBackgroundOverlay;

        private static readonly List<eItemType> INVENTORY_TABS_ALL = new List<eItemType>() { eItemType.SEED, eItemType.YIELD, eItemType.POTION };
        private static readonly List<eItemType> INVENTORY_SEED_AND_POTION = new List<eItemType>() { eItemType.SEED, eItemType.POTION };
        private static readonly List<eItemType> INVENTORY_BREWING = new List<eItemType>() { eItemType.YIELD, eItemType.POTION };

        private readonly List<IItemBundle> _selectedItems = new List<IItemBundle>();
        private int _maxSelectedSize = 0;
        private eItemType _selectionCategory = eItemType.YIELD;
        private bool _doCheckCategoryRequirement = false;
        private bool _doCheckIngredientShapeRequirement = false;

        /************************************************************************************************************************/

        public enum MenuType
        {
            NONE,
            PLAYER_INVENTORY,
            BREWING_SCREEN,
            SELLING_SCREEN,
            BUYING_SCREEN,
            RESEARCH_BOOK_L,
            RESEARCH_BOOK_R,
            POTION_RECIPE_LIST,
            STORY_PROGRESS_SCREEN,
            CURRENT_ORDERS_REFERENCE_SCREEN,
            RESEARCH_STATS_SCREEN,
            POTION_RECIPES_REFERENCE_SCREEN,
            RESEARCH_REFERENCE_RIGHT_SCREEN
        }

        public enum MenuSide
        {
            LEFT,
            RIGHT
        }

        public void OnEnable()
        {
            RegisterForInput(true);
        }

        public void OnDisable()
        {
            ClearStuffSelected();
            RegisterForInput(false);
        }

        private void RegisterForInput(bool cond)
        {
            if (cond)
            {
                InputReader.ChangePageSecondaryEvent += IncrementBookTab;
            }
            else
            {
                InputReader.ChangePageSecondaryEvent -= IncrementBookTab;
            }
        }

        /************************************************************************************************************************/

        public void PresetMenuPlayerInventory()
        {
            _isShowingReferenceBook = true;
            SetBookBackground(true);
            SetShowBookTabs(true);
            SetMenu(MenuType.PLAYER_INVENTORY, MenuSide.LEFT);
            SetMenu(MenuType.POTION_RECIPES_REFERENCE_SCREEN, MenuSide.RIGHT);
            SetFocus(MenuType.PLAYER_INVENTORY);
            _inventory.SetCategoryTabs(INVENTORY_TABS_ALL);

            ClearStuffSelected();
            _maxSelectedSize = 0;
        }

        public void PresetMenuBrewing()
        {
            _isShowingReferenceBook = false;
            SetBookBackground(false);
            SetShowBookTabs(false);
            SetMenu(MenuType.PLAYER_INVENTORY, MenuSide.LEFT);
            SetMenu(MenuType.BREWING_SCREEN, MenuSide.RIGHT);
            SetFocus(MenuType.PLAYER_INVENTORY);
            _inventory.SetCategoryTabs(INVENTORY_BREWING);

            _maxSelectedSize = 3;
            _doCheckCategoryRequirement = true;
            _doCheckIngredientShapeRequirement = true;
        }

        public void PresetMenuShopBuy()
        {
            _isShowingReferenceBook = false;
            SetBookBackground(false);
            SetShowBookTabs(false);
            SetMenu(MenuType.PLAYER_INVENTORY, MenuSide.LEFT);
            SetMenu(MenuType.BUYING_SCREEN, MenuSide.RIGHT);
            _inventory.SetCategoryTabs(INVENTORY_TABS_ALL);

            ClearStuffSelected();
            _maxSelectedSize = 0;

            if (!SetFocus(MenuType.BUYING_SCREEN))
                SetFocus(MenuType.PLAYER_INVENTORY);
        }

        public void PresetMenuShopSell()
        {
            _isShowingReferenceBook = false;
            SetBookBackground(false);
            SetShowBookTabs(false);
            SetMenu(MenuType.PLAYER_INVENTORY, MenuSide.LEFT);
            SetMenu(MenuType.SELLING_SCREEN, MenuSide.RIGHT);
            SetFocus(MenuType.PLAYER_INVENTORY);
            _inventory.SetCategoryTabs(INVENTORY_TABS_ALL, 2);

            ClearStuffSelected();
            _maxSelectedSize = 1;
            _doCheckCategoryRequirement = false;
            _doCheckIngredientShapeRequirement = false;
        }

        public void PresetMenuResearch()
        {
            _isShowingReferenceBook = false;
            SetBookBackground(false);
            SetShowBookTabs(false);
            SetMenu(MenuType.RESEARCH_BOOK_L, MenuSide.LEFT);
            SetMenu(MenuType.RESEARCH_BOOK_R, MenuSide.RIGHT);
            SetFocus(MenuType.RESEARCH_BOOK_L);
        }

        public void PresetMenuStoryProgress()
        {
            _isShowingReferenceBook = true;
            SetBookBackground(true);
            SetShowBookTabs(true);
            SetMenu(MenuType.STORY_PROGRESS_SCREEN, MenuSide.LEFT);
            SetMenu(MenuType.CURRENT_ORDERS_REFERENCE_SCREEN, MenuSide.RIGHT);
            SetFocus(MenuType.STORY_PROGRESS_SCREEN);
        }

        public void PresetMenuResearchReference()
        {
            _isShowingReferenceBook = true;
            SetBookBackground(true);
            SetShowBookTabs(true);
            SetMenu(MenuType.RESEARCH_STATS_SCREEN, MenuSide.LEFT);
            SetMenu(MenuType.RESEARCH_REFERENCE_RIGHT_SCREEN, MenuSide.RIGHT);
            SetFocus(MenuType.RESEARCH_STATS_SCREEN);
        }

        public void SetMenu(MenuType type, MenuSide side)
        {
            //Debug.Log($"SetMenu : {type}");
            var menuObject = GetMenuObject(side);
            UI_MenuContent chosenContent = null;
            if (menuObject == null)
                return;
            //Set menu content
            chosenContent = GetMenuContent(type);

            //Set non-inventory menu type; Used for setting confirm button registering and to tell inventory when to generate slots differently based on other menu
            if (type != MenuType.PLAYER_INVENTORY && type != MenuType.NONE)
                SetNonInventoryMenuType(type);
            else
                SetNonInventoryMenuType(MenuType.NONE);

            SetMenuContent(menuObject, side, chosenContent);
        }

        private UI_MenuContent GetMenuContent(MenuType type)
        {
            switch (type)
            {
                case (MenuType.PLAYER_INVENTORY):
                    return _inventory;
                case (MenuType.BREWING_SCREEN):
                    return _cauldron;
                case (MenuType.SELLING_SCREEN):
                    return _shopSellMenu;
                case (MenuType.BUYING_SCREEN):
                    return _shopBuyMenu;
                case (MenuType.RESEARCH_BOOK_L):
                    return _researchL;
                case (MenuType.RESEARCH_BOOK_R):
                    return _researchR;
                case (MenuType.POTION_RECIPE_LIST):
                    return _cauldron.GetPotionRecipeList();
                case (MenuType.STORY_PROGRESS_SCREEN):
                    return _storyProgressMenu;
                case (MenuType.CURRENT_ORDERS_REFERENCE_SCREEN):
                    return _currentOrdersReferenceMenu;
                case (MenuType.RESEARCH_STATS_SCREEN):
                    return _researchStatsReferenceMenu;
                case (MenuType.POTION_RECIPES_REFERENCE_SCREEN):
                    return _potionRecipesReferenceMenu;
                case (MenuType.RESEARCH_REFERENCE_RIGHT_SCREEN):
                    return _researchReferenceRightMenu;
                case (MenuType.NONE):
                    return null;
                default:
                    return null;
            }
        }

        private void SetMenuContent(GameObject menuObject, MenuSide side, UI_MenuContent newContent)
        {
            UI_MenuContent menuContent = GetMenuContent(side);
            //Clear/Reset old content
            if (menuContent != null)
            {
                menuContent.gameObject.transform.parent = gameObject.transform;
                menuContent.gameObject.SetActive(false);
            }

            //Set new content
            if (newContent != null)
            {
                newContent.gameObject.SetActive(true);
                newContent.transform.parent = menuObject.transform;
                newContent.transform.position = menuObject.transform.position;
            }
            switch (side)
            {
                case MenuSide.LEFT:
                    _leftMenuContent = newContent;
                    break;
                case MenuSide.RIGHT:
                    _rightMenuContent = newContent;
                    break;
                default:
                    break;
            }
        }

        private GameObject GetMenuObject(MenuSide side)
        {
            switch (side)
            {
                case MenuSide.LEFT:
                    return _leftMenu;
                case MenuSide.RIGHT:
                    return _rightMenu;
                default:
                    return null;
            }
        }

        private UI_MenuContent GetMenuContent(MenuSide side)
        {
            switch (side)
            {
                case MenuSide.LEFT:
                    return _leftMenuContent;
                case MenuSide.RIGHT:
                    return _rightMenuContent;
                default:
                    return null;
            }
        }

        public bool GetIsShowingReferenceBook()
        {
            return _isShowingReferenceBook;
        }

        private MenuSide GetMenuSideFromMenuType(MenuType menuType)
        {
            if (GetMenuContent(MenuSide.LEFT).GetMenuType() == menuType)
            {
                return MenuSide.LEFT;
            }
            else
                return MenuSide.RIGHT;
        }

        private MenuType GetMenuTypeFromMenuSide(MenuSide menuSide)
        {
            if (menuSide == MenuSide.LEFT)
            {
                if (_leftMenuContent == null)
                    return MenuType.NONE;
                else
                    return _leftMenuContent.GetMenuType();
            }
            else
            {
                if (_rightMenuContent == null)
                    return MenuType.NONE;
                else
                    return _rightMenuContent.GetMenuType();
            }
        }

        public UI_Inventory GetPlayerInventory()
        {
            return _inventory;
        }

        public UI_Cauldron GetCauldron()
        {
            return _cauldron;
        }

        public UI_ResearchStatsMenu GetResearchStatsMenu()
        {
            return _researchStatsReferenceMenu;
        }

        public UI_ResearchReferenceRightMenu GetResearchReferenceRightMenu()
        {
            return _researchReferenceRightMenu;
        }

        private void SetBookBackground(bool doTurnOn)
        {
            _bookImageBackground.enabled = doTurnOn;
            _darkBackgroundOverlay.enabled = doTurnOn;
        }

        private void SetShowBookTabs(bool doShowBookTabs)
        {
            _bookTabs.gameObject.SetActive(doShowBookTabs);
        }

        /************************************************************************************************************************/
        //SLOT SELECTION:
        public bool AddItemSelected(IItemBundle itemBundle)
        {
            if (CanAcceptItemSelected(itemBundle))
            {
                _selectedItems.Add(itemBundle);
                if (_cauldron != null)
                    _cauldron.AddItemSelectedDisplay(itemBundle);
                if (_shopSellMenu != null)
                    _shopSellMenu.AddItemSelectedDisplay(itemBundle);
                return true;
            }
            else
                return false;
        }

        public void RemoveItemSelected(IItemBundle item)
        {
            if (_selectedItems != null)
                _selectedItems.Remove(item);
            
            if (_cauldron != null)
                _cauldron.RemoveItemSelectedDisplay(item);
            if (_inventory != null)
                _inventory.RemoveItemSelectedDisplay(item);
            if (_shopSellMenu != null)
                _shopSellMenu.RemoveItemSelectedDisplay(item);
        }

        public void ClearItemsSelected()
        {
            if (_selectedItems != null)
                _selectedItems.Clear();
            if (_cauldron != null)
                _cauldron.ClearItemsSelectedDisplay();
            if (_inventory != null)
                _inventory.ClearItemsSelectedDisplay();
            if (_shopBuyMenu != null)
                _shopBuyMenu.ClearSelectedItem();
            if (_shopSellMenu != null)
                _shopSellMenu.ClearItemsSelectedDisplay();
        }

        public void ClearStuffSelected()
        {
            ClearItemsSelected();

            if (_shopSellMenu != null)
                _shopSellMenu.ResetSelectedBox();
        }

        private bool CanAcceptItemSelected(IItemBundle item)
        {
            if (_selectedItems.Count >= _maxSelectedSize || (_doCheckCategoryRequirement && item.ItemTemplate.ItemType != _selectionCategory) || (_doCheckIngredientShapeRequirement && SelectedItemsHasShape(item)))
                return false;
            else
                return true;
        }

        private bool SelectedItemsHasShape(IItemBundle targetItem)
        {
            //Get shape out of target item; if has no shape, then return true
            eIngSlotType targetShape;
            if (targetItem.ItemTemplate is YieldItem isYieldTarget)
            {
                targetShape = isYieldTarget.IngredientType.IngSlotType;
            }
            else
                return true;

            //Look for target shape in selected items list
            foreach (var item in _selectedItems)
            {
                if (item.ItemTemplate is YieldItem isYield)
                {
                    if (isYield.IngredientType.IngSlotType == targetShape)
                        return true;
                }
            }
            return false;
        }

        public List<IItemBundle> GetItemsSelected()
        {
            return _selectedItems;
        }

        public eItemType GetSelectionCategory()
        {
            return _selectionCategory;
        }

        public void SetSelectionCategory(eItemType itemType)
        {
            _selectionCategory = itemType;
            ClearItemsSelected();
        }

        public MenuType GetNonInventoryMenuType()
        {
            return _nonInventoryMenuType;
        }

        /************************************************************************************************************************/
        //FOCUS CHANGING:
        //Set focus based on menu type
        public bool SetFocus(MenuType menuType)
        {
            if (_focusMenuType != menuType)
            {
                if (GetMenuContent(menuType).TrySetFocus(true) == true) //If can set focus to new menu
                {
                    GetMenuContent(_focusMenuType)?.TrySetFocus(false); //Set currently focused menu to not focused
                    _focusMenuType = menuType;
                    _focusMenuSide = GetMenuSideFromMenuType(menuType);
                    //Debug.Log("Set Focus to " + menuType);
                    return true;
                }
                else
                    return false;
            }
            else
                return false;
        }

        //Set focus based on menu side (used for controller input)
        public void SetFocus(MenuSide menuSide)
        {
            var menuTypeToFocusTo = GetMenuTypeFromMenuSide(menuSide);
            if (menuTypeToFocusTo != MenuType.NONE)
                SetFocus(menuTypeToFocusTo);
        }

        private bool SetNonInventoryMenuType(MenuType menuType)
        {
            if (_nonInventoryMenuType != menuType)
            {
                //Debug.Log("SET nonInventoryMenuType to " + menuType);
                _nonInventoryMenuType = menuType;
                _cauldron.UpdateGlobalFocus(menuType == MenuType.BREWING_SCREEN);
                _shopSellMenu.UpdateGlobalFocus(menuType == MenuType.SELLING_SCREEN);
                _shopBuyMenu.UpdateGlobalFocus(menuType == MenuType.BUYING_SCREEN);
                _researchR.UpdateGlobalFocus(menuType == MenuType.RESEARCH_BOOK_R);
                _storyProgressMenu.UpdateGlobalFocus(menuType == MenuType.STORY_PROGRESS_SCREEN);
                _researchReferenceRightMenu.UpdateGlobalFocus(menuType == MenuType.RESEARCH_REFERENCE_RIGHT_SCREEN);
                return true;
            }

            return false;
        }

        public void BindListsToInfoBox()
        {
            var itemInfoBox = _inventory.ItemInfoBox;
            _inventory.SetOnSlotHighlighted(itemInfoBox.OnSlotHighlighted);
            _shopBuyMenu.SetOnSlotHighlighted(itemInfoBox.OnSlotHighlighted);
            _cauldron.GetPotionRecipeList().SetOnSlotHighlighted(itemInfoBox.OnSlotHighlighted);
            _shopSellMenu.SetOnSlotHighlighted(itemInfoBox.OnSlotHighlighted);
            _potionRecipesReferenceMenu.GetPotionRecipeList().SetOnSlotHighlighted(itemInfoBox.OnSlotHighlighted);
        }

        public void SetBookTab(int index)
        {
            if (_isShowingReferenceBook && _bookTabs.SetButtonSelected(index))
                UpdateBookTab(index);
        }

        public void IncrementBookTab(int amnt)
        {
            if (_isShowingReferenceBook && _bookTabs.IncrementButtonSelected(amnt))
                UpdateBookTab(_bookTabs.GetSelectedIndex());
        }

        private void UpdateBookTab(int index)
        {
            if (index == 0)
                PresetMenuPlayerInventory();
            else if (index == 1)
                PresetMenuStoryProgress();
            else
                PresetMenuResearchReference();
        }
    }
}