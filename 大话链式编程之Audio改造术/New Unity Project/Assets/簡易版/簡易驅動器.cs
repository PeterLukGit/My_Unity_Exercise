using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public  class 簡易驅動器 : MonoBehaviour {

    public delegate void 委派藍圖_float(float i);
    public delegate void 委派藍圖_float_string(float i,string s);
    public delegate void 委派藍圖_null();

    public 簡易驅動器.委派藍圖_float 委派實例_float = null;
    public 簡易驅動器.委派藍圖_null 委派實例_null = null;
    public 簡易驅動器.委派藍圖_float_string 委派實例_float_string = null;

    //跟原版，拿掉組件
    public void 委派驅動_float(簡易驅動器.委派藍圖_float 用委派藍圖設定的函示)
    {
        委派實例_float = 用委派藍圖設定的函示;
    }

    //跟原版，拿掉組件
    public void 委派驅動_null(簡易驅動器.委派藍圖_null 用委派藍圖設定的函示)
    {
        委派實例_null = 用委派藍圖設定的函示;
    }

    //跟原版，拿掉組件
    public void 委派驅動_float_string(簡易驅動器.委派藍圖_float_string 用委派藍圖設定的函示)
    {
        委派實例_float_string = 用委派藍圖設定的函示;
    }

    private void Update()
    {
        委派實例_float_string(Time.time, "a");
        委派實例_float(Time.time);
        委派實例_null();
    }

}
