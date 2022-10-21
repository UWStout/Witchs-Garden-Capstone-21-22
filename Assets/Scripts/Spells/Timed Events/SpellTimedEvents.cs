using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Player;

namespace Spells
{
    [CreateAssetMenu(fileName = "_timedEvents", menuName = "Data/Spells/Timed Events Set")]
    public class SpellTimedEvents : ScriptableObject
    {
        [SerializeField] protected AnimationClip _animation;
        [SerializeField] protected float _actionTriggerTime;
        [SerializeField] protected float _sfxTriggerTime;
        [SerializeField] protected float _vfxTriggerTime;

        /// <summary>
        /// Starts coroutines for all timed events related to a spell.
        /// Must confirm that 'action' function will complete before calling Begin()
        /// </summary>
        /// <param name="context">Spell implementation context</param>
        /// <param name="action">Anonymous function, the 'action' that a spell causes</param>
        public void Begin(SpellContext context, Action action)
        {
            bool sfxDone = false;
            bool vfxDone = false;
            bool actionDone = false;
            bool animDone = false;

            PlayerController pc = PlayerController.Instance;

            if (pc.CanAct)
            {
                pc.ToggleCanAct(false);

                pc.PlayAnimation(context);

                pc.StartCoroutine(StartSFX());
                pc.StartCoroutine(StartVFX());
                pc.StartCoroutine(StartAction());
                pc.StartCoroutine(WaitForAnimation());
            }

            IEnumerator StartSFX()
            {
                yield return new WaitForSeconds(context.SpellData.TimedEvents._sfxTriggerTime);
                pc.PlaySFX(context);

                sfxDone = true;
                CheckCanAct();
            }
            IEnumerator StartVFX()
            {
                yield return new WaitForSeconds(context.SpellData.TimedEvents._vfxTriggerTime);
                pc.PlayVFX(context);

                vfxDone = true;
                CheckCanAct();
            }
            IEnumerator StartAction()
            {
                yield return new WaitForSeconds(context.SpellData.TimedEvents._actionTriggerTime);
                action();

                actionDone = true;
                CheckCanAct();
            }
            IEnumerator WaitForAnimation()
            {
                yield return new WaitForSeconds(_animation.length);

                animDone = true;
                CheckCanAct();
            }

            void CheckCanAct()
            {
                if (sfxDone && vfxDone && actionDone && animDone)
                    pc.ToggleCanAct(true);
            }
        }
    }
}