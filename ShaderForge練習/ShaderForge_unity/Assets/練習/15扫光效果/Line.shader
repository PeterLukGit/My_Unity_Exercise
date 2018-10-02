// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33947,y:32776,varname:node_9361,prsc:2|custl-5976-OUT,alpha-7078-A;n:type:ShaderForge.SFN_Sin,id:8551,x:32369,y:32700,cmnt:3.14 為 0   1.57 為 1,varname:node_8551,prsc:2|IN-4899-OUT;n:type:ShaderForge.SFN_TexCoord,id:9340,x:31516,y:32689,varname:node_9340,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9956,x:32012,y:32699,varname:node_9956,prsc:2,frmn:0,frmx:1,tomn:0,tomx:3.14|IN-2431-OUT;n:type:ShaderForge.SFN_Lerp,id:2431,x:31806,y:32699,varname:node_2431,prsc:2|A-9340-U,B-9340-V,T-592-OUT;n:type:ShaderForge.SFN_Slider,id:6489,x:31256,y:32856,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_6489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:58.83829,max:90;n:type:ShaderForge.SFN_RemapRange,id:592,x:31640,y:32851,varname:node_592,prsc:2,frmn:0,frmx:90,tomn:0,tomx:1|IN-6489-OUT;n:type:ShaderForge.SFN_Add,id:4899,x:32189,y:32699,varname:node_4899,prsc:2|A-9956-OUT,B-4283-OUT;n:type:ShaderForge.SFN_Slider,id:4283,x:31908,y:32904,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_4283,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-3.14,cur:0,max:3.14;n:type:ShaderForge.SFN_Power,id:1664,x:32674,y:32806,varname:node_1664,prsc:2|VAL-8551-OUT,EXP-6831-OUT;n:type:ShaderForge.SFN_Exp,id:6831,x:32524,y:32950,varname:node_6831,prsc:2,et:0|IN-3140-OUT;n:type:ShaderForge.SFN_RemapRange,id:3140,x:32333,y:32950,varname:node_3140,prsc:2,frmn:0.1,frmx:1,tomn:10,tomx:1|IN-4017-OUT;n:type:ShaderForge.SFN_Slider,id:4017,x:32009,y:33036,ptovrint:False,ptlb:Width,ptin:_Width,varname:node_4017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:1;n:type:ShaderForge.SFN_Clamp,id:7381,x:33033,y:32997,varname:node_7381,prsc:2|IN-1664-OUT,MIN-9877-OUT,MAX-9788-OUT;n:type:ShaderForge.SFN_Vector1,id:9877,x:32791,y:33016,varname:node_9877,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector1,id:9788,x:32791,y:33070,varname:node_9788,prsc:2,v1:1;n:type:ShaderForge.SFN_Color,id:2065,x:33033,y:33169,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2065,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:5076,x:33033,y:33324,varname:node_5076,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:4353,x:33344,y:32980,varname:node_4353,prsc:2|A-2065-RGB,B-7381-OUT,C-5076-OUT;n:type:ShaderForge.SFN_Tex2d,id:7078,x:33369,y:33208,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_7078,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5976,x:33655,y:32960,varname:node_5976,prsc:2|A-7078-RGB,B-4353-OUT;n:type:ShaderForge.SFN_Relay,id:4802,x:33052,y:32584,cmnt:重點全在這些節點,varname:node_4802,prsc:2|IN-7381-OUT;n:type:ShaderForge.SFN_Relay,id:4221,x:33269,y:32442,cmnt:1 UV 透過SIN方式算出兩邊黑中間亮模式,varname:node_4221,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_Relay,id:6661,x:33269,y:32532,cmnt:2 透過 UV 之間 Lerp 方式 轉向,varname:node_6661,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_Relay,id:1213,x:33269,y:32625,cmnt:3 透過加上正負PI 來達到偏移 因為 PI 在SIN 裡視為0,varname:node_1213,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_Relay,id:5636,x:33269,y:32714,cmnt:4 透過次方 來達到 粗細控制,varname:node_5636,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_Relay,id:2730,x:33269,y:32820,cmnt:5 最後把輸出控制在 0 到 1 之間 在相乘顏色 疊加到圖片上,varname:node_2730,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_Relay,id:1012,x:33269,y:32899,cmnt:6 圖片要記的開Alpha,varname:node_1012,prsc:2|IN-4802-OUT;n:type:ShaderForge.SFN_TexCoord,id:1112,x:31333,y:32286,varname:node_1112,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:3119,x:31623,y:32296,varname:node_3119,prsc:2|A-1112-U,B-1112-V,T-567-OUT;n:type:ShaderForge.SFN_RemapRange,id:567,x:31457,y:32448,varname:node_567,prsc:2,frmn:0,frmx:90,tomn:0,tomx:1|IN-6159-OUT;n:type:ShaderForge.SFN_Slider,id:6703,x:32200,y:32496,ptovrint:False,ptlb:Offset_copy,ptin:_Offset_copy,varname:_Offset_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:11.68984,max:20;n:type:ShaderForge.SFN_Slider,id:6159,x:31088,y:32533,ptovrint:False,ptlb:Angle_copy,ptin:_Angle_copy,varname:_Angle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:43.51384,max:90;n:type:ShaderForge.SFN_OneMinus,id:8173,x:31897,y:32151,varname:node_8173,prsc:2|IN-6293-OUT;n:type:ShaderForge.SFN_RemapRange,id:9716,x:32081,y:32311,varname:node_9716,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-6293-OUT;n:type:ShaderForge.SFN_RemapRange,id:8810,x:32081,y:32151,varname:node_8810,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-8173-OUT;n:type:ShaderForge.SFN_Multiply,id:9334,x:32329,y:32254,varname:node_9334,prsc:2|A-8810-OUT,B-9716-OUT;n:type:ShaderForge.SFN_Power,id:967,x:32539,y:32293,varname:node_967,prsc:2|VAL-9334-OUT,EXP-6703-OUT;n:type:ShaderForge.SFN_Add,id:6293,x:31852,y:32395,varname:node_6293,prsc:2|A-3119-OUT,B-7977-OUT;n:type:ShaderForge.SFN_Slider,id:7977,x:31597,y:32548,ptovrint:False,ptlb:node_7977,ptin:_node_7977,varname:node_7977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;proporder:7078-2065-4283-4017-6489;pass:END;sub:END;*/

Shader "Shader Forge/Line" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Offset ("Offset", Range(-3.14, 3.14)) = 0
        _Width ("Width", Range(0.1, 1)) = 1
        _Angle ("Angle", Range(0, 90)) = 58.83829
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            uniform float _Angle;
            uniform float _Offset;
            uniform float _Width;
            uniform float4 _Color;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
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
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float node_7381 = clamp(pow(sin(((lerp(i.uv0.r,i.uv0.g,(_Angle*0.01111111+0.0))*3.14+0.0)+_Offset)),exp((_Width*-10.0+11.0))),0.01,1.0);
                float3 finalColor = (_Texture_var.rgb+(_Color.rgb*node_7381*2.0));
                fixed4 finalRGBA = fixed4(finalColor,_Texture_var.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
