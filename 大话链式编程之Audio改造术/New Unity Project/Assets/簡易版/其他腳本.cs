using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class 其他腳本 : MonoBehaviour {

    //其實整體就像是在逗圈子
    //   先設定一 delegate委派(委派藍圖) 為 輸入float 輸出void 
    //   也就是
    //public void axaac(float aa)
    //{
    //    return;
    //}
    //但在 "委派驅動" 那裏 輸入 "委派藍圖" 其實就是
    //組件設定_null( 
    //        |||   delegate () { print("組件設定_null"); } ||| <===輸入這一段也就是"事件"      );
    //也就設定一函式丟進去
    //就變成把設定好的 "委派藍圖" "打完 {} 的程式碼" 丟進去 或是 直接用"委派藍圖" 設定一函式
    //就變成在 簡易驅動器裡的 update 就會一直執行 設定好的程式碼
    //執行完就收工(雖在原碼中並未看到將update 中的 委派實例 收起)
    //唯一方便是 透過 "組件擴充" 來達成所以分割驅動和擴充之間的關西

    //總結
    //實際上就是 在"簡易驅動器"中 onUpdate設定好，
    //在組件擴充裡設定如何拿取(<==主要是分割 簡易驅動器 組件擴充 間關西使其單一)
    //在其他腳本 只要用組件擴充設定函是傳入"事件(<==也就是把委派藍圖事件寫好)" 這樣驅動器就會一次執行好(原碼沒有關閉委派)
    //               溝通                  單純呼叫
    //其他腳本 <=>  組件擴充      => 簡易驅動器


    //http://www.manew.com/thread-139396-1-1.html
    //http://www.manew.com/thread-139408-1-1.html
    //設定很像DoTween 插建
    //可以弄成在一組建下許多擴充，這些擴充對應驅動器，這樣就能建立方便的函示庫

    // Use this for initialization
    void Start()
    {
        gameObject.組件設定_float_string((i, a) => { print("組件設定_float_string" + " " + i + " " + a); });
        gameObject.組件設定_float((i) => { print("組件設定_float" + " " + i); });
        gameObject.組件設定_null(() => { print("組件設定_null"); });

        gameObject.組件設定_float_string(delegate (float i, string a) { print("組件設定_float_string" + " " + i + " " + a); });
        gameObject.組件設定_float(delegate (float i) { print("組件設定_float" + " " + i); });
        gameObject.組件設定_null(delegate () { print("組件設定_null"); });

        //(i) => { print("組件設定_float" + " " + i); } ==正確寫法  delegate (float a) { print(a); }
        //cccc = new aaa(delegate (float a) { print(a); });

    }

    // Update is called once per frame
    void Update () {
        //cccc(1);
    }

    //public delegate void aaa(float i);

    //public 其他腳本.aaa cccc = null;

    //public void axaac(float aa)
    //{
    //    return;
    //}

    //void Start()
    //{
    //    cccc = new aaa(delegate (float a) { print(a); });
    //    cccc += new aaa(delegate (float a) { print(a + " a"); });
    //    cccc += axaac;
    //}

}
