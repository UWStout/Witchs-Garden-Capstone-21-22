using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

namespace Tutorial {

    [CreateAssetMenu(fileName = "_Trigger", menuName = "Data/Tutorials/Tutorial Trigger", order = 8)]
    public class TutorialTrigger: ScriptableObject
    {
        [SerializeField] private eOneOffPromptID _id;
        [SerializeField] private List<TutorialPrompt> _prompts;
        public void Trigger(Action callback = null)
        {
            TutorialManager.Instance.TriggerDynamicPrompt(_id, _prompts, callback);
        }
    }
}
