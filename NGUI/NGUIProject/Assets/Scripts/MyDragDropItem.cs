using UnityEngine;
using System.Collections;

public class MyDragDropItem : UIDragDropItem {

    protected override void OnDragDropRelease(GameObject surface) {
        base.OnDragDropRelease(surface);

        //进行我们的处理代码了
        print(surface);
    }

}
