using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Targeting
{
    public interface ITargetable
    {
        Transform Transform { get; }

        void OnHoverBegin();

        void OnHoverEnd();

        void OnInteract();
    }

}
