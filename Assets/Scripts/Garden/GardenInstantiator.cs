using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Garden
{
    public class GardenInstantiator : MonoBehaviour
    {
        [SerializeField] [Range(0, 50)]
        int _gardenWidth;

        [SerializeField] [Range(0, 50)]
        int _gardenDepth;

        [SerializeField] float _spaceBetweenPatches = 0.7f;

        [SerializeField] private PatchData _patchData;
        [SerializeField] private Patch _patchPREFAB = default;

        [SerializeField] private List<HybridFormation> _hybridFormations;
        
       private GardenController _gardenController;

		private void OnDrawGizmos()
		{
            Gizmos.color = Color.green;

            Vector3 size = new Vector3(_gardenWidth, .2f, _gardenDepth) * _spaceBetweenPatches;

            Gizmos.DrawWireCube(transform.position, size);
		}

		private void Awake()
		{
           _gardenController = this.GetComponent<GardenController>();

            _gardenController.Init(GeneratePatches(), _gardenWidth, _gardenDepth, _spaceBetweenPatches, _hybridFormations);

            Destroy(this);
		}

		private Patch[,] GeneratePatches()
        {
            var patches = new Patch[_gardenWidth, _gardenDepth];

            for (int x = 0; x < _gardenWidth; x++)
                for (int z = 0; z < _gardenDepth; z++)
                {
                    patches[x, z] = GeneratePatch(x, z);
                }

            return patches;

            Patch GeneratePatch(int xCoord, int zCoord)
            {

                Patch newPatch = Instantiate(_patchPREFAB, this.transform, true);

                newPatch.name = $"Dirt Patch ({xCoord}, {zCoord})";

                Vector3 position = new Vector3(xCoord * _spaceBetweenPatches, 0, zCoord * _spaceBetweenPatches);
                Vector3 gardenOffset = new Vector3(_gardenWidth, 0, _gardenDepth) * .5f * _spaceBetweenPatches;
                Vector3 patchOffset = new Vector3(_spaceBetweenPatches, 0, _spaceBetweenPatches) * .5f;

                position = position - (gardenOffset - patchOffset);
                newPatch.transform.localPosition = position;

                int rotation = Random.Range(0, 4) * 90;
                newPatch.transform.localRotation = Quaternion.Euler(0, rotation, 0);

                newPatch.Initialize(_patchData);
                return newPatch;
            }
        }
    }

}