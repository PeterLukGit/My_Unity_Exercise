// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2050,x:32784,y:32647,varname:node_2050,prsc:2|normal-4950-RGB,custl-4241-OUT,olwid-3969-OUT,olcol-6136-OUT;n:type:ShaderForge.SFN_Color,id:5007,x:30870,y:32619,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5007,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5219,x:30870,y:32788,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5219,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3e039c3bce68e0d43b2889a9fef5e003,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:5168,x:31061,y:32716,varname:node_5168,prsc:2|A-5007-RGB,B-5219-RGB;n:type:ShaderForge.SFN_LightVector,id:9825,x:30873,y:33246,varname:node_9825,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:47,x:31490,y:32726,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:1311,x:31052,y:33304,varname:node_1311,prsc:2,dt:4|A-9825-OUT,B-8317-OUT;n:type:ShaderForge.SFN_Tangent,id:8962,x:31245,y:32908,varname:node_8962,prsc:2;n:type:ShaderForge.SFN_Slider,id:2197,x:31037,y:33108,ptovrint:False,ptlb:HighlightSharpness,ptin:_HighlightSharpness,varname:node_2197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Sin,id:2483,x:31381,y:33107,varname:node_2483,prsc:2|IN-2197-OUT;n:type:ShaderForge.SFN_Add,id:6506,x:31476,y:32908,varname:node_6506,prsc:2|A-8962-OUT,B-2483-OUT;n:type:ShaderForge.SFN_Cross,id:5717,x:31749,y:32825,varname:node_5717,prsc:2|A-47-OUT,B-6506-OUT;n:type:ShaderForge.SFN_Normalize,id:7693,x:31916,y:32825,varname:node_7693,prsc:2|IN-5717-OUT;n:type:ShaderForge.SFN_Dot,id:4424,x:31111,y:33699,varname:node_4424,prsc:2,dt:3|A-6054-OUT,B-8544-OUT;n:type:ShaderForge.SFN_Multiply,id:6528,x:31279,y:33685,varname:node_6528,prsc:2|A-4424-OUT,B-4424-OUT;n:type:ShaderForge.SFN_OneMinus,id:2857,x:31444,y:33685,varname:node_2857,prsc:2|IN-6528-OUT;n:type:ShaderForge.SFN_Power,id:4923,x:31819,y:33685,varname:node_4923,prsc:2|VAL-9969-OUT,EXP-2512-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2512,x:31655,y:33834,ptovrint:False,ptlb:Exp,ptin:_Exp,varname:node_2512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Multiply,id:4000,x:32287,y:33484,varname:node_4000,prsc:2|A-9760-OUT,B-5570-OUT;n:type:ShaderForge.SFN_Slider,id:3002,x:31498,y:33916,ptovrint:False,ptlb:HighlightIntensity,ptin:_HighlightIntensity,varname:node_3002,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_NormalVector,id:8317,x:30873,y:33372,prsc:2,pt:True;n:type:ShaderForge.SFN_Set,id:2093,x:31212,y:33304,varname:NdotL,prsc:2|IN-1311-OUT;n:type:ShaderForge.SFN_Get,id:9760,x:32073,y:33457,varname:node_9760,prsc:2|IN-2093-OUT;n:type:ShaderForge.SFN_Get,id:4609,x:32073,y:33372,varname:node_4609,prsc:2|IN-2093-OUT;n:type:ShaderForge.SFN_Multiply,id:7558,x:32271,y:33308,varname:node_7558,prsc:2|A-3956-OUT,B-4609-OUT;n:type:ShaderForge.SFN_Set,id:800,x:31229,y:32716,varname:MainTex,prsc:2|IN-5168-OUT;n:type:ShaderForge.SFN_Get,id:3956,x:32073,y:33281,varname:node_3956,prsc:2|IN-800-OUT;n:type:ShaderForge.SFN_Add,id:2992,x:32514,y:33414,varname:node_2992,prsc:2|A-7558-OUT,B-4000-OUT;n:type:ShaderForge.SFN_LightColor,id:6667,x:31383,y:33272,varname:node_6667,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:830,x:31383,y:33400,varname:node_830,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1444,x:31569,y:33336,varname:node_1444,prsc:2|A-6667-RGB,B-830-OUT;n:type:ShaderForge.SFN_Set,id:9669,x:31726,y:33336,varname:LightColor,prsc:2|IN-1444-OUT;n:type:ShaderForge.SFN_Get,id:1120,x:32493,y:33554,varname:node_1120,prsc:2|IN-9669-OUT;n:type:ShaderForge.SFN_Multiply,id:6327,x:32694,y:33473,varname:node_6327,prsc:2|A-2992-OUT,B-1120-OUT;n:type:ShaderForge.SFN_Set,id:9202,x:32069,y:32825,varname:Binormal,prsc:2|IN-7693-OUT;n:type:ShaderForge.SFN_Get,id:6054,x:30920,y:33699,varname:node_6054,prsc:2|IN-9202-OUT;n:type:ShaderForge.SFN_Multiply,id:4373,x:31985,y:33685,varname:node_4373,prsc:2|A-4923-OUT,B-3002-OUT;n:type:ShaderForge.SFN_Set,id:5951,x:32150,y:33734,varname:Highlight,prsc:2|IN-4373-OUT;n:type:ShaderForge.SFN_Get,id:5570,x:32073,y:33531,varname:node_5570,prsc:2|IN-5951-OUT;n:type:ShaderForge.SFN_AmbientLight,id:2222,x:32385,y:33129,varname:node_2222,prsc:2;n:type:ShaderForge.SFN_Get,id:3851,x:32347,y:33046,varname:node_3851,prsc:2|IN-800-OUT;n:type:ShaderForge.SFN_Multiply,id:6136,x:32567,y:33072,varname:node_6136,prsc:2|A-3851-OUT,B-2222-RGB;n:type:ShaderForge.SFN_Tex2d,id:4950,x:32553,y:32722,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_4950,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c2d814c962c920044876be05b0e0b249,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:3969,x:32431,y:32954,ptovrint:False,ptlb:OutlingWidth,ptin:_OutlingWidth,varname:node_3969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.001907639,max:0.1;n:type:ShaderForge.SFN_HalfVector,id:8544,x:30920,y:33764,varname:node_8544,prsc:2;n:type:ShaderForge.SFN_Set,id:5525,x:32873,y:33473,varname:CustomLighting,prsc:2|IN-6327-OUT;n:type:ShaderForge.SFN_Get,id:4241,x:32567,y:32889,varname:node_4241,prsc:2|IN-5525-OUT;n:type:ShaderForge.SFN_Sqrt,id:9969,x:31613,y:33685,varname:node_9969,prsc:2|IN-2857-OUT;proporder:4950-5007-5219-3969-2197-2512-3002;pass:END;sub:END;*/

