// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1288,x:32719,y:32712,varname:node_1288,prsc:2|diff-7076-OUT,spec-7506-OUT,gloss-3591-OUT,normal-690-RGB,emission-334-OUT,amdfl-8502-OUT,amspl-4513-OUT;n:type:ShaderForge.SFN_Color,id:7960,x:31344,y:33105,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7960,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3342,x:31344,y:33263,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:6388,x:31816,y:33171,ptovrint:False,ptlb:GlowColor,ptin:_GlowColor,varname:node_6388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7906,x:31816,y:32997,ptovrint:False,ptlb:GlowTexture,ptin:_GlowTexture,varname:node_7906,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:690,x:32230,y:32738,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Color,id:1684,x:31362,y:33575,ptovrint:False,ptlb:RimLightColor,ptin:_RimLightColor,varname:node_1684,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Fresnel,id:1511,x:31362,y:33434,varname:node_1511,prsc:2|NRM-1496-OUT,EXP-3395-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3395,x:31066,y:33462,ptovrint:False,ptlb:RimLightPower,ptin:_RimLightPower,varname:node_3395,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_NormalVector,id:1496,x:31066,y:33283,prsc:2,pt:True;n:type:ShaderForge.SFN_ValueProperty,id:7560,x:32925,y:34088,ptovrint:False,ptlb:SpecPower,ptin:_SpecPower,varname:node_7560,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:7537,x:32925,y:33932,ptovrint:False,ptlb:SpecColor,ptin:_SpecColor,varname:node_7537,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Cubemap,id:8373,x:32110,y:33904,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_8373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_ValueProperty,id:8611,x:32110,y:34084,ptovrint:False,ptlb:Reflection Add,ptin:_ReflectionAdd,varname:node_8611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:6759,x:32431,y:34067,ptovrint:False,ptlb:ReflectionColor,ptin:_ReflectionColor,varname:node_6759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3967,x:31912,y:33649,ptovrint:False,ptlb:Spec(RGB)Gloss(A),ptin:_SpecRGBGlossA,varname:node_3967,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ValueProperty,id:2985,x:31912,y:33833,ptovrint:False,ptlb:GlossAdd,ptin:_GlossAdd,varname:node_2985,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.25;n:type:ShaderForge.SFN_Blend,id:9896,x:32110,y:33717,varname:node_9896,prsc:2,blmd:10,clmp:True|SRC-3967-A,DST-2985-OUT;n:type:ShaderForge.SFN_Set,id:3537,x:32045,y:33378,varname:Diffuse,prsc:2|IN-4047-OUT;n:type:ShaderForge.SFN_Get,id:7076,x:32416,y:32610,varname:node_7076,prsc:2|IN-3537-OUT;n:type:ShaderForge.SFN_Set,id:4842,x:33631,y:33700,varname:SpecColor,prsc:2|IN-4545-OUT;n:type:ShaderForge.SFN_Get,id:7506,x:32416,y:32655,varname:node_7506,prsc:2|IN-4842-OUT;n:type:ShaderForge.SFN_Set,id:1226,x:32310,y:33717,varname:Gloss,prsc:2|IN-9896-OUT;n:type:ShaderForge.SFN_Get,id:3591,x:32416,y:32701,varname:node_3591,prsc:2|IN-1226-OUT;n:type:ShaderForge.SFN_Set,id:7015,x:32209,y:33022,varname:Emission,prsc:2|IN-8830-OUT;n:type:ShaderForge.SFN_Get,id:334,x:32416,y:32808,varname:node_334,prsc:2|IN-7015-OUT;n:type:ShaderForge.SFN_Set,id:8771,x:31817,y:33555,varname:DiffuseAmbient,prsc:2|IN-8153-OUT;n:type:ShaderForge.SFN_Get,id:8502,x:32416,y:32878,varname:node_8502,prsc:2|IN-8771-OUT;n:type:ShaderForge.SFN_Set,id:9627,x:32925,y:33854,varname:SpecAmbient,prsc:2|IN-7006-OUT;n:type:ShaderForge.SFN_Get,id:4513,x:32416,y:32949,varname:node_4513,prsc:2|IN-9627-OUT;n:type:ShaderForge.SFN_Multiply,id:4215,x:31552,y:33172,varname:node_4215,prsc:2|A-7960-RGB,B-3342-RGB;n:type:ShaderForge.SFN_Multiply,id:8153,x:31567,y:33477,varname:node_8153,prsc:2|A-1511-OUT,B-1684-RGB;n:type:ShaderForge.SFN_Multiply,id:8830,x:32035,y:33022,varname:node_8830,prsc:2|A-7906-RGB,B-6388-RGB;n:type:ShaderForge.SFN_Add,id:4047,x:31827,y:33367,varname:node_4047,prsc:2|A-4215-OUT,B-8153-OUT;n:type:ShaderForge.SFN_Multiply,id:2585,x:32336,y:33837,varname:node_2585,prsc:2|A-9896-OUT,B-8373-RGB;n:type:ShaderForge.SFN_Multiply,id:8374,x:32538,y:33844,varname:node_8374,prsc:2|A-2585-OUT,B-8611-OUT;n:type:ShaderForge.SFN_Multiply,id:7006,x:32759,y:33878,varname:node_7006,prsc:2|A-8374-OUT,B-6759-RGB;n:type:ShaderForge.SFN_Multiply,id:602,x:33184,y:33896,varname:node_602,prsc:2|A-7537-RGB,B-7560-OUT;n:type:ShaderForge.SFN_Multiply,id:4545,x:33402,y:33677,varname:node_4545,prsc:2|A-977-OUT,B-602-OUT;n:type:ShaderForge.SFN_Multiply,id:977,x:33025,y:33658,varname:node_977,prsc:2|A-3967-RGB,B-6759-RGB;proporder:7960-3342-690-1684-3395-7560-7537-6759-3967-2985-6388-7906-8373-8611;pass:END;sub:END;*/

