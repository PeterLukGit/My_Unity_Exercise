using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class PlayerView : MonoBehaviour {

    private GComponent mainUI;
    private PlayerWindow playerWindow;
    public GameObject player;

    // Use this for initialization
    void Start() {
        mainUI = GetComponent<UIPanel>().ui;
        playerWindow = new PlayerWindow(player);
        mainUI.GetChild("n0").onClick.Add(() => { playerWindow.Show(); });
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
