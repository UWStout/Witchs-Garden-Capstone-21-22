using System;
using System.Collections.Generic;
using System.Linq;

namespace Helpers
{
    public class PriorityQueue<T> where T : IComparable<T>
    {
        private List<T> _data;
        /************************************************************************************************************************/
        public PriorityQueue()
        {
            _data = new List<T>();
        }
        public PriorityQueue(int capacity)
        {
            _data = new List<T>(capacity);
        }
        /************************************************************************************************************************/
        public void Enqueue(T item)
        {
            _data.Add(item);
            SortSelf();
        }

        private void SortSelf()
        {
            T[] newArr = _data.ToArray();
            QuickSort(ref newArr, 0, _data.Count-1);
            _data = new List<T>(newArr);
        }

        private void QuickSort(ref T[] arr, int low, int high)
        {
            if (low >= high) 
                return;
            
            int partitionIndex = Partition(ref arr, low, high);
            QuickSort(ref arr, low, partitionIndex-1);
            QuickSort(ref arr, partitionIndex+1, high);

        }

        private int Partition(ref T[] arr, int low, int high)
        {
            T pivot = arr[high];

            int i = low - 1;
            for (int k = low; k < high; k++)
            {
                if (arr[k].CompareTo(pivot) >= 0)
                    continue;
                
                ++i;
                //swap
                (arr[i], arr[k]) = (arr[k], arr[i]);

            }
            (arr[i+1], arr[high]) = (arr[high], arr[i+1]);
            return i + 1;
        }

        public T Dequeue()
        {
            // Asumes priority queue isn't empty
            int lastIndex = _data.Count - 1;
            T frontItem = _data[0];
            _data[0] = _data[lastIndex];
            _data.RemoveAt(lastIndex);

            --lastIndex;
            int pivotIndex = 0;
            bool shouldContinue = true;
            while (shouldContinue)
            {
                int currentIndex = pivotIndex * 2 + 1;
                if (currentIndex > lastIndex) { shouldContinue = false; }
                else
                {
                    int rc = currentIndex + 1;
                    if (rc <= lastIndex && _data[rc].CompareTo(_data[currentIndex]) < 0)
                    {
                        currentIndex = rc;
                    }
                    if (_data[pivotIndex].CompareTo(_data[currentIndex]) <= 0) { shouldContinue = false; }
                    else
                    {
                        T temp = _data[pivotIndex];
                        _data[pivotIndex] = _data[currentIndex];
                        _data[currentIndex] = temp;
                        pivotIndex = currentIndex;
                    }
                }
            }
            return frontItem;
        }
       
        public void Clear()
        {
            _data.Clear();
        }

        public T GetHighestPriorityItem()
        {
            return Peek();
        }
        
        public T Peek()
        {
            return IsEmpty() ? default : _data[0];
        }
        
        public int Count()
        {
            return _data.Count;
        }
       
        public int Size()
        {
            return Count();
        }
        
        public int Length()
        {
            return Count();
        }

        public bool IsEmpty()
        {
            return _data.Count == 0;
        }

        public bool Contains(T item)
        {
            int index = IndexOf(item);
            return index != -1;
        }

        public bool Remove(T item)
        {
            if (_data.Count == 0)
            {
                return false;
            }

            T frontItem = _data[0];
            if (item.Equals(frontItem))
            {
                Dequeue();
                return true;
            }

            int index = IndexOf(item);
            if (index != -1)
            {
                _data.RemoveAt(index);
                return true;
            }
            return false;
        }

        public override string ToString()
        {
            string s = "";
            for (int i = 0; i < _data.Count; ++i)
                s += _data[i].ToString() + " ";
            s += "count = " + _data.Count;
            return s;
        }
        
        public List<T> ToList()
        {
            return new List<T>(_data);
        }
        
        /************************************************************************************************************************/
        private int IndexOf(T item)
        {
            return _data.IndexOf(item);
        }

    }
}