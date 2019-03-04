using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
using DG.Tweening;

                        //事件收发类
public class Joystick : EventDispatcher{

	//事件的监听者
    public EventListener onMove { get; private set; }//设置了一个安全权限
    public EventListener onEnd { get; private set; }

    //mainUI里的对象
    private GButton joystickButton;
    private GObject thumb;
    private GObject touchArea;
    private GObject center;

    //摇杆的属性
    private float initX;
    private float initY;
    private float startStageX;
    private float startStageY;
    private float lastStageX;
    private float lastStageY;
    private int touchID;
    public int radius { get; set; }
    private Tweener tweener;

    public Joystick(GComponent mainUI)
    {
        onMove = new EventListener(this, "onMove");
        onEnd = new EventListener(this, "onEnd");

        joystickButton = mainUI.GetChild("Joystick").asButton;
        joystickButton.changeStateOnClick = false;
        thumb = joystickButton.GetChild("thumb");
        touchArea = mainUI.GetChild("JoystickTouchArea");
        center = mainUI.GetChild("JoystickCenter");

        initX = center.x + center.width / 2;
        initY = center.y + center.height / 2;
        touchID = -1;
        radius = 150;

        touchArea.onTouchBegin.Add(OnTouchBegin);
        touchArea.onTouchMove.Add(OnTouchMove);
        touchArea.onTouchEnd.Add(OnTouchEnd);

    }

    //开始触摸
    private void OnTouchBegin(EventContext context)
    {
        if (touchID==-1)//第一次触摸
        {
            InputEvent inputEvent = (InputEvent)context.data;
            touchID = inputEvent.touchId;

            if (tweener!=null)
            {
                tweener.Kill();//杀死上一个动画
                tweener = null;
            }

            Vector2 localPos =GRoot.inst.GlobalToLocal(new Vector2(inputEvent.x, inputEvent.y));
            float posX = localPos.x;
            float posY = localPos.y;
            joystickButton.selected = true;

            lastStageX = posX;
            lastStageY = posY;
            startStageX = posX;
            startStageY = posY;

            center.visible = true;
            center.SetXY(posX - center.width / 2, posY - center.height / 2);
            joystickButton.SetXY(posX - joystickButton.width / 2, posY - joystickButton.height / 2);

            float deltaX = posX - initX;
            float deltay = posY - initY;
            float degrees = Mathf.Atan2(deltay, deltaX) * 180 / Mathf.PI;
            thumb.rotation = degrees+90;
            context.CaptureTouch();
        }
    }

    //移动触摸
    private void OnTouchMove(EventContext context)
    {
        InputEvent inputEvent = (InputEvent)context.data;
        if (touchID!=-1&&inputEvent.touchId==touchID)
        {
            Vector2 localPos = GRoot.inst.GlobalToLocal(new Vector2(inputEvent.x, inputEvent.y));
            float posX = localPos.x;
            float posY = localPos.y;
            float moveX = posX - lastStageX;
            float moveY = posY - lastStageY;
            lastStageX = posX;
            lastStageY = posY;
            float buttonX = joystickButton.x + moveX;
            float buttonY = joystickButton.y + moveY;

            float deltaX = buttonX + joystickButton.width / 2 - startStageX;
            float deltaY = buttonY + joystickButton.height / 2 - startStageY;

            float rad = Mathf.Atan2(deltaY, deltaX);
            float degree = rad * 180 / Mathf.PI;
            thumb.rotation = degree+90;

            //设置范围
            float maxX = radius * Mathf.Cos(rad);
            float maxY = radius * Mathf.Sin(rad);
            if (Mathf.Abs(deltaX)>Mathf.Abs(maxX))
            {
                deltaX = maxX;
            }
            if (Mathf.Abs(deltaY)>Mathf.Abs(maxY))
            {
                deltaY = maxY;
            }

            buttonX = startStageX + deltaX;
            buttonY = startStageY + deltaY;

            joystickButton.SetXY(buttonX - joystickButton.width / 2, buttonY - joystickButton.height / 2);

            onMove.Call(degree);
        }
    }

    //结束触摸
    private void OnTouchEnd(EventContext context)
    {
        InputEvent inputEvent = (InputEvent)context.data;
        if (touchID!=-1&&inputEvent.touchId==touchID)
        {
            touchID = -1;
            thumb.rotation = thumb.rotation + 180;
            center.visible = false;
            tweener = joystickButton.TweenMove(new Vector2(initX - joystickButton.width / 2, initY - joystickButton.height / 2), 0.3f).OnComplete(() =>
                                {
                                    tweener = null;
                                    joystickButton.selected = false;
                                    thumb.rotation = 0;
                                    center.visible = true;
                                    center.SetXY(initX - center.width / 2, initY - center.height / 2);
                                    ;

                                }
                );
        }
        onEnd.Call();
    }
}
