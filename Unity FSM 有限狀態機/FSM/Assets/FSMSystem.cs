using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// FSMSystem class represents the Finite State Machine class.
///  It has a List with the States the NPC has and methods to add,
///  delete a state, and to change the current state the Machine is on.
/// </summary>
public class FSMSystem
{
    private List<FSMState> states;

    // The only way one can change the state of the FSM is by performing a transition
    // Don't change the CurrentState directly
    private StateID currentStateID;
    public StateID CurrentStateID { get { return currentStateID; } }
    private FSMState currentState;
    public FSMState CurrentState { get { return currentState; } }

    public FSMSystem()
    {
        states = new List<FSMState>();
    }

    /// <summary>
    /// This method places new states inside the FSM,
    /// or prints an ERROR message if the state was already inside the List.
    /// First state added is also the initial state.
    /// </summary>
    public void AddState(FSMState s)
    {
        // Check for Null reference before deleting
        if (s == null)
        {
            Debug.LogError("FSM ERROR: Null reference is not allowed");
        }

        // First State inserted is also the Initial state,
        //   the state the machine is in when the simulation begins
        if (states.Count == 0)
        {
            states.Add(s);
            currentState = s;
            currentStateID = s.ID;
            return;
        }

        // Add the state to the List if it's not inside it
        foreach (FSMState state in states)
        {
            if (state.ID == s.ID)
            {
                Debug.LogError("FSM ERROR: Impossible to add state " + s.ID.ToString() +
                               " because state has already been added");
                return;
            }
        }
        states.Add(s);
    }

    /// <summary>
    /// This method delete a state from the FSM List if it exists, 
    ///   or prints an ERROR message if the state was not on the List.
    /// </summary>
    public void DeleteState(StateID id)
    {
        // Check for NullState before deleting
        if (id == StateID.NullStateID)
        {
            Debug.LogError("FSM ERROR: NullStateID is not allowed for a real state");
            return;
        }

        // Search the List and delete the state if it's inside it
        foreach (FSMState state in states)
        {
            if (state.ID == id)
            {
                states.Remove(state);
                return;
            }
        }
        Debug.LogError("FSM ERROR: Impossible to delete state " + id.ToString() +
                       ". It was not on the list of states");
    }

    /// <summary>
    /// This method tries to change the state the FSM is in based on
    /// the current state and the transition passed. If current state
    ///  doesn't have a target state for the transition passed, 
    /// an ERROR message is printed.
    /// </summary>
    public void PerformTransition(Transition trans)
    {
        // Check for NullTransition before changing the current state
        if (trans == Transition.NullTransition)
        {
            Debug.LogError("FSM ERROR: NullTransition is not allowed for a real transition");
            return;
        }

        // Check if the currentState has the transition passed as argument
        StateID id = currentState.GetOutputState(trans);
        if (id == StateID.NullStateID)
        {
            Debug.LogError("FSM ERROR: State " + currentStateID.ToString() + " does not have a target state " +
                           " for transition " + trans.ToString());
            return;
        }

        // Update the currentStateID and currentState		
        currentStateID = id;
        foreach (FSMState state in states)
        {
            if (state.ID == currentStateID)
            {
                // Do the post processing of the state before setting the new one
                currentState.DoBeforeLeaving();

                currentState = state;

                // Reset the state to its desired condition before it can reason or act
                currentState.DoBeforeEntering();
                break;
            }
        }

    } // PerformTransition()

} //class FSMSystem



