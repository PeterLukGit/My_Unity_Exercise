using System;
using System.Collections.Generic;
using System.Text;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class NPCControl : MonoBehaviour
{
    public GameObject player;
    public Transform[] path;
    private FSMSystem fsm;

    public void SetTransition(Transition t) { fsm.PerformTransition(t); }

    public void Start()
    {
        MakeFSM();
    }

    public void FixedUpdate()
    {
        fsm.CurrentState.Reason(player, gameObject);
        fsm.CurrentState.Act(player, gameObject);
    }

    // The NPC has two states: FollowPath and ChasePlayer
    // If it's on the first state and SawPlayer transition is fired, it changes to ChasePlayer
    // If it's on ChasePlayerState and LostPlayer transition is fired, it returns to FollowPath
    private void MakeFSM()
    {
        FollowPathState follow = new FollowPathState(path);
        follow.AddTransition(Transition.SawPlayer, StateID.ChasingPlayer);

        ChasePlayerState chase = new ChasePlayerState();
        chase.AddTransition(Transition.LostPlayer, StateID.FollowingPath);

        fsm = new FSMSystem();
        fsm.AddState(follow);
        fsm.AddState(chase);
    }
}

public class FollowPathState : FSMState
{
    private int currentWayPoint;
    private Transform[] waypoints;

    public FollowPathState(Transform[] wp)
    {
        waypoints = wp;
        currentWayPoint = 0;
        stateID = StateID.FollowingPath;
    }

    public override void Reason(GameObject player, GameObject npc)
    {
        // If the Player passes less than 15 meters away in front of the NPC
        RaycastHit hit;
        if (Physics.Raycast(npc.transform.position, npc.transform.forward, out hit, 15F))
        {
            if (hit.transform.gameObject.tag == "Player")
                npc.GetComponent<NPCControl>().SetTransition(Transition.SawPlayer);
        }
    }

    public override void Act(GameObject player, GameObject npc)
    {
        // Follow the path of waypoints
        // Find the direction of the current way point 
        Vector3 vel = npc.GetComponent<Rigidbody>().velocity;
        Vector3 moveDir = waypoints[currentWayPoint].position - npc.transform.position;

        if (moveDir.magnitude < 1)
        {
            currentWayPoint++;
            if (currentWayPoint >= waypoints.Length)
            {
                currentWayPoint = 0;
            }
        }
        else
        {
            vel = moveDir.normalized * 10;

            // Rotate towards the waypoint
            npc.transform.rotation = Quaternion.Slerp(npc.transform.rotation,
                                                      Quaternion.LookRotation(moveDir),
                                                      5 * Time.deltaTime);
            npc.transform.eulerAngles = new Vector3(0, npc.transform.eulerAngles.y, 0);

        }

        // Apply the Velocity
        npc.GetComponent<Rigidbody>().velocity = vel;
    }

} // FollowPathState

public class ChasePlayerState : FSMState
{
    public ChasePlayerState()
    {
        stateID = StateID.ChasingPlayer;
    }

    public override void Reason(GameObject player, GameObject npc)
    {
        // If the player has gone 30 meters away from the NPC, fire LostPlayer transition
        if (Vector3.Distance(npc.transform.position, player.transform.position) >= 30)
            npc.GetComponent<NPCControl>().SetTransition(Transition.LostPlayer);
    }

    public override void Act(GameObject player, GameObject npc)
    {
        // Follow the path of waypoints
        // Find the direction of the player 		
        Vector3 vel = npc.GetComponent<Rigidbody>().velocity;
        Vector3 moveDir = player.transform.position - npc.transform.position;

        // Rotate towards the waypoint
        npc.transform.rotation = Quaternion.Slerp(npc.transform.rotation,
                                                  Quaternion.LookRotation(moveDir),
                                                  5 * Time.deltaTime);
        npc.transform.eulerAngles = new Vector3(0, npc.transform.eulerAngles.y, 0);

        vel = moveDir.normalized * 10;

        // Apply the new Velocity
        npc.GetComponent<Rigidbody>().velocity = vel;
    }

} // ChasePlayerState