Shader "Move/06_Hair" {
    Properties {
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _OutlingWidth ("OutlingWidth", Range(0, 0.1)) = 0.001907639
        _HighlightSharpness ("HighlightSharpness", Range(0, 1)) = 0
        _Exp ("Exp", Float ) = 100
        _HighlightIntensity ("HighlightIntensity", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _OutlingWidth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
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
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlingWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 MainTex = (_Color.rgb*_MainTex_var.rgb);
                return fixed4((MainTex*UNITY_LIGHTMODEL_AMBIENT.rgb),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _HighlightSharpness;
            uniform float _Exp;
            uniform float _HighlightIntensity;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 MainTex = (_Color.rgb*_MainTex_var.rgb);
                float NdotL = 0.5*dot(lightDirection,normalDirection)+0.5;
                float3 Binormal = normalize(cross(normalDirection,(i.tangentDir+sin(_HighlightSharpness))));
                float node_4424 = abs(dot(Binormal,halfDirection));
                float Highlight = (pow(sqrt((1.0 - (node_4424*node_4424))),_Exp)*_HighlightIntensity);
                float3 LightColor = (_LightColor0.rgb*attenuation);
                float3 CustomLighting = (((MainTex*NdotL)+(NdotL*Highlight))*LightColor);
                float3 finalColor = CustomLighting;
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
            Cull Off
            ZWrite Off
            
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _HighlightSharpness;
            uniform float _Exp;
            uniform float _HighlightIntensity;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 MainTex = (_Color.rgb*_MainTex_var.rgb);
                float NdotL = 0.5*dot(lightDirection,normalDirection)+0.5;
                float3 Binormal = normalize(cross(normalDirection,(i.tangentDir+sin(_HighlightSharpness))));
                float node_4424 = abs(dot(Binormal,halfDirection));
                float Highlight = (pow(sqrt((1.0 - (node_4424*node_4424))),_Exp)*_HighlightIntensity);
                float3 LightColor = (_LightColor0.rgb*attenuation);
                float3 CustomLighting = (((MainTex*NdotL)+(NdotL*Highlight))*LightColor);
                float3 finalColor = CustomLighting;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
