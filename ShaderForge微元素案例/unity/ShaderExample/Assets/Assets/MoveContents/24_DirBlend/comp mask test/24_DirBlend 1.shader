// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5868,x:33795,y:32741,varname:node_5868,prsc:2|normal-9551-OUT,custl-6092-OUT;n:type:ShaderForge.SFN_ValueProperty,id:851,x:32128,y:32807,ptovrint:False,ptlb:Tilling,ptin:_Tilling,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_FragmentPosition,id:8945,x:32128,y:32859,varname:node_8945,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2372,x:32305,y:32807,varname:node_2372,prsc:2|A-851-OUT,B-8945-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:7779,x:32489,y:32807,varname:node_7779,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-2372-OUT;n:type:ShaderForge.SFN_Append,id:1430,x:32717,y:32680,cmnt:X Projection,varname:node_1430,prsc:2|A-7779-G,B-7779-B;n:type:ShaderForge.SFN_Append,id:4121,x:32717,y:32817,cmnt:Y Projection,varname:node_4121,prsc:2|A-7779-B,B-7779-R;n:type:ShaderForge.SFN_Append,id:1153,x:32717,y:32962,cmnt:Z Projection,varname:node_1153,prsc:2|A-7779-R,B-7779-G;n:type:ShaderForge.SFN_Set,id:5939,x:32909,y:32680,varname:X_Projection,prsc:2|IN-1430-OUT;n:type:ShaderForge.SFN_Set,id:1338,x:32909,y:32817,varname:Y_Projection,prsc:2|IN-4121-OUT;n:type:ShaderForge.SFN_Set,id:7173,x:32909,y:32962,varname:Z_Projection,prsc:2|IN-1153-OUT;n:type:ShaderForge.SFN_Tex2d,id:264,x:32182,y:33226,ptovrint:False,ptlb:Diffuse_X,ptin:_Diffuse_X,varname:node_264,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9910-OUT;n:type:ShaderForge.SFN_Tex2d,id:8146,x:33305,y:33453,ptovrint:False,ptlb:BumpMap_X,ptin:_BumpMap_X,varname:node_8146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-1891-OUT;n:type:ShaderForge.SFN_Tex2d,id:316,x:32182,y:33406,ptovrint:False,ptlb:Diffuse_Y,ptin:_Diffuse_Y,varname:node_316,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7553-OUT;n:type:ShaderForge.SFN_Tex2d,id:171,x:33305,y:33633,ptovrint:False,ptlb:BumpMap_Y,ptin:_BumpMap_Y,varname:node_171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-8077-OUT;n:type:ShaderForge.SFN_Tex2d,id:7763,x:32182,y:33592,ptovrint:False,ptlb:Diffuse_Z,ptin:_Diffuse_Z,varname:node_7763,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3925-OUT;n:type:ShaderForge.SFN_Tex2d,id:3975,x:33305,y:33802,ptovrint:False,ptlb:BumpMap_Z,ptin:_BumpMap_Z,varname:node_3975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-5170-OUT;n:type:ShaderForge.SFN_NormalVector,id:231,x:32129,y:32527,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:1119,x:32305,y:32527,varname:node_1119,prsc:2|IN-231-OUT;n:type:ShaderForge.SFN_Power,id:5091,x:32497,y:32527,cmnt:Blend mask,varname:node_5091,prsc:2|VAL-1119-OUT,EXP-3041-OUT;n:type:ShaderForge.SFN_Vector1,id:3041,x:32305,y:32655,varname:node_3041,prsc:2,v1:2;n:type:ShaderForge.SFN_Set,id:9858,x:32674,y:32527,varname:BlendMask,prsc:2|IN-5091-OUT;n:type:ShaderForge.SFN_Get,id:9910,x:31993,y:33226,varname:node_9910,prsc:2|IN-5939-OUT;n:type:ShaderForge.SFN_Get,id:7553,x:31993,y:33406,varname:node_7553,prsc:2|IN-1338-OUT;n:type:ShaderForge.SFN_Get,id:3925,x:31993,y:33592,varname:node_3925,prsc:2|IN-7173-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:707,x:32412,y:33406,cmnt:通道混和 Mask輸入數據 會根據 RGB 色填入 Summed為總結 所以不用填入底色 R是X G是Y B是Z,varname:node_707,prsc:2,chbt:0|M-3239-OUT,R-264-RGB,G-316-RGB,B-7763-RGB;n:type:ShaderForge.SFN_Get,id:3239,x:32161,y:33142,varname:node_3239,prsc:2|IN-9858-OUT;n:type:ShaderForge.SFN_Set,id:7738,x:32595,y:33288,varname:Diffuse,prsc:2|IN-707-OUT;n:type:ShaderForge.SFN_Get,id:4358,x:33284,y:33366,varname:node_4358,prsc:2|IN-9858-OUT;n:type:ShaderForge.SFN_Get,id:1891,x:33105,y:33453,varname:node_1891,prsc:2|IN-5939-OUT;n:type:ShaderForge.SFN_Get,id:8077,x:33105,y:33633,varname:node_8077,prsc:2|IN-1338-OUT;n:type:ShaderForge.SFN_Get,id:5170,x:33105,y:33802,varname:node_5170,prsc:2|IN-7173-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:2570,x:33566,y:33438,varname:node_2570,prsc:2,chbt:0|M-4358-OUT,R-8146-RGB,G-171-RGB,B-3975-RGB;n:type:ShaderForge.SFN_Get,id:9216,x:33055,y:32962,varname:node_9216,prsc:2|IN-7738-OUT;n:type:ShaderForge.SFN_Get,id:9551,x:33199,y:32856,varname:node_9551,prsc:2|IN-3398-OUT;n:type:ShaderForge.SFN_Normalize,id:2937,x:33748,y:33438,varname:node_2937,prsc:2|IN-2570-OUT;n:type:ShaderForge.SFN_Set,id:3398,x:33924,y:33438,varname:Normal,prsc:2|IN-2937-OUT;n:type:ShaderForge.SFN_NormalVector,id:1741,x:33030,y:33034,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7071,x:33220,y:33098,varname:node_7071,prsc:2,dt:0|A-1741-OUT,B-3772-OUT;n:type:ShaderForge.SFN_LightVector,id:3772,x:33030,y:33184,varname:node_3772,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6092,x:33429,y:32980,varname:node_6092,prsc:2|A-7430-OUT,B-7071-OUT;n:type:ShaderForge.SFN_Clamp01,id:7430,x:33234,y:32962,varname:node_7430,prsc:2|IN-9216-OUT;n:type:ShaderForge.SFN_Relay,id:7978,x:33363,y:32622,varname:node_7978,prsc:2|IN-9551-OUT;n:type:ShaderForge.SFN_Append,id:5480,x:32362,y:33021,varname:node_5480,prsc:2|A-7779-R,B-7779-B;n:type:ShaderForge.SFN_Append,id:5593,x:32512,y:33021,varname:node_5593,prsc:2|A-7779-G,B-7779-R;proporder:851-264-316-7763-8146-171-3975;pass:END;sub:END;*/

