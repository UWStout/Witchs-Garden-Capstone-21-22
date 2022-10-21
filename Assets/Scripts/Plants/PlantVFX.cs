
using UnityEngine;

namespace Plants
{
    public class PlantVFX : MonoBehaviour
    {

        [SerializeField] ParticleSystem _adultVfx;
        [SerializeField] ParticleSystem _witherVfx;

        /************************************************************************************************************************/
        public void DisplayVfxForState(ePlantPhase phase)
        {
            if(phase == ePlantPhase.ADULT)
            {
                _adultVfx.gameObject.SetActive(true);
                _witherVfx.gameObject.SetActive(false);
            }
            else if (phase == ePlantPhase.WITHERING)
            {
                _adultVfx.gameObject.SetActive(false);
                _witherVfx.gameObject.SetActive(true);
            }
            else
            {
                _adultVfx.gameObject.SetActive(false);
                _witherVfx.gameObject.SetActive(false);
            }
        }


        /************************************************************************************************************************/

    }
}
