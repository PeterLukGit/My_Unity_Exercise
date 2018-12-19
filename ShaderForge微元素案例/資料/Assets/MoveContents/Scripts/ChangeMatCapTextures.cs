using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeMatCapTextures : MonoBehaviour
{
    public Texture[] MatCapTextures;
    private int index = 0;
    private List<Material> matList;
    // Use this for initialization
    void Start()
    {
        matList = new List<Material>();
        foreach (MeshRenderer mr in this.GetComponentsInChildren<MeshRenderer>())
        {
            if(mr.sharedMaterial != null)
                matList.Add(mr.sharedMaterial);
        }
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            index++;
            if (index >= MatCapTextures.Length)
            {
                index = 0;
            }
            foreach (Material mat in matList.ToArray())
            {
                mat.SetTexture("_MatCap",MatCapTextures[index]);
            }
        }
        else if(Input.GetKeyDown(KeyCode.UpArrow))
        {
            index--;
            if (index < 0)
            {
                index = MatCapTextures.Length - 1;
            }
            foreach (Material mat in matList.ToArray())
            {
                mat.SetTexture("_MatCap", MatCapTextures[index]);
            }
        }
    }
}
