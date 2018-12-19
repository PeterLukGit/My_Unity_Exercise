// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33668,y:32708,varname:node_9361,prsc:2|custl-3856-OUT;n:type:ShaderForge.SFN_TexCoord,id:6537,x:31537,y:32588,varname:node_6537,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_UVTile,id:2676,x:32581,y:32958,varname:node_2676,prsc:2|UVIN-5882-OUT,WDT-2232-OUT,HGT-5333-OUT,TILE-4887-OUT;n:type:ShaderForge.SFN_Tex2d,id:7213,x:32841,y:32958,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_7213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2676-UVOUT;n:type:ShaderForge.SFN_Multiply,id:7598,x:33063,y:32958,varname:node_7598,prsc:2|A-7213-RGB,B-7213-A;n:type:ShaderForge.SFN_ComponentMask,id:2362,x:31991,y:32588,varname:node_2362,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3341-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:5097,x:32150,y:32746,cmnt:因為UV拆成塊左下為1所以要反轉讓他左上為1,varname:node_5097,prsc:2|IN-2362-G;n:type:ShaderForge.SFN_Append,id:5882,x:32336,y:32607,varname:node_5882,prsc:2|A-2362-R,B-5097-OUT;n:type:ShaderForge.SFN_Slider,id:7939,x:31219,y:32827,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_7939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:360;n:type:ShaderForge.SFN_RemapRange,id:9838,x:31573,y:32825,varname:node_9838,prsc:2,frmn:0,frmx:360,tomn:0,tomx:2|IN-7939-OUT;n:type:ShaderForge.SFN_Multiply,id:372,x:31756,y:32825,cmnt:因旋轉用PI計算所以要先乘PI,varname:node_372,prsc:2|A-9838-OUT,B-7339-OUT;n:type:ShaderForge.SFN_Pi,id:7339,x:31589,y:32996,varname:node_7339,prsc:2;n:type:ShaderForge.SFN_Rotator,id:3341,x:31791,y:32588,cmnt:UV 旋轉 旋轉以PI計算,varname:node_3341,prsc:2|UVIN-6537-UVOUT,ANG-372-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2232,x:32330,y:32958,ptovrint:False,ptlb:Width,ptin:_Width,varname:node_2232,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:7010,x:31964,y:33237,ptovrint:False,ptlb:Count,ptin:_Count,varname:node_7010,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:968,x:32055,y:33078,ptovrint:False,ptlb:High,ptin:_High,varname:node_968,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Negate,id:5333,x:32244,y:33053,cmnt:因左下為1反轉高度也要在反轉一次,varname:node_5333,prsc:2|IN-968-OUT;n:type:ShaderForge.SFN_Time,id:449,x:31899,y:33358,varname:node_449,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:960,x:32217,y:33237,ptovrint:False,ptlb:Auto,ptin:_Auto,cmnt:選項是否啟用自動,varname:node_960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7010-OUT,B-8117-OUT;n:type:ShaderForge.SFN_Slider,id:5541,x:31717,y:33521,ptovrint:False,ptlb:Auto Speed,ptin:_AutoSpeed,varname:node_5541,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:8117,x:32122,y:33384,varname:node_8117,prsc:2|A-449-T,B-5541-OUT;n:type:ShaderForge.SFN_Color,id:5713,x:33251,y:33120,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5713,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9047,x:33453,y:33120,varname:node_9047,prsc:2|A-5713-RGB,B-1191-OUT;n:type:ShaderForge.SFN_Vector1,id:1191,x:33251,y:33279,varname:node_1191,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector2,id:6766,x:32436,y:32407,varname:node_6766,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:1791,x:32669,y:32407,cmnt:遮罩避免UV旋轉時看到其他格子的圖片,varname:node_1791,prsc:2|A-6766-OUT,B-5882-OUT;n:type:ShaderForge.SFN_OneMinus,id:8020,x:32865,y:32407,varname:node_8020,prsc:2|IN-1791-OUT;n:type:ShaderForge.SFN_RemapRange,id:5434,x:33082,y:32407,cmnt:強化範圍,varname:node_5434,prsc:2,frmn:0,frmx:1,tomn:-2,tomx:2|IN-8020-OUT;n:type:ShaderForge.SFN_Clamp01,id:4814,x:33273,y:32407,cmnt:因圖片相乘所以要把數字降到0到1之間,varname:node_4814,prsc:2|IN-5434-OUT;n:type:ShaderForge.SFN_Multiply,id:8417,x:33251,y:32944,varname:node_8417,prsc:2|A-4814-OUT,B-7598-OUT;n:type:ShaderForge.SFN_Multiply,id:3856,x:33470,y:32944,varname:node_3856,prsc:2|A-8417-OUT,B-9047-OUT;n:type:ShaderForge.SFN_Trunc,id:4887,x:32404,y:33237,cmnt:取整數避免破綻,varname:node_4887,prsc:2|IN-960-OUT;n:type:ShaderForge.SFN_Relay,id:3195,x:31767,y:32996,cmnt:PI 為 90度,varname:node_3195,prsc:2|IN-7339-OUT;n:type:ShaderForge.SFN_Relay,id:1161,x:33322,y:32837,cmnt:Blending Blend Mode Additive,varname:node_1161,prsc:2|IN-3856-OUT;proporder:7213-5713-7939-2232-968-7010-960-5541;pass:END;sub:END;*/

Shader "Shader Forge/text" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Angle ("Angle", Range(0, 360)) = 0
        _Width ("Width", Float ) = 0
        _High ("High", Float ) = 0
        _Count ("Count", Float ) = 0
        [MaterialToggle] _Auto ("Auto", Float ) = 0
        _AutoSpeed ("Auto Speed", Range(0, 10)) = 1
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
            uniform float4 _TimeEditor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Angle;
            uniform float _Width;
            uniform float _Count;
            uniform float _High;
            uniform fixed _Auto;
            uniform float _AutoSpeed;
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
////// Lighting:
                float node_7339 = 3.141592654;
                float node_3341_ang = ((_Angle*0.005555556+0.0)*node_7339);
                float node_3341_spd = 1.0;
                float node_3341_cos = cos(node_3341_spd*node_3341_ang);
                float node_3341_sin = sin(node_3341_spd*node_3341_ang);
                float2 node_3341_piv = float2(0.5,0.5);
                float2 node_3341 = (mul(i.uv0-node_3341_piv,float2x2( node_3341_cos, -node_3341_sin, node_3341_sin, node_3341_cos))+node_3341_piv); // UV 旋轉 旋轉以PI計算
                float2 node_2362 = node_3341.rg;
                float2 node_5882 = float2(node_2362.r,(1.0 - node_2362.g));
                float4 node_449 = _Time + _TimeEditor;
                float node_4887 = trunc(lerp( _Count, (node_449.g*_AutoSpeed), _Auto )); // 取整數避免破綻
                float2 node_2676_tc_rcp = float2(1.0,1.0)/float2( _Width, (-1*_High) );
                float node_2676_ty = floor(node_4887 * node_2676_tc_rcp.x);
                float node_2676_tx = node_4887 - _Width * node_2676_ty;
                float2 node_2676 = (node_5882 + float2(node_2676_tx, node_2676_ty)) * node_2676_tc_rcp;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_2676, _Texture));
                float3 node_3856 = ((saturate(((1.0 - distance(float2(0.5,0.5),node_5882))*4.0+-2.0))*(_Texture_var.rgb*_Texture_var.a))*(_Color.rgb*2.0));
                float3 finalColor = node_3856;
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
