// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3296,x:34293,y:32559,varname:node_3296,prsc:2|custl-6858-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4252,x:31985,y:32837,ptovrint:False,ptlb:HatchingAngle,ptin:_HatchingAngle,varname:node_4252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:45;n:type:ShaderForge.SFN_Vector1,id:1240,x:31985,y:32700,varname:node_1240,prsc:2,v1:90;n:type:ShaderForge.SFN_Add,id:7517,x:32171,y:32700,varname:node_7517,prsc:2|A-1240-OUT,B-4252-OUT;n:type:ShaderForge.SFN_Multiply,id:8357,x:32358,y:32700,varname:node_8357,prsc:2|A-7517-OUT,B-8763-OUT;n:type:ShaderForge.SFN_Tau,id:2360,x:31832,y:32920,varname:node_2360,prsc:2;n:type:ShaderForge.SFN_Divide,id:8763,x:31985,y:32920,varname:node_8763,prsc:2|A-2360-OUT,B-9979-OUT;n:type:ShaderForge.SFN_Vector1,id:9979,x:31799,y:33028,varname:node_9979,prsc:2,v1:360;n:type:ShaderForge.SFN_Multiply,id:2569,x:32171,y:32950,varname:node_2569,prsc:2|A-4252-OUT,B-8763-OUT;n:type:ShaderForge.SFN_ScreenPos,id:6589,x:31631,y:33127,varname:node_6589,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:2565,x:31807,y:33127,varname:node_2565,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-6589-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9621,x:31996,y:33127,varname:node_9621,prsc:2|A-2565-OUT,B-3704-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3704,x:31807,y:33304,ptovrint:False,ptlb:HatchingTilling,ptin:_HatchingTilling,varname:node_3704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:180;n:type:ShaderForge.SFN_Set,id:3611,x:32171,y:33127,cmnt:跟點點依樣 放大轉成點點圖,varname:ScreenUV,prsc:2|IN-9621-OUT;n:type:ShaderForge.SFN_Rotator,id:3838,x:32547,y:32700,varname:node_3838,prsc:2|UVIN-6692-OUT,ANG-8357-OUT;n:type:ShaderForge.SFN_Get,id:6692,x:32337,y:32879,varname:node_6692,prsc:2|IN-3611-OUT;n:type:ShaderForge.SFN_Rotator,id:9793,x:32545,y:33093,varname:node_9793,prsc:2|UVIN-6692-OUT,ANG-2569-OUT;n:type:ShaderForge.SFN_Frac,id:4407,x:32720,y:32700,varname:node_4407,prsc:2|IN-3838-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:3497,x:32887,y:32700,varname:node_3497,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4407-OUT;n:type:ShaderForge.SFN_RemapRange,id:3800,x:33061,y:32597,varname:node_3800,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3497-OUT;n:type:ShaderForge.SFN_RemapRange,id:6644,x:33061,y:32774,varname:node_6644,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-3497-OUT;n:type:ShaderForge.SFN_Clamp01,id:4911,x:33243,y:32597,varname:node_4911,prsc:2|IN-3800-OUT;n:type:ShaderForge.SFN_Clamp01,id:9399,x:33243,y:32774,varname:node_9399,prsc:2|IN-6644-OUT;n:type:ShaderForge.SFN_Add,id:3752,x:33412,y:32597,varname:node_3752,prsc:2|A-4911-OUT,B-9399-OUT;n:type:ShaderForge.SFN_LightVector,id:8218,x:31858,y:33383,varname:node_8218,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:8881,x:31858,y:33511,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:3847,x:32052,y:33444,varname:node_3847,prsc:2,dt:4|A-8218-OUT,B-8881-OUT;n:type:ShaderForge.SFN_Multiply,id:4539,x:32214,y:33444,varname:node_4539,prsc:2|A-3847-OUT,B-6933-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:6933,x:32052,y:33589,varname:node_6933,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:2467,x:32385,y:33444,varname:node_2467,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-4539-OUT;n:type:ShaderForge.SFN_Set,id:7252,x:32556,y:33444,cmnt:外部光源,varname:Light,prsc:2|IN-2467-OUT;n:type:ShaderForge.SFN_Get,id:4755,x:33391,y:32756,varname:node_4755,prsc:2|IN-7252-OUT;n:type:ShaderForge.SFN_Subtract,id:1730,x:33594,y:32597,varname:node_1730,prsc:2|A-3752-OUT,B-4755-OUT;n:type:ShaderForge.SFN_Clamp01,id:3475,x:33753,y:32597,varname:node_3475,prsc:2|IN-1730-OUT;n:type:ShaderForge.SFN_Round,id:7227,x:33914,y:32597,varname:node_7227,prsc:2|IN-3475-OUT;n:type:ShaderForge.SFN_Frac,id:9896,x:32720,y:33093,varname:node_9896,prsc:2|IN-9793-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:7903,x:32887,y:33093,varname:node_7903,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9896-OUT;n:type:ShaderForge.SFN_RemapRange,id:4606,x:33061,y:32990,varname:node_4606,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7903-OUT;n:type:ShaderForge.SFN_RemapRange,id:6600,x:33061,y:33167,varname:node_6600,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-7903-OUT;n:type:ShaderForge.SFN_Clamp01,id:3074,x:33243,y:32990,varname:node_3074,prsc:2|IN-4606-OUT;n:type:ShaderForge.SFN_Clamp01,id:6678,x:33243,y:33167,varname:node_6678,prsc:2|IN-6600-OUT;n:type:ShaderForge.SFN_Add,id:5600,x:33412,y:32990,varname:node_5600,prsc:2|A-3074-OUT,B-6678-OUT;n:type:ShaderForge.SFN_Get,id:3483,x:33391,y:33149,varname:node_3483,prsc:2|IN-7252-OUT;n:type:ShaderForge.SFN_Subtract,id:1816,x:33594,y:32990,cmnt:減,varname:node_1816,prsc:2|A-5600-OUT,B-3483-OUT;n:type:ShaderForge.SFN_Clamp01,id:2299,x:33753,y:32990,varname:node_2299,prsc:2|IN-1816-OUT;n:type:ShaderForge.SFN_Round,id:6845,x:33914,y:32990,cmnt:四捨五入,varname:node_6845,prsc:2|IN-2299-OUT;n:type:ShaderForge.SFN_Multiply,id:6858,x:34094,y:32803,varname:node_6858,prsc:2|A-7227-OUT,B-6845-OUT;n:type:ShaderForge.SFN_Relay,id:2468,x:32574,y:32937,cmnt:UV 分兩邊 一邊轉向 一邊保持原樣 ,varname:node_2468,prsc:2|IN-6692-OUT;n:type:ShaderForge.SFN_Relay,id:5085,x:33192,y:32935,cmnt:這邊是為把中間線條留下來就不會左或右邊缺一邊再減掉Light外部光源,varname:node_5085,prsc:2|IN-2468-OUT;n:type:ShaderForge.SFN_Rotator,id:2649,x:33475,y:33601,varname:node_2649,prsc:2|UVIN-11-OUT,ANG-2150-OUT;n:type:ShaderForge.SFN_Frac,id:667,x:33648,y:33601,varname:node_667,prsc:2|IN-2649-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4086,x:33815,y:33601,varname:node_4086,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-667-OUT;n:type:ShaderForge.SFN_RemapRange,id:734,x:33989,y:33498,varname:node_734,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4086-OUT;n:type:ShaderForge.SFN_RemapRange,id:2646,x:33989,y:33675,varname:node_2646,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-4086-OUT;n:type:ShaderForge.SFN_RemapRange,id:5295,x:33989,y:33891,varname:node_5295,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6517-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6517,x:33815,y:33994,varname:node_6517,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9104-OUT;n:type:ShaderForge.SFN_Frac,id:9104,x:33648,y:33994,varname:node_9104,prsc:2|IN-1552-UVOUT;n:type:ShaderForge.SFN_Rotator,id:1552,x:33473,y:33994,varname:node_1552,prsc:2|UVIN-11-OUT,ANG-3356-OUT;n:type:ShaderForge.SFN_RemapRange,id:9087,x:33989,y:34068,varname:node_9087,prsc:2,frmn:1,frmx:0,tomn:-1,tomx:1|IN-6517-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9830,x:32889,y:33762,varname:node_9830,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:6442,x:33065,y:33762,varname:node_6442,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9830-UVOUT;n:type:ShaderForge.SFN_Multiply,id:11,x:33254,y:33762,varname:node_11,prsc:2|A-6442-OUT,B-9346-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9346,x:33065,y:33939,ptovrint:False,ptlb:HatchingTilling_copy,ptin:_HatchingTilling_copy,varname:_HatchingTilling_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:1001,x:32857,y:34154,ptovrint:False,ptlb:HatchingAngle_copy,ptin:_HatchingAngle_copy,varname:_HatchingAngle_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:45;n:type:ShaderForge.SFN_Vector1,id:21,x:32846,y:34017,varname:node_21,prsc:2,v1:90;n:type:ShaderForge.SFN_Add,id:2848,x:33043,y:34017,varname:node_2848,prsc:2|A-21-OUT,B-1001-OUT;n:type:ShaderForge.SFN_Multiply,id:2150,x:33230,y:34017,varname:node_2150,prsc:2|A-2848-OUT,B-9491-OUT;n:type:ShaderForge.SFN_Tau,id:4197,x:32704,y:34237,varname:node_4197,prsc:2;n:type:ShaderForge.SFN_Divide,id:9491,x:32857,y:34237,varname:node_9491,prsc:2|A-4197-OUT,B-1735-OUT;n:type:ShaderForge.SFN_Vector1,id:1735,x:32671,y:34345,varname:node_1735,prsc:2,v1:360;n:type:ShaderForge.SFN_Multiply,id:3356,x:33043,y:34267,varname:node_3356,prsc:2|A-1001-OUT,B-9491-OUT;n:type:ShaderForge.SFN_Relay,id:6304,x:33812,y:32935,cmnt:最後歸一相乘輸出,varname:node_6304,prsc:2|IN-5085-OUT;n:type:ShaderForge.SFN_Relay,id:6279,x:33621,y:33856,cmnt:留中間線條範例,varname:node_6279,prsc:2|IN-11-OUT;proporder:4252-3704;pass:END;sub:END;*/

