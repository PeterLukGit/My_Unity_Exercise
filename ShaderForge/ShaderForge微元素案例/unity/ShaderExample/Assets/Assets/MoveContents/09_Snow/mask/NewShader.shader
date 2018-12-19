// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5801-OUT;n:type:ShaderForge.SFN_Tex2d,id:8963,x:31570,y:32835,ptovrint:False,ptlb:Utility,ptin:_Utility,cmnt:這張圖R通道是高度限制,varname:node_3254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:6053,x:31366,y:33025,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:7940,x:31567,y:33025,varname:node_7940,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6053-OUT;n:type:ShaderForge.SFN_Subtract,id:7707,x:31754,y:32925,varname:node_7707,prsc:2|A-8963-R,B-7940-OUT;n:type:ShaderForge.SFN_Subtract,id:1072,x:31935,y:33067,varname:node_1072,prsc:2|A-7707-OUT,B-7940-OUT;n:type:ShaderForge.SFN_Multiply,id:5801,x:32110,y:33067,varname:node_5801,prsc:2|A-1072-OUT,B-5234-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5234,x:31845,y:33244,ptovrint:False,ptlb:Sharpness,ptin:_Sharpness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:9;n:type:ShaderForge.SFN_ValueProperty,id:4717,x:32021,y:33248,ptovrint:False,ptlb:Amount,ptin:_Amount,varname:node_4242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:870,x:32283,y:33067,varname:node_870,prsc:2|A-5801-OUT,B-4717-OUT;n:type:ShaderForge.SFN_Clamp01,id:3955,x:32452,y:33067,varname:node_3955,prsc:2|IN-870-OUT;proporder:8963-5234-4717;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _Utility ("Utility", 2D) = "white" {}
        _Sharpness ("Sharpness", Float ) = 9
        _Amount ("Amount", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Utility; uniform float4 _Utility_ST;
            uniform float _Sharpness;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _Utility_var = tex2D(_Utility,TRANSFORM_TEX(i.uv0, _Utility)); // 這張圖R通道是高度限制
                float node_7940 = i.normalDir.g;
                float node_5801 = (((_Utility_var.r-node_7940)-node_7940)*_Sharpness);
                float3 emissive = float3(node_5801,node_5801,node_5801);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
