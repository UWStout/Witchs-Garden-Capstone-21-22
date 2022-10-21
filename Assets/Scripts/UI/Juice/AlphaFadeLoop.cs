/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using TMPro;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace UI.Juice
{
	
	public class AlphaFadeLoop : MonoBehaviour
	{
		[SerializeField] private TextMeshProUGUI _textToFade;
		[SerializeField] private Vector2 _fadeRange = new Vector2(0.5f, 1);
		[Tooltip("Actually the inverse, the higher the speed the slower the fade")]
		[SerializeField] private float _fadeSpeed = 1;

		private bool _fadeDir;
		private float _fadeTime;
		/************************************************************************************************************************/

		/// <summary>
		/// Continuously lerp between the two alpha value ranges
		/// </summary>
		private void Update()
		{
			_fadeTime += Time.deltaTime;
			float alpha = 1;
			if (_fadeDir)
			{
				alpha = Mathf.Lerp(_fadeRange.x, _fadeRange.y, _fadeTime / _fadeSpeed);
			}
			else
			{
				alpha = Mathf.Lerp(_fadeRange.y, _fadeRange.x, _fadeTime / _fadeSpeed);
			}

			var currCol = _textToFade.color;
			_textToFade.color = new Color(currCol.r, currCol.g, currCol.b, alpha);

			//Reset to fade the other dir
			if (_fadeTime >= _fadeSpeed)
			{
				_fadeTime = 0;
				_fadeDir = !_fadeDir;
			}
		}
	}

}