// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6207,x:32704,y:32966,varname:node_6207,prsc:2|diff-2498-OUT,normal-8543-OUT;n:type:ShaderForge.SFN_Tex2d,id:4761,x:31600,y:32688,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:node_4761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:12bdf285f43f65e4384e61aaf7088ce9,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4836,x:31600,y:32879,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:_Splat1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:515199b7c34c5c94aa692e55c1f0a571,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8464,x:31600,y:33067,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:_Splat2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:110b55b0b162a004eb876de762c160f4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5990,x:31600,y:33242,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:_Splat3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:08a30b9887fe55c41868c7330d6f42b6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:885,x:33201,y:32639,ptovrint:False,ptlb:BumpMap0,ptin:_BumpMap0,varname:node_885,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2212d5458e008a94c98bbb27543282a7,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:8663,x:33201,y:32820,ptovrint:False,ptlb:BumpMap1,ptin:_BumpMap1,varname:_BumpMap1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbe1e716c83f0d644b010b0d7412e86f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:1241,x:33201,y:33006,ptovrint:False,ptlb:BumpMap2,ptin:_BumpMap2,varname:_BumpMap2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:29c2a9c39d4012849b4a1a2422daafcb,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7248,x:33201,y:33204,ptovrint:False,ptlb:BumpMap3,ptin:_BumpMap3,varname:_BumpMap3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0cf785d8f89274c43a37a77aa983450f,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:3217,x:31506,y:33887,ptovrint:False,ptlb:SplatAlpha,ptin:_SplatAlpha,varname:node_3217,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:da7c114584af629438f201864e491d5b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:7313,x:33623,y:32837,varname:Normal,prsc:2|IN-8423-OUT;n:type:ShaderForge.SFN_Get,id:8543,x:32382,y:33049,varname:node_8543,prsc:2|IN-7313-OUT;n:type:ShaderForge.SFN_Append,id:8372,x:31716,y:33904,varname:node_8372,prsc:2|A-3217-R,B-3217-G,C-3217-B,D-3217-A;n:type:ShaderForge.SFN_Set,id:5014,x:31879,y:33904,varname:mask,prsc:2|IN-8372-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:1903,x:31885,y:32860,varname:node_1903,prsc:2,chbt:0|M-7810-OUT,R-4761-RGB,G-4836-RGB,B-8464-RGB,A-5990-RGB;n:type:ShaderForge.SFN_Get,id:7810,x:31864,y:32754,varname:node_7810,prsc:2|IN-5014-OUT;n:type:ShaderForge.SFN_Set,id:3592,x:32083,y:32860,varname:Diffuse,prsc:2|IN-1903-OUT;n:type:ShaderForge.SFN_Get,id:2498,x:32382,y:32963,varname:node_2498,prsc:2|IN-3592-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:8423,x:33444,y:32837,varname:node_8423,prsc:2,chbt:0|M-2356-OUT,R-885-RGB,G-8663-RGB,B-1241-RGB,A-7248-RGB;n:type:ShaderForge.SFN_Get,id:2356,x:33423,y:32768,varname:node_2356,prsc:2|IN-5014-OUT;proporder:4761-4836-8464-5990-3217-885-8663-1241-7248;pass:END;sub:END;*/

Shader "Move/25_Terrain1" {
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
                float4 _SplatAlpha_var = tex2D(_SplatAlpha,TRANSFORM_TEX(i.uv0, _SplatAlpha));
                float4 mask = float4(_SplatAlpha_var.r,_SplatAlpha_var.g,_SplatAlpha_var.b,_SplatAlpha_var.a);
                float4 node_2356 = mask;
                float3 _BumpMap0_var = UnpackNormal(tex2D(_BumpMap0,TRANSFORM_TEX(i.uv0, _BumpMap0)));
                float3 _BumpMap1_var = UnpackNormal(tex2D(_BumpMap1,TRANSFORM_TEX(i.uv0, _BumpMap1)));
                float3 _BumpMap2_var = UnpackNormal(tex2D(_BumpMap2,TRANSFORM_TEX(i.uv0, _BumpMap2)));
                float3 _BumpMap3_var = UnpackNormal(tex2D(_BumpMap3,TRANSFORM_TEX(i.uv0, _BumpMap3)));
                float3 Normal = (node_2356.r*_BumpMap0_var.rgb + node_2356.g*_BumpMap1_var.rgb + node_2356.b*_BumpMap2_var.rgb + node_2356.a*_BumpMap3_var.rgb);
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
                float4 node_7810 = mask;
                float4 _Splat0_var = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat1_var = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat2_var = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat3_var = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 Diffuse = (node_7810.r*_Splat0_var.rgb + node_7810.g*_Splat1_var.rgb + node_7810.b*_Splat2_var.rgb + node_7810.a*_Splat3_var.rgb);
                float3 diffuseColor = Diffuse;
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
                float4 _SplatAlpha_var = tex2D(_SplatAlpha,TRANSFORM_TEX(i.uv0, _SplatAlpha));
                float4 mask = float4(_SplatAlpha_var.r,_SplatAlpha_var.g,_SplatAlpha_var.b,_SplatAlpha_var.a);
                float4 node_2356 = mask;
                float3 _BumpMap0_var = UnpackNormal(tex2D(_BumpMap0,TRANSFORM_TEX(i.uv0, _BumpMap0)));
                float3 _BumpMap1_var = UnpackNormal(tex2D(_BumpMap1,TRANSFORM_TEX(i.uv0, _BumpMap1)));
                float3 _BumpMap2_var = UnpackNormal(tex2D(_BumpMap2,TRANSFORM_TEX(i.uv0, _BumpMap2)));
                float3 _BumpMap3_var = UnpackNormal(tex2D(_BumpMap3,TRANSFORM_TEX(i.uv0, _BumpMap3)));
                float3 Normal = (node_2356.r*_BumpMap0_var.rgb + node_2356.g*_BumpMap1_var.rgb + node_2356.b*_BumpMap2_var.rgb + node_2356.a*_BumpMap3_var.rgb);
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
                float4 node_7810 = mask;
                float4 _Splat0_var = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 _Splat1_var = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 _Splat2_var = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 _Splat3_var = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float3 Diffuse = (node_7810.r*_Splat0_var.rgb + node_7810.g*_Splat1_var.rgb + node_7810.b*_Splat2_var.rgb + node_7810.a*_Splat3_var.rgb);
                float3 diffuseColor = Diffuse;
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
