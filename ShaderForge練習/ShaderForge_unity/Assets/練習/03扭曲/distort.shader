// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33300,y:32685,varname:node_9361,prsc:2|alpha-8152-OUT,refract-1326-OUT;n:type:ShaderForge.SFN_Tex2d,id:1768,x:32591,y:32759,ptovrint:False,ptlb:Texture,ptin:_Texture,cmnt:圖片要注意有幾個通道,varname:node_1768,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:471bc0de8ae32314db5a1c44aa640555,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:8651,x:32891,y:32816,varname:node_8651,prsc:2|A-1768-R,B-1768-G;n:type:ShaderForge.SFN_Multiply,id:1326,x:33067,y:33011,varname:node_1326,prsc:2|A-8651-OUT,B-1768-A,C-3005-OUT,D-6663-A;n:type:ShaderForge.SFN_Slider,id:3005,x:32647,y:33094,ptovrint:False,ptlb:Intensity,ptin:_Intensity,cmnt:調整反射範圍透過數字相乘減少反射數值,varname:node_3005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_VertexColor,id:6663,x:32878,y:33217,cmnt:監測外部Alpha值 用於粒子系統  當Alpha下降時就會減少反射,varname:node_6663,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8152,x:33041,y:32629,cmnt:啟用反射 必須把透明調為0,varname:node_8152,prsc:2,v1:0;n:type:ShaderForge.SFN_Relay,id:8725,x:32902,y:32747,cmnt:因 Refraction反射 為二維向量所以要疊加,varname:node_8725,prsc:2|IN-8651-OUT;n:type:ShaderForge.SFN_Relay,id:3738,x:32728,y:32974,cmnt:將Alpha獨立在乘進去是避免沒有RGB通道只有A通道,varname:node_3738,prsc:2|IN-1768-A;proporder:1768-3005;pass:END;sub:END;*/

Shader "Shader Forge/distort" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 1)) = 0.1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture)); // 圖片要注意有幾個通道
                float2 node_8651 = float2(_Texture_var.r,_Texture_var.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_8651*_Texture_var.a*_Intensity*i.vertexColor.a);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
