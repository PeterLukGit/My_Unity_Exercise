using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using UnityEngine.AI;

[System.Serializable]
public class NavMeshAgentControlPlayable: BasicPlayableBehaviour
{

	public ExposedReference<Transform> clipDestination;
	private Transform _clipDestination;

	private bool isFirstFrame;

	public override void OnGraphStart(Playable playable){
		_clipDestination = clipDestination.Resolve (playable.GetGraph ().GetResolver ());
		//Debug.Log ("On Graph Start");
		isFirstFrame = true;
	}

	public override void ProcessFrame(Playable playable, FrameData info, object userData)
	{
		//userData is the object set in the track's binding
		var bindedAgent = userData as NavMeshAgent;

		if (bindedAgent != null)
		{

			if (_clipDestination != null) {
			
				if (isFirstFrame) {


					NavMeshPath path = bindedAgent.path;

					NavMesh.CalculatePath (bindedAgent.transform.position, _clipDestination.position, NavMesh.AllAreas, path);

					float pathLength = 0;


					for (int i = 1; i < path.corners.Length; i++) {
						pathLength += Vector3.Distance (path.corners [i - 1], path.corners [i]);
					}

					pathLength += Vector3.Distance (bindedAgent.transform.position, path.corners [0]);

					pathLength += Vector3.Distance (path.corners [path.corners.Length - 1], _clipDestination.position);
				

					float clipDuration = (float)playable.GetDuration ();

					bindedAgent.speed = pathLength / clipDuration;


					bindedAgent.SetDestination (_clipDestination.position);

					isFirstFrame = false;
				}
			}
		}
	}


}