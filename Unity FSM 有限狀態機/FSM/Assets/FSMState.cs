using System.Collections;
using System.Collections.Generic;
using UnityEngine;


  /// Place the labels for the Transitions in this enum.
  /// Don't change the first label, NullTransition as FSMSystem class uses it.
  /// 爲過渡加入枚舉標籤
  /// 不要修改第一個標籤，NullTransition會在FSMSytem類中使用
  /// </summary>
  public enum Transition
  {
      NullTransition = 0, // Use this transition to represent a non-existing transition in your system
      //用這個過度來代表你的系統中不存在的狀態
      SawPlayer,//這裏配合NPCControl添加兩個NPC的過渡
      LostPlayer,
  }
  
  /// <summary>
  /// Place the labels for the States in this enum.
  /// Don't change the first label, NullStateID as FSMSystem class uses it.
  /// 爲狀態加入枚舉標籤
  /// 不要修改第一個標籤，NullStateID會在FSMSytem中使用 
  /// </summary>
  public enum StateID
  {
      NullStateID = 0, // Use this ID to represent a non-existing State in your syste
      //使用這個ID來代表你係統中不存在的狀態ID    
      ChasingPlayer,//這裏配合NPCControl添加兩個狀態
      FollowingPath,
  
  }

/// <summary>
/// This class represents the States in the Finite State System.
/// Each state has a Dictionary with pairs (transition-state) showing
/// which state the FSM should be if a transition is fired while this state
/// is the current state.
/// Method Reason is used to determine which transition should be fired .
/// Method Act has the code to perform the actions the NPC is supposed do if it's on this state.
/// 這個類代表狀態在有限狀態機系統中
/// 每個狀態都有一個由一對搭檔（過渡-狀態）組成的字典來表示當前狀態下如果一個過渡被觸發狀態機會進入那個狀態
/// Reason方法被用來決定那個過渡會被觸發
/// Act方法來表現NPC出在當前狀態的行爲
/// </summary>
public abstract class FSMState
{
    protected Dictionary<Transition, StateID> map = new Dictionary<Transition, StateID>();
    protected StateID stateID;
    public StateID ID { get { return stateID; } }

    public void AddTransition(Transition trans, StateID id)
    {
        // Check if anyone of the args is invalid
        //驗證每個參數是否合法
        if (trans == Transition.NullTransition)
        {
            Debug.LogError("FSMState ERROR: NullTransition is not allowed for a real transition");
            return;
        }

        if (id == StateID.NullStateID)
        {
            Debug.LogError("FSMState ERROR: NullStateID is not allowed for a real ID");
            return;
        }

        // Since this is a Deterministic FSM,
        //   check if the current transition was already inside the map
        //要知道這是一個確定的有限狀態機（每個狀態後金對應一種狀態，而不能產生分支）
        //檢查當前的過渡是否已經在地圖字典中了
        if (map.ContainsKey(trans))
        {
            Debug.LogError("FSMState ERROR: State " + stateID.ToString() + " already has transition " + trans.ToString() +
                           "Impossible to assign to another state");
            return;
        }

        map.Add(trans, id);
    }

    /// <summary>
    /// This method deletes a pair transition-state from this state's map.
    /// If the transition was not inside the state's map, an ERROR message is printed.
    /// 這個方法用來在狀態地圖中刪除transition-state對兒
    /// 如果過渡並不存在於狀態地圖中，那麼將會打印出一個錯誤
    /// </summary>
    public void DeleteTransition(Transition trans)
    {
        // Check for NullTransition
        if (trans == Transition.NullTransition)
        {
            Debug.LogError("FSMState ERROR: NullTransition is not allowed");
            return;
        }

        // Check if the pair is inside the map before deleting
        //再刪除之前確認該鍵值對是否存在於狀態地圖中（鍵值對集合）
        if (map.ContainsKey(trans))
        {
            map.Remove(trans);
            return;
        }
        Debug.LogError("FSMState ERROR: Transition " + trans.ToString() + " passed to " + stateID.ToString() +
                       " was not on the state's transition list");
    }
    /// <summary>
    /// This method returns the new state the FSM should be if
    ///    this state receives a transition and 
    /// 該方法在該狀態接收到一個過渡時返回狀態機需要成爲的新狀態
    /// </summary>
    public StateID GetOutputState(Transition trans)
    {
        // Check if the map has this transition
        if (map.ContainsKey(trans))
        {
            return map[trans];
        }
        return StateID.NullStateID;
    }

    /// <summary>
    /// This method is used to set up the State condition before entering it.
    /// It is called automatically by the FSMSystem class before assigning it
    /// to the current state.
    /// 這個方法用來設立進入狀態前的條件
    /// 在狀態機分配它到當前狀態之前他會被自動調用
    /// </summary>
    public virtual void DoBeforeEntering() { }

