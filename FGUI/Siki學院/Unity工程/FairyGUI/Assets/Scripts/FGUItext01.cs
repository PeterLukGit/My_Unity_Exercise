using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class FGUItext01 : MonoBehaviour {

    private GComponent mainUI;
    private GComponent bossCom;
    private GGroup group;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        group = mainUI.GetChild("n10").asGroup;
        bossCom = UIPackage.CreateObject("Package1", "Boss").asCom;
        mainUI.GetChild("n8").onClick.Add(()=> { PlayUI(bossCom); });

	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void PlayUI(GComponent targetCom)
    {
        group.visible = false;
        GRoot.inst.AddChild(targetCom);
        Transition t = targetCom.GetTransition("t0");
        t.Play(()=>
        {
            group.visible = true;
            GRoot.inst.RemoveChild(targetCom);
        });
    }


}
