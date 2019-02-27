using UnityEngine;
using System.Collections;

public class TestHUDText : MonoBehaviour {

    public HUDText text;

	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0)) {
            text.Add(-10, Color.red, 1f);
        }
        if (Input.GetMouseButtonDown(2)) {
            text.Add(+10, Color.green, 1f);
        }
	}
}
