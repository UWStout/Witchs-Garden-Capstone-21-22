/*
* AUTHOR : Steve Datz
* DESC : VFX manager responsible for instantiating vfx particle sys prefabs at locations, and destroying when they finish
*/

#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using System.Collections;
using Helpers;
using UnityEngine;


namespace VFX
{
	public class VFXManager : InstancedMonoBehaviour<VFXManager>
	{
		[Range(0.25f, 5f)]
		[SerializeField] private float _cleanUpDelay =1 ;
		
		/************************************************************************************************************************/


		/// <summary>
		/// Instantiates an visual effect from a prefab at a location,
		/// then manages its cleanup
		/// </summary>
		/// <returns>Duration of the particle system in seconds</returns>
		public float PlayVfx(ParticleSystem prefabSystem, Vector3 atPosition)
		{
			if (prefabSystem == null)
				return 0;
			
			var vfx = GameObject.Instantiate(prefabSystem, atPosition , prefabSystem.transform.rotation, this.transform);
			var mainSystem = vfx.main;
			float duration = mainSystem.duration + mainSystem.startLifetime.constant ;
			vfx.Play();
			//If the vfx prefab is not set to destroy itself, handle manually
			if (vfx.main.stopAction != ParticleSystemStopAction.Destroy)
			{
				StartCoroutine(CleanUpParticleSystem(vfx, duration + _cleanUpDelay));
			}

			return duration;
			//Doesnt work:
			// //Behold the power of local functions
			// Invoke(nameof(CleanUpOnFinish), duration);
			//
			// /******** LOCAL  *********/
			// void CleanUpOnFinish()
			// {
			// 	Destroy(vfx.gameObject);
			// }
		}

		/************************************************************************************************************************/


		private static IEnumerator CleanUpParticleSystem(Component ps, float delay)
		{
			yield return new WaitForSeconds(delay);
			if(ps.gameObject)
				Destroy(ps.gameObject);
		}
	}

}