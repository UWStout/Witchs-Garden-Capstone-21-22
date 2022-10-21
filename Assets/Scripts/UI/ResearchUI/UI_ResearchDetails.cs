/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using CustomInput;
using Player;
using Research;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI
{
	public class UI_ResearchDetails : UI_MenuContent
	{
		[SerializeField] private TextMeshProUGUI _researchTopicHeaderTxt;
		[SerializeField] private TextMeshProUGUI _researchNameTxt;
		[SerializeField] private TextMeshProUGUI _researchDescriptionText;
		[SerializeField] private Image _researchIcon;
		[SerializeField] private UI_ResearchProgessBar _researchProgressBar;
		[SerializeField] private Button _researchButton;
		[SerializeField] private TextMeshProUGUI _researchButtonText;
		[SerializeField] private Button _buyButton;
		[SerializeField] private TextMeshProUGUI _researchUnlockHintText;

		private UnlockedProgressableResearchItem _previewResearch;
		private ResearchChUnlockInfo _unlockableResearch;
		
		
		private Action<UnlockedProgressableResearchItem> _onResearchSelected;
		private OnTryUnlockChapter _onTryUnlockChapter;
		private CanPlayerAffordGold _canPlayerAffordGold;
		private Action<ResearchChapterTemplate> _tabSelectedFromNewlyUnlockedResearchHack;
		/************************************************************************************************************************/
		private void Awake()
		{
			ClearDisplay();
		}
		/************************************************************************************************************************/
		public void Init( Action<UnlockedProgressableResearchItem> onResearchSelected)
		{
			_onResearchSelected = onResearchSelected;
			//_researchButton.onClick.AddListener(()=> onResearchSelected(GetPreviewedResearchItem()));
			_researchButton.onClick.AddListener(OnSelectNewResearch);
			_buyButton.onClick.AddListener(TryBuyResearch);
		}

		public void SetTryUnlockChapterCallback(OnTryUnlockChapter tryUnlockChapter, CanPlayerAffordGold canPlayerAffordGold, Action<ResearchChapterTemplate> forceClickNewTab)
		{
			_onTryUnlockChapter = tryUnlockChapter;
			_canPlayerAffordGold = canPlayerAffordGold;
			_tabSelectedFromNewlyUnlockedResearchHack = forceClickNewTab;
		}
		/************************************************************************************************************************/
		public void DisplayInfo(UnlockedProgressableResearchItem rItem)
		{
			_previewResearch = rItem;
			if (_previewResearch == null)
			{
				ClearDisplay();
				return;
			}
			//Debug.Log($"<color=green>SET </color> [{_previewResearch.ResearchItemTemplate.ResearchName}]");
			DisplayResearch(_previewResearch);
			ChangeDisplay(true);
		}
		
		public void DisplayInfo(ResearchChUnlockInfo researchChUnlockInfo)
		{
			ClearDisplay();
			ChangeDisplay(false);
			_researchDescriptionText.text = FormatLockedDetailsDisplay(researchChUnlockInfo);
			var unlockCond = researchChUnlockInfo.UnlockCondition;
			
			if (unlockCond is ResearchGoldUnlockCondition goldUnlock)
			{
				_unlockableResearch = researchChUnlockInfo;
				var buttonText = _buyButton.GetComponentInChildren<TextMeshProUGUI>(true);
				buttonText.text = $"{goldUnlock.GoldAmount}";
				var playerCanAfford = _canPlayerAffordGold.Invoke(goldUnlock.GoldAmount);
				buttonText.color = playerCanAfford ? Color.black : Color.red;
				_buyButton.gameObject.SetActive(true);
				_researchUnlockHintText.text = "<b>CHAPTER LOCKED:</b>";
			}
			else
			{
				_researchUnlockHintText.text = "<b>CHAPTER LOCKED:</b>\n<i>" + unlockCond.GetUnlockedDisplayForUI() + "</i>";
				_buyButton.gameObject.SetActive(false);
			}
				
		}
		/************************************************************************************************************************/

		private string FormatLockedDetailsDisplay(ResearchChUnlockInfo unlockInfo)
		{
			string s="";
			foreach (var item in unlockInfo.ChapterTemplate.AvailableResearchItems)
			{
				s += $"<b>{item.ResearchName}</b>: {item.EasyUIDescription} \n\n";
			}

			return s;
		}

		private void ChangeDisplay(bool isChapterUnlocked)
		{
			if (isChapterUnlocked)
			{
				_researchNameTxt.gameObject.SetActive(true);
				_researchIcon.transform.parent.gameObject.SetActive(true);
				_researchProgressBar.gameObject.SetActive(true);
				_researchButton.gameObject.SetActive(true);
				_researchButton.interactable = ResearchSystem.Instance.GetSelectedResearch() != _previewResearch;
				if (_researchButton.interactable)
					_researchButtonText.text = "SELECT RESEARCH";
				else
					_researchButtonText.text = "SELECTED";
				_buyButton.gameObject.SetActive(false);
				_researchUnlockHintText.gameObject.SetActive(false);
				_researchTopicHeaderTxt.text = "Topic:";
			}
			else
			{
				_researchNameTxt.gameObject.SetActive(false);
				_researchIcon.transform.parent.gameObject.SetActive(false);
				_researchProgressBar.gameObject.SetActive(false);
				_researchButton.gameObject.SetActive(false);
				_researchUnlockHintText.gameObject.SetActive(true);
				_researchTopicHeaderTxt.text = "Chapter Topics:";
			}
		}
		
		private void ClearDisplay()
		{
			_previewResearch = null;
			_unlockableResearch = null;
			//Change UI
			_researchNameTxt.text = "";
			_researchDescriptionText.text = "";
			_researchIcon.gameObject.SetActive(false);
			_researchProgressBar.gameObject.SetActive(false);
		}
		
		private void DisplayResearch(UnlockedProgressableResearchItem rsrchItem)
		{
			var template = rsrchItem.ResearchItemTemplate;
			_researchNameTxt.text = template.ResearchName;
			_researchDescriptionText.text =template.EasyUIDescription;
			_researchIcon.gameObject.SetActive(true);
			_researchIcon.sprite = template.Icon;
			_researchProgressBar.gameObject.SetActive(true);
			_researchProgressBar.SetFillBar(rsrchItem.Progress);
			_researchProgressBar.SetSelected(true);
		}

		private void OnSelectNewResearch()
		{
			// if(_previewResearch== null)
			// 	Debug.Log($"...Requested: <color=red>NULL</color>");
			// else
			// 	Debug.Log($"...Requested: <color=blue>{_previewResearch.ResearchItemTemplate.ResearchName}</color>");
			_onResearchSelected?.Invoke(_previewResearch);
		}
		
		private void TryBuyResearch()
		{
			if (_unlockableResearch == null)
			{
				Debug.Log($"_unlockableResearch Is NULL??? How");
				return;
			}

			var heldOntoResearch = _unlockableResearch;//not sure why this becomes null after invoke only when called via controller v mouse click?? so just hang onto it
			var unlocked= _onTryUnlockChapter?.Invoke(_unlockableResearch);
			if ((unlocked is false)) 
				return;
			if(_tabSelectedFromNewlyUnlockedResearchHack==null)
			{
				Debug.Log("_tabSelectedFromNewlyUnlockedResearchHack is NUll");
			}
			if(heldOntoResearch == null)
			{
				Debug.Log("heldOntoResearch is NUll seomhow?");
			}
			else if (heldOntoResearch.ChapterTemplate == null)
			{
				Debug.Log("ChapterTemplate is NUll ?");
			}
			_tabSelectedFromNewlyUnlockedResearchHack?.Invoke(heldOntoResearch.ChapterTemplate);
		}

		private void ControllerClicksActiveButton()
        {
			if (_buyButton.isActiveAndEnabled)
				_buyButton.onClick.Invoke();
			else if (_researchButton.isActiveAndEnabled && _researchButton.interactable)
				_researchButton.onClick.Invoke();

		}

		private UnlockedProgressableResearchItem GetPreviewedResearchItem()
		{
			return _previewResearch;
		}


		private void RegisterForControllerInput(bool cond)
		{
			if (cond)
			{
				//SHIFT , Y/TRIANGLE button on controller
				InputReader.ConfirmEvent += ControllerClicksActiveButton;
			}
			else
			{
				InputReader.ConfirmEvent -= ControllerClicksActiveButton;
			}
		}

		//Needed to be apart of the controllers menu system 
		public override void UpdateGlobalFocus(bool cond)
		{
			RegisterForControllerInput(cond);
		}
	}

}