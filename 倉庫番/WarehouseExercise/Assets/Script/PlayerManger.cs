using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManger : MonoBehaviour
{
    public float speed;

    public Vector3 Target;

    public int MoveLimit;

    public bool MoveLimitOFF;

    // Start is called before the first frame update
    void Start()
    {
        Target = this.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        

        if(this.transform.position != Target)
        {
            PlayerMove();
        }
        else
        {
            if(MoveLimit <= 0)
            {
                print("死掉了");
            }
            input_Update();
        }
    }

    /// <summary>
    /// 監測按鍵
    /// </summary>
    void input_Update()
    {
        if(Input.GetKeyDown(KeyCode.W))
        {
            //PlayerMove(Vector3.up);
            RayCheck(Vector3.up);
        }

        if (Input.GetKeyDown(KeyCode.S))
        {
            //PlayerMove(Vector3.down);
            RayCheck(Vector3.down);
        }

        if (Input.GetKeyDown(KeyCode.A))
        {
            //PlayerMove(Vector3.left);
            RayCheck(Vector3.left);
        }

        if (Input.GetKeyDown(KeyCode.D))
        {
            //PlayerMove(Vector3.right);
            RayCheck(Vector3.right);
        }
    }

    /// <summary>
    /// 移動次數遞減
    /// </summary>
    void MoveLimitCheck()
    {
        if (MoveLimitOFF == true)
        {
            return;
        }

        MoveLimit--;
    }


    /// <summary>
    /// 移動
    /// </summary>
    void PlayerMove()
    {
        //當位置小於定值，則固定位置
        if(Vector3.Distance(this.transform.position, Target)<0.01f)
        {
            this.transform.position = Target;
            return;
        }

        //設定新地點位置
        Vector3 new_vec3;

        new_vec3 = Vector3.Lerp(this.transform.position, Target,speed*Time.deltaTime);

        this.transform.position = new_vec3;

    }

    /// <summary>
    /// 移動設定
    /// </summary>
    /// <param name="direction">方向</param>
    void PlayerMove(Vector3 direction)
    {
        if(this.transform.position != Target)
        {
            return;
        }

        Target = this.transform.position + direction;


    }


    /// <summary>
    /// 偵測移動方向是否有物件
    /// </summary>
    /// <param name="direction"></param>
    void RayCheck(Vector3 direction)
    {
        //Ray
        Vector3 playerVec3 = this.transform.position + new Vector3(0.5f, 0.5f, 0);
        //Vector3 Target = playerVec3 + direction;
        RaycastHit2D hit = Physics2D.Raycast(playerVec3, direction, 1, LayerMask.GetMask("obstacle"));
        //Debug.DrawLine(playerVec3, playerVec3+direction, Color.red, 0.1f, true);

       
        if (hit.collider != null)
        {
            //有物件

            hit.transform.GetComponent<obstacle>().Hit(direction);
            Debug.DrawLine(playerVec3, hit.transform.position, Color.red, 0.1f, true);
            //Debug.Log(hit.transform.name);
        }
        else
        {
            //沒物件
            PlayerMove(direction);
        }

        MoveLimitCheck();
    }


}
