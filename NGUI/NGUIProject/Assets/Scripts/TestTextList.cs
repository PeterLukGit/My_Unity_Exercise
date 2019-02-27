using UnityEngine;
using System.Collections;

public class TestTextList : MonoBehaviour {

    private UITextList textlist;

    private int lineNumber = 0;
	// Use this for initialization
	void Start () {
        textlist = this.GetComponent<UITextList>();
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetMouseButtonDown(0)) {
            textlist.Add("泰课在线 www.taikr.com :"+lineNumber++);
        }
	}
}