Shader "Move/16_Hatching" {
    Properties {
        _HatchingAngle ("HatchingAngle", Float ) = 45
        _HatchingTilling ("HatchingTilling", Float ) = 180
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
            uniform float _HatchingAngle;
            uniform float _HatchingTilling;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_8763 = (6.28318530718/360.0);
                float node_3838_ang = ((90.0+_HatchingAngle)*node_8763);
                float node_3838_spd = 1.0;
                float node_3838_cos = cos(node_3838_spd*node_3838_ang);
                float node_3838_sin = sin(node_3838_spd*node_3838_ang);
                float2 node_3838_piv = float2(0.5,0.5);
                float2 ScreenUV = ((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*0.5+0.5)*_HatchingTilling); // 跟點點依樣 放大轉成點點圖
                float2 node_6692 = ScreenUV;
                float2 node_3838 = (mul(node_6692-node_3838_piv,float2x2( node_3838_cos, -node_3838_sin, node_3838_sin, node_3838_cos))+node_3838_piv);
                float node_3497 = frac(node_3838).r;
                float Light = ((0.5*dot(lightDirection,i.normalDir)+0.5*attenuation)*-2.0+1.0); // 外部光源
                float node_9793_ang = (_HatchingAngle*node_8763);
                float node_9793_spd = 1.0;
                float node_9793_cos = cos(node_9793_spd*node_9793_ang);
                float node_9793_sin = sin(node_9793_spd*node_9793_ang);
                float2 node_9793_piv = float2(0.5,0.5);
                float2 node_9793 = (mul(node_6692-node_9793_piv,float2x2( node_9793_cos, -node_9793_sin, node_9793_sin, node_9793_cos))+node_9793_piv);
                float node_7903 = frac(node_9793).r;
                float node_6858 = (round(saturate(((saturate((node_3497*2.0+-1.0))+saturate((node_3497*-2.0+1.0)))-Light)))*round(saturate(((saturate((node_7903*2.0+-1.0))+saturate((node_7903*-2.0+1.0)))-Light))));
                float3 finalColor = float3(node_6858,node_6858,node_6858);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _HatchingAngle;
            uniform float _HatchingTilling;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
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
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_8763 = (6.28318530718/360.0);
                float node_3838_ang = ((90.0+_HatchingAngle)*node_8763);
                float node_3838_spd = 1.0;
                float node_3838_cos = cos(node_3838_spd*node_3838_ang);
                float node_3838_sin = sin(node_3838_spd*node_3838_ang);
                float2 node_3838_piv = float2(0.5,0.5);
                float2 ScreenUV = ((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*0.5+0.5)*_HatchingTilling); // 跟點點依樣 放大轉成點點圖
                float2 node_6692 = ScreenUV;
                float2 node_3838 = (mul(node_6692-node_3838_piv,float2x2( node_3838_cos, -node_3838_sin, node_3838_sin, node_3838_cos))+node_3838_piv);
                float node_3497 = frac(node_3838).r;
                float Light = ((0.5*dot(lightDirection,i.normalDir)+0.5*attenuation)*-2.0+1.0); // 外部光源
                float node_9793_ang = (_HatchingAngle*node_8763);
                float node_9793_spd = 1.0;
                float node_9793_cos = cos(node_9793_spd*node_9793_ang);
                float node_9793_sin = sin(node_9793_spd*node_9793_ang);
                float2 node_9793_piv = float2(0.5,0.5);
                float2 node_9793 = (mul(node_6692-node_9793_piv,float2x2( node_9793_cos, -node_9793_sin, node_9793_sin, node_9793_cos))+node_9793_piv);
                float node_7903 = frac(node_9793).r;
                float node_6858 = (round(saturate(((saturate((node_3497*2.0+-1.0))+saturate((node_3497*-2.0+1.0)))-Light)))*round(saturate(((saturate((node_7903*2.0+-1.0))+saturate((node_7903*-2.0+1.0)))-Light))));
                float3 finalColor = float3(node_6858,node_6858,node_6858);
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