    /// <summary>
    /// This method is used to make anything necessary, as reseting variables
    /// before the FSMSystem changes to another one. It is called automatically
    /// by the FSMSystem before changing to a new state.
    /// 這個方法用來讓一切都是必要的，例如在有限狀態機變化的另一個時重置變量。
    /// 在狀態機切換到新的狀態之前它會被自動調用。
    /// </summary>
    public virtual void DoBeforeLeaving() { }

    /// <summary>
    /// This method decides if the state should transition to another on its list
    /// 動機-->這個方法用來決定當前狀態是否需要過渡到列表中的其他狀態
    /// NPC is a reference to the object that is controlled by this class
    /// NPC是被該類約束下對象的一個引用
    /// </summary>
    public abstract void Reason(GameObject player, GameObject npc);

    /// <summary>
    /// This method controls the behavior of the NPC in the game World.
    /// 表現-->該方法用來控制NPC在遊戲世界中的行爲
    /// Every action, movement or communication the NPC does should be placed here
    /// NPC的任何動作，移動或者交流都需要防止在這兒
    /// NPC is a reference to the object that is controlled by this class
    /// NPC是被該類約束下對象的一個引用
    /// </summary>
    public abstract void Act(GameObject player, GameObject npc);

}// class FSMState

// 1 using System;
//  2 using System.Collections;
//  3 using System.Collections.Generic;
//  4 using UnityEngine;
//  5 
//  6 /**
//  7 A Finite State Machine System based on Chapter 3.1 of Game Programming Gems 1 by Eric Dybsand
//  8  
//  9 Written by Roberto Cezar Bianchini, July 2010
// 10  
// 11  
// 12 How to use:
// 13     1. Place the labels for the transitions and the states of the Finite State System
// 14         in the corresponding enums.
// 15  
// 16     2. Write new class(es) inheriting from FSMState and fill each one with pairs (transition-state).
// 17         These pairs represent the state S2 the FSMSystem should be if while being on state S1, a
// 18         transition T is fired and state S1 has a transition from it to S2. Remember this is a Deterministic（確定的） FSM. 
// 19         You can't have one transition leading to two different states.
// 20  
// 21        Method Reason is used to determine which transition should be fired.
// 22        You can write the code to fire transitions in another place, and leave this method empty if you
// 23        feel it's more appropriate 合適 to your project.
// 24  
// 25        Method Act has the code to perform the actions the NPC is supposed do if it's on this state.
// 26        You can write the code for the actions in another place, and leave this method empty if you
// 27        feel it's more appropriate to your project.
// 28  
// 29     3. Create an instance of FSMSystem class and add the states to it.
// 30  
// 31     4. Call Reason and Act (or whichever methods you have for firing transitions and making the NPCs
// 32          behave in your game) from your Update or FixedUpdate methods.
// 33  
// 34     Asynchronous transitions from Unity Engine, like OnTriggerEnter, SendMessage, can also be used, 
// 35     just call the Method PerformTransition from your FSMSystem instance with the correct Transition 
// 36     when the event occurs 重現.
// 37  
// 38  
// 39  
// 40 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
// 41 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE 
// 42 AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
// 43 DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
// 44 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// 45 */
// 46 
// 47 
// 48 /// <summary>
// 49 /// Place the labels for the Transitions in this enum.
// 50 /// Don't change the first label, NullTransition as FSMSystem class uses it.
// 51 /// 爲過渡加入枚舉標籤
// 52 /// 不要修改第一個標籤，NullTransition會在FSMSytem類中使用
// 53 /// </summary>
// 54 public enum Transition
// 55 {
// 56     NullTransition = 0, // Use this transition to represent a non-existing transition in your system
// 57     //用這個過度來代表你的系統中不存在的狀態
// 58     SawPlayer,//這裏配合NPCControl添加兩個NPC的過渡
// 59     LostPlayer,
// 60 }
// 61 
// 62 /// <summary>
// 63 /// Place the labels for the States in this enum.
// 64 /// Don't change the first label, NullStateID as FSMSystem class uses it.
// 65 /// 爲狀態加入枚舉標籤
// 66 /// 不要修改第一個標籤，NullStateID會在FSMSytem中使用 
// 67 /// </summary>
// 68 public enum StateID
// 69 {
// 70     NullStateID = 0, // Use this ID to represent a non-existing State in your syste
// 71     //使用這個ID來代表你係統中不存在的狀態ID    
// 72     ChasingPlayer,//這裏配合NPCControl添加兩個狀態
// 73     FollowingPath,
// 74 
// 75 }
// 76 
// 77 /// <summary>
// 78 /// This class represents the States in the Finite State System.
// 79 /// Each state has a Dictionary with pairs (transition-state) showing
// 80 /// which state the FSM should be if a transition is fired while this state
// 81 /// is the current state.
// 82 /// Method Reason is used to determine which transition should be fired .
// 83 /// Method Act has the code to perform the actions the NPC is supposed do if it's on this state.
// 84 /// 這個類代表狀態在有限狀態機系統中
// 85 /// 每個狀態都有一個由一對搭檔（過渡-狀態）組成的字典來表示當前狀態下如果一個過渡被觸發狀態機會進入那個狀態
// 86 /// Reason方法被用來決定那個過渡會被觸發
// 87 /// Act方法來表現NPC出在當前狀態的行爲
// 88 /// </summary>
// 89 public abstract class FSMState
// 90 {
// 91     protected Dictionary<Transition, StateID> map = new Dictionary<Transition, StateID>();
// 92     protected StateID stateID;
// 93     public StateID ID { get { return stateID; } }
// 94 
// 95     public void AddTransition(Transition trans, StateID id)
// 96     {
// 97         // Check if anyone of the args is invalid
// 98         //驗證每個參數是否合法
// 99         if (trans == Transition.NullTransition)
//100         {
//101             Debug.LogError("FSMState ERROR: NullTransition is not allowed for a real transition");
//102             return;
//103         }
//104 
//105         if (id == StateID.NullStateID)
//106         {
//107             Debug.LogError("FSMState ERROR: NullStateID is not allowed for a real ID");
//108             return;
//109         }
//110 
//111         // Since this is a Deterministic FSM,
//112         //   check if the current transition was already inside the map
//113         //要知道這是一個確定的有限狀態機（每個狀態後金對應一種狀態，而不能產生分支）
//114         //檢查當前的過渡是否已經在地圖字典中了
//115         if (map.ContainsKey(trans))
//116         {
//117             Debug.LogError("FSMState ERROR: State " + stateID.ToString() + " already has transition " + trans.ToString() +
//118                            "Impossible to assign to another state");
//119             return;
//120         }
//121 
//122         map.Add(trans, id);
//123     }
//124 
//125     /// <summary>
//126     /// This method deletes a pair transition-state from this state's map.
//127     /// If the transition was not inside the state's map, an ERROR message is printed.
//128     /// 這個方法用來在狀態地圖中刪除transition-state對兒
//129     /// 如果過渡並不存在於狀態地圖中，那麼將會打印出一個錯誤
//130     /// </summary>
//131     public void DeleteTransition(Transition trans)
//132     {
//133         // Check for NullTransition
//134         if (trans == Transition.NullTransition)
//135         {
//136             Debug.LogError("FSMState ERROR: NullTransition is not allowed");
//137             return;
//138         }
//139 
//140         // Check if the pair is inside the map before deleting
//141         //再刪除之前確認該鍵值對是否存在於狀態地圖中（鍵值對集合）
//142         if (map.ContainsKey(trans))
//143         {
//144             map.Remove(trans);
//145             return;
//146         }
//147         Debug.LogError("FSMState ERROR: Transition " + trans.ToString() + " passed to " + stateID.ToString() +
//148                        " was not on the state's transition list");
//149     }
//150 
//151     /// <summary>
//152     /// This method returns the new state the FSM should be if
//153     ///    this state receives a transition and 
//154     /// 該方法在該狀態接收到一個過渡時返回狀態機需要成爲的新狀態
//155     /// </summary>
//156     public StateID GetOutputState(Transition trans)
//157     {
//158         // Check if the map has this transition
//159         if (map.ContainsKey(trans))
//160         {
//161             return map[trans];
//162         }
//163         return StateID.NullStateID;
//164     }
//165 
//166     /// <summary>
//167     /// This method is used to set up the State condition before entering it.
//168     /// It is called automatically by the FSMSystem class before assigning it
//169     /// to the current state.
//170     /// 這個方法用來設立進入狀態前的條件
//171     /// 在狀態機分配它到當前狀態之前他會被自動調用
//172     /// </summary>
//173     public virtual void DoBeforeEntering() { }
//174 
//175     /// <summary>
//176     /// This method is used to make anything necessary, as reseting variables
//177     /// before the FSMSystem changes to another one. It is called automatically
//178     /// by the FSMSystem before changing to a new state.
//179     /// 這個方法用來讓一切都是必要的，例如在有限狀態機變化的另一個時重置變量。
//180     /// 在狀態機切換到新的狀態之前它會被自動調用。
//181     /// </summary>
//182     public virtual void DoBeforeLeaving() { }
//183 
//184     /// <summary>
//185     /// This method decides if the state should transition to another on its list
//186     /// 動機-->這個方法用來決定當前狀態是否需要過渡到列表中的其他狀態
//187     /// NPC is a reference to the object that is controlled by this class
//188     /// NPC是被該類約束下對象的一個引用
//189     /// </summary>
//190     public abstract void Reason(GameObject player, GameObject npc);
//191 
//192     /// <summary>
//193     /// This method controls the behavior of the NPC in the game World.
//194     /// 表現-->該方法用來控制NPC在遊戲世界中的行爲
//195     /// Every action, movement or communication the NPC does should be placed here
//196     /// NPC的任何動作，移動或者交流都需要防止在這兒
//197     /// NPC is a reference to the object that is controlled by this class
//198     /// NPC是被該類約束下對象的一個引用
//199     /// </summary>
//200     public abstract void Act(GameObject player, GameObject npc);
//201 
//202 } // class FSMState
