using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Ingredients
{
	public class IngredientSet : IComparable<IngredientSet>
	{
		//instead of holding ints, we are holding the INGREDIENTS for easier debugging with printing names
		 private readonly SortedSet<Ingredient> _ings;

		 /************************************************************************************************************************/

		 /// <summary>
		 /// We want to hold these via a hashvalue so we can easily compare
		 ///if ing sets in different orders are the same, or some other means
		 /// with CompareTo interface
		 /// DO NOT PASS IN NULLS
		 /// </summary>
		 public IngredientSet(Ingredient one, Ingredient two, Ingredient three)
		{
		#if UNITY_EDITOR
			if(one==null || two ==null || three==null)
				Debug.Log($"<color=red>Do Not Pass Nulls into an Ingredient Set, invalid!</color> [{one}, {two}, {three}]");
		#endif
			
			//puts them in order even with this ctor:
			_ings = new SortedSet<Ingredient>
			{
				one,
				two,
				three
			};

		}
		 /************************************************************************************************************************/
		 
		public Ingredient[] GetIngredients()
		{
			Ingredient[] ings = new Ingredient[3];
			_ings.CopyTo(ings); //is this in order? (if not will need to do iterators)
			return ings;
		}
		 public int CompareTo(IngredientSet other)
		 {
			 if (other == null)
				 return int.MaxValue;

			 var otherIngs = other.GetIngredients();
			 var ourIngs = this.GetIngredients();
			 if (otherIngs.Length != ourIngs.Length)
				 return otherIngs.Length - ourIngs.Length;

			
			 for (int i = 0; i < ourIngs.Length; i++)
			 {
				 //score += ourIngs[i].CompareTo(otherIngs[i]); //should be 0
				 //We need an extra check here because CompareTo only compares "shapes"
				 if (ourIngs[i] != otherIngs[i])
					return int.MaxValue;
			 }

			 return 0;
			 //Debug.Log($"[GetHashDefault] for {GetNames()}:{ this.OtherHashCodes()}  - for {other.GetNames()}:{ other.OtherHashCodes()} ");
			 //return this.OtherHashCodes() - other.OtherHashCodes();
		 }

		public override bool Equals(object other)
        {
			if (other == null)
				return false;

			if (!(other is IngredientSet otherSet))
				return false;

			var otherIngs = otherSet.GetIngredients();
			var ourIngs = this.GetIngredients();

			if (otherIngs.Length != ourIngs.Length)
				return false;


			for (int i = 0; i < ourIngs.Length; i++)
			{
				//score += ourIngs[i].CompareTo(otherIngs[i]); //should be 0
				//We need an extra check here because CompareTo only compares "shapes"
				if (ourIngs[i] != otherIngs[i])
					return false;
			}

			return true;
		}

		protected bool Equals(IngredientSet other)
		{
			return Equals(_ings, other._ings);
		}

		public override int GetHashCode()
		{
			return (_ings != null ? _ings.GetHashCode() : 0);
		}

		/************************************************************************************************************************/
		 /// <summary>
		 /// This will NPE if nulls
		 /// </summary>
		 /// <returns></returns>
		 private int OtherHashCodes()
		 {
			 int codes = 0;
			 foreach (var ing in _ings)
			 {
				 codes += ing.GetHashCode();
			 }

			 return codes;
		 }
		 
		 private string GetNames()
		 {
			 string names = "";
			 foreach (var ing in _ings)
			 {
				 names += $"{ing.IngredientName}, ";
			 }

			 return names;
		 }

	}
}