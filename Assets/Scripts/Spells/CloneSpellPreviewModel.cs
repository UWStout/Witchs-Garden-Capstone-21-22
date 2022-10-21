/*
* AUTHOR : Steve Datz
* DESC :
*/

using System;
using System.Security.Cryptography;
using Plants;
using UnityEngine;

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"

namespace Spells
{
	public class CloneSpellPreviewModel : MonoBehaviour
	{
		[SerializeField] private Shader _highlightShader;
		public bool IsActivePreview { get; private set; }
		
		private GameObject _previewingModel;
		private IPlant _currPlantToClone;
		/************************************************************************************************************************/
		/// <summary>
		/// Because we are child of the follow cursor, we dont have to actively move ourselves.-Hack
		/// </summary>
		/// <param name="targetPlant"></param>
		/// <param name="onFinishedResult"></param>
		public bool BeginPreview(IPlant targetPlant)
		{
			_currPlantToClone = targetPlant;
			if (_currPlantToClone == null)
			{
				return false;
			}
			EnableSelf(true);
			ChangePreviewModel(_currPlantToClone);
			return true;
		} 
		
		public void FinishPreview()
		{
			EnableSelf(false);
		}

		public bool CanPlacePlant(ISpellTarget dirtPatchTarg)
		{
			if (dirtPatchTarg == null || dirtPatchTarg.HasPlant())
			{
				return false;
			}
			return true;
		}

		public bool TryPlacePlant(ISpellTarget dirtPatchTarg)
		{
			if (dirtPatchTarg == null || dirtPatchTarg.HasPlant())
			{
				return false;
			}

			return dirtPatchTarg.ClonePlant(_currPlantToClone);
		}
		
		/************************************************************************************************************************/
		private void ChangePreviewModel(IPlant targetPlant)
		{
			if(_previewingModel!=null)
				DestroyImmediate(_previewingModel);
			Debug.Log($"NPE on :{targetPlant} --> ");
			Debug.Log($"               Model  --> {targetPlant.PlantModels.GetPlantModel(ePlantPhase.YOUNG)}");
			//Make a copy
			var model = targetPlant.PlantModels.GetPlantModel(ePlantPhase.YOUNG);
			_previewingModel = GameObject.Instantiate(model, this.transform);
			//Debug.Log($"The preview model is : {_previewingModel}");
			//Change the opacity on the cloned plants material
			var plantRenderer= _previewingModel.GetComponent<MeshRenderer>();
			//var clonedMat =  new Material(plantRenderer.material);
			var clonedMat =  new Material( _highlightShader)
			{
				shader = _highlightShader,
				mainTexture = plantRenderer.material.mainTexture,
				//_MainTex = plantRenderer.material.mainTexture,
			};
			//This doesnt seem to work.. so fuck it- just set the shaders tint to start at (1,1,1,1)
			//clonedMat.SetColor("Tint", Color.white);
			
			//Debug.Log($"Name of 2 textures : {clonedMat.mainTexture } vs  { plantRenderer.material.mainTexture}" );
			//var currColor = clonedMat.color;
			//clonedMat.color = new Color(currColor.r, currColor.g, currColor.b, 0.5f);
			plantRenderer.material = clonedMat;
		}


		private void EnableSelf(bool cond)
		{
			IsActivePreview = cond;
			this.gameObject.SetActive(cond);
		}


	}

}