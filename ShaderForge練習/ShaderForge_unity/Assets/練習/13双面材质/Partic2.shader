// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33097,y:32685,varname:node_4795,prsc:2|custl-554-OUT,alpha-2349-OUT,clip-8869-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32235,y:32930,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32495,y:32923,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A,D-29-OUT;n:type:ShaderForge.SFN_Tex2d,id:1905,x:32222,y:33194,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_1905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1026,x:32417,y:33370,ptovrint:False,ptlb:Threshhold,ptin:_Threshhold,varname:node_1026,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Desaturate,id:7193,x:32431,y:33194,varname:node_7193,prsc:2|COL-1905-RGB;n:type:ShaderForge.SFN_Multiply,id:29,x:32614,y:33194,varname:node_29,prsc:2|A-7193-OUT,B-1905-A;n:type:ShaderForge.SFN_Step,id:8869,x:32858,y:33114,varname:node_8869,prsc:2|A-1026-OUT,B-798-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:2349,x:32846,y:32905,ptovrint:False,ptlb:Smooth,ptin:_Smooth,varname:node_2349,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3804-OUT,B-798-OUT;n:type:ShaderForge.SFN_Vector1,id:3804,x:32685,y:32871,varname:node_3804,prsc:2,v1:1;n:type:ShaderForge.SFN_FaceSign,id:5326,x:32435,y:32295,cmnt:正反面,varname:node_5326,prsc:2,fstp:0;n:type:ShaderForge.SFN_OneMinus,id:6299,x:32641,y:32295,varname:node_6299,prsc:2|IN-5326-VFACE;n:type:ShaderForge.SFN_Vector1,id:2308,x:32598,y:32451,varname:node_2308,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5915,x:32598,y:32512,varname:node_5915,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:8936,x:32454,y:32591,ptovrint:False,ptlb:BackFace,ptin:_BackFace,varname:node_8936,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7283,x:32888,y:32381,cmnt:修正輸出數值 input min max output min max 用slider 控制 output 最低來控制亮度,varname:node_7283,prsc:2|IN-6299-OUT,IMIN-2308-OUT,IMAX-5915-OUT,OMIN-8936-OUT,OMAX-5915-OUT;n:type:ShaderForge.SFN_Multiply,id:554,x:32846,y:32740,varname:node_554,prsc:2|A-7283-OUT,B-2393-OUT;proporder:6074-797-1905-1026-2349-8936;pass:END;sub:END;*/

Shader "Shader Forge/Partic2" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0.5,0.5,0.5,1)
        _Mask ("Mask", 2D) = "white" {}
        _Threshhold ("Threshhold", Range(0, 1)) = 0.2
        [MaterialToggle] _Smooth ("Smooth", Float ) = 0
        _BackFace ("BackFace", Range(0, 1)) = 0
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
            Cull Off
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Threshhold;
            uniform fixed _Smooth;
            uniform float _BackFace;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_798 = (_MainTex_var.a*i.vertexColor.a*_TintColor.a*(dot(_Mask_var.rgb,float3(0.3,0.59,0.11))*_Mask_var.a));
                clip(step(_Threshhold,node_798) - 0.5);
////// Lighting:
                float node_2308 = 0.0;
                float node_5915 = 1.0;
                float3 finalColor = ((_BackFace + ( ((1.0 - isFrontFace) - node_2308) * (node_5915 - _BackFace) ) / (node_5915 - node_2308))*(_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0));
                fixed4 finalRGBA = fixed4(finalColor,lerp( 1.0, node_798, _Smooth ));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
