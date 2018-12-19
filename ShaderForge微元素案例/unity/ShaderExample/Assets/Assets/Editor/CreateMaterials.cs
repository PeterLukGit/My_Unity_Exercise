using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using UnityEditor;

public class CreateMaterials : EditorWindow
{
    [MenuItem("Assets/CreateMaterialsByShader" , false, 0)]
    public static void CreateMaterialsBySelectShader()
    {
        Object[] gos = Selection.objects;
        foreach(Object go in gos)
        {
            if(go.GetType().ToString() == "UnityEngine.Shader") 
            {
                string path = AssetDatabase.GetAssetPath(go);
                CreateOneMaterial(path,go.name);
            }
                       
        }        
    }
    
    public static void CreateOneMaterial(string path,string shader)
    {
        Material mat = new Material(UnityEngine.Shader.Find(shader));
        path = path.Remove(0,6);

        DirectoryInfo dir = new DirectoryInfo(Application.dataPath + path);
        string name = (dir.GetFiles("*.shader"))[0].Name;
        
        int i = 0;
        string shortName = name;
        shortName = shortName.Replace(".shader", "");
        name = shortName +"_"+ i.ToString() + ".mat";

        FileInfo[] files;
        files = dir.Parent.GetFiles("*.mat");

        for(int j = 0;j<files.Length;++j)
        {
            FileInfo file = files[j];

            if(file.Name == name)
            {
                i++;
                name = shortName + "_" + i.ToString() + ".mat";
                j = 0;
            }
        }

        path = path.Replace(".shader","");
        AssetDatabase.CreateAsset(mat,"Assets" + path + "_" + i.ToString() + ".mat");

        Debug.Log("Create a material name is :" + shortName + "_" + i.ToString() + ".mat");
    }
	
}
