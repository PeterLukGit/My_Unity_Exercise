using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class 組件擴充腳本  {

    /// <summary>
    /// 获取事件驱动
    /// </summary>
    /// <param name="audioSource"></param>
    /// <returns></returns>
    private static 簡易驅動器 GetEventDriver(this GameObject test)
    {
        簡易驅動器 EventDriver = test.gameObject.GetComponent<簡易驅動器>();
        if (EventDriver == null)
        {
            EventDriver = test.gameObject.AddComponent<簡易驅動器>();
        }
        return EventDriver;
    }


    /// <summary>
    /// 建立組件驅動設定(這裡因為簡易驅動沒有GameObject輸入所以this GameObject test 變成只是擴充而已) <原版不同
    /// </summary>
    /// <param name="audioSource"></param>
    /// <param name="onUpdateEventHandler"></param>
    /// <returns></returns>
    public static GameObject 組件設定_float(this GameObject test, 簡易驅動器.委派藍圖_float 委派藍圖_float)
    {
        GetEventDriver(test).委派驅動_float(委派藍圖_float);
        return test;
    }
    /// <summary>
    /// 建立組件驅動設定(這裡因為簡易驅動沒有GameObject輸入所以this GameObject test 變成只是擴充而已) <原版不同
    /// </summary>
    /// <param name="audioSource"></param>
    /// <param name="onUpdateEventHandler"></param>
    /// <returns></returns>
    public static GameObject 組件設定_null(this GameObject test, 簡易驅動器.委派藍圖_null 委派藍圖_null)
    {
        GetEventDriver(test).委派驅動_null(委派藍圖_null);
        return test;
    }

    /// <summary>
    /// 建立組件驅動設定(這裡因為簡易驅動沒有GameObject輸入所以this GameObject test 變成只是擴充而已) <原版不同
    /// </summary>
    /// <param name="audioSource"></param>
    /// <param name="onUpdateEventHandler"></param>
    /// <returns></returns>
    public static GameObject 組件設定_float_string(this GameObject test, 簡易驅動器.委派藍圖_float_string 委派藍圖_float_string)
    {
        GetEventDriver(test).委派驅動_float_string(委派藍圖_float_string);
        return test;
    }
}