///// <summary>
//206 /// FSMSystem class represents the Finite State Machine class.
//207 ///  It has a List with the States the NPC has and methods to add,
//208 ///  delete a state, and to change the current state the Machine is on.
//209 /// 該類便是有限狀態機類
//210 /// 它持有者NPC的狀態集合並且有添加，刪除狀態的方法，以及改變當前正在執行的狀態
//211 /// </summary>
//212 public class FSMSystem
//213 {
//214     private List<FSMState> states;
//215 
//216     // The only way one can change the state of the FSM is by performing a transition
//217     // Don't change the CurrentState directly
//218     //通過預裝一個過渡的唯一方式來蓋面狀態機的狀態
//219     //不要直接改變當前的狀態
//220     private StateID currentStateID;
//221     public StateID CurrentStateID { get { return currentStateID; } }
//222     private FSMState currentState;
//223     public FSMState CurrentState { get { return currentState; } }
//224 
//225     public FSMSystem()
//226     {
//227         states = new List<FSMState>();
//228     }
//229     /// <summary>
//230     /// This method places new states inside the FSM,
//231     /// or prints an ERROR message if the state was already inside the List.
//232     /// First state added is also the initial state.
//233     /// 這個方法爲有限狀態機置入新的狀態
//234     /// 或者在該狀態已經存在於列表中時打印錯誤信息
//235     /// 第一個添加的狀態也是最初的狀態!
//236     /// </summary>
//237     public void AddState(FSMState s)
//238     {
//239         // Check for Null reference before deleting
//240         //在添加前檢測空引用
//241         if (s == null)
//242         {
//243             Debug.LogError("FSM ERROR: Null reference is not allowed");
//244         }
//245 
//246        
//247 
//248         // First State inserted is also the Initial state,
//249         //   the state the machine is in when the   begins
//250         //被裝在的第一個狀態也是初始狀態
//251         //這個狀態便是狀態機開始時的狀態
//252         if (states.Count == 0)
//253         {
//254             states.Add(s);
//255             currentState = s;
//256             currentStateID = s.ID;
//257             return;
//258         }
//259 
//260         // Add the state to the List if it's not inside it
//261         //如果該狀態未被添加過，則加入集合
//262         foreach (FSMState state in states)
//263         {
//264             if (state.ID == s.ID)
//265             {
//266                 Debug.LogError("FSM ERROR: Impossible to add state " + s.ID.ToString() +
//267                                " because state has already been added");
//268                 return;
//269             }
//270         }
//271         states.Add(s);
//272     }
//273 
//274     /// <summary>
//275     /// This method delete a state from the FSM List if it exists, 
//276     ///   or prints an ERROR message if the state was not on the List.
//277     /// 該方法刪除一個已存在以狀態幾個中的狀態
//278     /// 在它不存在時打印錯誤信息
//279     /// </summary>
//280     public void DeleteState(StateID id)
//281     {
//282         // Check for NullState before deleting
//283         //在刪除前檢查其是否爲空狀態
//284         if (id == StateID.NullStateID)
//285         {
//286             Debug.LogError("FSM ERROR: NullStateID is not allowed for a real state");
//287             return;
//288         }
//289 
//290         // Search the List and delete the state if it's inside it
//291         //遍歷集合如果存在該狀態則刪除它
//292         foreach (FSMState state in states)
//293         {
//294             if (state.ID == id)
//295             {
//296                 states.Remove(state);
//297                 return;
//298             }
//299         }
//300         Debug.LogError("FSM ERROR: Impossible to delete state " + id.ToString() +
//301                        ". It was not on the list of states");
//302     }
//303 
//304     /// <summary>
//305     /// This method tries to change the state the FSM is in based on
//306     /// the current state and the transition passed. If current state
//307     ///  doesn't have a target state for the transition passed, 
//308     /// an ERROR message is printed.
//309     /// 該方法基於當前狀態和過渡是否通過來嘗試改變狀態機的狀態，噹噹前的狀態沒有目標狀態用來過渡（叫通道應該更合適吧）時通過時則打印錯誤消息
//310     /// </summary>
//311     public void PerformTransition(Transition trans)
//312     {
//313         // Check for NullTransition before changing the current state
//314         //在改變當前狀態前檢測NullTransition
//315         if (trans == Transition.NullTransition)
//316         {
//317             Debug.LogError("FSM ERROR: NullTransition is not allowed for a real transition");
//318             return;
//319         }
//320 
//321         // Check if the currentState has the transition passed as argument
//322         //在改變當前狀態前檢測當前狀態是否可作爲過渡的參數
//323 
//324         StateID id = currentState.GetOutputState(trans);
//325         if (id == StateID.NullStateID)
//326         {
//327             Debug.LogError("FSM ERROR: State " + currentStateID.ToString() + " does not have a target state " +
//328                            " for transition " + trans.ToString());
//329             return;
//330         }
//331 
//332         // Update the currentStateID and currentState        
//333         //更新當前的狀態個和狀態編號
//334         currentStateID = id;
//335         foreach (FSMState state in states)
//336         {
//337             if (state.ID == currentStateID)
//338             {
//339                 // Do the post processing of the state before setting the new one
//340                 //在狀態變爲新狀態前執行後處理
//341                 currentState.DoBeforeLeaving();
//342 
//343                 currentState = state;
//344 
//345                 // Reset the state to its desired condition before it can reason or act
//346                 //在狀態可以使用Reason（動機）或者Act(行爲)之前爲它的的決定條件重置它自己
//347                 currentState.DoBeforeEntering();
//348                 break;
//349             }
//350         }
//351 
//352     } // PerformTransition()
//353 
//354 } //class FSMSystem
//複製代碼
//NPCControl: