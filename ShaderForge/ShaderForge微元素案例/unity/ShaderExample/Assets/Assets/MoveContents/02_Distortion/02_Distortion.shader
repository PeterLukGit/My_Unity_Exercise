// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5587,x:34171,y:32659,varname:node_5587,prsc:2|diff-2659-OUT,emission-2659-OUT,alpha-3509-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2521,x:31590,y:32658,ptovrint:False,ptlb:DistortionU,ptin:_DistortionU,varname:node_2521,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2797,x:31590,y:32878,ptovrint:False,ptlb:DistortionV,ptin:_DistortionV,varname:_DistortionU_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:6680,x:31590,y:32725,varname:node_6680,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1964,x:31820,y:32634,varname:node_1964,prsc:2|A-2521-OUT,B-6680-T;n:type:ShaderForge.SFN_Multiply,id:2823,x:31820,y:32878,varname:node_2823,prsc:2|A-6680-T,B-2797-OUT;n:type:ShaderForge.SFN_TexCoord,id:7463,x:31950,y:32742,varname:node_7463,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9076,x:32149,y:32632,varname:node_9076,prsc:2,spu:1,spv:0|UVIN-7463-UVOUT,DIST-1964-OUT;n:type:ShaderForge.SFN_Panner,id:351,x:32149,y:32855,varname:node_351,prsc:2,spu:0,spv:1|UVIN-7463-UVOUT,DIST-2823-OUT;n:type:ShaderForge.SFN_Add,id:5203,x:32354,y:32762,varname:node_5203,prsc:2|A-9076-UVOUT,B-351-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5369,x:32555,y:32762,varname:node_5369,prsc:2|A-5203-OUT,B-4459-OUT;n:type:ShaderForge.SFN_Vector1,id:4459,x:32354,y:32899,varname:node_4459,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:2139,x:32764,y:32762,ptovrint:False,ptlb:DistortionNoise,ptin:_DistortionNoise,varname:node_2139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5369-OUT;n:type:ShaderForge.SFN_TexCoord,id:4182,x:32764,y:32588,varname:node_4182,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:9641,x:33147,y:32739,varname:node_9641,prsc:2|A-4182-UVOUT,B-2139-R,T-146-OUT;n:type:ShaderForge.SFN_Slider,id:146,x:32685,y:32951,ptovrint:False,ptlb:DistortionAmount,ptin:_DistortionAmount,varname:node_146,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1367521,max:0.25;n:type:ShaderForge.SFN_Multiply,id:5710,x:32493,y:33255,varname:node_5710,prsc:2|A-8951-OUT,B-8683-T;n:type:ShaderForge.SFN_Multiply,id:1352,x:32493,y:33499,varname:node_1352,prsc:2|A-8683-T,B-5717-OUT;n:type:ShaderForge.SFN_TexCoord,id:6801,x:32623,y:33363,varname:node_6801,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:5118,x:32822,y:33253,varname:node_5118,prsc:2,spu:1,spv:0|UVIN-6801-UVOUT,DIST-5710-OUT;n:type:ShaderForge.SFN_Panner,id:9744,x:32822,y:33476,varname:node_9744,prsc:2,spu:0,spv:1|UVIN-6801-UVOUT,DIST-1352-OUT;n:type:ShaderForge.SFN_Add,id:3845,x:33027,y:33383,varname:node_3845,prsc:2|A-5118-UVOUT,B-9744-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1837,x:33228,y:33383,varname:node_1837,prsc:2|A-3845-OUT,B-7775-OUT;n:type:ShaderForge.SFN_Vector1,id:7775,x:33027,y:33520,varname:node_7775,prsc:2,v1:0.5;n:type:ShaderForge.SFN_ValueProperty,id:8951,x:32211,y:33246,ptovrint:False,ptlb:NoiseU,ptin:_NoiseU,varname:node_8951,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:8683,x:32211,y:33366,varname:node_8683,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5717,x:32211,y:33537,ptovrint:False,ptlb:NoiseV,ptin:_NoiseV,varname:_NoiseU_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4342,x:33406,y:33412,ptovrint:False,ptlb:AlphaNoiseTex,ptin:_AlphaNoiseTex,varname:node_4342,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1837-OUT;n:type:ShaderForge.SFN_Vector1,id:5730,x:33278,y:33633,varname:node_5730,prsc:2,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:8095,x:33458,y:33633,varname:node_8095,prsc:2|DIST-5730-OUT;n:type:ShaderForge.SFN_Tex2d,id:6579,x:33406,y:32926,ptovrint:False,ptlb:Transparent,ptin:_Transparent,varname:node_6579,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9641-OUT;n:type:ShaderForge.SFN_Color,id:3337,x:33406,y:32759,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_3337,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2659,x:33743,y:32898,varname:node_2659,prsc:2|A-3337-RGB,B-6579-RGB,C-8152-RGB,D-7834-OUT;n:type:ShaderForge.SFN_VertexColor,id:8152,x:33406,y:33103,varname:node_8152,prsc:2;n:type:ShaderForge.SFN_Slider,id:7834,x:33249,y:33265,ptovrint:False,ptlb:EmissiveValuem,ptin:_EmissiveValuem,varname:node_7834,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6518565,max:1;n:type:ShaderForge.SFN_Blend,id:8623,x:33726,y:33325,varname:node_8623,prsc:2,blmd:6,clmp:True|SRC-4342-R,DST-6579-A;n:type:ShaderForge.SFN_Multiply,id:3509,x:33924,y:33248,varname:node_3509,prsc:2|A-6579-A,B-8152-A,C-8623-OUT,D-8095-OUT;proporder:2521-2797-2139-146-8951-5717-4342-6579-3337-7834;pass:END;sub:END;*/

