using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using DG.Tweening;

public class FGUItext02 : MonoBehaviour {

    private GComponent mainUI;
    private GComponent addValueCom;
    private int startValue;
    private int endValue;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        addValueCom = UIPackage.CreateObject("02-Effect", "AddValue").asCom;
        addValueCom.GetTransition("t0").SetHook("AddValue", AddAttackValue);
        mainUI.GetChild("n0").onClick.Add(() => { PlayUI(addValueCom); });
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void PlayUI(GComponent targetCom)
    {
        mainUI.GetChild("n0").visible = false;
        GRoot.inst.AddChild(targetCom);
        Transition t = targetCom.GetTransition("t0");
        startValue = 10000;
        int add = Random.Range(1000, 3000);
        endValue = startValue + add;
        addValueCom.GetChild("n3").text = startValue.ToString();
        addValueCom.GetChild("n5").text = add.ToString();
        t.Play(() =>
        {
            mainUI.GetChild("n0").visible = true;
            GRoot.inst.RemoveChild(targetCom);
        }
        );
    }

    private void AddAttackValue()
    {
        DOTween.To(()=>startValue,x=> { addValueCom.GetChild("n3").text =Mathf.Floor(x).ToString(); },endValue,0.3f).SetEase(Ease.Linear).SetUpdate(true);
    }
}
