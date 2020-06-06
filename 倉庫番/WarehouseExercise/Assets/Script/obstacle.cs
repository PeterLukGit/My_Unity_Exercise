using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public  class obstacle : MonoBehaviour
{
    public float speed = 10;

    public Vector3 Target;

    void Start()
    {
        Target = this.transform.position;
    }

    void Update()
    {
        if (this.transform.position != Target)
        {
            obstacleMove();
        }
    }


    public virtual void Hit(Vector3 playerVec3direction)
    {
        //print(playerVec3);

        Vector3 This_Vec3 = this.transform.position + new Vector3(0.5f, 0.5f, 0);
        //Vector3 Target = playerVec3 + direction;
        this.GetComponent<BoxCollider2D>().enabled = false;
        RaycastHit2D hit = Physics2D.Raycast(This_Vec3, playerVec3direction, 1);
        this.GetComponent<BoxCollider2D>().enabled = true;
        //Debug.DrawLine(This_Vec3, playerVec3, Color.red, 0.1f, true);
        if (hit.collider !=null)
        {
            Debug.DrawLine(This_Vec3, hit.transform.position, Color.yellow, 0.1f, true);
            Debug.Log(hit.transform.name);
            HitMoveNO();
        }
        else
        {
            HitMoveOK(playerVec3direction);
        }

    }

    protected virtual void HitMoveOK(Vector3 direction)
    {
        print("後面沒東西");

        if (this.transform.position != Target)
        {
            return;
        }

        Target = this.transform.position + direction;
    }

    protected virtual void HitMoveNO()
    {
        print("後面有東西");
    }

    private void obstacleMove()
    {
        //當位置小於定值，則固定位置
        if (Vector3.Distance(this.transform.position, Target) < 0.01f)
        {
            this.transform.position = Target;
            return;
        }

        //設定新地點位置
        Vector3 new_vec3;

        new_vec3 = Vector3.Lerp(this.transform.position, Target, speed * Time.deltaTime);

        this.transform.position = new_vec3;
    }

}
