using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Targeting
{
    [CreateAssetMenu(fileName = "HighlightShaders", menuName = "Data/VFX/Shader Bundle")]
    public class HighlightShaders : ScriptableObject
    {
        [SerializeField] private Shader _default;
        [SerializeField] private Shader _highlight;

        public Shader Default => _default;
        public Shader Highlight => _highlight;
    }
}
