// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2321,x:33063,y:32726,varname:node_2321,prsc:2|emission-9032-RGB,clip-170-OUT;n:type:ShaderForge.SFN_Tex2d,id:7080,x:32261,y:32849,ptovrint:False,ptlb:UV_Distance,ptin:_UV_Distance,varname:node_7080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1a396cf98e1c27440a280ba24c64ec49,ntxv:0,isnm:False;n:type:ShaderForge.SFN_FragmentPosition,id:1337,x:31891,y:32953,varname:node_1337,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:5619,x:31891,y:33089,varname:node_5619,prsc:2;n:type:ShaderForge.SFN_Distance,id:5953,x:32081,y:33021,varname:node_5953,prsc:2|A-1337-XYZ,B-5619-XYZ;n:type:ShaderForge.SFN_Multiply,id:3429,x:32274,y:33079,cmnt:乘上強度,varname:node_3429,prsc:2|A-5953-OUT,B-9954-OUT;n:type:ShaderForge.SFN_Add,id:713,x:32458,y:32940,cmnt:圖片加上去再去小數點,varname:node_713,prsc:2|A-7080-R,B-3429-OUT;n:type:ShaderForge.SFN_Floor,id:170,x:32656,y:32940,varname:node_170,prsc:2|IN-713-OUT;n:type:ShaderForge.SFN_Color,id:9032,x:32634,y:32696,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:9954,x:31951,y:33266,ptovrint:False,ptlb:Thickness,ptin:_Thickness,varname:node_9954,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02416239,max:0.1;n:type:ShaderForge.SFN_Relay,id:457,x:31772,y:32858,cmnt:就是World 跟 視角 做灰階圖視角遠一點就輸出全白圖,varname:node_457,prsc:2|IN-5953-OUT;proporder:7080-9032-9954;pass:END;sub:END;*/

Shader "Move/17_Grid" {
    Properties {
        _UV_Distance ("UV_Distance", 2D) = "white" {}
        _Color ("Color", Color) = (1,0,0,1)
        _Thickness ("Thickness", Range(0, 0.1)) = 0.02416239
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _UV_Distance; uniform float4 _UV_Distance_ST;
            uniform float4 _Color;
            uniform float _Thickness;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _UV_Distance_var = tex2D(_UV_Distance,TRANSFORM_TEX(i.uv0, _UV_Distance));
                float node_5953 = distance(i.posWorld.rgb,_WorldSpaceCameraPos);
                clip(floor((_UV_Distance_var.r+(node_5953*_Thickness))) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            uniform sampler2D _UV_Distance; uniform float4 _UV_Distance_ST;
            uniform float _Thickness;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _UV_Distance_var = tex2D(_UV_Distance,TRANSFORM_TEX(i.uv0, _UV_Distance));
                float node_5953 = distance(i.posWorld.rgb,_WorldSpaceCameraPos);
                clip(floor((_UV_Distance_var.r+(node_5953*_Thickness))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