Shader "Move/02_Distortion" {
    Properties {
        _DistortionU ("DistortionU", Float ) = 0
        _DistortionV ("DistortionV", Float ) = 0
        _DistortionNoise ("DistortionNoise", 2D) = "white" {}
        _DistortionAmount ("DistortionAmount", Range(0, 0.25)) = 0.1367521
        _NoiseU ("NoiseU", Float ) = 0
        _NoiseV ("NoiseV", Float ) = 0
        _AlphaNoiseTex ("AlphaNoiseTex", 2D) = "white" {}
        _Transparent ("Transparent", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _EmissiveValuem ("EmissiveValuem", Range(0, 1)) = 0.6518565
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float _DistortionU;
            uniform float _DistortionV;
            uniform sampler2D _DistortionNoise; uniform float4 _DistortionNoise_ST;
            uniform float _DistortionAmount;
            uniform float _NoiseU;
            uniform float _NoiseV;
            uniform sampler2D _AlphaNoiseTex; uniform float4 _AlphaNoiseTex_ST;
            uniform sampler2D _Transparent; uniform float4 _Transparent_ST;
            uniform float4 _Color;
            uniform float _EmissiveValuem;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_6680 = _Time;
                float2 node_5369 = (((i.uv0+(_DistortionU*node_6680.g)*float2(1,0))+(i.uv0+(node_6680.g*_DistortionV)*float2(0,1)))*0.5);
                float4 _DistortionNoise_var = tex2D(_DistortionNoise,TRANSFORM_TEX(node_5369, _DistortionNoise));
                float2 node_9641 = lerp(i.uv0,float2(_DistortionNoise_var.r,_DistortionNoise_var.r),_DistortionAmount);
                float4 _Transparent_var = tex2D(_Transparent,TRANSFORM_TEX(node_9641, _Transparent));
                float3 node_2659 = (_Color.rgb*_Transparent_var.rgb*i.vertexColor.rgb*_EmissiveValuem);
                float3 diffuseColor = node_2659;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_2659;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                float4 node_8683 = _Time;
                float2 node_1837 = (((i.uv0+(_NoiseU*node_8683.g)*float2(1,0))+(i.uv0+(node_8683.g*_NoiseV)*float2(0,1)))*0.5);
                float4 _AlphaNoiseTex_var = tex2D(_AlphaNoiseTex,TRANSFORM_TEX(node_1837, _AlphaNoiseTex));
                fixed4 finalRGBA = fixed4(finalColor,(_Transparent_var.a*i.vertexColor.a*saturate((1.0-(1.0-_AlphaNoiseTex_var.r)*(1.0-_Transparent_var.a)))*saturate((sceneZ-partZ)/1.0)));
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float _DistortionU;
            uniform float _DistortionV;
            uniform sampler2D _DistortionNoise; uniform float4 _DistortionNoise_ST;
            uniform float _DistortionAmount;
            uniform float _NoiseU;
            uniform float _NoiseV;
            uniform sampler2D _AlphaNoiseTex; uniform float4 _AlphaNoiseTex_ST;
            uniform sampler2D _Transparent; uniform float4 _Transparent_ST;
            uniform float4 _Color;
            uniform float _EmissiveValuem;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_6680 = _Time;
                float2 node_5369 = (((i.uv0+(_DistortionU*node_6680.g)*float2(1,0))+(i.uv0+(node_6680.g*_DistortionV)*float2(0,1)))*0.5);
                float4 _DistortionNoise_var = tex2D(_DistortionNoise,TRANSFORM_TEX(node_5369, _DistortionNoise));
                float2 node_9641 = lerp(i.uv0,float2(_DistortionNoise_var.r,_DistortionNoise_var.r),_DistortionAmount);
                float4 _Transparent_var = tex2D(_Transparent,TRANSFORM_TEX(node_9641, _Transparent));
                float3 node_2659 = (_Color.rgb*_Transparent_var.rgb*i.vertexColor.rgb*_EmissiveValuem);
                float3 diffuseColor = node_2659;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                float4 node_8683 = _Time;
                float2 node_1837 = (((i.uv0+(_NoiseU*node_8683.g)*float2(1,0))+(i.uv0+(node_8683.g*_NoiseV)*float2(0,1)))*0.5);
                float4 _AlphaNoiseTex_var = tex2D(_AlphaNoiseTex,TRANSFORM_TEX(node_1837, _AlphaNoiseTex));
                fixed4 finalRGBA = fixed4(finalColor * (_Transparent_var.a*i.vertexColor.a*saturate((1.0-(1.0-_AlphaNoiseTex_var.r)*(1.0-_Transparent_var.a)))*saturate((sceneZ-partZ)/1.0)),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
