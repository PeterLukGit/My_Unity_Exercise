using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : obstacle
{

    public override  void Hit(Vector3 playerVec3) 
    {
        base.Hit(playerVec3);
    }

    protected override void HitMoveNO()
    {
        base.HitMoveNO();
        Destroy(this.gameObject);
    }

}
