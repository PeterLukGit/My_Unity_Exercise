using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using FairyGUI;

public class PlayerWindow : Window{

    private GameObject player;

    public PlayerWindow(GameObject player)
    {
        this.player = player;
    }

    protected override void OnInit()
    {
        this.contentPane = UIPackage.CreateObject("06-PlayerView", "PlayerWindow").asCom;
        GGraph holder = contentPane.GetChild("n2").asGraph;
        RenderTexture renderTexture = Resources.Load<RenderTexture>("FGUI/06-PlayerView/PlayerRT");
        Material mat = Resources.Load<Material>("FGUI/06-PlayerView/PlayerMat");
        Image img = new Image();
        img.texture = new NTexture(renderTexture);
        img.material = mat;
        holder.SetNativeObject(img);
        this.contentPane.GetChild("n3").onClick.Add(() => { RotateLeft(); });
        this.contentPane.GetChild("n4").onClick.Add(() => { RotateRight(); });
    }

    private void RotateLeft()
    {
        player.transform.Rotate(Vector3.up * 30, Space.World);
    }

    private void RotateRight()
    {
        player.transform.Rotate(-Vector3.up*30, Space.World);
    }
}
