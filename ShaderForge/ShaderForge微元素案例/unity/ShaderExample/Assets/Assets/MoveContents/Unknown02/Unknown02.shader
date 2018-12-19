// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6459,x:33655,y:33214,varname:node_6459,prsc:2|diff-2341-OUT,spec-7233-OUT,gloss-5323-OUT,normal-7234-RGB;n:type:ShaderForge.SFN_ValueProperty,id:1355,x:32121,y:32765,ptovrint:False,ptlb:ColorFalloff,ptin:_ColorFalloff,varname:node_1355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Fresnel,id:2307,x:32299,y:32747,varname:node_2307,prsc:2|EXP-1355-OUT;n:type:ShaderForge.SFN_Color,id:7048,x:32476,y:32599,ptovrint:False,ptlb:FrontColor,ptin:_FrontColor,varname:node_7048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9960785,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_OneMinus,id:3799,x:32476,y:32747,varname:node_3799,prsc:2|IN-2307-OUT;n:type:ShaderForge.SFN_Multiply,id:1980,x:32684,y:32651,varname:node_1980,prsc:2|A-7048-RGB,B-3799-OUT;n:type:ShaderForge.SFN_Color,id:6556,x:32476,y:32910,ptovrint:False,ptlb:BackColor,ptin:_BackColor,varname:_FrontColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.02745098,c2:0,c3:0.9960785,c4:1;n:type:ShaderForge.SFN_Multiply,id:8073,x:32684,y:32840,varname:node_8073,prsc:2|A-3799-OUT,B-6556-RGB;n:type:ShaderForge.SFN_Add,id:4985,x:32889,y:32729,varname:node_4985,prsc:2|A-1980-OUT,B-8073-OUT;n:type:ShaderForge.SFN_Set,id:345,x:33050,y:32729,varname:FBColor,prsc:2|IN-4985-OUT;n:type:ShaderForge.SFN_LightVector,id:328,x:31679,y:33152,varname:node_328,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:1068,x:31679,y:33288,varname:node_1068,prsc:2;n:type:ShaderForge.SFN_Dot,id:9702,x:31894,y:33223,varname:node_9702,prsc:2,dt:1|A-328-OUT,B-1068-OUT;n:type:ShaderForge.SFN_Power,id:8216,x:32073,y:33223,varname:node_8216,prsc:2|VAL-9702-OUT,EXP-7822-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7822,x:31894,y:33386,ptovrint:False,ptlb:FlakeGlossiness,ptin:_FlakeGlossiness,varname:node_7822,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:8997,x:32073,y:33386,ptovrint:False,ptlb:FlakeIntensity,ptin:_FlakeIntensity,varname:node_8997,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:7651,x:32271,y:33223,varname:node_7651,prsc:2|A-6386-RGB,B-8216-OUT,C-8997-OUT;n:type:ShaderForge.SFN_LightColor,id:6386,x:32073,y:33089,varname:node_6386,prsc:2;n:type:ShaderForge.SFN_Set,id:6994,x:32453,y:33238,varname:LVRColor,prsc:2|IN-7651-OUT;n:type:ShaderForge.SFN_Tex2d,id:806,x:31675,y:33665,ptovrint:False,ptlb:Flake,ptin:_Flake,varname:node_806,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:5143,x:31964,y:33634,varname:node_5143,prsc:2|A-5605-RGB,B-806-RGB,C-6814-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6814,x:31675,y:33835,ptovrint:False,ptlb:FlakeContrast,ptin:_FlakeContrast,varname:node_6814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:5605,x:31675,y:33505,ptovrint:False,ptlb:FlakeColor,ptin:_FlakeColor,varname:node_5605,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.7450981,c3:0,c4:1;n:type:ShaderForge.SFN_Set,id:5462,x:32164,y:33634,varname:FlakeCol,prsc:2|IN-5143-OUT;n:type:ShaderForge.SFN_Fresnel,id:7147,x:32840,y:33240,varname:node_7147,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:2957,x:31677,y:33942,ptovrint:False,ptlb:AOMap,ptin:_AOMap,varname:node_2957,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6170-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:6170,x:31445,y:33942,varname:node_6170,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Set,id:2090,x:31848,y:33942,varname:aoMap,prsc:2|IN-2957-RGB;n:type:ShaderForge.SFN_Get,id:8520,x:32810,y:33059,varname:node_8520,prsc:2|IN-5462-OUT;n:type:ShaderForge.SFN_Multiply,id:6286,x:33026,y:33007,varname:node_6286,prsc:2|A-7424-OUT,B-8520-OUT;n:type:ShaderForge.SFN_Get,id:7424,x:32810,y:33007,varname:node_7424,prsc:2|IN-6994-OUT;n:type:ShaderForge.SFN_Add,id:4155,x:33203,y:32965,varname:node_4155,prsc:2|A-5693-OUT,B-6286-OUT;n:type:ShaderForge.SFN_Get,id:5693,x:33005,y:32949,varname:node_5693,prsc:2|IN-345-OUT;n:type:ShaderForge.SFN_Multiply,id:2341,x:33401,y:32965,varname:node_2341,prsc:2|A-4155-OUT,B-2201-OUT;n:type:ShaderForge.SFN_Get,id:2201,x:33182,y:33099,varname:node_2201,prsc:2|IN-2090-OUT;n:type:ShaderForge.SFN_Slider,id:5323,x:33015,y:33626,ptovrint:False,ptlb:ReflectionGlossiness,ptin:_ReflectionGlossiness,varname:node_5323,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9389095,max:1;n:type:ShaderForge.SFN_Get,id:4392,x:32819,y:33147,varname:node_4392,prsc:2|IN-2090-OUT;n:type:ShaderForge.SFN_Multiply,id:8190,x:33015,y:33173,varname:node_8190,prsc:2|A-4392-OUT,B-7147-OUT;n:type:ShaderForge.SFN_OneMinus,id:1873,x:33015,y:33302,varname:node_1873,prsc:2|IN-7147-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9995,x:32779,y:33434,ptovrint:False,ptlb:Min Reflection,ptin:_MinReflection,varname:node_9995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.025;n:type:ShaderForge.SFN_RemapRange,id:5371,x:33015,y:33434,varname:node_5371,prsc:2,frmn:1,frmx:2,tomn:0,tomx:1|IN-9995-OUT;n:type:ShaderForge.SFN_Add,id:7233,x:33203,y:33302,varname:node_7233,prsc:2|A-8190-OUT,B-1873-OUT,C-5371-OUT;n:type:ShaderForge.SFN_Tex2d,id:7234,x:33172,y:33721,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_7234,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;proporder:1355-7048-6556-7822-8997-806-6814-5605-2957-9995-5323-7234;pass:END;sub:END;*/