Shader "Move/24_DirBlend" {
    Properties {
        _Tilling ("Tilling", Float ) = 3
        _Diffuse_X ("Diffuse_X", 2D) = "white" {}
        _Diffuse_Y ("Diffuse_Y", 2D) = "white" {}
        _Diffuse_Z ("Diffuse_Z", 2D) = "white" {}
        _BumpMap_X ("BumpMap_X", 2D) = "bump" {}
        _BumpMap_Y ("BumpMap_Y", 2D) = "bump" {}
        _BumpMap_Z ("BumpMap_Z", 2D) = "bump" {}
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
            uniform float _Tilling;
            uniform sampler2D _Diffuse_X; uniform float4 _Diffuse_X_ST;
            uniform sampler2D _BumpMap_X; uniform float4 _BumpMap_X_ST;
            uniform sampler2D _Diffuse_Y; uniform float4 _Diffuse_Y_ST;
            uniform sampler2D _BumpMap_Y; uniform float4 _BumpMap_Y_ST;
            uniform sampler2D _Diffuse_Z; uniform float4 _Diffuse_Z_ST;
            uniform sampler2D _BumpMap_Z; uniform float4 _BumpMap_Z_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 BlendMask = pow(abs(i.normalDir),2.0);
                float3 node_4358 = BlendMask;
                float3 node_7779 = (_Tilling*i.posWorld.rgb).rgb;
                float2 X_Projection = float2(node_7779.g,node_7779.b);
                float2 node_1891 = X_Projection;
                float3 _BumpMap_X_var = UnpackNormal(tex2D(_BumpMap_X,TRANSFORM_TEX(node_1891, _BumpMap_X)));
                float2 Y_Projection = float2(node_7779.b,node_7779.r);
                float2 node_8077 = Y_Projection;
                float3 _BumpMap_Y_var = UnpackNormal(tex2D(_BumpMap_Y,TRANSFORM_TEX(node_8077, _BumpMap_Y)));
                float2 Z_Projection = float2(node_7779.r,node_7779.g);
                float2 node_5170 = Z_Projection;
                float3 _BumpMap_Z_var = UnpackNormal(tex2D(_BumpMap_Z,TRANSFORM_TEX(node_5170, _BumpMap_Z)));
                float3 Normal = normalize((node_4358.r*_BumpMap_X_var.rgb + node_4358.g*_BumpMap_Y_var.rgb + node_4358.b*_BumpMap_Z_var.rgb));
                float3 node_9551 = Normal;
                float3 normalLocal = node_9551;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float3 node_3239 = BlendMask;
                float2 node_9910 = X_Projection;
                float4 _Diffuse_X_var = tex2D(_Diffuse_X,TRANSFORM_TEX(node_9910, _Diffuse_X));
                float2 node_7553 = Y_Projection;
                float4 _Diffuse_Y_var = tex2D(_Diffuse_Y,TRANSFORM_TEX(node_7553, _Diffuse_Y));
                float2 node_3925 = Z_Projection;
                float4 _Diffuse_Z_var = tex2D(_Diffuse_Z,TRANSFORM_TEX(node_3925, _Diffuse_Z));
                float3 Diffuse = (node_3239.r*_Diffuse_X_var.rgb + node_3239.g*_Diffuse_Y_var.rgb + node_3239.b*_Diffuse_Z_var.rgb);
                float3 finalColor = (saturate(Diffuse)*dot(normalDirection,lightDirection));
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
            uniform float _Tilling;
            uniform sampler2D _Diffuse_X; uniform float4 _Diffuse_X_ST;
            uniform sampler2D _BumpMap_X; uniform float4 _BumpMap_X_ST;
            uniform sampler2D _Diffuse_Y; uniform float4 _Diffuse_Y_ST;
            uniform sampler2D _BumpMap_Y; uniform float4 _BumpMap_Y_ST;
            uniform sampler2D _Diffuse_Z; uniform float4 _Diffuse_Z_ST;
            uniform sampler2D _BumpMap_Z; uniform float4 _BumpMap_Z_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 BlendMask = pow(abs(i.normalDir),2.0);
                float3 node_4358 = BlendMask;
                float3 node_7779 = (_Tilling*i.posWorld.rgb).rgb;
                float2 X_Projection = float2(node_7779.g,node_7779.b);
                float2 node_1891 = X_Projection;
                float3 _BumpMap_X_var = UnpackNormal(tex2D(_BumpMap_X,TRANSFORM_TEX(node_1891, _BumpMap_X)));
                float2 Y_Projection = float2(node_7779.b,node_7779.r);
                float2 node_8077 = Y_Projection;
                float3 _BumpMap_Y_var = UnpackNormal(tex2D(_BumpMap_Y,TRANSFORM_TEX(node_8077, _BumpMap_Y)));
                float2 Z_Projection = float2(node_7779.r,node_7779.g);
                float2 node_5170 = Z_Projection;
                float3 _BumpMap_Z_var = UnpackNormal(tex2D(_BumpMap_Z,TRANSFORM_TEX(node_5170, _BumpMap_Z)));
                float3 Normal = normalize((node_4358.r*_BumpMap_X_var.rgb + node_4358.g*_BumpMap_Y_var.rgb + node_4358.b*_BumpMap_Z_var.rgb));
                float3 node_9551 = Normal;
                float3 normalLocal = node_9551;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 node_3239 = BlendMask;
                float2 node_9910 = X_Projection;
                float4 _Diffuse_X_var = tex2D(_Diffuse_X,TRANSFORM_TEX(node_9910, _Diffuse_X));
                float2 node_7553 = Y_Projection;
                float4 _Diffuse_Y_var = tex2D(_Diffuse_Y,TRANSFORM_TEX(node_7553, _Diffuse_Y));
                float2 node_3925 = Z_Projection;
                float4 _Diffuse_Z_var = tex2D(_Diffuse_Z,TRANSFORM_TEX(node_3925, _Diffuse_Z));
                float3 Diffuse = (node_3239.r*_Diffuse_X_var.rgb + node_3239.g*_Diffuse_Y_var.rgb + node_3239.b*_Diffuse_Z_var.rgb);
                float3 finalColor = (saturate(Diffuse)*dot(normalDirection,lightDirection));
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
