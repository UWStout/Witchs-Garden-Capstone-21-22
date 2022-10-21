using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Diagrams;
using UnityEngine.UI;
using TMPro;

namespace UI
{
    public class UI_HybridDiagram : MonoBehaviour
    {
        [SerializeField] private Image _diagramImage;
        [SerializeField] private TextMeshProUGUI _title;
        
        private HybridComboDiagTemplate _hybridDiagram;

        public void SetHybridDiagram(HybridComboDiagTemplate diagram)
        {
            if (_hybridDiagram != diagram)
            {
                _hybridDiagram = diagram;
                //Debug.Log("Set DIAGRAM to " + diagram.DiagramName);
                UpdateDisplay();
            }
        }

        private void UpdateDisplay()
        {
            if (_diagramImage == null)
                return;

            if (_hybridDiagram != null)
            {
                _diagramImage.sprite = _hybridDiagram.DiagramImg;
                _title.text = "Hybrid Plan: " + _hybridDiagram.HybridFormation.ResultPlant.PlantData.PlantName;
            }
            else
            {
                _diagramImage.sprite = null;
                _title.text = "";
            }
        }
    }
}