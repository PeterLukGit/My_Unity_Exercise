// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4876,x:33144,y:32683,varname:node_4876,prsc:2|emission-9762-OUT;n:type:ShaderForge.SFN_TexCoord,id:4445,x:32005,y:32775,varname:node_4445,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7407,x:32245,y:32647,varname:node_7407,prsc:2|A-617-OUT,B-4445-U;n:type:ShaderForge.SFN_RemapRange,id:2884,x:32245,y:32845,varname:node_2884,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4445-V;n:type:ShaderForge.SFN_Multiply,id:219,x:32638,y:32798,varname:node_219,prsc:2|A-2884-OUT,B-5122-OUT;n:type:ShaderForge.SFN_Sin,id:1801,x:32638,y:32625,varname:node_1801,prsc:2|IN-314-OUT;n:type:ShaderForge.SFN_Add,id:314,x:32465,y:32625,varname:node_314,prsc:2|A-5586-OUT,B-7407-OUT;n:type:ShaderForge.SFN_ValueProperty,id:617,x:32039,y:32647,ptovrint:False,ptlb:Cycle,ptin:_Cycle,varname:node_617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Add,id:9762,x:32837,y:32777,varname:node_9762,prsc:2|A-1801-OUT,B-219-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5122,x:32245,y:33037,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_5122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Time,id:67,x:32245,y:32423,varname:node_67,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1306,x:32245,y:32575,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1306,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5586,x:32465,y:32423,varname:node_5586,prsc:2|A-67-T,B-1306-OUT;proporder:617-5122-1306;pass:END;sub:END;*/

Shader "Unlit/12_Sin" {
    Properties {
        _Cycle ("Cycle", Float ) = 8
        _Amplitude ("Amplitude", Float ) = 4
        _Speed ("Speed", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            uniform float _Cycle;
            uniform float _Amplitude;
            uniform float _Speed;
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
////// Lighting:
////// Emissive:
                float4 node_67 = _Time;
                float node_9762 = (sin(((node_67.g*_Speed)+(_Cycle*i.uv0.r)))+((i.uv0.g*2.0+-1.0)*_Amplitude));
                float3 emissive = float3(node_9762,node_9762,node_9762);
                float3 finalColor = emissive;
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
