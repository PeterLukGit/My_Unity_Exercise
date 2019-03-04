using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class JoystickMain : MonoBehaviour {

    private GComponent mainUI;
    private GTextField gTextField;
    private Joystick joystick;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        gTextField = mainUI.GetChild("n4").asTextField;
        joystick = new Joystick(mainUI);
        joystick.onMove.Add(JoystickMove);
        joystick.onEnd.Add(JoystickEnd);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void JoystickMove(EventContext context)
    {
        float degree = (float)context.data;
        gTextField.text = degree.ToString();
    }

    private void JoystickEnd()
    {
        gTextField.text = "";
    }
}
