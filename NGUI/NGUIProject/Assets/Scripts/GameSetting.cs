using UnityEngine;
using System.Collections;

public enum GameGrade {
    EASY,
    NORMAL,
    DIFFCULTY
}
public enum ControlType {
    KEYBOARD,
    TOUCH,
    MOUSE
}

public class GameSetting : MonoBehaviour {

    public float volume = 1;
    public GameGrade grade = GameGrade.NORMAL;
    public ControlType controlType = ControlType.KEYBOARD;
    public bool isFullscreen = false;

    public TweenPosition startPanelTween;
    public TweenPosition optionPanelTween;

    public void OnVolumeChanged() {
        //print("onVolume");
        volume=UIProgressBar.current.value;
    }
    public void OnGameGradeChanged() {
        print("onGameGrade:" + UIPopupList.current.value);
        switch (UIPopupList.current.value.Trim()) {
            case "一般":
                grade = GameGrade.NORMAL;
                break;
            case "简单":
                grade = GameGrade.EASY;
                break;
            case "困难":
                grade = GameGrade.DIFFCULTY;
                break;
        }
    }
    public void OnControlTypeChanged() {
        print("onControlType:" + UIPopupList.current.value);
        switch (UIPopupList.current.value.Trim()) {
            case "键盘":
                controlType = ControlType.KEYBOARD;
                break;
            case "触摸":
                controlType = ControlType.TOUCH;
                break;
            case "鼠标":
                controlType = ControlType.MOUSE;
                break;
        }
    }
    public void OnIsFullscreenChanged(){
        print("onIsFullscreen:"+UIToggle.current.value);
        isFullscreen = UIToggle.current.value;
    }


    public void OnOptionButtonClick() {
        startPanelTween.PlayForward();
        optionPanelTween.PlayForward();
    }

    public void OnCompleteSettingButtonClick() {
        startPanelTween.PlayReverse();
        optionPanelTween.PlayReverse();
    }
	
}
