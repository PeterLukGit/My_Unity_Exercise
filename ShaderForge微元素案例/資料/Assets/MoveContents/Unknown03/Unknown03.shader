// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7528,x:33572,y:32559,varname:node_7528,prsc:2|custl-1070-OUT;n:type:ShaderForge.SFN_LightVector,id:485,x:32119,y:32733,varname:node_485,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:92,x:32119,y:32857,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewVector,id:4612,x:32119,y:33006,varname:node_4612,prsc:2;n:type:ShaderForge.SFN_Dot,id:2016,x:32318,y:32980,varname:node_2016,prsc:2,dt:0|A-92-OUT,B-4612-OUT;n:type:ShaderForge.SFN_Dot,id:6453,x:32318,y:32733,varname:node_6453,prsc:2,dt:0|A-485-OUT,B-92-OUT;n:type:ShaderForge.SFN_Multiply,id:7936,x:32527,y:32733,varname:node_7936,prsc:2|A-6453-OUT,B-244-OUT;n:type:ShaderForge.SFN_Vector1,id:244,x:32325,y:32910,varname:node_244,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Vector1,id:7085,x:32325,y:33132,varname:node_7085,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Multiply,id:2350,x:32512,y:32980,varname:node_2350,prsc:2|A-2016-OUT,B-7085-OUT;n:type:ShaderForge.SFN_Add,id:8724,x:32713,y:32733,varname:node_8724,prsc:2|A-7936-OUT,B-9810-OUT;n:type:ShaderForge.SFN_Vector1,id:9810,x:32512,y:32910,varname:node_9810,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Append,id:4019,x:32920,y:32793,varname:node_4019,prsc:2|A-2350-OUT,B-8724-OUT;n:type:ShaderForge.SFN_Tex2d,id:9559,x:33140,y:32793,ptovrint:False,ptlb:Ramp,ptin:_Ramp,varname:node_9559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4019-OUT;n:type:ShaderForge.SFN_Multiply,id:1070,x:33367,y:32793,varname:node_1070,prsc:2|A-9559-RGB,B-5529-RGB,C-4859-OUT;n:type:ShaderForge.SFN_LightColor,id:5529,x:33140,y:32946,varname:node_5529,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:4859,x:33140,y:33070,varname:node_4859,prsc:2;proporder:9559;pass:END;sub:END;*/

Shader "Custom/Unknown03" {
    Properties {
        _Ramp ("Ramp", 2D) = "white" {}
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float2 node_4019 = float2((dot(i.normalDir,viewDirection)*0.8),((dot(lightDirection,i.normalDir)*0.3)+0.5));
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4019, _Ramp));
                float3 finalColor = (_Ramp_var.rgb*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Ramp; uniform float4 _Ramp_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float2 node_4019 = float2((dot(i.normalDir,viewDirection)*0.8),((dot(lightDirection,i.normalDir)*0.3)+0.5));
                float4 _Ramp_var = tex2D(_Ramp,TRANSFORM_TEX(node_4019, _Ramp));
                float3 finalColor = (_Ramp_var.rgb*_LightColor0.rgb*attenuation);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
