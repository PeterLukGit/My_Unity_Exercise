// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6459,x:32719,y:32712,varname:node_6459,prsc:2|custl-4535-OUT;n:type:ShaderForge.SFN_LightVector,id:3295,x:31663,y:32627,varname:node_3295,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2772,x:31663,y:32781,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7007,x:31869,y:32781,varname:node_7007,prsc:2,dt:0|A-3295-OUT,B-2772-OUT;n:type:ShaderForge.SFN_Lerp,id:2701,x:32061,y:32627,varname:node_2701,prsc:2|A-4410-RGB,B-2770-RGB,T-7007-OUT;n:type:ShaderForge.SFN_Color,id:2770,x:31869,y:32627,ptovrint:False,ptlb:DarkColor,ptin:_DarkColor,varname:node_2770,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9882354,c2:0.003921569,c3:0.3529412,c4:1;n:type:ShaderForge.SFN_Color,id:4410,x:31869,y:32452,ptovrint:False,ptlb:BrightColor,ptin:_BrightColor,varname:_DarkColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3803922,c2:0.09019608,c3:0.2745098,c4:1;n:type:ShaderForge.SFN_Multiply,id:4535,x:32335,y:32751,varname:node_4535,prsc:2|A-2701-OUT,B-6375-OUT,C-3687-RGB,D-3564-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6375,x:32061,y:32751,varname:node_6375,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3687,x:32061,y:32875,varname:node_3687,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:5354,x:31720,y:33109,varname:node_5354,prsc:2|EXP-3623-OUT;n:type:ShaderForge.SFN_Slider,id:3623,x:31361,y:33135,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_3623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Multiply,id:3564,x:32061,y:33014,varname:node_3564,prsc:2|A-2389-RGB,B-5354-OUT;n:type:ShaderForge.SFN_Color,id:2389,x:31720,y:32963,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_2389,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8117648,c3:0.937255,c4:1;proporder:2770-4410-3623-2389;pass:END;sub:END;*/

Shader "Move/Unknown01" {
    Properties {
        _DarkColor ("DarkColor", Color) = (0.9882354,0.003921569,0.3529412,1)
        _BrightColor ("BrightColor", Color) = (0.3803922,0.09019608,0.2745098,1)
        _Fresnel ("Fresnel", Range(0, 1)) = 0.2
        _FresnelColor ("FresnelColor", Color) = (1,0.8117648,0.937255,1)
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
            uniform float4 _DarkColor;
            uniform float4 _BrightColor;
            uniform float _Fresnel;
            uniform float4 _FresnelColor;
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
                float3 finalColor = (lerp(_BrightColor.rgb,_DarkColor.rgb,dot(lightDirection,i.normalDir))*attenuation*_LightColor0.rgb*(_FresnelColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)));
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
