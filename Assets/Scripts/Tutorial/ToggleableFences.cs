using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Tutorial;
using Narrative;

public class ToggleableFences : MonoBehaviour
{
	[SerializeField] private TutorialTrigger _onFirstRequestComplete;

	private bool _active;

	#region Setup
	private void Start()
	{
		register(true);
		_active = true;
	}

	private void OnDestroy()
	{
		register(false);
	}

	private void register(bool cond)
	{
		if (NarrativeSystem.Instance == null)
			return;

		if (cond)
		{
			NarrativeSystem.Instance.OnRequestCompleteDelayed += OnRequestComplete;

		} 
		else
		{
			NarrativeSystem.Instance.OnRequestCompleteDelayed -= OnRequestComplete;
		}
	}
	#endregion

	private void OnRequestComplete(ActiveCharacterRequest request)
	{
		if (NarrativeSystem.Instance.GetCompletedRequestsCount() > 0 && _active)
		{
			_onFirstRequestComplete.Trigger(DisableFences);
		}
	}

	public void DisableFences()
	{
		_active = false;
		gameObject.SetActive(false);
		Debug.Log("Removed Fences!!");
	}
}
