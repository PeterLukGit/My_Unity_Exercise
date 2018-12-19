// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6459,x:33334,y:32401,varname:node_6459,prsc:2|normal-1463-RGB,custl-3318-OUT,clip-8422-OUT,olwid-6261-OUT;n:type:ShaderForge.SFN_LightVector,id:3295,x:31595,y:32627,varname:node_3295,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2772,x:31595,y:32781,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:7007,x:31804,y:32703,varname:node_7007,prsc:2,dt:4|A-3295-OUT,B-2772-OUT;n:type:ShaderForge.SFN_HalfVector,id:6793,x:31595,y:32951,varname:node_6793,prsc:2;n:type:ShaderForge.SFN_Dot,id:5689,x:31804,y:32869,varname:node_5689,prsc:2,dt:1|A-2772-OUT,B-6793-OUT;n:type:ShaderForge.SFN_Posterize,id:4998,x:32227,y:32703,varname:node_4998,prsc:2|IN-2874-OUT,STPS-8186-OUT;n:type:ShaderForge.SFN_Power,id:5314,x:31997,y:32869,varname:node_5314,prsc:2|VAL-5689-OUT,EXP-2283-OUT;n:type:ShaderForge.SFN_Slider,id:6479,x:31181,y:33086,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_6479,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:1136,x:31509,y:33086,varname:node_1136,prsc:2|A-6479-OUT,B-4259-OUT;n:type:ShaderForge.SFN_Vector1,id:4259,x:31338,y:33154,varname:node_4259,prsc:2,v1:10;n:type:ShaderForge.SFN_Add,id:6048,x:31663,y:33086,varname:node_6048,prsc:2|A-1136-OUT,B-1112-OUT;n:type:ShaderForge.SFN_Vector1,id:1112,x:31509,y:33227,varname:node_1112,prsc:2,v1:1;n:type:ShaderForge.SFN_Exp,id:2283,x:31872,y:33086,varname:node_2283,prsc:2,et:0|IN-6048-OUT;n:type:ShaderForge.SFN_Color,id:5972,x:32227,y:32415,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5972,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9411765,c2:0.9529412,c3:0.9529412,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3066,x:32227,y:32234,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3066,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:124,x:32431,y:32482,varname:node_124,prsc:2|A-3066-RGB,B-5972-RGB,C-9901-OUT,D-4998-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:9901,x:32227,y:32571,varname:node_9901,prsc:2;n:type:ShaderForge.SFN_Posterize,id:3561,x:32227,y:32869,varname:node_3561,prsc:2|IN-5314-OUT,STPS-8186-OUT;n:type:ShaderForge.SFN_Add,id:5813,x:32718,y:32633,varname:node_5813,prsc:2|A-124-OUT,B-6856-RGB,C-3561-OUT;n:type:ShaderForge.SFN_AmbientLight,id:6856,x:32431,y:32633,varname:node_6856,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3318,x:32887,y:32633,varname:node_3318,prsc:2|A-5813-OUT,B-9192-RGB;n:type:ShaderForge.SFN_LightColor,id:9192,x:32718,y:32770,varname:node_9192,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:1463,x:32887,y:32470,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_1463,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:6261,x:32887,y:32797,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_6261,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.001,cur:0.001,max:0.01;n:type:ShaderForge.SFN_Slider,id:8186,x:31928,y:32780,ptovrint:False,ptlb:SpecularBands,ptin:_SpecularBands,varname:node_8186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:5;n:type:ShaderForge.SFN_Slider,id:2215,x:31438,y:32546,ptovrint:False,ptlb:Brightness,ptin:_Brightness,varname:node_2215,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Set,id:4387,x:32431,y:32317,varname:mainTexAlpha,prsc:2|IN-3066-A;n:type:ShaderForge.SFN_Get,id:8422,x:32845,y:32955,varname:node_8422,prsc:2|IN-4387-OUT;n:type:ShaderForge.SFN_Add,id:4835,x:31804,y:32555,varname:node_4835,prsc:2|A-2215-OUT,B-7007-OUT;n:type:ShaderForge.SFN_Clamp01,id:2874,x:31999,y:32552,varname:node_2874,prsc:2|IN-4835-OUT;proporder:6479-5972-3066-1463-6261-8186-2215;pass:END;sub:END;*/

Shader "Move/18_CartoonBP" {
    Properties {
        _Gloss ("Gloss", Range(0, 1)) = 0.5
        _Color ("Color", Color) = (0.9411765,0.9529412,0.9529412,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _OutlineWidth ("OutlineWidth", Range(0.001, 0.01)) = 0.001
        _SpecularBands ("SpecularBands", Range(2, 5)) = 2
        _Brightness ("Brightness", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _OutlineWidth;
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
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWidth,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(mainTexAlpha - 0.5);
                return fixed4(float3(0,0,0),0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
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
            uniform float _Gloss;
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _SpecularBands;
            uniform float _Brightness;
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(mainTexAlpha - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (((_MainTex_var.rgb*_Color.rgb*attenuation*floor(saturate((_Brightness+0.5*dot(lightDirection,normalDirection)+0.5)) * _SpecularBands) / (_SpecularBands - 1))+UNITY_LIGHTMODEL_AMBIENT.rgb+floor(pow(max(0,dot(normalDirection,halfDirection)),exp(((_Gloss*10.0)+1.0))) * _SpecularBands) / (_SpecularBands - 1))*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float mainTexAlpha = _MainTex_var.a;
                clip(mainTexAlpha - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
