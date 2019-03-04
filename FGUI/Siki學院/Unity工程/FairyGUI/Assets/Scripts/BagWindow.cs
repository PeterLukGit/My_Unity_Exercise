using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class BagWindow :  Window{

   

    private GList list;
    private GButton playerView;


    public BagWindow(GButton targetButton)
    {
        playerView = targetButton;
    }

    protected override void OnInit()
    {
        this.contentPane = UIPackage.CreateObject("07-Bag", "BagWindow").asCom;
        list = this.contentPane.GetChild("ItemList").asList;
        list.itemRenderer = RenderListItem;
        list.numItems = 20;
        for (int i = 0; i < list.numItems-10; i++)
        {
            GButton button = list.GetChildAt(i).asButton;
            button.onClick.Add(()=> { ClickItem(button); });
        }
    }

    private void RenderListItem(int index,GObject obj)
    {
        GButton button = obj.asButton;
        button.icon = UIPackage.GetItemURL("07-Bag", "i" + index);
        button.title = index.ToString();
    }

    private void ClickItem(GButton button)
    {
        playerView.title = button.title;
        playerView.icon = button.icon;
    }

}
