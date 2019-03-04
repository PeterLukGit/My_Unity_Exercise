using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using System;

public class ProgressBar : MonoBehaviour {

    private GComponent mainUI;
    private GProgressBar prossgressbar;
    private GComboBox comboBox;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        prossgressbar = mainUI.GetChild("n0").asProgress;
        prossgressbar.TweenValue(100, 5);
        comboBox = mainUI.GetChild("n1").asComboBox;
        comboBox.onChanged.Add(SetCompleteTime);
	}

    private void SetCompleteTime()
    {
        prossgressbar.value = 0;
        prossgressbar.TweenValue(100,Convert.ToInt32(comboBox.value));
    }

}
