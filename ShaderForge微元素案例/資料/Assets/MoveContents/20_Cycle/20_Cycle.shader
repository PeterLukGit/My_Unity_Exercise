// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6113,x:32836,y:32631,varname:node_6113,prsc:2|emission-9370-RGB,alpha-6009-OUT,clip-6009-OUT;n:type:ShaderForge.SFN_Tex2d,id:6655,x:31672,y:32466,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6655,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b25e2757b658bd744a7400f1b8a520eb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:6523,x:31986,y:32746,varname:node_6523,prsc:2|A-2226-OUT,B-9582-OUT;n:type:ShaderForge.SFN_Vector1,id:9582,x:31806,y:32840,varname:node_9582,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:3621,x:32231,y:32782,varname:node_3621,prsc:2|A-6523-OUT,B-5320-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5320,x:31986,y:32912,ptovrint:False,ptlb:MinTransparent,ptin:_MinTransparent,varname:node_5320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_OneMinus,id:4872,x:32231,y:32912,varname:node_4872,prsc:2|IN-6523-OUT;n:type:ShaderForge.SFN_OneMinus,id:1204,x:32423,y:32782,varname:node_1204,prsc:2|IN-3621-OUT;n:type:ShaderForge.SFN_Set,id:6084,x:31848,y:32549,varname:mainTexAlpha,prsc:2|IN-6655-A;n:type:ShaderForge.SFN_Get,id:2226,x:31785,y:32782,varname:node_2226,prsc:2|IN-6084-OUT;n:type:ShaderForge.SFN_Multiply,id:9502,x:32423,y:33001,varname:node_9502,prsc:2|A-4872-OUT,B-8088-OUT;n:type:ShaderForge.SFN_Step,id:8088,x:32231,y:33035,varname:node_8088,prsc:2|A-9682-OUT,B-577-OUT;n:type:ShaderForge.SFN_Get,id:9682,x:31986,y:33035,varname:node_9682,prsc:2|IN-6084-OUT;n:type:ShaderForge.SFN_Time,id:4032,x:31454,y:33073,varname:node_4032,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5750,x:31454,y:33221,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_5750,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:6783,x:31653,y:33138,varname:node_6783,prsc:2|A-4032-T,B-5750-OUT;n:type:ShaderForge.SFN_Frac,id:8803,x:31821,y:33138,varname:node_8803,prsc:2|IN-6783-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:577,x:32007,y:33138,varname:node_577,prsc:2,a:0,b:1.125|IN-8803-OUT;n:type:ShaderForge.SFN_Add,id:6009,x:32566,y:32896,varname:node_6009,prsc:2|A-1204-OUT,B-9502-OUT;n:type:ShaderForge.SFN_Color,id:9370,x:32365,y:32584,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9370,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.9607844,c4:1;proporder:6655-5320-5750-9370;pass:END;sub:END;*/

Shader "Move/20_Cycle" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _MinTransparent ("MinTransparent", Float ) = 0.8
        _Speed ("Speed", Float ) = 0.5
        _Color ("Color", Color) = (0,1,0.9607844,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MinTransparent;
            uniform float _Speed;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                float node_6523 = step(mainTexAlpha,0.0);
                float4 node_4032 = _Time;
                float node_6009 = ((1.0 - (node_6523+_MinTransparent))+((1.0 - node_6523)*step(mainTexAlpha,lerp(0,1.125,frac((node_4032.g*_Speed))))));
                clip(node_6009 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_6009);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _MinTransparent;
            uniform float _Speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                float node_6523 = step(mainTexAlpha,0.0);
                float4 node_4032 = _Time;
                float node_6009 = ((1.0 - (node_6523+_MinTransparent))+((1.0 - node_6523)*step(mainTexAlpha,lerp(0,1.125,frac((node_4032.g*_Speed))))));
                clip(node_6009 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
