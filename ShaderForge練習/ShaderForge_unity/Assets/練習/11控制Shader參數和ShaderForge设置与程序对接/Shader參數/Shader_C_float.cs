using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shader_C_float : MonoBehaviour {

    //拿取3D的Renderer組件 目前設定是"漫反射"那顆
    //不能直接宣告 material 不然會變成整個場景的材質球
    public Renderer set_renderer;
    //輸入的數據
    public float set_flaot;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        // 必須確定在Shader中是否有這個參數
        //因使用 Shader Forge 所以參數前面有 "_" 東西
        set_renderer.material.SetFloat("_EdgeIntensity", set_flaot);

    }
}
