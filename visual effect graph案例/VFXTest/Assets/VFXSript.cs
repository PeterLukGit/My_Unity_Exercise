using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;


public class VFXSript : MonoBehaviour
{
    public VisualEffect VFX;

    public Vector3 _Velocity;

    public bool Play;

    void Update()
    {
        //對VisualEffect傳輸數據，且數據名字要跟變數名一樣
        VFX.SetVector3("Velocity", _Velocity);

        //如果依直呼叫VFX.Play()的話，粒子反而會出不來，因為一重新Play
        //就像一職Play第一偵動畫，動畫當然不會動
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (Play == true)
            {
                VFX.Play();
            }
            else
            {
                VFX.Stop();
            }
        }

    }
}
