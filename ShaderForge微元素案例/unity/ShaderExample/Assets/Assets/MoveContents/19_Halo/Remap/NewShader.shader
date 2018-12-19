// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|custl-2368-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2368,x:32887,y:32933,varname:node_2368,prsc:2|IN-7982-RGB,IMIN-7926-OUT,IMAX-7354-OUT,OMIN-2177-OUT,OMAX-2454-OUT;n:type:ShaderForge.SFN_Tex2d,id:7982,x:32634,y:32739,ptovrint:False,ptlb:node_7982,ptin:_node_7982,varname:node_7982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c50821d106653b648b1c3fafd1507044,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7926,x:32456,y:32969,ptovrint:False,ptlb:node_7926,ptin:_node_7926,varname:node_7926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4017089,max:1;n:type:ShaderForge.SFN_Slider,id:7354,x:32428,y:33078,ptovrint:False,ptlb:node_7354,ptin:_node_7354,varname:node_7354,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6581197,max:1;n:type:ShaderForge.SFN_Slider,id:2177,x:32406,y:33169,ptovrint:False,ptlb:node_7926_copy,ptin:_node_7926_copy,varname:_node_7926_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2454,x:32378,y:33278,ptovrint:False,ptlb:node_7354_copy,ptin:_node_7354_copy,varname:_node_7354_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:7982-2454-2177-7354-7926;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _node_7982 ("node_7982", 2D) = "white" {}
        _node_7354_copy ("node_7354_copy", Range(0, 1)) = 1
        _node_7926_copy ("node_7926_copy", Range(0, 1)) = 0
        _node_7354 ("node_7354", Range(0, 1)) = 0.6581197
        _node_7926 ("node_7926", Range(0, 1)) = 0.4017089
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_7982; uniform float4 _node_7982_ST;
            uniform float _node_7926;
            uniform float _node_7354;
            uniform float _node_7926_copy;
            uniform float _node_7354_copy;
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
                float4 _node_7982_var = tex2D(_node_7982,TRANSFORM_TEX(i.uv0, _node_7982));
                float3 finalColor = (_node_7926_copy + ( (_node_7982_var.rgb - _node_7926) * (_node_7354_copy - _node_7926_copy) ) / (_node_7354 - _node_7926));
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
