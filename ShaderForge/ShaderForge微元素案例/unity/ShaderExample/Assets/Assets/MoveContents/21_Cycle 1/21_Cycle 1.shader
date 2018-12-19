// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6113,x:33925,y:32650,varname:node_6113,prsc:2|custl-5327-OUT;n:type:ShaderForge.SFN_TexCoord,id:9033,x:31778,y:32782,varname:node_9033,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Distance,id:652,x:32368,y:32777,varname:node_652,prsc:2|A-9033-UVOUT,B-8880-OUT;n:type:ShaderForge.SFN_Vector1,id:8880,x:32160,y:32912,varname:node_8880,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4597,x:32549,y:32777,varname:node_4597,prsc:2|A-652-OUT,B-6335-OUT;n:type:ShaderForge.SFN_Vector1,id:6335,x:32368,y:32912,varname:node_6335,prsc:2,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:6552,x:32549,y:32924,ptovrint:False,ptlb:CircleSize,ptin:_CircleSize,varname:node_6552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Divide,id:6066,x:32759,y:32778,varname:node_6066,prsc:2|A-4597-OUT,B-6552-OUT;n:type:ShaderForge.SFN_Clamp01,id:7987,x:32937,y:32778,varname:node_7987,prsc:2|IN-6066-OUT;n:type:ShaderForge.SFN_Floor,id:1355,x:33115,y:32778,varname:node_1355,prsc:2|IN-7987-OUT;n:type:ShaderForge.SFN_OneMinus,id:6154,x:33283,y:32778,varname:node_6154,prsc:2|IN-1355-OUT;n:type:ShaderForge.SFN_Multiply,id:5327,x:33585,y:32863,varname:node_5327,prsc:2|A-6154-OUT,B-3674-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1555,x:31778,y:33042,ptovrint:False,ptlb:RotateAng,ptin:_RotateAng,varname:node_1555,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Rotator,id:1227,x:31985,y:33008,varname:node_1227,prsc:2|UVIN-9033-UVOUT,ANG-1555-OUT;n:type:ShaderForge.SFN_Add,id:3214,x:32167,y:33008,varname:node_3214,prsc:2|A-1227-UVOUT,B-6677-OUT;n:type:ShaderForge.SFN_Vector1,id:6677,x:31976,y:33147,varname:node_6677,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_ComponentMask,id:2180,x:32377,y:33008,varname:node_2180,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3214-OUT;n:type:ShaderForge.SFN_ArcTan2,id:5276,x:32555,y:33026,varname:node_5276,prsc:2,attp:0|A-2180-R,B-2180-G;n:type:ShaderForge.SFN_Abs,id:892,x:32733,y:33026,varname:node_892,prsc:2|IN-5276-OUT;n:type:ShaderForge.SFN_Divide,id:128,x:32915,y:33026,varname:node_128,prsc:2|A-892-OUT,B-9516-OUT;n:type:ShaderForge.SFN_Divide,id:2517,x:33113,y:33026,varname:node_2517,prsc:2|A-128-OUT,B-839-OUT;n:type:ShaderForge.SFN_Pi,id:839,x:32948,y:33154,varname:node_839,prsc:2;n:type:ShaderForge.SFN_Floor,id:3674,x:33283,y:33014,varname:node_3674,prsc:2|IN-2517-OUT;n:type:ShaderForge.SFN_Slider,id:9516,x:32576,y:33197,ptovrint:False,ptlb:pieSize,ptin:_pieSize,varname:node_9516,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Relay,id:2860,x:33520,y:33096,cmnt:計算夾角,varname:node_2860,prsc:2|IN-3674-OUT;n:type:ShaderForge.SFN_Relay,id:5144,x:33521,y:32723,cmnt:計算遮罩圓,varname:node_5144,prsc:2|IN-6154-OUT;proporder:6552-1555-9516;pass:END;sub:END;*/

Shader "Move/21_Cycle 1" {
    Properties {
        _CircleSize ("CircleSize", Float ) = 1
        _RotateAng ("RotateAng", Float ) = 0
        _pieSize ("pieSize", Range(0, 1)) = 0.5
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
            uniform float _CircleSize;
            uniform float _RotateAng;
            uniform float _pieSize;
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
                float node_6154 = (1.0 - floor(saturate(((distance(i.uv0,0.5)*2.0)/_CircleSize))));
                float node_1227_ang = _RotateAng;
                float node_1227_spd = 1.0;
                float node_1227_cos = cos(node_1227_spd*node_1227_ang);
                float node_1227_sin = sin(node_1227_spd*node_1227_ang);
                float2 node_1227_piv = float2(0.5,0.5);
                float2 node_1227 = (mul(i.uv0-node_1227_piv,float2x2( node_1227_cos, -node_1227_sin, node_1227_sin, node_1227_cos))+node_1227_piv);
                float2 node_2180 = (node_1227+(-0.5)).rg;
                float node_3674 = floor(((abs(atan2(node_2180.r,node_2180.g))/_pieSize)/3.141592654));
                float node_5327 = (node_6154*node_3674);
                float3 finalColor = float3(node_5327,node_5327,node_5327);
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
