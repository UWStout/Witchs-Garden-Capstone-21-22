#pragma warning disable CS0649 // Ignore : "Field is never assigned to, and will always have its default value"
using UnityEngine;

namespace Helpers
{

    /// <summary>
    /// TODO - Phase this script out entirely and use a ColorReference or PalleteLibrarySO
    /// take Core Color Palette and make a new wrapped SO,a nd define these as ENUMs or something in there
    /// </summary>
    [CreateAssetMenu(fileName = "ColorProfile", menuName = "Helpers/ColorProfile")]
    public class ColorProfile : ScriptableObject
    {
        [SerializeField] Color _white = default;
        [SerializeField] Color _black = default;
        [SerializeField] Color _good = default;
        [SerializeField] Color _low = default;
        [SerializeField] Color _bad = default;
        [SerializeField] Color _selected = default;
        [SerializeField] Color _greyedOut = default;
        [SerializeField] Color _critical = default;
        //[SerializeField] Color[] _officerStatColors = default;

        public Color White => _white;
        public Color Black => _black;
        public Color Good => _good;
        public Color Low => _low;
        public Color Bad => _bad;
        public Color Selected => _selected;
        public Color GreyedOut => _greyedOut;
        public Color Critical => _critical;

        // public Color GetOfficerStatColor(int statIndex)
        // {
        //     return _officerStatColors[statIndex];
        // }
    }
}
