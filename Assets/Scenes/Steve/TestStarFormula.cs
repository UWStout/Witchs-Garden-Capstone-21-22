
using Items;
using Plants;
using UnityEngine;

public class TestStarFormula : MonoBehaviour
{
   [Range(0,100f)]
   [SerializeField] private float _value;
   
   [ContextMenu("Test Formula")]
   public void TestFormula()
   {
      var val = StarQualityGenerator.GetQualityStarsFromQualityFloat(_value);
      Debug.Log($"<color=white>{_value} => </color> <color=green>{val}</color> stars");
   }
}
