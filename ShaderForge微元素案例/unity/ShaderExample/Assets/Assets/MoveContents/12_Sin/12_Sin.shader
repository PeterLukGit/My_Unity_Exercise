// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4876,x:33264,y:32473,varname:node_4876,prsc:2|emission-9762-OUT;n:type:ShaderForge.SFN_TexCoord,id:4445,x:32005,y:32775,varname:node_4445,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7407,x:32245,y:32647,varname:node_7407,prsc:2|A-617-OUT,B-4445-U;n:type:ShaderForge.SFN_RemapRange,id:2884,x:32245,y:32845,varname:node_2884,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4445-V;n:type:ShaderForge.SFN_Multiply,id:219,x:32638,y:32795,varname:node_219,prsc:2|A-2884-OUT,B-5122-OUT;n:type:ShaderForge.SFN_Sin,id:1801,x:32638,y:32625,cmnt:吃弧度制  0到3.14 就是 0到PI,varname:node_1801,prsc:2|IN-314-OUT;n:type:ShaderForge.SFN_Add,id:314,x:32465,y:32625,varname:node_314,prsc:2|A-5586-OUT,B-7407-OUT;n:type:ShaderForge.SFN_ValueProperty,id:617,x:32039,y:32647,ptovrint:False,ptlb:Cycle,ptin:_Cycle,varname:node_617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Add,id:9762,x:32837,y:32777,varname:node_9762,prsc:2|A-1801-OUT,B-219-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5122,x:32245,y:33037,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_5122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Time,id:67,x:32255,y:32423,varname:node_67,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1306,x:32255,y:32575,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1306,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:5586,x:32465,y:32423,cmnt:時間乘上速度,varname:node_5586,prsc:2|A-67-T,B-1306-OUT;n:type:ShaderForge.SFN_TexCoord,id:7280,x:31981,y:33478,varname:node_7280,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2290,x:32221,y:33350,varname:node_2290,prsc:2|A-6323-OUT,B-7280-U;n:type:ShaderForge.SFN_RemapRange,id:3239,x:32221,y:33548,varname:node_3239,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7280-V;n:type:ShaderForge.SFN_Multiply,id:8206,x:32614,y:33501,varname:node_8206,prsc:2|A-3239-OUT,B-2225-OUT;n:type:ShaderForge.SFN_Sin,id:2620,x:32614,y:33328,cmnt:吃弧度制,varname:node_2620,prsc:2|IN-2290-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6323,x:32015,y:33350,ptovrint:False,ptlb:Cycle_copy,ptin:_Cycle_copy,varname:_Cycle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Add,id:3480,x:33049,y:33483,varname:node_3480,prsc:2|A-3993-OUT,B-8206-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2225,x:32221,y:33740,ptovrint:False,ptlb:Amplitude_copy,ptin:_Amplitude_copy,varname:_Amplitude_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Sin,id:3278,x:32340,y:33856,varname:node_3278,prsc:2|IN-5465-OUT;n:type:ShaderForge.SFN_Multiply,id:5465,x:32165,y:33856,varname:node_5465,prsc:2|A-7280-U,B-7233-OUT;n:type:ShaderForge.SFN_Slider,id:7233,x:31824,y:33914,ptovrint:False,ptlb:node_7233,ptin:_node_7233,varname:node_7233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Slider,id:7930,x:31855,y:34091,ptovrint:False,ptlb:node_7930,ptin:_node_7930,varname:node_7930,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.141593,max:10;n:type:ShaderForge.SFN_Sin,id:3785,x:32223,y:34029,varname:node_3785,prsc:2|IN-7930-OUT;n:type:ShaderForge.SFN_Multiply,id:3993,x:32830,y:33291,varname:node_3993,prsc:2|A-1168-OUT,B-2620-OUT;n:type:ShaderForge.SFN_Slider,id:1168,x:32482,y:33226,ptovrint:False,ptlb:node_1168,ptin:_node_1168,varname:node_1168,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3.090378,max:5;n:type:ShaderForge.SFN_Relay,id:3176,x:33023,y:32884,cmnt:先將UV拆解 ,varname:node_3176,prsc:2|IN-9762-OUT;n:type:ShaderForge.SFN_Relay,id:1965,x:33190,y:32972,cmnt:U 為縱向 ,varname:node_1965,prsc:2|IN-3176-OUT;n:type:ShaderForge.SFN_Relay,id:1587,x:33359,y:33025,cmnt:一開始乘上數字 為週期 加上Time 就能移動 在這邊能再乘上一個數字就能控制振福 但在這邊案例 震幅是由V控制,varname:node_1587,prsc:2|IN-1965-OUT;n:type:ShaderForge.SFN_Relay,id:492,x:33190,y:33152,cmnt:V 為橫向,varname:node_492,prsc:2|IN-3176-OUT;n:type:ShaderForge.SFN_Relay,id:4920,x:33359,y:33164,cmnt:先歸一化 乘上數字為振福,varname:node_4920,prsc:2|IN-492-OUT;n:type:ShaderForge.SFN_Relay,id:3871,x:33190,y:33300,cmnt:這邊是先用 V 弄出基本一條線 例震幅4 就是 0到4 中間就是2,varname:node_3871,prsc:2|IN-3176-OUT;n:type:ShaderForge.SFN_Relay,id:1793,x:33359,y:33360,cmnt:U乘上Sin後會變成-1到1數字 所以相加後或變成 1到3的震幅,varname:node_1793,prsc:2|IN-3871-OUT;n:type:ShaderForge.SFN_Relay,id:5684,x:33585,y:33445,cmnt:按常理 振福應該在U裡計算但這邊放在V裡計算 一部分原因是為了讓篇幅大一點 避免縱向震幅5 解果V只有3就超出,varname:node_5684,prsc:2|IN-1793-OUT;proporder:617-5122-1306;pass:END;sub:END;*/

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
