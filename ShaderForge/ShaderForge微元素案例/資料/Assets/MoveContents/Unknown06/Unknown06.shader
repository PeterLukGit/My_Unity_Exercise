// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7528,x:34338,y:32266,varname:node_7528,prsc:2|custl-830-OUT,alpha-1716-OUT;n:type:ShaderForge.SFN_TexCoord,id:2970,x:33474,y:32526,varname:node_2970,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5181,x:33672,y:32609,varname:node_5181,prsc:2,spu:1,spv:0|UVIN-2970-UVOUT,DIST-2264-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:66,x:33291,y:32765,varname:node_66,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:258,x:33291,y:32934,ptovrint:False,ptlb:PannerModifie,ptin:_PannerModifie,varname:node_258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2264,x:33474,y:32780,varname:node_2264,prsc:2|A-66-X,B-258-OUT;n:type:ShaderForge.SFN_Tex2d,id:587,x:33883,y:32539,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_587,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5181-UVOUT;n:type:ShaderForge.SFN_Color,id:8351,x:33883,y:32360,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8351,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:830,x:34082,y:32409,varname:node_830,prsc:2|A-8351-RGB,B-587-RGB;n:type:ShaderForge.SFN_Multiply,id:1716,x:34082,y:32539,varname:node_1716,prsc:2|A-8351-A,B-587-A;proporder:258-587-8351;pass:END;sub:END;*/

Shader "Custom/Unknown06" {
    Properties {
        _PannerModifie ("PannerModifie", Float ) = 1
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
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
            uniform float _PannerModifie;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float2 node_5181 = (i.uv0+(i.posWorld.r*_PannerModifie)*float2(1,0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_5181, _MainTex));
                float3 finalColor = (_Color.rgb*_MainTex_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor,(_Color.a*_MainTex_var.a));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
