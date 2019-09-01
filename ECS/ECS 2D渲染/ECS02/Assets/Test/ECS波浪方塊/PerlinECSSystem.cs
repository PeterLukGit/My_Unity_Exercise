using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Jobs;
using Unity.Burst;
using Unity.Transforms;
using Unity.Mathematics;
using Unity.Entities;
using Unity.Collections;

public class PerlinECSSystem : ComponentSystem
{


    protected override void OnUpdate()
    {
        //尋找有 Translation MoveSpeedComponent 兩個組件的Entities
        Entities.ForEach((ref Translation translation, ref PerlinComponent perlinComponent) =>
        {
            perlinComponent.elepsedTime = Time.time;

            perlinComponent.perlinNoise = 
            Mathf.PerlinNoise(
                perlinComponent.PerlinVec2.x + perlinComponent.elepsedTime,
               perlinComponent. PerlinVec2.y + perlinComponent.elepsedTime);

            translation.Value = new float3(
        translation.Value.x,
        perlinComponent.perlinNoise * perlinComponent.high,
        translation.Value.z);

        });
    }
}
