using UnityEngine;
using System.Collections;

public class AgeLimit : MonoBehaviour {

    private UIInput input;

    void Awake() {
        input = this.GetComponent<UIInput>();
    }


    public void OnAgeValueChange() {
        string value = input.value;
        int valueInt = int.Parse(value);

        if (valueInt < 18) {
            input.value = "18";
        }
        if (valueInt > 120) {
            input.value = "120";
        }
    }

}
