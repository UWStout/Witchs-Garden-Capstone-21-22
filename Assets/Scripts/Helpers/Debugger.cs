using System;
using UnityEngine;

namespace Helpers
{
    /// <summary>
    /// Class to manage the use of Debug.Log.
    /// </summary>
    public static class Debugger
    {
        
        public static void DebugPrint(object message, bool isDebugging, string color="white")
        {
#if UNITY_EDITOR
            if (!isDebugging) { return; }

            Debug.Log($"<color={color}>{message}</color>");
#endif
        }
        public static void Print(object message)
        {
#if UNITY_EDITOR
            Debug.Log(message);
#endif
        }
        public static void Print(object message, UnityEngine.Object context)
        {
#if UNITY_EDITOR
            Debug.Log(message, context);
#endif
        }
        public static void Warning(object message)
        {
#if UNITY_EDITOR
            Debug.LogWarning(message);
#endif
        }
        public static void Warning(object message, UnityEngine.Object context)
        {
#if UNITY_EDITOR
            Debug.LogWarning(message, context);
#endif
        }
        public static void Error(object message)
        {
#if UNITY_EDITOR
            Debug.LogError(message);
#endif
        }
        public static void Error(object message, UnityEngine.Object context)
        {
#if UNITY_EDITOR
            Debug.LogError(message, context);
#endif
        }

        public static void EnumCatch(Enum e)
        {
            Error($"Unhandled {e.GetType().Name} for {e}");
        }

        public static bool GlobalTestingCondition(string comparedString)
        {
            return comparedString.Contains("Colmac");
        }
    }
}