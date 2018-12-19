// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:583,x:33591,y:32558,varname:node_583,prsc:2|diff-5637-OUT,normal-1407-OUT,disp-6677-OUT,tess-3498-OUT;n:type:ShaderForge.SFN_Tex2d,id:3254,x:31610,y:32714,ptovrint:False,ptlb:Utility,ptin:_Utility,varname:node_3254,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:7657,x:31406,y:32904,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3826,x:31607,y:32904,varname:node_3826,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7657-OUT;n:type:ShaderForge.SFN_Subtract,id:2690,x:31806,y:32827,varname:node_2690,prsc:2|A-3254-R,B-3826-OUT;n:type:ShaderForge.SFN_Subtract,id:9150,x:31975,y:32946,varname:node_9150,prsc:2|A-2690-OUT,B-3826-OUT;n:type:ShaderForge.SFN_Multiply,id:853,x:32150,y:32946,varname:node_853,prsc:2|A-9150-OUT,B-2896-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2896,x:31885,y:33123,ptovrint:False,ptlb:Sharpness,ptin:_Sharpness,varname:node_2896,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:9;n:type:ShaderForge.SFN_ValueProperty,id:4242,x:32061,y:33127,ptovrint:False,ptlb:Amount,ptin:_Amount,varname:node_4242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:6319,x:32323,y:32946,varname:node_6319,prsc:2|A-853-OUT,B-4242-OUT;n:type:ShaderForge.SFN_Clamp01,id:6177,x:32492,y:32946,varname:node_6177,prsc:2|IN-6319-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7455,x:31509,y:33406,varname:node_7455,prsc:2;n:type:ShaderForge.SFN_ViewPosition,id:4033,x:31509,y:33539,varname:node_4033,prsc:2;n:type:ShaderForge.SFN_Distance,id:6458,x:31735,y:33490,varname:node_6458,prsc:2|A-7455-XYZ,B-4033-XYZ;n:type:ShaderForge.SFN_Divide,id:5253,x:31943,y:33490,varname:node_5253,prsc:2|A-6458-OUT,B-2161-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2161,x:31735,y:33629,ptovrint:False,ptlb:TessellationDistance,ptin:_TessellationDistance,varname:node_2161,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Power,id:2480,x:32118,y:33536,varname:node_2480,prsc:2|VAL-5253-OUT,EXP-4690-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4690,x:31917,y:33670,ptovrint:False,ptlb:FallOff,ptin:_FallOff,varname:node_4690,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:7708,x:32293,y:33536,varname:node_7708,prsc:2|IN-2480-OUT;n:type:ShaderForge.SFN_ValueProperty,id:741,x:32293,y:33410,ptovrint:False,ptlb:Max Tessellation,ptin:_MaxTessellation,varname:node_741,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Vector1,id:2244,x:32293,y:33480,varname:node_2244,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8758,x:32473,y:33446,varname:node_8758,prsc:2|A-741-OUT,B-2244-OUT,T-7708-OUT;n:type:ShaderForge.SFN_Set,id:9838,x:32637,y:33446,varname:Tessellation,prsc:2|IN-8758-OUT;n:type:ShaderForge.SFN_Get,id:3498,x:33346,y:32988,varname:node_3498,prsc:2|IN-9838-OUT;n:type:ShaderForge.SFN_NormalVector,id:1426,x:31967,y:32416,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:5634,x:32181,y:32416,varname:node_5634,prsc:2|A-1426-OUT,B-6171-OUT;n:type:ShaderForge.SFN_Slider,id:6171,x:31810,y:32572,ptovrint:False,ptlb:BuildUp,ptin:_BuildUp,varname:node_6171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.09073398,max:0.1;n:type:ShaderForge.SFN_Lerp,id:1177,x:32539,y:32425,varname:node_1177,prsc:2|A-5634-OUT,B-6851-OUT,T-8083-OUT;n:type:ShaderForge.SFN_Vector1,id:6851,x:32181,y:32535,varname:node_6851,prsc:2,v1:0;n:type:ShaderForge.SFN_Set,id:1371,x:32649,y:32969,varname:Mask,prsc:2|IN-6177-OUT;n:type:ShaderForge.SFN_Get,id:8083,x:32160,y:32605,varname:node_8083,prsc:2|IN-1371-OUT;n:type:ShaderForge.SFN_Set,id:5797,x:32737,y:32414,varname:Displacement,prsc:2|IN-1177-OUT;n:type:ShaderForge.SFN_Get,id:6677,x:33346,y:32942,varname:node_6677,prsc:2|IN-5797-OUT;n:type:ShaderForge.SFN_Tex2d,id:2536,x:32916,y:32766,ptovrint:False,ptlb:BuildUp_Bump,ptin:_BuildUp_Bump,varname:node_2536,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:9959,x:32916,y:32951,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_9959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:1407,x:33160,y:32826,varname:node_1407,prsc:2|A-2536-RGB,B-9959-RGB,T-3078-OUT;n:type:ShaderForge.SFN_Get,id:3078,x:32895,y:33123,varname:node_3078,prsc:2|IN-1371-OUT;n:type:ShaderForge.SFN_Tex2d,id:622,x:32934,y:32339,ptovrint:False,ptlb:BuildupDiffuse,ptin:_BuildupDiffuse,varname:node_622,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2034,x:32934,y:32519,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5637,x:33226,y:32381,varname:node_5637,prsc:2|A-622-RGB,B-2034-RGB,T-564-OUT;n:type:ShaderForge.SFN_Get,id:564,x:32913,y:32682,varname:node_564,prsc:2|IN-1371-OUT;proporder:2161-4690-741-3254-2896-4242-6171-2536-9959-622-2034;pass:END;sub:END;*/

