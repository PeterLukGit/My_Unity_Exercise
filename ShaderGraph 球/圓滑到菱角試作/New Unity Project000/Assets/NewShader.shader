// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33585,y:32671,varname:node_4013,prsc:2|emission-5050-RGB;n:type:ShaderForge.SFN_Tex2d,id:4117,x:31956,y:32710,ptovrint:False,ptlb:node_4117,ptin:_node_4117,varname:node_4117,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dab46de4513ee944b9635e9c26e363ef,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:4424,x:32151,y:32938,prsc:2,pt:False;n:type:ShaderForge.SFN_RemapRange,id:4993,x:32151,y:32757,varname:node_4993,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4117-RGB;n:type:ShaderForge.SFN_Lerp,id:1105,x:32373,y:32757,varname:node_1105,prsc:2|A-4993-OUT,B-4424-OUT,T-6462-OUT;n:type:ShaderForge.SFN_Slider,id:6462,x:31994,y:33116,ptovrint:False,ptlb:node_6462,ptin:_node_6462,varname:node_6462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Tex2d,id:5050,x:33180,y:32846,ptovrint:False,ptlb:node_5050,ptin:_node_5050,varname:node_5050,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ffaea70d4f36bab4daa38eb176f7ae0e,ntxv:0,isnm:False|UVIN-3939-OUT;n:type:ShaderForge.SFN_Transform,id:4463,x:32569,y:32809,varname:node_4463,prsc:2,tffrom:0,tfto:3|IN-1105-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6327,x:32732,y:32816,varname:node_6327,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4463-XYZ;n:type:ShaderForge.SFN_RemapRange,id:3939,x:32957,y:32827,varname:node_3939,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-6327-OUT;proporder:4117-6462-5050;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _node_4117 ("node_4117", 2D) = "white" {}
        _node_6462 ("node_6462", Range(0, 1)) = 1
        _node_5050 ("node_5050", 2D) = "white" {}
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
            uniform sampler2D _node_4117; uniform float4 _node_4117_ST;
            uniform float _node_6462;
            uniform sampler2D _node_5050; uniform float4 _node_5050_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_4117_var = tex2D(_node_4117,TRANSFORM_TEX(i.uv0, _node_4117));
                float2 node_3939 = (mul( UNITY_MATRIX_V, float4(lerp((_node_4117_var.rgb*2.0+-1.0),i.normalDir,_node_6462),0) ).xyz.rgb.rg*0.5+0.5);
                float4 _node_5050_var = tex2D(_node_5050,TRANSFORM_TEX(node_3939, _node_5050));
                float3 emissive = _node_5050_var.rgb;
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
