// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6207,x:32704,y:32966,varname:node_6207,prsc:2|diff-445-OUT,normal-8543-OUT;n:type:ShaderForge.SFN_Tex2d,id:4761,x:31629,y:32591,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:node_4761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:12bdf285f43f65e4384e61aaf7088ce9,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4836,x:31600,y:32879,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:515199b7c34c5c94aa692e55c1f0a571,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8464,x:31596,y:33157,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:110b55b0b162a004eb876de762c160f4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5990,x:31596,y:33395,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:08a30b9887fe55c41868c7330d6f42b6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:885,x:33223,y:32365,ptovrint:False,ptlb:BumpMap0,ptin:_BumpMap0,varname:node_885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2212d5458e008a94c98bbb27543282a7,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:8663,x:33209,y:32675,ptovrint:False,ptlb:BumpMap1,ptin:_BumpMap1,varname:_BumpMap1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe1e716c83f0d644b010b0d7412e86f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1241,x:33201,y:33006,ptovrint:False,ptlb:BumpMap2,ptin:_BumpMap2,varname:_BumpMap2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:29c2a9c39d4012849b4a1a2422daafcb,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7248,x:33202,y:33422,ptovrint:False,ptlb:BumpMap3,ptin:_BumpMap3,varname:_BumpMap3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0cf785d8f89274c43a37a77aa983450f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3217,x:31506,y:33887,ptovrint:False,ptlb:SplatAlpha,ptin:_SplatAlpha,varname:node_3217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:da7c114584af629438f201864e491d5b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:2254,x:31700,y:33860,varname:R,prsc:2|IN-3217-R;n:type:ShaderForge.SFN_Set,id:6842,x:31700,y:33913,varname:G,prsc:2|IN-3217-G;n:type:ShaderForge.SFN_Set,id:9316,x:31700,y:33962,varname:B,prsc:2|IN-3217-B;n:type:ShaderForge.SFN_Set,id:8193,x:31700,y:34014,varname:A,prsc:2|IN-3217-A;n:type:ShaderForge.SFN_Multiply,id:9379,x:31867,y:32666,varname:node_9379,prsc:2|A-4761-RGB,B-2359-OUT;n:type:ShaderForge.SFN_Get,id:2359,x:31600,y:32758,varname:node_2359,prsc:2|IN-2254-OUT;n:type:ShaderForge.SFN_Add,id:445,x:32170,y:32993,varname:node_445,prsc:2|A-9379-OUT,B-8209-OUT,C-2864-OUT,D-7387-OUT;n:type:ShaderForge.SFN_Multiply,id:8209,x:31855,y:32896,varname:node_8209,prsc:2|A-4836-RGB,B-5399-OUT;n:type:ShaderForge.SFN_Get,id:5399,x:31575,y:33056,varname:node_5399,prsc:2|IN-6842-OUT;n:type:ShaderForge.SFN_Multiply,id:2864,x:31867,y:33146,varname:node_2864,prsc:2|A-8464-RGB,B-9240-OUT;n:type:ShaderForge.SFN_Get,id:9240,x:31575,y:33326,varname:node_9240,prsc:2|IN-9316-OUT;n:type:ShaderForge.SFN_Get,id:5699,x:31575,y:33565,varname:node_5699,prsc:2|IN-8193-OUT;n:type:ShaderForge.SFN_Multiply,id:7387,x:31863,y:33451,varname:node_7387,prsc:2|A-5990-RGB,B-5699-OUT;n:type:ShaderForge.SFN_Get,id:1767,x:33209,y:32530,varname:node_1767,prsc:2|IN-2254-OUT;n:type:ShaderForge.SFN_Get,id:9900,x:33180,y:32834,varname:node_9900,prsc:2|IN-6842-OUT;n:type:ShaderForge.SFN_Get,id:399,x:33177,y:33158,varname:node_399,prsc:2|IN-9316-OUT;n:type:ShaderForge.SFN_Get,id:4239,x:33181,y:33592,varname:node_4239,prsc:2|IN-8193-OUT;n:type:ShaderForge.SFN_Multiply,id:2452,x:33509,y:32405,varname:node_2452,prsc:2|A-885-RGB,B-1767-OUT;n:type:ShaderForge.SFN_Multiply,id:3108,x:33497,y:32708,varname:node_3108,prsc:2|A-8663-RGB,B-9900-OUT;n:type:ShaderForge.SFN_Multiply,id:360,x:33466,y:33008,varname:node_360,prsc:2|A-1241-RGB,B-399-OUT;n:type:ShaderForge.SFN_Multiply,id:8474,x:33470,y:33423,varname:node_8474,prsc:2|A-7248-RGB,B-4239-OUT;n:type:ShaderForge.SFN_Add,id:8865,x:33859,y:32782,varname:node_8865,prsc:2|A-2452-OUT,B-3108-OUT,C-360-OUT,D-8474-OUT;n:type:ShaderForge.SFN_Set,id:7313,x:34078,y:32782,varname:Normal,prsc:2|IN-8865-OUT;n:type:ShaderForge.SFN_Get,id:8543,x:32369,y:33177,varname:node_8543,prsc:2|IN-7313-OUT;proporder:4761-4836-8464-5990-3217-885-8663-1241-7248;pass:END;sub:END;*/

