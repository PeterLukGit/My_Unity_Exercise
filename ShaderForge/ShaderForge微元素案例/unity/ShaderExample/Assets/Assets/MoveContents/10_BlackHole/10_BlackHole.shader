// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:686,x:33135,y:32957,varname:node_686,prsc:2|custl-4323-OUT;n:type:ShaderForge.SFN_TexCoord,id:3064,x:31375,y:32948,varname:node_3064,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9005,x:31555,y:32948,varname:node_9005,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3064-UVOUT;n:type:ShaderForge.SFN_Abs,id:9658,x:31727,y:32948,varname:node_9658,prsc:2|IN-9005-OUT;n:type:ShaderForge.SFN_Length,id:8810,x:31887,y:32948,cmnt:將輸入數據轉成長度,varname:node_8810,prsc:2|IN-9658-OUT;n:type:ShaderForge.SFN_OneMinus,id:8695,x:32053,y:32948,varname:node_8695,prsc:2|IN-8810-OUT;n:type:ShaderForge.SFN_Clamp01,id:9834,x:32224,y:32948,varname:node_9834,prsc:2|IN-8695-OUT;n:type:ShaderForge.SFN_Slider,id:776,x:31685,y:33173,ptovrint:False,ptlb:Twirl,ptin:_Twirl,varname:node_776,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-8,cur:8,max:8;n:type:ShaderForge.SFN_Set,id:616,x:32395,y:32961,cmnt:弄出UV圓形,varname:CircularValue,prsc:2|IN-9834-OUT;n:type:ShaderForge.SFN_Get,id:4056,x:31821,y:33244,varname:node_4056,prsc:2|IN-616-OUT;n:type:ShaderForge.SFN_Multiply,id:1020,x:32047,y:33205,varname:node_1020,prsc:2|A-776-OUT,B-4056-OUT;n:type:ShaderForge.SFN_Time,id:641,x:31435,y:33310,varname:node_641,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5818,x:31656,y:33335,varname:node_5818,prsc:2|A-641-T,B-256-OUT;n:type:ShaderForge.SFN_Slider,id:256,x:31278,y:33447,ptovrint:False,ptlb:SpinSpeed,ptin:_SpinSpeed,varname:node_256,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.5,cur:0.5,max:0.5;n:type:ShaderForge.SFN_Frac,id:2799,x:31847,y:33335,cmnt:取小數,varname:node_2799,prsc:2|IN-5818-OUT;n:type:ShaderForge.SFN_Tau,id:5993,x:31847,y:33474,cmnt:半徑與圓周比 PI 的 2倍,varname:node_5993,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8220,x:32047,y:33335,varname:node_8220,prsc:2|A-2799-OUT,B-5993-OUT;n:type:ShaderForge.SFN_Add,id:5435,x:32231,y:33205,varname:node_5435,prsc:2|A-1020-OUT,B-8220-OUT;n:type:ShaderForge.SFN_Set,id:2076,x:32395,y:33205,varname:Angle,prsc:2|IN-5435-OUT;n:type:ShaderForge.SFN_Rotator,id:2636,x:30605,y:33655,varname:node_2636,prsc:2|UVIN-8317-UVOUT,ANG-6586-OUT;n:type:ShaderForge.SFN_TexCoord,id:8317,x:30348,y:33657,varname:node_8317,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Get,id:6586,x:30327,y:33809,varname:node_6586,prsc:2|IN-2076-OUT;n:type:ShaderForge.SFN_RemapRange,id:4115,x:30773,y:33655,varname:node_4115,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2636-UVOUT;n:type:ShaderForge.SFN_Abs,id:4948,x:30956,y:33655,varname:node_4948,prsc:2|IN-4115-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7222,x:31152,y:33655,varname:node_7222,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4948-OUT;n:type:ShaderForge.SFN_ArcTan2,id:1175,x:31337,y:33655,cmnt:以弧度輸出 輸入的 Tan 範圍在 -PI  PI,varname:node_1175,prsc:2,attp:0|A-7222-G,B-7222-R;n:type:ShaderForge.SFN_Slider,id:4594,x:31180,y:33874,ptovrint:False,ptlb:NumSpokesX2,ptin:_NumSpokesX2,cmnt:數字乘上去 控管線條粗細,varname:node_4594,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:6;n:type:ShaderForge.SFN_Multiply,id:8876,x:31532,y:33655,varname:node_8876,prsc:2|A-1175-OUT,B-4594-OUT;n:type:ShaderForge.SFN_Frac,id:5584,x:31724,y:33655,cmnt:取小數,varname:node_5584,prsc:2|IN-8876-OUT;n:type:ShaderForge.SFN_Clamp01,id:9019,x:31897,y:33655,varname:node_9019,prsc:2|IN-5584-OUT;n:type:ShaderForge.SFN_RemapRange,id:3512,x:32069,y:33655,varname:node_3512,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9019-OUT;n:type:ShaderForge.SFN_Abs,id:9588,x:32244,y:33655,varname:node_9588,prsc:2|IN-3512-OUT;n:type:ShaderForge.SFN_Set,id:9044,x:32405,y:33655,cmnt:螺旋形狀黑白圖,varname:Phantoscope,prsc:2|IN-9588-OUT;n:type:ShaderForge.SFN_Get,id:1410,x:31700,y:33885,varname:node_1410,prsc:2|IN-9044-OUT;n:type:ShaderForge.SFN_Get,id:1122,x:31700,y:33963,varname:node_1122,prsc:2|IN-616-OUT;n:type:ShaderForge.SFN_Multiply,id:6362,x:31896,y:33885,varname:node_6362,prsc:2|A-1410-OUT,B-1122-OUT;n:type:ShaderForge.SFN_Add,id:5757,x:32072,y:33885,varname:node_5757,prsc:2|A-6362-OUT,B-7896-OUT;n:type:ShaderForge.SFN_Power,id:7896,x:31896,y:34000,varname:node_7896,prsc:2|VAL-1122-OUT,EXP-8574-OUT;n:type:ShaderForge.SFN_Slider,id:8574,x:31564,y:34069,ptovrint:False,ptlb:CenterPower,ptin:_CenterPower,varname:node_8574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:3,max:3;n:type:ShaderForge.SFN_Clamp01,id:3497,x:32244,y:33885,varname:node_3497,prsc:2|IN-5757-OUT;n:type:ShaderForge.SFN_Set,id:2056,x:32405,y:33885,varname:CircularPhantoscope,prsc:2|IN-3497-OUT;n:type:ShaderForge.SFN_Get,id:5472,x:31146,y:34430,varname:node_5472,prsc:2|IN-2056-OUT;n:type:ShaderForge.SFN_Multiply,id:4522,x:31342,y:34430,varname:node_4522,prsc:2|A-5472-OUT,B-7891-OUT;n:type:ShaderForge.SFN_Slider,id:7891,x:31010,y:34500,ptovrint:False,ptlb:RefractStrength,ptin:_RefractStrength,varname:node_7891,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:3950,x:31530,y:34430,varname:node_3950,prsc:2|A-4522-OUT,B-4522-OUT;n:type:ShaderForge.SFN_Rotator,id:4721,x:31703,y:34292,varname:node_4721,prsc:2|UVIN-3967-UVOUT,ANG-3950-OUT;n:type:ShaderForge.SFN_ScreenPos,id:3967,x:31530,y:34292,varname:node_3967,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:6238,x:31871,y:34292,varname:node_6238,prsc:2|UVIN-4721-UVOUT;n:type:ShaderForge.SFN_Clamp01,id:6865,x:32052,y:34292,varname:node_6865,prsc:2|IN-6238-RGB;n:type:ShaderForge.SFN_Lerp,id:2758,x:32247,y:34292,varname:node_2758,prsc:2|A-6865-OUT,B-770-RGB,T-4177-OUT;n:type:ShaderForge.SFN_Get,id:4177,x:32023,y:34593,varname:node_4177,prsc:2|IN-2056-OUT;n:type:ShaderForge.SFN_Color,id:770,x:32044,y:34433,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_770,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Set,id:1923,x:32417,y:34292,varname:CustomLighting,prsc:2|IN-2758-OUT;n:type:ShaderForge.SFN_Get,id:4323,x:32902,y:33198,varname:node_4323,prsc:2|IN-1923-OUT;n:type:ShaderForge.SFN_Relay,id:9826,x:32231,y:33115,cmnt:這是用於 UV紋路旋轉 中間看似白的 實際上是從 中心數值往外遞減 而下一步旋轉就是 依據每點數值不同旋轉偏移,varname:node_9826,prsc:2|IN-1020-OUT;n:type:ShaderForge.SFN_Relay,id:1868,x:32275,y:33423,cmnt:旋轉速度,varname:node_1868,prsc:2|IN-8220-OUT;n:type:ShaderForge.SFN_Relay,id:2997,x:31317,y:33567,cmnt:經過這個主要是要把UV座標弄成黑白圖 以便後面演算,varname:node_2997,prsc:2|IN-1175-OUT;n:type:ShaderForge.SFN_Relay,id:7587,x:32434,y:34012,cmnt:分兩部分,varname:node_7587,prsc:2|IN-3497-OUT;n:type:ShaderForge.SFN_Relay,id:6135,x:32561,y:34012,cmnt:1.螺旋範圍,varname:node_6135,prsc:2|IN-7587-OUT;n:type:ShaderForge.SFN_Relay,id:6454,x:32561,y:34085,cmnt:2.中心點大小,varname:node_6454,prsc:2|IN-7587-OUT;n:type:ShaderForge.SFN_Relay,id:451,x:32705,y:34012,cmnt:用螺旋 乘以 圓圈範圍,varname:node_451,prsc:2|IN-6135-OUT;n:type:ShaderForge.SFN_Relay,id:7521,x:32705,y:34085,cmnt:圓圈範圍 開 幾次方,varname:node_7521,prsc:2|IN-6454-OUT;n:type:ShaderForge.SFN_Relay,id:8859,x:32581,y:34215,cmnt:相家 輸出,varname:node_8859,prsc:2|IN-7587-OUT;n:type:ShaderForge.SFN_Relay,id:8504,x:32360,y:34535,cmnt:主要 Lerp 輸出,varname:node_8504,prsc:2|IN-2758-OUT;n:type:ShaderForge.SFN_Relay,id:8081,x:32485,y:34819,cmnt:T,varname:node_8081,prsc:2|IN-8504-OUT;n:type:ShaderForge.SFN_Relay,id:2345,x:32502,y:34605,cmnt:螢幕扭曲,varname:node_2345,prsc:2|IN-8504-OUT;n:type:ShaderForge.SFN_Relay,id:910,x:32613,y:34669,cmnt:螢幕UV 配上 螺旋扭曲 然後UV訊息由螢幕顏色讀入 ,varname:node_910,prsc:2|IN-2345-OUT;n:type:ShaderForge.SFN_Relay,id:9069,x:32635,y:34819,cmnt:利用螺旋資訊讀入 來選Lerp範圍 顏色輸出,varname:node_9069,prsc:2|IN-8081-OUT;proporder:776-256-4594-8574-7891-770;pass:END;sub:END;*/

