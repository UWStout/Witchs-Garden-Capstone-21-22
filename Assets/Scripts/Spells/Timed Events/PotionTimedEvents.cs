using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Player;

namespace Spells
{
    public enum ePotionTarget { SELF, PLANT, NULL }

    [CreateAssetMenu(fileName = "_timedEvents", menuName = "Data/Spells/Potion Timed Events Set")]
	public class PotionTimedEvents : SpellTimedEvents
	{
        [SerializeField] private float _potionAppearTime;
        [SerializeField] private float _potionDisappearTime;
        [Space]
        [Tooltip("Data for self targeting version")]
		[SerializeField] private AnimationClip _altAnimation;
		[SerializeField] private float _altActionTriggerTime;
		[SerializeField] private float _altSfxTriggerTime;
		[SerializeField] private float _altVfxTriggerTime;
        [SerializeField] private float _altPotionAppearTime;
        [SerializeField] private float _altPotionDisappearTime;

        private AnimationClip useAnimation;
        private float useActionTime;
        private float useSfxTime;
        private float useVfxTime;
        private float usePotionAppearTime;
        private float usePotionDisappearTime;

		public void Begin(SpellContext context, Action action, ePotionTarget target)
        {
            bool sfxDone = false;
            bool vfxDone = false;
            bool actionDone = false;
            bool animDone = false;

            PlayerController pc = PlayerController.Instance;

            AssignTimes(target);

            if (pc.CanAct)
            {
                pc.ToggleCanAct(false);

                pc.PlayAnimation(context, target);

                pc.StartCoroutine(StartSFX());
                pc.StartCoroutine(StartVFX());
                pc.StartCoroutine(StartAction());
                pc.StartCoroutine(WaitForAnimation());

                pc.StartCoroutine(EnablePotion());
                pc.StartCoroutine(DisablePotion());
            }

            IEnumerator StartSFX()
            {
                yield return new WaitForSeconds(useSfxTime);
                pc.PlaySFX(context);

                sfxDone = true;
                CheckCanAct();
            }
            IEnumerator StartVFX()
            {
                yield return new WaitForSeconds(useVfxTime);
                pc.PlayVFX(context);

                vfxDone = true;
                CheckCanAct();
            }
            IEnumerator StartAction()
            {
                yield return new WaitForSeconds(useActionTime);
                action();

                actionDone = true;
                CheckCanAct();
            }
            IEnumerator WaitForAnimation()
            {
                yield return new WaitForSeconds(useAnimation.length);

                animDone = true;
                CheckCanAct();
            }

            IEnumerator EnablePotion()
			{
                yield return new WaitForSeconds(usePotionAppearTime);
                pc.TogglePotionJar(true);
			}
            IEnumerator DisablePotion()
			{
                yield return new WaitForSeconds(usePotionDisappearTime);
                pc.TogglePotionJar(false);
			}

            void CheckCanAct()
            {
                if (sfxDone && vfxDone && actionDone && animDone)
                    pc.ToggleCanAct(true);
            }
        }

        private void AssignTimes(ePotionTarget target)
		{
            if (target == ePotionTarget.PLANT)
			{
                useAnimation = _animation;
                useActionTime = _actionTriggerTime;
                useSfxTime = _sfxTriggerTime;
                useVfxTime = _vfxTriggerTime;
                usePotionAppearTime = _potionAppearTime;
                usePotionDisappearTime = _potionDisappearTime;
			}
            else if (target == ePotionTarget.SELF)
			{
                useAnimation = _altAnimation;
                useActionTime = _altActionTriggerTime;
                useSfxTime = _altSfxTriggerTime;
                useVfxTime = _altVfxTriggerTime;
                usePotionAppearTime = _altPotionAppearTime;
                usePotionDisappearTime = _altPotionDisappearTime;
            }
		}
    }
}
