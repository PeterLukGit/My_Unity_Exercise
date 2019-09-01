using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Entities;
using Unity.Rendering;
using Unity.Transforms;
using Unity.Mathematics;
using Unity.Collections;

public class MeshTest : MonoBehaviour
{
    [SerializeField] private Material zombieMaterial;
    [SerializeField] private Material kunaiMaterial;

    private EntityManager entityManager;

    // Start is called before the first frame update
    void Start()
    {
        //this.GetTriangle();

        this.My_Mesh();

        entityManager = World.Active.EntityManager;

        //NativeArray<Entity> entityArray = new NativeArray<Entity>(20, Allocator.Temp);
        //EntityArchetype entityArchetype = entityManager.CreateArchetype(
        //    typeof(RenderMesh),
        //    typeof(LocalToWorld),
        //    typeof(Translation),
        //    typeof(Rotation)
        ////typeof(Scale)
        ////typeof(NonUniformScale)
        //);

        //entityManager.SetSharedComponentData(entity, new RenderMesh
        //{

        //});
        Mesh kunaiMesh = CreateMesh(.5f, 1f);
        Entity kunaiEntity = entityManager.CreateEntity();

        entityManager.AddComponent(kunaiEntity, typeof(RenderMesh));
        entityManager.AddComponent(kunaiEntity, typeof(LocalToWorld));
        entityManager.AddComponent(kunaiEntity, typeof(Translation));
        entityManager.AddComponent(kunaiEntity, typeof(LevelComponent));

        entityManager.SetComponentData(kunaiEntity, new Translation { Value = new Unity.Mathematics.float3(1, 0, 0) });

        entityManager.SetSharedComponentData(
            kunaiEntity,
            new RenderMesh
            {
                mesh = kunaiMesh,
                material = kunaiMaterial
            }
            );

        Entity zoEntity = entityManager.CreateEntity();

        Mesh ZoMesh = CreateMesh(1f, 1f);

        entityManager.AddComponent(zoEntity, typeof(RenderMesh));
        entityManager.AddComponent(zoEntity, typeof(LocalToWorld));
        entityManager.AddComponent(zoEntity, typeof(Translation));
        entityManager.AddComponent(zoEntity, typeof(LevelComponent));

        entityManager.SetComponentData(zoEntity, new Translation { Value = new Unity.Mathematics.float3(0, 0, 0) });

        entityManager.SetSharedComponentData(
            zoEntity,
            new RenderMesh
            {
                mesh = ZoMesh,
                material = zombieMaterial
            }
            );


    }

    // Update is called once per frame
    void Update()
    {

    }

    private Mesh My_Mesh()
    {
        GameObject go = new GameObject("aaa");
        MeshFilter filter = go.AddComponent<MeshFilter>();

        Vector3[] vertices = new Vector3[4];
        Vector2[] uv = new Vector2[4];
        int[] triangles = new int[6];

        /* 0, 0
         * 0, 1
         * 1, 1
         * 1, 0
         * */

        vertices[0] = new Vector3(-0, -0);
        vertices[1] = new Vector3(-0, +1);
        vertices[2] = new Vector3(+1, +1);
        vertices[3] = new Vector3(+1, -0);

        uv[0] = new Vector2(0, 0);
        uv[1] = new Vector2(0, 1);
        uv[2] = new Vector2(1, 1);
        uv[3] = new Vector2(1, 0);

        triangles[0] = 0;
        triangles[1] = 1;
        triangles[2] = 3;

        triangles[3] = 1;
        triangles[4] = 2;
        triangles[5] = 3;

        Mesh mesh = new Mesh();
        mesh.vertices = vertices;
        mesh.uv = uv;
        mesh.triangles = triangles;

        filter.mesh = mesh;

        // 使用Shader构建一个材质，并设置材质的颜色。
        Material material = new Material(Shader.Find("Diffuse"));
        material.SetColor("_Color", Color.white);

        // 构建一个MeshRender并把上面创建的材质赋值给它，
        // 然后使其把上面构造的Mesh渲染到屏幕上。
        MeshRenderer renderer = go.AddComponent<MeshRenderer>();
        renderer.sharedMaterial = material;

        return mesh;
    }


    /// <summary>
    /// 生成Mesh 因為ECS不支援2D Sprite
    /// 所以要用3DMesh來渲染
    /// 
    /// Mesh生成分三步驟
    /// 1.設定點（就是點在世界座標上的位置）
    /// 2.設定UV（就是UV，就是那三角形對著的UV平面（應該））
    /// 3.設定渲染的三角形，把第一步驟的點，依照順序渲染出來（要照順時鐘渲染）
    ///    ，當成是設定渲染的三角面
    /// </summary>
    /// <param name="width"></param>
    /// <param name="height"></param>
    /// <returns></returns>
    private Mesh CreateMesh(float width, float height)
    {
        Vector3[] vertices = new Vector3[4];
        Vector2[] uv = new Vector2[4];
        int[] triangles = new int[6];

        /* 0, 0
         * 0, 1
         * 1, 1
         * 1, 0
         * */

        float halfWidth = width / 2f;
        float halfHeight = height / 2f;
        //設定渲染的點，這邊是使用圖片大小設定出來
        vertices[0] = new Vector3(-halfWidth, -halfHeight);
        vertices[1] = new Vector3(-halfWidth, +halfHeight);
        vertices[2] = new Vector3(+halfWidth, +halfHeight);
        vertices[3] = new Vector3(+halfWidth, -halfHeight);
        //UV座標
        uv[0] = new Vector2(0, 0);
        uv[1] = new Vector2(0, 1);
        uv[2] = new Vector2(1, 1);
        uv[3] = new Vector2(1, 0);

        //設定渲染三角形順序
        /*
         * 順序分別是
         * 00
         * 01
         * 10
         * 這邊是左邊的三角形
         * 01
         * 11
         * 10
         * 這是右邊的三角形
         * */
        triangles[0] = 0;
        triangles[1] = 1;
        triangles[2] = 3;

        triangles[3] = 1;
        triangles[4] = 2;
        triangles[5] = 3;

        //輸出
        Mesh mesh = new Mesh();
        mesh.vertices = vertices;
        mesh.uv = uv;
        mesh.triangles = triangles;

        return mesh;
    }


public GameObject GetTriangle()
    {
        GameObject go = new GameObject("Triangle");
        MeshFilter filter = go.AddComponent<MeshFilter>();

        // 构建三角形的三个顶点，并赋值给Mesh.vertices
        Mesh mesh = new Mesh();
        filter.sharedMesh = mesh;
        mesh.vertices = new Vector3[] {
                new Vector3 (0, 0, 1),
                new Vector3 (0, 2, 0),
                new Vector3 (2, 0, 5),
            };

        // 构建三角形的顶点顺序，因为这里只有一个三角形，
        // 所以只能是(0, 1, 2)这个顺序。
        mesh.triangles = new int[3] { 0, 1, 2 };

        mesh.RecalculateNormals();
        mesh.RecalculateBounds();

        // 使用Shader构建一个材质，并设置材质的颜色。
        Material material = new Material(Shader.Find("Diffuse"));
        material.SetColor("_Color", Color.yellow);

        // 构建一个MeshRender并把上面创建的材质赋值给它，
        // 然后使其把上面构造的Mesh渲染到屏幕上。
        MeshRenderer renderer = go.AddComponent<MeshRenderer>();
        renderer.sharedMaterial = material;

        return go;
    }
}
