using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Items;

public abstract class PotionHandler : MonoBehaviour
{
    public abstract bool ApplyPotion(PotionTemplate potion);
    public abstract bool CanApplyPotion(PotionTemplate potion);
}