Shader "Move/10_BlackHole" {
    Properties {
        _Twirl ("Twirl", Range(-8, 8)) = 8
        _SpinSpeed ("SpinSpeed", Range(-0.5, 0.5)) = 0.5
        _NumSpokesX2 ("NumSpokesX2", Range(1, 6)) = 1
        _CenterPower ("CenterPower", Range(0.5, 3)) = 3
        _RefractStrength ("RefractStrength", Range(0.01, 1)) = 1
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
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
            uniform sampler2D _GrabTexture;
            uniform float _Twirl;
            uniform float _SpinSpeed;
            uniform float _NumSpokesX2;
            uniform float _CenterPower;
            uniform float _RefractStrength;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float CircularValue = saturate((1.0 - length(abs((i.uv0*2.0+-1.0))))); // 弄出UV圓形
                float node_1020 = (_Twirl*CircularValue);
                float4 node_641 = _Time;
                float node_8220 = (frac((node_641.g*_SpinSpeed))*6.28318530718);
                float Angle = (node_1020+node_8220);
                float node_2636_ang = Angle;
                float node_2636_spd = 1.0;
                float node_2636_cos = cos(node_2636_spd*node_2636_ang);
                float node_2636_sin = sin(node_2636_spd*node_2636_ang);
                float2 node_2636_piv = float2(0.5,0.5);
                float2 node_2636 = (mul(i.uv0-node_2636_piv,float2x2( node_2636_cos, -node_2636_sin, node_2636_sin, node_2636_cos))+node_2636_piv);
                float2 node_7222 = abs((node_2636*2.0+-1.0)).rg;
                float node_1175 = atan2(node_7222.g,node_7222.r); // 以弧度輸出 輸入的 Tan 範圍在 -PI  PI
                float Phantoscope = abs((saturate(frac((node_1175*_NumSpokesX2)))*2.0+-1.0)); // 螺旋形狀黑白圖
                float node_1122 = CircularValue;
                float node_3497 = saturate(((Phantoscope*node_1122)+pow(node_1122,_CenterPower)));
                float CircularPhantoscope = node_3497;
                float node_4522 = (CircularPhantoscope*_RefractStrength);
                float node_4721_ang = (node_4522*node_4522);
                float node_4721_spd = 1.0;
                float node_4721_cos = cos(node_4721_spd*node_4721_ang);
                float node_4721_sin = sin(node_4721_spd*node_4721_ang);
                float2 node_4721_piv = float2(0.5,0.5);
                float2 node_4721 = (mul(sceneUVs.rg-node_4721_piv,float2x2( node_4721_cos, -node_4721_sin, node_4721_sin, node_4721_cos))+node_4721_piv);
                float3 node_2758 = lerp(saturate(tex2D( _GrabTexture, node_4721).rgb),_Color.rgb,CircularPhantoscope);
                float3 CustomLighting = node_2758;
                float3 finalColor = CustomLighting;
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
