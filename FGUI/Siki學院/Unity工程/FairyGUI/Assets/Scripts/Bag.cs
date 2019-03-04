using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class Bag : MonoBehaviour {

    private GComponent mainUI;
    private GButton playerView;
    private BagWindow bagWindow;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        playerView = mainUI.GetChild("playerView").asButton;
        playerView.onClick.Add(UseItem);
        bagWindow = new BagWindow(playerView);
        bagWindow.SetXY(121, 63);
        mainUI.GetChild("BagButton").onClick.Add(() => { bagWindow.Show(); });
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void UseItem()
    {
        playerView.icon = null;
        playerView.title = "空白";
    }
}
