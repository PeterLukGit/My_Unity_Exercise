using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[System.Serializable]
public class CustomClipExample: BasicPlayableBehaviour
{
	public override void ProcessFrame(Playable playable, FrameData info, object userData)
	{
		//userData is the object set in the track's binding
		var ps = userData as ParticleSystem;
		if (ps != null)
		{
			Debug.Log(ps.name);
		}
	}
}