Shader "Move/Unknown02" {
    Properties {
        _ColorFalloff ("ColorFalloff", Float ) = 4
        _FrontColor ("FrontColor", Color) = (0.9960785,0,0,1)
        _BackColor ("BackColor", Color) = (0.02745098,0,0.9960785,1)
        _FlakeGlossiness ("FlakeGlossiness", Float ) = 2
        _FlakeIntensity ("FlakeIntensity", Float ) = 1
        _Flake ("Flake", 2D) = "white" {}
        _FlakeContrast ("FlakeContrast", Float ) = 1
        _FlakeColor ("FlakeColor", Color) = (1,0.7450981,0,1)
        _AOMap ("AOMap", 2D) = "white" {}
        _MinReflection ("Min Reflection", Float ) = 0.025
        _ReflectionGlossiness ("ReflectionGlossiness", Range(0, 1)) = 0.9389095
        _BumpMap ("BumpMap", 2D) = "bump" {}
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
            uniform float _ColorFalloff;
            uniform float4 _FrontColor;
            uniform float4 _BackColor;
            uniform float _FlakeGlossiness;
            uniform float _FlakeIntensity;
            uniform sampler2D _Flake; uniform float4 _Flake_ST;
            uniform float _FlakeContrast;
            uniform float4 _FlakeColor;
            uniform sampler2D _AOMap; uniform float4 _AOMap_ST;
            uniform float _ReflectionGlossiness;
            uniform float _MinReflection;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
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
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _ReflectionGlossiness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _AOMap_var = tex2D(_AOMap,TRANSFORM_TEX(i.uv1, _AOMap));
                float3 aoMap = _AOMap_var.rgb;
                float node_7147 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float3 specularColor = ((aoMap*node_7147)+(1.0 - node_7147)+(_MinReflection*1.0+-1.0));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_3799 = (1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_ColorFalloff));
                float3 FBColor = ((_FrontColor.rgb*node_3799)+(node_3799*_BackColor.rgb));
                float3 LVRColor = (_LightColor0.rgb*pow(max(0,dot(lightDirection,viewReflectDirection)),_FlakeGlossiness)*_FlakeIntensity);
                float4 _Flake_var = tex2D(_Flake,TRANSFORM_TEX(i.uv0, _Flake));
                float3 FlakeCol = (_FlakeColor.rgb+_Flake_var.rgb+_FlakeContrast);
                float3 diffuseColor = ((FBColor+(LVRColor*FlakeCol))*aoMap);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
