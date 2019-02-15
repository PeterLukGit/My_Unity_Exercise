using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScrollTexture : MonoBehaviour {

    private Material mat;
    private int texOffset;
    public Vector2 offset = new Vector2(1, 0);
    public float speed = 1f;
    private Vector2 curOffset;

	// Use this for initialization
	void Start () {
        mat = GetComponent<ParticleSystemRenderer>().trailMaterial;
        texOffset = Shader.PropertyToID("_MainTex");
	}
	
	// Update is called once per frame
	void Update () {
        curOffset += offset * Time.deltaTime * speed;
        mat.SetTextureOffset(texOffset, curOffset);
	}
}
