using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class asd : MonoBehaviour {

    public AudioSource audio_;

    public AudioClip clip;

    // Use this for initialization
    void Start()
    {
        audio_ = gameObject.GetAudio();
        audio_.SetClip(clip);
        audio_.OnUpdate((v) => { Debug.Log("播放进度:" + v); });
        audio_.OnComplete(() => { Debug.Log("播放完成咯!"); });
        audio_.Play();
        
    }


    ////簡易版，鍵式編成，跟原版只缺
    //public delegate void 委派藍圖();
    //public asd.委派藍圖 委派實例 = null;

    //public void 委派實例_設定(asd.委派藍圖 覆蓋函示內容)
    //{
    //    委派實例 = 覆蓋函示內容;
    //}

    //void Start()
    //{
    //    委派實例_設定(() => { Debug.Log("覆蓋函示內容(使用者自訂)"); });
    //}

    //// Update is called once per frame
    //void Update () {
    //    委派實例();
    //}

}
