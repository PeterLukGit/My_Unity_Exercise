/* 
    ------------------- Code Monkey -------------------

    Thank you for downloading this package
    I hope you find it useful in your projects
    If you have any questions let me know
    Cheers!

               unitycodemonkey.com
    --------------------------------------------------
 */

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Entities;
using Unity.Rendering;
using Unity.Transforms;
using Unity.Mathematics;
using Unity.Collections;

namespace AAAA{

    public class Testing : MonoBehaviour
    {

        [SerializeField] private Material zombieMaterial;
        [SerializeField] private Material kunaiMaterial;

        private EntityManager entityManager;

        private void Start()
        {
            entityManager = World.Active.EntityManager;

            NativeArray<Entity> entityArray = new NativeArray<Entity>(20, Allocator.Temp);
            EntityArchetype entityArchetype = entityManager.CreateArchetype(
                typeof(RenderMesh),
                typeof(LocalToWorld),
                typeof(Translation),
                typeof(Rotation)
            //typeof(Scale)
            //typeof(NonUniformScale)
            );

            entityManager.CreateEntity(entityArchetype, entityArray);

            Mesh zombieMesh = CreateMesh(1f, 1f);
            Mesh kunaiMesh = CreateMesh(.3f, 1f);

            for (int i = 0; i < entityArray.Length; i++)
            {
                Entity entity = entityArray[i];
                entityManager.SetSharedComponentData(entity, new RenderMesh
                {
                    mesh = (i < 10) ? zombieMesh : kunaiMesh,
                    material = (i < 10) ? zombieMaterial : kunaiMaterial,
                });

                entityManager.SetComponentData(entity, new Translation
                {
                    Value = new float3(UnityEngine.Random.Range(-8, 8f), UnityEngine.Random.Range(-3, 3f), 0f)
                });

                /*entityManager.SetComponentData(entity, new NonUniformScale {
                    Value = new float3(1f, 3f, 1f)
                });*/
            }

            entityArray.Dispose();
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


    }

    public class MoveSystem : ComponentSystem
    {

        protected override void OnUpdate()
        {
            Entities.ForEach((ref Translation translation) => {
                float moveSpeed = .1f;
                translation.Value.y += moveSpeed * Time.deltaTime;
            });
        }

    }

    public class RotatorSystem : ComponentSystem
    {

        protected override void OnUpdate()
        {
            Entities.ForEach((ref Rotation rotation) => {
                rotation.Value = quaternion.Euler(0, 0, math.PI * Time.realtimeSinceStartup);
            });
        }

    }

    public class ScalerSystem : ComponentSystem
    {

        protected override void OnUpdate()
        {
            Entities.ForEach((ref Scale scale) => {
                scale.Value += 1f * Time.deltaTime;
            });
        }

    }
}

