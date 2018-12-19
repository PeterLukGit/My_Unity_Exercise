// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6943,x:33193,y:32863,varname:node_6943,prsc:2|emission-5340-OUT;n:type:ShaderForge.SFN_Tex2d,id:6796,x:32184,y:32824,ptovrint:False,ptlb:Whitecap,ptin:_Whitecap,varname:node_6796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f56d25e5d611d834590701c126a63399,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:2872,x:31639,y:32907,varname:node_2872,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3323,x:31835,y:32979,varname:node_3323,prsc:2|A-2872-T,B-2536-OUT,C-9352-OUT;n:type:ShaderForge.SFN_Slider,id:2536,x:31482,y:33044,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:node_2536,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Tau,id:9352,x:31672,y:33118,varname:node_9352,prsc:2;n:type:ShaderForge.SFN_Sin,id:5348,x:32001,y:32979,varname:node_5348,prsc:2|IN-3323-OUT;n:type:ShaderForge.SFN_RemapRange,id:1803,x:32184,y:33019,cmnt:將輸入的強度 進行設定數據,varname:node_1803,prsc:2,frmn:-1,frmx:1,tomn:0.75,tomx:1.49|IN-5348-OUT;n:type:ShaderForge.SFN_Multiply,id:9023,x:32375,y:32875,varname:node_9023,prsc:2|A-6796-RGB,B-1803-OUT;n:type:ShaderForge.SFN_Round,id:8278,x:32569,y:32875,cmnt:四捨五入,varname:node_8278,prsc:2|IN-9023-OUT;n:type:ShaderForge.SFN_Lerp,id:8677,x:32762,y:32962,cmnt:是否顯示波浪,varname:node_8677,prsc:2|A-8278-OUT,B-2800-OUT,T-6112-OUT;n:type:ShaderForge.SFN_Vector3,id:2800,x:32569,y:33001,varname:node_2800,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Slider,id:6112,x:32412,y:33139,ptovrint:False,ptlb:Whitecap_Transparency,ptin:_Whitecap_Transparency,varname:node_6112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Blend,id:5340,x:32947,y:32962,cmnt:把黑白波型與顏色混和,varname:node_5340,prsc:2,blmd:6,clmp:True|SRC-8677-OUT,DST-9135-RGB;n:type:ShaderForge.SFN_Color,id:9135,x:32762,y:33111,ptovrint:False,ptlb:OceanColor,ptin:_OceanColor,varname:node_9135,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.6,c4:1;proporder:6796-2536-6112-9135;pass:END;sub:END;*/

Shader "Move/13_Ocean" {
    Properties {
        _Whitecap ("Whitecap", 2D) = "white" {}
        _WaveSpeed ("WaveSpeed", Range(0, 1)) = 0.5
        _Whitecap_Transparency ("Whitecap_Transparency", Range(0, 1)) = 0
        _OceanColor ("OceanColor", Color) = (0,0.3,0.6,1)
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
            uniform sampler2D _Whitecap; uniform float4 _Whitecap_ST;
            uniform float _WaveSpeed;
            uniform float _Whitecap_Transparency;
            uniform float4 _OceanColor;
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
                float4 _Whitecap_var = tex2D(_Whitecap,TRANSFORM_TEX(i.uv0, _Whitecap));
                float4 node_2872 = _Time;
                float3 emissive = saturate((1.0-(1.0-lerp(round((_Whitecap_var.rgb*(sin((node_2872.g*_WaveSpeed*6.28318530718))*0.37+1.12))),float3(0,0,0),_Whitecap_Transparency))*(1.0-_OceanColor.rgb)));
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
