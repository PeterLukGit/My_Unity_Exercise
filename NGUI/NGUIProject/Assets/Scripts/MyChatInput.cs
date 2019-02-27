using UnityEngine;
using System.Collections;

public class MyChatInput : MonoBehaviour {

    private UIInput input;
    public UITextList textlist;

    private string[] names = new string[4]{
        "siki",
        "系统",
        "泰课在线",
        "韩梅梅"
    };

    void Awake() {
        input = this.GetComponent<UIInput>();
    }

    public void OnChatSubmit() {
        string chatMessage = input.value;
        string name = names[Random.Range(0, 4)];
        textlist.Add( name+" : "+ chatMessage);
        input.value = "";
    }
}
