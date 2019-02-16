using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class TimeControlPlayable : BasicPlayableBehaviour
{
	public float targetTimeScale;

	private float _originalTimeScale = 1f;

	public virtual void ProcessFrame(Playable playable, FrameData info, object playerData)
	{
        //This checks if we're actually playing. Prevents it running before the clip has started.

		if (playable.GetTime() == 0)
			return;
		
		Time.timeScale = Mathf.Lerp (_originalTimeScale, targetTimeScale, (float)(playable.GetTime() / playable.GetDuration()));
	}

	public virtual void OnPlayStateChanged (FrameData info, PlayState newState)
	{
		if (newState == PlayState.Playing) 
		{
			_originalTimeScale = Time.timeScale;
		}
	}
}