// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33217,y:33165,varname:node_2865,prsc:2|emission-7647-OUT,alpha-7045-OUT,voffset-8463-OUT;n:type:ShaderForge.SFN_TexCoord,id:2501,x:32594,y:33589,varname:node_2501,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:8463,x:32776,y:33589,varname:node_8463,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2501-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3639,x:31389,y:33265,varname:node_3639,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:4160,x:31371,y:33428,varname:node_4160,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:6691,x:31637,y:33294,varname:node_6691,prsc:2|A-3639-UVOUT,B-4160-OUT;n:type:ShaderForge.SFN_RemapRange,id:3973,x:31837,y:33294,varname:node_3973,prsc:2,frmn:0,frmx:0.5,tomn:0,tomx:0.6|IN-6691-OUT;n:type:ShaderForge.SFN_Power,id:1327,x:32066,y:33294,varname:node_1327,prsc:2|VAL-3973-OUT,EXP-8417-OUT;n:type:ShaderForge.SFN_Exp,id:8417,x:32047,y:33470,varname:node_8417,prsc:2,et:1|IN-1441-OUT;n:type:ShaderForge.SFN_Slider,id:1441,x:31718,y:33525,ptovrint:False,ptlb:Mask Range,ptin:_MaskRange,varname:node_1441,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Clamp01,id:3100,x:32275,y:33294,varname:node_3100,prsc:2|IN-1327-OUT;n:type:ShaderForge.SFN_Multiply,id:7045,x:32490,y:33294,varname:node_7045,prsc:2|A-3100-OUT,B-3486-OUT;n:type:ShaderForge.SFN_Slider,id:3486,x:32196,y:33507,ptovrint:False,ptlb:Mask Intensity,ptin:_MaskIntensity,varname:node_3486,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_TexCoord,id:4724,x:31391,y:32948,varname:node_4724,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2904,x:31629,y:32948,cmnt:螢幕中間為0,varname:node_2904,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4724-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:983,x:31835,y:32948,varname:node_983,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2904-OUT;n:type:ShaderForge.SFN_ArcTan2,id:1510,x:32049,y:32948,cmnt:將UV捲起來,varname:node_1510,prsc:2,attp:3|A-983-G,B-983-R;n:type:ShaderForge.SFN_Append,id:7725,x:32240,y:32948,varname:node_7725,prsc:2|A-1510-OUT,B-1510-OUT;n:type:ShaderForge.SFN_Rotator,id:1458,x:32497,y:32945,cmnt:多一層看起來比較好,varname:node_1458,prsc:2|UVIN-7725-OUT,SPD-9443-OUT;n:type:ShaderForge.SFN_Rotator,id:4221,x:32497,y:32790,varname:node_4221,prsc:2|UVIN-7725-OUT;n:type:ShaderForge.SFN_Slider,id:9443,x:32140,y:33158,ptovrint:False,ptlb:Texture Speed,ptin:_TextureSpeed,varname:node_9443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2dAsset,id:1806,x:32497,y:33116,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1806,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6792,x:32731,y:32790,varname:node_6792,prsc:2,ntxv:0,isnm:False|UVIN-4221-UVOUT,TEX-1806-TEX;n:type:ShaderForge.SFN_Tex2d,id:2067,x:32731,y:32945,varname:node_2067,prsc:2,ntxv:0,isnm:False|UVIN-1458-UVOUT,TEX-1806-TEX;n:type:ShaderForge.SFN_Color,id:495,x:32731,y:32622,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_495,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7647,x:33017,y:32841,varname:node_7647,prsc:2|A-6792-RGB,B-2067-RGB,C-495-RGB;n:type:ShaderForge.SFN_Relay,id:520,x:32979,y:33702,cmnt:Vertex Position 頂點偏移,varname:node_520,prsc:2|IN-8463-OUT;n:type:ShaderForge.SFN_Relay,id:3317,x:33097,y:33772,cmnt:因設定為螢幕座標所以會直接蓋在螢幕上,varname:node_3317,prsc:2|IN-520-OUT;n:type:ShaderForge.SFN_Relay,id:9415,x:33097,y:33879,cmnt:直接輸入UV是因為把UV展成平面,varname:node_9415,prsc:2|IN-520-OUT;n:type:ShaderForge.SFN_Relay,id:8980,x:33197,y:33929,cmnt:至於為何要改成-1到1 是因為螢幕中間叫0 直接放上去會只有四分之一,varname:node_8980,prsc:2|IN-9415-OUT;n:type:ShaderForge.SFN_Relay,id:9378,x:32693,y:33414,cmnt:遮罩,varname:node_9378,prsc:2|IN-7045-OUT;proporder:495-1806-1441-3486-9443;pass:END;sub:END;*/

Shader "Shader Forge/post" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Texture ("Texture", 2D) = "white" {}
        _MaskRange ("Mask Range", Range(0, 2)) = 0
        _MaskIntensity ("Mask Intensity", Range(0, 2)) = 1
        _TextureSpeed ("Texture Speed", Range(0, 5)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _MaskRange;
            uniform float _MaskIntensity;
            uniform float _TextureSpeed;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float2 node_8463 = (o.uv0*2.0+-1.0);
                v.vertex.xyz = float3(node_8463,0.0);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_2781 = _Time + _TimeEditor;
                float node_4221_ang = node_2781.g;
                float node_4221_spd = 1.0;
                float node_4221_cos = cos(node_4221_spd*node_4221_ang);
                float node_4221_sin = sin(node_4221_spd*node_4221_ang);
                float2 node_4221_piv = float2(0.5,0.5);
                float2 node_983 = (i.uv0*2.0+-1.0).rg;
                float node_1510 = (1-abs(atan2(node_983.g,node_983.r)/3.14159265359)); // 將UV捲起來
                float2 node_7725 = float2(node_1510,node_1510);
                float2 node_4221 = (mul(node_7725-node_4221_piv,float2x2( node_4221_cos, -node_4221_sin, node_4221_sin, node_4221_cos))+node_4221_piv);
                float4 node_6792 = tex2D(_Texture,TRANSFORM_TEX(node_4221, _Texture));
                float node_1458_ang = node_2781.g;
                float node_1458_spd = _TextureSpeed;
                float node_1458_cos = cos(node_1458_spd*node_1458_ang);
                float node_1458_sin = sin(node_1458_spd*node_1458_ang);
                float2 node_1458_piv = float2(0.5,0.5);
                float2 node_1458 = (mul(node_7725-node_1458_piv,float2x2( node_1458_cos, -node_1458_sin, node_1458_sin, node_1458_cos))+node_1458_piv); // 多一層看起來比較好
                float4 node_2067 = tex2D(_Texture,TRANSFORM_TEX(node_1458, _Texture));
                float3 emissive = (node_6792.rgb*node_2067.rgb*_Color.rgb);
                float3 finalColor = emissive;
                float node_7045 = (saturate(pow((distance(i.uv0,float2(0.5,0.5))*1.2+0.0),exp2(_MaskRange)))*_MaskIntensity);
                return fixed4(finalColor,node_7045);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
