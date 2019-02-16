using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
using UnityEngine.AI;

[TrackClipType(typeof(NavMeshAgentControlPlayable))]
// Use if the track requires a binding to a scene object or asset
[TrackBindingType(typeof(NavMeshAgent))]
public class NavMeshAgentControlTrack: TrackAsset
{
	// override the type of mixer playable used by this track
	public override Playable CreateTrackMixer(PlayableGraph graph, GameObject go, int inputCount) {
		return base.CreateTrackMixer(graph, go, inputCount);
	}
}
