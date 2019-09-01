/* 
    ------------------- Code Monkey -------------------

    Thank you for downloading this package
    I hope you find it useful in your projects
    If you have any questions let me know
    Cheers!

               unitycodemonkey.com
    --------------------------------------------------
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Jobs;
using Unity.Collections;

/// <summary>
/// 講解
/// 因為Job工作完後資料並沒保存（看起來是.....）
/// 所以要用在Job外的陣列來存放
/// </summary>
public class TestingJobOutput : MonoBehaviour {

    private void Start() {
        //存放的陣列
        NativeArray<int> result = new NativeArray<int>(1, Allocator.TempJob);
       
        //Job宣告
        SimpleJob simpleJob = new SimpleJob {
            a = 1,
            b = 2,
            result = result,
        };
        //Job執行
        JobHandle jobHandle = simpleJob.Schedule();
        //執行
        jobHandle.Complete();
        //輸出
        Debug.Log(simpleJob.result[0]);
        //釋放陣列
        result.Dispose();
    }

}

/// <summary>
/// 測試Job
/// </summary>
public struct SimpleJob : IJob {

    public int a;
    public int b;
    public NativeArray<int> result;

    public void Execute() {
        result[0] = a + b;
    }

}