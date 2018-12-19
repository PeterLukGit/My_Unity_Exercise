// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7528,x:33948,y:32466,varname:node_7528,prsc:2|custl-6408-OUT;n:type:ShaderForge.SFN_Tex2d,id:6206,x:33488,y:32560,ptovrint:False,ptlb:node_6206,ptin:_node_6206,varname:node_6206,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7087,x:33488,y:32746,ptovrint:False,ptlb:node_7087,ptin:_node_7087,varname:node_7087,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:6408,x:33766,y:32651,varname:node_6408,prsc:2|A-6206-RGB,B-7087-RGB,T-3685-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3263,x:32532,y:33106,ptovrint:False,ptlb:node_3263,ptin:_node_3263,varname:node_3263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:7.425;n:type:ShaderForge.SFN_Multiply,id:1486,x:32755,y:33106,varname:node_1486,prsc:2|A-3263-OUT,B-2404-OUT;n:type:ShaderForge.SFN_Vector1,id:2404,x:32532,y:33166,varname:node_2404,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:8445,x:32952,y:33106,varname:node_8445,prsc:2|A-1486-OUT,B-1071-Z;n:type:ShaderForge.SFN_FragmentPosition,id:1071,x:32755,y:33253,varname:node_1071,prsc:2;n:type:ShaderForge.SFN_Divide,id:4098,x:33169,y:33106,varname:node_4098,prsc:2|A-8445-OUT,B-6612-OUT;n:type:ShaderForge.SFN_Relay,id:6612,x:32784,y:33413,varname:node_6612,prsc:2|IN-3263-OUT;n:type:ShaderForge.SFN_Slider,id:5832,x:32933,y:32983,ptovrint:False,ptlb:node_5832,ptin:_node_5832,varname:node_5832,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.547164,max:1;n:type:ShaderForge.SFN_Add,id:7459,x:33371,y:33002,varname:node_7459,prsc:2|A-5832-OUT,B-4098-OUT;n:type:ShaderForge.SFN_Trunc,id:7488,x:33550,y:33002,varname:node_7488,prsc:2|IN-7459-OUT;n:type:ShaderForge.SFN_Min,id:3685,x:33757,y:33002,varname:node_3685,prsc:2|A-7488-OUT,B-8561-OUT;n:type:ShaderForge.SFN_Vector1,id:8561,x:33550,y:33140,varname:node_8561,prsc:2,v1:1;proporder:6206-7087-3263-5832;pass:END;sub:END;*/

Shader "Custom/Unknown05" {
    Properties {
        _node_6206 ("node_6206", 2D) = "white" {}
        _node_7087 ("node_7087", 2D) = "white" {}
        _node_3263 ("node_3263", Float ) = 7.425
        _node_5832 ("node_5832", Range(0, 1)) = 0.547164
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
            uniform sampler2D _node_6206; uniform float4 _node_6206_ST;
            uniform sampler2D _node_7087; uniform float4 _node_7087_ST;
            uniform float _node_3263;
            uniform float _node_5832;
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
                float4 _node_6206_var = tex2D(_node_6206,TRANSFORM_TEX(i.uv0, _node_6206));
                float4 _node_7087_var = tex2D(_node_7087,TRANSFORM_TEX(i.uv0, _node_7087));
                float3 finalColor = lerp(_node_6206_var.rgb,_node_7087_var.rgb,min(trunc((_node_5832+(((_node_3263*0.5)+i.posWorld.b)/_node_3263))),1.0));
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
