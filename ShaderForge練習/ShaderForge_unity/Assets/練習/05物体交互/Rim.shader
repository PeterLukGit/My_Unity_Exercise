// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33900,y:32728,varname:node_9361,prsc:2|custl-32-OUT;n:type:ShaderForge.SFN_Fresnel,id:5717,x:32581,y:32666,varname:node_5717,prsc:2;n:type:ShaderForge.SFN_Slider,id:7478,x:32337,y:32855,ptovrint:False,ptlb:Rim range,ptin:_Rimrange,varname:node_7478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:10;n:type:ShaderForge.SFN_Power,id:1038,x:32759,y:32721,varname:node_1038,prsc:2|VAL-5717-OUT,EXP-7478-OUT;n:type:ShaderForge.SFN_DepthBlend,id:3109,x:32712,y:33074,varname:node_3109,prsc:2|DIST-5097-OUT;n:type:ShaderForge.SFN_Add,id:32,x:33282,y:32892,cmnt:疊加,varname:node_32,prsc:2|A-5363-OUT,B-6875-OUT;n:type:ShaderForge.SFN_OneMinus,id:4811,x:32891,y:33074,varname:node_4811,prsc:2|IN-3109-OUT;n:type:ShaderForge.SFN_Slider,id:5097,x:32377,y:33133,ptovrint:False,ptlb:Inside Light Range,ptin:_InsideLightRange,varname:node_5097,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Color,id:8821,x:32891,y:33238,ptovrint:False,ptlb:Inside Color,ptin:_InsideColor,varname:node_8821,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6875,x:33068,y:33116,varname:node_6875,prsc:2|A-4811-OUT,B-8821-RGB;n:type:ShaderForge.SFN_Multiply,id:5363,x:32977,y:32706,varname:node_5363,prsc:2|A-7142-RGB,B-1038-OUT;n:type:ShaderForge.SFN_Color,id:7142,x:32759,y:32543,ptovrint:False,ptlb:Rim Color,ptin:_RimColor,varname:node_7142,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Relay,id:9630,x:33119,y:32631,cmnt:這一區就是外邊圈的範圍 和顏色,varname:node_9630,prsc:2|IN-5363-OUT;n:type:ShaderForge.SFN_Relay,id:2479,x:33267,y:33116,cmnt:這邊就是當物體交互時 所顯示顏色,varname:node_2479,prsc:2|IN-6875-OUT;n:type:ShaderForge.SFN_Relay,id:3284,x:32553,y:32988,cmnt:物體疊加時,varname:node_3284,prsc:2|IN-3109-OUT;n:type:ShaderForge.SFN_Relay,id:5261,x:32657,y:32988,cmnt:它根据距离输入输出 0 和 1 之间的值具体取决于此像素距背景几何图形多近,varname:node_5261,prsc:2|IN-3284-OUT;n:type:ShaderForge.SFN_Relay,id:612,x:33423,y:32806,cmnt:為了展示效果 所以數值調得非常極端,varname:node_612,prsc:2|IN-32-OUT;n:type:ShaderForge.SFN_Relay,id:1550,x:33532,y:32860,cmnt:顏色會非常突出,varname:node_1550,prsc:2|IN-612-OUT;n:type:ShaderForge.SFN_Relay,id:7566,x:33267,y:33209,cmnt:當物體交互時輸出0到1範圍透過相乘顏色 顯示範圍內的物體顏色,varname:node_7566,prsc:2|IN-6875-OUT;n:type:ShaderForge.SFN_Relay,id:3592,x:32741,y:33013,cmnt:這跟攝影機有關太遠會看不到,varname:node_3592,prsc:2|IN-5261-OUT;n:type:ShaderForge.SFN_Relay,id:6423,x:33423,y:33002,cmnt:Blending Blend Mode 調成 Additive,varname:node_6423,prsc:2|IN-32-OUT;proporder:7142-7478-8821-5097;pass:END;sub:END;*/

Shader "Shader Forge/Rim" {
    Properties {
        _RimColor ("Rim Color", Color) = (0.5,0.5,0.5,1)
        _Rimrange ("Rim range", Range(0, 10)) = 0.5
        [HDR]_InsideColor ("Inside Color", Color) = (0.5,0.5,0.5,1)
        _InsideLightRange ("Inside Light Range", Range(0, 10)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
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
            uniform sampler2D _CameraDepthTexture;
            uniform float _Rimrange;
            uniform float _InsideLightRange;
            uniform float4 _InsideColor;
            uniform float4 _RimColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float3 node_5363 = (_RimColor.rgb*pow((1.0-max(0,dot(normalDirection, viewDirection))),_Rimrange));
                float node_3109 = saturate((sceneZ-partZ)/_InsideLightRange);
                float3 node_6875 = ((1.0 - node_3109)*_InsideColor.rgb);
                float3 node_32 = (node_5363+node_6875); // 疊加
                float3 finalColor = node_32;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
