
using NaughtyAttributes;
using UnityEngine;
using Research;
using UI;

public class TestResearchSys : MonoBehaviour
{
    public int ChapterNum = 0;
    public int ResearchIndex = 0;
    public ResearchChapterTemplate _unlockabledCh;

    [SerializeField] private UI_ResearchMonitor ui_r;

    [SerializeField] private UI_PermaController _permaController;
    /************************************************************************************************************************/
    

    /************************************************************************************************************************/
    [ContextMenu("OpenResearchMenu")]
    [Button]
    void OpenResearchMenu()
    {
        _permaController.DisplayResearch();
    }
    
    [ContextMenu("UnlockNewChapter")]
    [Button]
    void UnlockNewChapter()
    {
        ResearchSystem.Instance.UnlockChapter(_unlockabledCh);
    }
    
    [ContextMenu("SelectResearch")]
    [Button]
    void SelectResearch()
    {
        var readOnlyList = ui_r.GetChaptersTest();
        Debug.Log($"..readOnlyList size = {readOnlyList.Count}");
        var ch = readOnlyList[ChapterNum];
        Debug.Log($"..ch @ {ChapterNum}= {ch}");
        var research = ch.ResearchItems[ResearchIndex];
        Debug.Log($"..research @ {ResearchIndex}= {research}");

        ui_r.NewResearchSelectedTest(research);
    }
    




    /************************************************************************************************************************/


}

