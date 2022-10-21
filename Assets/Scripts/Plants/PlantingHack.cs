using System.Collections;
using System.Collections.Generic;
using Items;
using UnityEngine;


namespace Plants
{

    public class PlantingHack : MonoBehaviour
    {

        [SerializeField] SeedTemplate _thingToPlant;

        // Start is called before the first frame update
        void Start()
        {
            this.GetComponent<RunTimePlant>().Initialize(_thingToPlant);
            Destroy(this);
        }


    }
}
