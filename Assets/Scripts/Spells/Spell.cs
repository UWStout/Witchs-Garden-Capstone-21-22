using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Spells
{
    public abstract class Spell
    {
        public SpellData SpellData { get; private set; }

        protected Spell(SpellData data) => SpellData = data;

        public abstract bool Cast(SpellContext context, Action<bool, SpellContext> onFinishedResult);
    }
}