Shader "Move/07_Blinn-Phong" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _RimLightColor ("RimLightColor", Color) = (0.5,0.5,0.5,1)
        _RimLightPower ("RimLightPower", Float ) = 5
        _SpecPower ("SpecPower", Float ) = 1
        _SpecColor ("SpecColor", Color) = (1,1,1,1)
        _ReflectionColor ("ReflectionColor", Color) = (0.5,0.5,0.5,1)
        _SpecRGBGlossA ("Spec(RGB)Gloss(A)", 2D) = "white" {}
        _GlossAdd ("GlossAdd", Float ) = 0.25
        _GlowColor ("GlowColor", Color) = (0.5,0.5,0.5,1)
        _GlowTexture ("GlowTexture", 2D) = "black" {}
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionAdd ("Reflection Add", Float ) = 1
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _GlowColor;
            uniform sampler2D _GlowTexture; uniform float4 _GlowTexture_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float4 _RimLightColor;
            uniform float _RimLightPower;
            uniform float _SpecPower;
            uniform float4 _SpecColor;
            uniform samplerCUBE _Reflection;
            uniform float _ReflectionAdd;
            uniform float4 _ReflectionColor;
            uniform sampler2D _SpecRGBGlossA; uniform float4 _SpecRGBGlossA_ST;
            uniform float _GlossAdd;
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
                float4 _SpecRGBGlossA_var = tex2D(_SpecRGBGlossA,TRANSFORM_TEX(i.uv0, _SpecRGBGlossA));
                float node_9896 = saturate(( _GlossAdd > 0.5 ? (1.0-(1.0-2.0*(_GlossAdd-0.5))*(1.0-_SpecRGBGlossA_var.a)) : (2.0*_GlossAdd*_SpecRGBGlossA_var.a) ));
                float Gloss = node_9896;
                float gloss = Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 SpecAmbient = (((node_9896*texCUBE(_Reflection,viewReflectDirection).rgb)*_ReflectionAdd)*_ReflectionColor.rgb);
                float3 SpecColor = ((_SpecRGBGlossA_var.rgb*_ReflectionColor.rgb)*(_SpecColor.rgb*_SpecPower));
                float3 specularColor = SpecColor;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (0 + SpecAmbient)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 node_8153 = (pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimLightPower)*_RimLightColor.rgb);
                float3 DiffuseAmbient = node_8153;
                indirectDiffuse += DiffuseAmbient; // Diffuse Ambient Light
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 Diffuse = ((_Color.rgb*_MainTex_var.rgb)+node_8153);
                float3 diffuseColor = Diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _GlowTexture_var = tex2D(_GlowTexture,TRANSFORM_TEX(i.uv0, _GlowTexture));
                float3 Emission = (_GlowTexture_var.rgb*_GlowColor.rgb);
                float3 emissive = Emission;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _GlowColor;
            uniform sampler2D _GlowTexture; uniform float4 _GlowTexture_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float4 _RimLightColor;
            uniform float _RimLightPower;
            uniform float _SpecPower;
            uniform float4 _SpecColor;
            uniform float4 _ReflectionColor;
            uniform sampler2D _SpecRGBGlossA; uniform float4 _SpecRGBGlossA_ST;
            uniform float _GlossAdd;
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
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _SpecRGBGlossA_var = tex2D(_SpecRGBGlossA,TRANSFORM_TEX(i.uv0, _SpecRGBGlossA));
                float node_9896 = saturate(( _GlossAdd > 0.5 ? (1.0-(1.0-2.0*(_GlossAdd-0.5))*(1.0-_SpecRGBGlossA_var.a)) : (2.0*_GlossAdd*_SpecRGBGlossA_var.a) ));
                float Gloss = node_9896;
                float gloss = Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 SpecColor = ((_SpecRGBGlossA_var.rgb*_ReflectionColor.rgb)*(_SpecColor.rgb*_SpecPower));
                float3 specularColor = SpecColor;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_8153 = (pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimLightPower)*_RimLightColor.rgb);
                float3 Diffuse = ((_Color.rgb*_MainTex_var.rgb)+node_8153);
                float3 diffuseColor = Diffuse;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