Shader "Move/25_Terrain" {
    Properties {
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _SplatAlpha ("SplatAlpha", 2D) = "white" {}
        _BumpMap0 ("BumpMap0", 2D) = "bump" {}
        _BumpMap1 ("BumpMap1", 2D) = "bump" {}
        _BumpMap2 ("BumpMap2", 2D) = "bump" {}
        _BumpMap3 ("BumpMap3", 2D) = "bump" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _BumpMap0; uniform float4 _BumpMap0_ST;
            uniform sampler2D _BumpMap1; uniform float4 _BumpMap1_ST;
            uniform sampler2D _BumpMap2; uniform float4 _BumpMap2_ST;
            uniform sampler2D _BumpMap3; uniform float4 _BumpMap3_ST;
            uniform sampler2D _SplatAlpha; uniform float4 _SplatAlpha_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap0_var = UnpackNormal(tex2D(_BumpMap0,TRANSFORM_TEX(i.uv0, _BumpMap0)));
                float4 _SplatAlpha_var = tex2D(_SplatAlpha,TRANSFORM_TEX(i.uv0, _SplatAlpha));
                float R = _SplatAlpha_var.r;
                float3 _BumpMap1_var = UnpackNormal(tex2D(_BumpMap1,TRANSFORM_TEX(i.uv0, _BumpMap1)));
                float G = _SplatAlpha_var.g;
                float3 _BumpMap2_var = UnpackNormal(tex2D(_BumpMap2,TRANSFORM_TEX(i.uv0, _BumpMap2)));
                float B = _SplatAlpha_var.b;
                float3 _BumpMap3_var = UnpackNormal(tex2D(_BumpMap3,TRANSFORM_TEX(i.uv0, _BumpMap3)));
                float A = _SplatAlpha_var.a;
                float3 Normal = ((_BumpMap0_var.rgb*R)+(_BumpMap1_var.rgb*G)+(_BumpMap2_var.rgb*B)+(_BumpMap3_var.rgb*A));
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
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
                float4 _Splat0_var = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat1_var = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat2_var = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat3_var = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 diffuseColor = ((_Splat0_var.rgb*R)+(_Splat1_var.rgb*G)+(_Splat2_var.rgb*B)+(_Splat3_var.rgb*A));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform sampler2D _BumpMap0; uniform float4 _BumpMap0_ST;
            uniform sampler2D _BumpMap1; uniform float4 _BumpMap1_ST;
            uniform sampler2D _BumpMap2; uniform float4 _BumpMap2_ST;
            uniform sampler2D _BumpMap3; uniform float4 _BumpMap3_ST;
            uniform sampler2D _SplatAlpha; uniform float4 _SplatAlpha_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap0_var = UnpackNormal(tex2D(_BumpMap0,TRANSFORM_TEX(i.uv0, _BumpMap0)));
                float4 _SplatAlpha_var = tex2D(_SplatAlpha,TRANSFORM_TEX(i.uv0, _SplatAlpha));
                float R = _SplatAlpha_var.r;
                float3 _BumpMap1_var = UnpackNormal(tex2D(_BumpMap1,TRANSFORM_TEX(i.uv0, _BumpMap1)));
                float G = _SplatAlpha_var.g;
                float3 _BumpMap2_var = UnpackNormal(tex2D(_BumpMap2,TRANSFORM_TEX(i.uv0, _BumpMap2)));
                float B = _SplatAlpha_var.b;
                float3 _BumpMap3_var = UnpackNormal(tex2D(_BumpMap3,TRANSFORM_TEX(i.uv0, _BumpMap3)));
                float A = _SplatAlpha_var.a;
                float3 Normal = ((_BumpMap0_var.rgb*R)+(_BumpMap1_var.rgb*G)+(_BumpMap2_var.rgb*B)+(_BumpMap3_var.rgb*A));
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Splat0_var = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat1_var = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat2_var = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat3_var = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 diffuseColor = ((_Splat0_var.rgb*R)+(_Splat1_var.rgb*G)+(_Splat2_var.rgb*B)+(_Splat3_var.rgb*A));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
