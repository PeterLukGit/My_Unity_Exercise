// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|diff-2808-OUT;n:type:ShaderForge.SFN_Tex2d,id:7578,x:32083,y:32327,ptovrint:False,ptlb:BuildupDiffuse_copy,ptin:_BuildupDiffuse_copy,varname:_BuildupDiffuse_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9d12d127bf504ac4ab0fd95bbc58ffd5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2467,x:32083,y:32507,ptovrint:False,ptlb:MainTex_copy,ptin:_MainTex_copy,varname:_MainTex_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:2808,x:32375,y:32369,cmnt:把地板和雪的貼圖 Lerp Mask就是T的過度,varname:node_2808,prsc:2|A-7578-RGB,B-2467-RGB,T-1425-OUT;n:type:ShaderForge.SFN_Tex2d,id:3342,x:31162,y:32600,ptovrint:False,ptlb:Utility,ptin:_Utility,cmnt:這張圖R通道是高度限制,varname:node_3254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:7531,x:30958,y:32790,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:8298,x:31159,y:32790,varname:node_8298,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7531-OUT;n:type:ShaderForge.SFN_Subtract,id:2556,x:31346,y:32690,varname:node_2556,prsc:2|A-3342-R,B-8298-OUT;n:type:ShaderForge.SFN_Subtract,id:3571,x:31507,y:32789,cmnt:除兩次 是讓它黑白線分割明顯,varname:node_3571,prsc:2|A-2556-OUT,B-8298-OUT;n:type:ShaderForge.SFN_Multiply,id:4495,x:31702,y:32832,cmnt:乘上數字銳利化 ,varname:node_4495,prsc:2|A-3571-OUT,B-3843-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3843,x:31452,y:33002,ptovrint:False,ptlb:Sharpness,ptin:_Sharpness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:9;n:type:ShaderForge.SFN_ValueProperty,id:3599,x:31625,y:33002,ptovrint:False,ptlb:Amount,ptin:_Amount,varname:node_4242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:8729,x:31875,y:32832,cmnt:因為除了最後都會有 一部分黑 所以 加上數字 能讓他變成全白,varname:node_8729,prsc:2|A-4495-OUT,B-3599-OUT;n:type:ShaderForge.SFN_Clamp01,id:8809,x:32044,y:32832,varname:node_8809,prsc:2|IN-8729-OUT;n:type:ShaderForge.SFN_TexCoord,id:5649,x:32224,y:32744,varname:node_5649,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Distance,id:1425,x:32470,y:32826,varname:node_1425,prsc:2|A-5649-V,B-1017-OUT;n:type:ShaderForge.SFN_Slider,id:1017,x:32079,y:33009,ptovrint:False,ptlb:node_1017,ptin:_node_1017,varname:node_1017,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:7578-2467-3342-3843-3599-1017;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _BuildupDiffuse_copy ("BuildupDiffuse_copy", 2D) = "white" {}
        _MainTex_copy ("MainTex_copy", 2D) = "white" {}
        _Utility ("Utility", 2D) = "white" {}
        _Sharpness ("Sharpness", Float ) = 9
        _Amount ("Amount", Float ) = 0
        _node_1017 ("node_1017", Range(0, 1)) = 1
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _BuildupDiffuse_copy; uniform float4 _BuildupDiffuse_copy_ST;
            uniform sampler2D _MainTex_copy; uniform float4 _MainTex_copy_ST;
            uniform float _node_1017;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _BuildupDiffuse_copy_var = tex2D(_BuildupDiffuse_copy,TRANSFORM_TEX(i.uv0, _BuildupDiffuse_copy));
                float4 _MainTex_copy_var = tex2D(_MainTex_copy,TRANSFORM_TEX(i.uv0, _MainTex_copy));
                float3 diffuseColor = lerp(_BuildupDiffuse_copy_var.rgb,_MainTex_copy_var.rgb,distance(i.uv0.g,_node_1017));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor,1);
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _BuildupDiffuse_copy; uniform float4 _BuildupDiffuse_copy_ST;
            uniform sampler2D _MainTex_copy; uniform float4 _MainTex_copy_ST;
            uniform float _node_1017;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _BuildupDiffuse_copy_var = tex2D(_BuildupDiffuse_copy,TRANSFORM_TEX(i.uv0, _BuildupDiffuse_copy));
                float4 _MainTex_copy_var = tex2D(_MainTex_copy,TRANSFORM_TEX(i.uv0, _MainTex_copy));
                float3 diffuseColor = lerp(_BuildupDiffuse_copy_var.rgb,_MainTex_copy_var.rgb,distance(i.uv0.g,_node_1017));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