//複製代碼
//  1 using System;
//  2 using System.Collections.Generic;
//  3 using System.Text;
//  4 using UnityEngine;
//  5 
//  6 [RequireComponent(typeof(Rigidbody))]
//  7 public class NPCControl : MonoBehaviour
//  8 {
//  9     public GameObject player;
// 10     public Transform[] path;
// 11     private FSMSystem fsm;
// 12 
// 13     public void SetTransition(Transition t)
// 14     {
// 15         //該方法用來改變有限狀態機的狀體，有限狀態機基於當前的狀態和通過的過渡狀態。
// 16         //如果當前的狀態沒有用來通過的過度狀態，則會拋出錯誤
// 17         fsm.PerformTransition(t);
// 18     }
// 19 
// 20     public void Start()
// 21     {
// 22         MakeFSM();
// 23     }
// 24 
// 25     public void FixedUpdate()
// 26     {
// 27         fsm.CurrentState.Reason(player, gameObject);
// 28         fsm.CurrentState.Act(player, gameObject);
// 29     }
// 30 
// 31     
// 32     //NPC有兩個狀態分別是在路徑中巡邏和追逐玩家
// 33     //如果他在第一個狀態並且SawPlayer 過度狀態被出發了，它就轉變到ChasePlayer狀態
// 34     //如果他在ChasePlayer狀態並且LostPlayer狀態被觸發了，它就轉變到FollowPath狀態
// 35 
// 36     private void MakeFSM()//建造狀態機
// 37     {
// 38         FollowPathState follow = new FollowPathState(path);
// 39         follow.AddTransition(Transition.SawPlayer, StateID.ChasingPlayer);
// 40 
// 41         ChasePlayerState chase = new ChasePlayerState();
// 42         chase.AddTransition(Transition.LostPlayer, StateID.FollowingPath);
// 43 
// 44         fsm = new FSMSystem();
// 45         fsm.AddState(follow);//添加狀態到狀態機，第一個添加的狀態將作爲初始狀態
// 46         fsm.AddState(chase);
// 47     }
// 48 }
// 49 
// 50 public class FollowPathState : FSMState
// 51 {
// 52     private int currentWayPoint;
// 53     private Transform[] waypoints;
// 54 
// 55     //構造函數裝填自己
// 56     public FollowPathState(Transform[] wp)
// 57     {
// 58         waypoints = wp;
// 59         currentWayPoint = 0;
// 60         stateID = StateID.FollowingPath;//別忘設置自己的StateID
// 61     }
// 62 
// 63     public override void DoBeforeEntering()
// 64     {
// 65         Debug.Log("FollowingPath BeforeEntering--------");
// 66     }
// 67 
// 68     public override void DoBeforeLeaving()
// 69     {
// 70         Debug.Log("FollowingPath BeforeLeaving---------");
// 71     }
// 72 
// 73     //重寫動機方法
// 74     public override void Reason(GameObject player, GameObject npc)
// 75     {
// 76         // If the Player passes less than 15 meters away in front of the NPC
// 77         RaycastHit hit;
// 78         if (Physics.Raycast(npc.transform.position, npc.transform.forward, out hit, 15F))
// 79         {
// 80             if (hit.transform.gameObject.tag == "Player")
// 81                 npc.GetComponent<NPCControl>().SetTransition(Transition.SawPlayer);
// 82         }
// 83     }
// 84 
// 85     //重寫表現方法
// 86     public override void Act(GameObject player, GameObject npc)
// 87     {
// 88         // Follow the path of waypoints
// 89         // Find the direction of the current way point 
// 90         Vector3 vel = npc.GetComponent<Rigidbody>().velocity;
// 91         Vector3 moveDir = waypoints[currentWayPoint].position - npc.transform.position;
// 92 
// 93         if (moveDir.magnitude< 1)
// 94         {
// 95             currentWayPoint++;
// 96             if (currentWayPoint >= waypoints.Length)
// 97             {
// 98                 currentWayPoint = 0;
// 99             }
//100         }
//101         else
//102         {
//103             vel = moveDir.normalized* 10;
//104 
//105             // Rotate towards the waypoint
//106             npc.transform.rotation = Quaternion.Slerp(npc.transform.rotation,
//107                                                       Quaternion.LookRotation(moveDir),
//108                                                       5 * Time.deltaTime);
//109             npc.transform.eulerAngles = new Vector3(0, npc.transform.eulerAngles.y, 0);
//110 
//111         }
//112 
//113         // Apply the Velocity
//114         npc.GetComponent<Rigidbody>().velocity = vel;
//115     }
//116 
//117 } // FollowPathState
//118 
//119 public class ChasePlayerState : FSMState
//120 {
//121     //構造函數裝填自己
//122     public ChasePlayerState()
//123     {
//124         stateID = StateID.ChasingPlayer;
//125     }
//126 
//127     public override void DoBeforeEntering()
//128     {
//129         Debug.Log("ChasingPlayer BeforeEntering--------");
//130     }
//131 
//132     public override void DoBeforeLeaving()
//133     {
//134         Debug.Log("ChasingPlayer BeforeLeaving---------");
//135     }
//136 
//137     public override void Reason(GameObject player, GameObject npc)
//138     {
//139         // If the player has gone 30 meters away from the NPC, fire LostPlayer transition
//140         if (Vector3.Distance(npc.transform.position, player.transform.position) >= 3)
//141             npc.GetComponent<NPCControl>().SetTransition(Transition.LostPlayer);
//142     }
//143 
//144     public override void Act(GameObject player, GameObject npc)
//145     {
//146         // Follow the path of waypoints
//147         // Find the direction of the player         
//148         Vector3 vel = npc.GetComponent<Rigidbody>().velocity;
//149         Vector3 moveDir = player.transform.position - npc.transform.position;
//150 
//151         // Rotate towards the waypoint
//152         npc.transform.rotation = Quaternion.Slerp(npc.transform.rotation,
//153                                                   Quaternion.LookRotation(moveDir),
//154                                                   5 * Time.deltaTime);
//155         npc.transform.eulerAngles = new Vector3(0, npc.transform.eulerAngles.y, 0);
//156 
//157         vel = moveDir.normalized* 10;
//158 
//159         // Apply the new Velocity
//160         npc.GetComponent<Rigidbody>().velocity = vel;
//161     }
//162 
//163 } // ChasePlayerState