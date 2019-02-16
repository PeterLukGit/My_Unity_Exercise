using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[TrackClipType(typeof(CustomClipExample))]
// Use if the track requires a binding to a scene object or asset
[TrackBindingType(typeof(ParticleSystem))]
public class CustomTrackExample: TrackAsset
{
	// override the type of mixer playable used by this track
	public override Playable CreateTrackMixer(PlayableGraph graph, GameObject go, int inputCount) {
		return base.CreateTrackMixer(graph, go, inputCount);
	}
}
