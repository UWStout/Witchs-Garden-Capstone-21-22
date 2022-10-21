using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CauldronAmbiance : MonoBehaviour
{
    [SerializeField] private AK.Wwise.Event ambianceEvent;

    // Start is called before the first frame update
    void Start()
    {
        ambianceEvent.Post(gameObject);
    }
}
