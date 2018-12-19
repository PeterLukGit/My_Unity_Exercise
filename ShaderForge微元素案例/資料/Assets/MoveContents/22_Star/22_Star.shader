// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8573,x:33346,y:32717,varname:node_8573,prsc:2|custl-3999-OUT;n:type:ShaderForge.SFN_Vector4Property,id:5358,x:32014,y:32802,ptovrint:False,ptlb:ScreenspaceTransform,ptin:_ScreenspaceTransform,varname:node_5358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_Append,id:9155,x:32194,y:32802,varname:node_9155,prsc:2|A-5358-X,B-5358-Y;n:type:ShaderForge.SFN_OneMinus,id:1014,x:32364,y:32802,varname:node_1014,prsc:2|IN-9155-OUT;n:type:ShaderForge.SFN_Add,id:9779,x:32564,y:32802,varname:node_9779,prsc:2|A-1014-OUT,B-8325-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:8325,x:32364,y:32953,varname:node_8325,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:2757,x:32728,y:32802,varname:node_2757,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9779-OUT;n:type:ShaderForge.SFN_Tex2d,id:8527,x:32906,y:32802,ptovrint:False,ptlb:Space,ptin:_Space,varname:node_8527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2757-OUT;n:type:ShaderForge.SFN_Add,id:3999,x:33154,y:32802,varname:node_3999,prsc:2|A-8527-RGB,B-6345-OUT;n:type:ShaderForge.SFN_Slider,id:9749,x:32272,y:33145,ptovrint:False,ptlb:FresnelIntensity,ptin:_FresnelIntensity,varname:node_9749,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3,max:10;n:type:ShaderForge.SFN_Fresnel,id:6359,x:32627,y:33127,varname:node_6359,prsc:2|EXP-9749-OUT;n:type:ShaderForge.SFN_Multiply,id:6345,x:32841,y:33127,varname:node_6345,prsc:2|A-6359-OUT,B-8089-RGB;n:type:ShaderForge.SFN_Color,id:8089,x:32616,y:33282,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_8089,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.01176471,c2:0.08235294,c3:0.1254902,c4:1;proporder:5358-8527-9749-8089;pass:END;sub:END;*/

Shader "Move/22_Star" {
    Properties {
        _ScreenspaceTransform ("ScreenspaceTransform", Vector) = (1,1,0,0)
        _Space ("Space", 2D) = "white" {}
        _FresnelIntensity ("FresnelIntensity", Range(1, 10)) = 3
        _FresnelColor ("FresnelColor", Color) = (0.01176471,0.08235294,0.1254902,1)
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _ScreenspaceTransform;
            uniform sampler2D _Space; uniform float4 _Space_ST;
            uniform float _FresnelIntensity;
            uniform float4 _FresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
                float2 node_2757 = (((1.0 - float2(_ScreenspaceTransform.r,_ScreenspaceTransform.g))+float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg)*0.5+0.5);
                float4 _Space_var = tex2D(_Space,TRANSFORM_TEX(node_2757, _Space));
                float3 finalColor = (_Space_var.rgb+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelIntensity)*_FresnelColor.rgb));
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
