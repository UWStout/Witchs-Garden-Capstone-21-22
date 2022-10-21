using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Helpers
{
    public static class EnumeratorParser
    {
        // Generic delegate to use for converting from a type G to type T
        public delegate T GToTUnpacker<T, G>(G original);

        public delegate void EnumeratorAction<T>(T data);

        /// <summary>
        /// Iterates over an enumator of type G and unpacks the data in it to a list of type T.
        /// </summary>
        /// <typeparam name="T">Type of the list. Thing built from G.</typeparam>
        /// <typeparam name="G">Type of the enumerator. Data to built T from.</typeparam>
        /// <param name="enumerator">Enumerator to copy to the list.</param>
        /// <param name="converter">Function that converts single G from enumerator to T to add to list.</param>
        /// <returns>List of the upacked, converted data as type T as specfied by converter function.</returns>
        public static List<T> CreateListFromEnumerator<T, G>(IEnumerator<G> enumerator, GToTUnpacker<T, G> converter)
        {
            List<T> returnList = new List<T>();

            while (enumerator.MoveNext())
            {
                G data = enumerator.Current;
                returnList.Add(converter(data));
            }
            return returnList;
        }

        public static void TakeActionWithEnumerator<T>(IEnumerator<T> enumerator, EnumeratorAction<T> action)
        {
            while (enumerator.MoveNext())
            {
                T data = enumerator.Current;
                action(data);
            }
        }


        public static void TakeActionWithEnumerator<T>(IReadOnlyList<T> enumerator, EnumeratorAction<T> action)
        {
            foreach (var data in enumerator)
            {
                action(data);
            }
        }


    }
}
