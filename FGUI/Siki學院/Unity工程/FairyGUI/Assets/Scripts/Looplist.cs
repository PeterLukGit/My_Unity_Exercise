using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;
public class Looplist : MonoBehaviour {

    private GComponent mainUI;
    private GList list;

	// Use this for initialization
	void Start () {
        mainUI = GetComponent<UIPanel>().ui;
        list = mainUI.GetChild("n0").asList;
        list.SetVirtualAndLoop();
        list.itemRenderer = RenderListItem;
        list.numItems = 5;
        list.scrollPane.onScroll.Add(DoSpecialEffect);
        DoSpecialEffect();
	}

    private void DoSpecialEffect()
    {
        float listCenter = list.scrollPane.posX + list.viewWidth / 2;

        for (int i = 0; i < list.numChildren; i++)
        {
            GObject item = list.GetChildAt(i);
            float itemCenter = item.x + item.width / 2;
            float itemWidth = item.width;
            float distance = Mathf.Abs(listCenter - itemCenter);
            if (distance<itemWidth)
            {
                float distanceRange = 1 + (1 - distance / itemWidth) * 0.2f;
                item.SetScale(distanceRange, distanceRange);
            }
            else
            {
                item.SetScale(1, 1);
            }
        }
    }

    private void RenderListItem(int index,GObject obj)
    {
        GButton button = obj.asButton;
        button.SetPivot(0.5f, 0.5f);
        button.icon = UIPackage.GetItemURL("04-Looplist", "n" + (index + 1));
    }
}
