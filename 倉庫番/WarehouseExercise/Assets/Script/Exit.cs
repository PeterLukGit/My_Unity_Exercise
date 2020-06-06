using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Exit : obstacle
{
    public override void Hit(Vector3 playerVec3)
    {
        print("過關");
    }
}