Shader "Move/09_Snow" {
    Properties {
        _TessellationDistance ("TessellationDistance", Float ) = 10
        _FallOff ("FallOff", Float ) = 1
        _MaxTessellation ("Max Tessellation", Float ) = 4
        _Utility ("Utility", 2D) = "white" {}
        _Sharpness ("Sharpness", Float ) = 9
        _Amount ("Amount", Float ) = 0
        _BuildUp ("BuildUp", Range(0, 0.1)) = 0.09073398
        _BuildUp_Bump ("BuildUp_Bump", 2D) = "bump" {}
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _BuildupDiffuse ("BuildupDiffuse", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform sampler2D _Utility; uniform float4 _Utility_ST;
            uniform float _Sharpness;
            uniform float _Amount;
            uniform float _TessellationDistance;
            uniform float _FallOff;
            uniform float _MaxTessellation;
            uniform float _BuildUp;
            uniform sampler2D _BuildUp_Bump; uniform float4 _BuildUp_Bump_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _BuildupDiffuse; uniform float4 _BuildupDiffuse_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_6851 = 0.0;
                    float4 _Utility_var = tex2Dlod(_Utility,float4(TRANSFORM_TEX(v.texcoord0, _Utility),0.0,0));
                    float node_3826 = v.normal.g;
                    float Mask = saturate(((((_Utility_var.r-node_3826)-node_3826)*_Sharpness)+_Amount));
                    float3 Displacement = lerp((v.normal*_BuildUp),float3(node_6851,node_6851,node_6851),Mask);
                    v.vertex.xyz += Displacement;
                }
                float Tessellation(TessVertex v){
                    float Tessellation = lerp(_MaxTessellation,1.0,saturate(pow((distance(mul(unity_ObjectToWorld, v.vertex).rgb,_WorldSpaceCameraPos)/_TessellationDistance),_FallOff)));
                    return Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BuildUp_Bump_var = UnpackNormal(tex2D(_BuildUp_Bump,TRANSFORM_TEX(i.uv0, _BuildUp_Bump)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _Utility_var = tex2D(_Utility,TRANSFORM_TEX(i.uv0, _Utility));
                float node_3826 = i.normalDir.g;
                float Mask = saturate(((((_Utility_var.r-node_3826)-node_3826)*_Sharpness)+_Amount));
                float3 normalLocal = lerp(_BuildUp_Bump_var.rgb,_BumpMap_var.rgb,Mask);
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
                float4 _BuildupDiffuse_var = tex2D(_BuildupDiffuse,TRANSFORM_TEX(i.uv0, _BuildupDiffuse));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = lerp(_BuildupDiffuse_var.rgb,_MainTex_var.rgb,Mask);
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
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _LightColor0;
            uniform sampler2D _Utility; uniform float4 _Utility_ST;
            uniform float _Sharpness;
            uniform float _Amount;
            uniform float _TessellationDistance;
            uniform float _FallOff;
            uniform float _MaxTessellation;
            uniform float _BuildUp;
            uniform sampler2D _BuildUp_Bump; uniform float4 _BuildUp_Bump_ST;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _BuildupDiffuse; uniform float4 _BuildupDiffuse_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_6851 = 0.0;
                    float4 _Utility_var = tex2Dlod(_Utility,float4(TRANSFORM_TEX(v.texcoord0, _Utility),0.0,0));
                    float node_3826 = v.normal.g;
                    float Mask = saturate(((((_Utility_var.r-node_3826)-node_3826)*_Sharpness)+_Amount));
                    float3 Displacement = lerp((v.normal*_BuildUp),float3(node_6851,node_6851,node_6851),Mask);
                    v.vertex.xyz += Displacement;
                }
                float Tessellation(TessVertex v){
                    float Tessellation = lerp(_MaxTessellation,1.0,saturate(pow((distance(mul(unity_ObjectToWorld, v.vertex).rgb,_WorldSpaceCameraPos)/_TessellationDistance),_FallOff)));
                    return Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BuildUp_Bump_var = UnpackNormal(tex2D(_BuildUp_Bump,TRANSFORM_TEX(i.uv0, _BuildUp_Bump)));
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float4 _Utility_var = tex2D(_Utility,TRANSFORM_TEX(i.uv0, _Utility));
                float node_3826 = i.normalDir.g;
                float Mask = saturate(((((_Utility_var.r-node_3826)-node_3826)*_Sharpness)+_Amount));
                float3 normalLocal = lerp(_BuildUp_Bump_var.rgb,_BumpMap_var.rgb,Mask);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _BuildupDiffuse_var = tex2D(_BuildupDiffuse,TRANSFORM_TEX(i.uv0, _BuildupDiffuse));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = lerp(_BuildupDiffuse_var.rgb,_MainTex_var.rgb,Mask);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
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
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform sampler2D _Utility; uniform float4 _Utility_ST;
            uniform float _Sharpness;
            uniform float _Amount;
            uniform float _TessellationDistance;
            uniform float _FallOff;
            uniform float _MaxTessellation;
            uniform float _BuildUp;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float node_6851 = 0.0;
                    float4 _Utility_var = tex2Dlod(_Utility,float4(TRANSFORM_TEX(v.texcoord0, _Utility),0.0,0));
                    float node_3826 = v.normal.g;
                    float Mask = saturate(((((_Utility_var.r-node_3826)-node_3826)*_Sharpness)+_Amount));
                    float3 Displacement = lerp((v.normal*_BuildUp),float3(node_6851,node_6851,node_6851),Mask);
                    v.vertex.xyz += Displacement;
                }
                float Tessellation(TessVertex v){
                    float Tessellation = lerp(_MaxTessellation,1.0,saturate(pow((distance(mul(unity_ObjectToWorld, v.vertex).rgb,_WorldSpaceCameraPos)/_TessellationDistance),_FallOff)));
                    return Tessellation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
