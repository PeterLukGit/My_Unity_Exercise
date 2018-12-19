// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33442,y:32696,varname:node_9361,prsc:2|custl-6727-RGB,voffset-8787-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8025,x:32299,y:32949,cmnt:當前物體世界座標,varname:node_8025,prsc:2;n:type:ShaderForge.SFN_Transform,id:6434,x:32502,y:32949,cmnt:當前物體與原點相對座標,varname:node_6434,prsc:2,tffrom:0,tfto:1|IN-8025-XYZ;n:type:ShaderForge.SFN_Negate,id:337,x:32721,y:32949,cmnt:反過來就變成與原點座標差距,varname:node_337,prsc:2|IN-6434-XYZ;n:type:ShaderForge.SFN_Lerp,id:2809,x:32931,y:33024,varname:node_2809,prsc:2|A-337-OUT,B-147-OUT,T-4703-OUT;n:type:ShaderForge.SFN_Relay,id:9930,x:32616,y:32533,cmnt:Vertex Offset 吃的是相對自身座標,varname:node_9930,prsc:2|IN-2809-OUT;n:type:ShaderForge.SFN_Relay,id:9923,x:32781,y:32565,cmnt:Lerp A 使指與原點的相對座標 所以Vertex Offset吃到相對原點座標 就跑到原點,varname:node_9923,prsc:2|IN-9930-OUT;n:type:ShaderForge.SFN_Relay,id:3,x:32793,y:32641,cmnt:至於當Transform 直接 接 Vertex Offset 意思 是 將頂點位移 從物件到原點的距離,varname:node_3,prsc:2|IN-9930-OUT;n:type:ShaderForge.SFN_Relay,id:4556,x:32917,y:32674,cmnt:將頂點位移 從物件到原點的距離,varname:node_4556,prsc:2|IN-3-OUT;n:type:ShaderForge.SFN_Relay,id:9462,x:32917,y:32750,cmnt:但因為位移是指全部頂點移動 所以物體會放大一倍,varname:node_9462,prsc:2|IN-3-OUT;n:type:ShaderForge.SFN_TexCoord,id:1319,x:31995,y:33181,varname:node_1319,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2958,x:32267,y:33219,varname:node_2958,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1319-V;n:type:ShaderForge.SFN_Slider,id:4318,x:31913,y:33578,ptovrint:False,ptlb:Transform,ptin:_Transform,varname:node_4318,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9045,x:32267,y:33454,varname:node_9045,prsc:2|A-2996-OUT,B-4318-OUT;n:type:ShaderForge.SFN_Vector1,id:2996,x:32031,y:33454,varname:node_2996,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:4244,x:32508,y:33219,varname:node_4244,prsc:2|A-2958-OUT,B-9045-OUT;n:type:ShaderForge.SFN_Clamp01,id:4703,x:32700,y:33219,varname:node_4703,prsc:2|IN-4244-OUT;n:type:ShaderForge.SFN_Vector1,id:147,x:32700,y:33123,cmnt:自身座標 因為是相對位置,varname:node_147,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:4409,x:32938,y:33414,varname:node_4409,prsc:2|A-9673-XYZ,B-147-OUT,T-4703-OUT;n:type:ShaderForge.SFN_Vector4Property,id:6701,x:32527,y:33537,ptovrint:False,ptlb:Target,ptin:_Target,varname:node_6701,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Transform,id:9673,x:32740,y:33537,varname:node_9673,prsc:2,tffrom:0,tfto:1|IN-6701-XYZ;n:type:ShaderForge.SFN_Add,id:8787,x:33116,y:33170,varname:node_8787,prsc:2|A-2809-OUT,B-4409-OUT;n:type:ShaderForge.SFN_Color,id:6727,x:32989,y:32856,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_6727,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Relay,id:6072,x:33306,y:33307,cmnt:總評,varname:node_6072,prsc:2|IN-8787-OUT;n:type:ShaderForge.SFN_Relay,id:3629,x:33450,y:33341,cmnt:變形,varname:node_3629,prsc:2|IN-6072-OUT;n:type:ShaderForge.SFN_Relay,id:3994,x:33396,y:33858,cmnt:目標點,varname:node_3994,prsc:2|IN-6072-OUT;n:type:ShaderForge.SFN_Relay,id:2086,x:33425,y:33695,cmnt:UV,varname:node_2086,prsc:2|IN-6072-OUT;n:type:ShaderForge.SFN_Relay,id:272,x:33558,y:33341,cmnt:變形主要原因是 Vertex offset,varname:node_272,prsc:2|IN-3629-OUT;n:type:ShaderForge.SFN_Relay,id:951,x:33830,y:33344,cmnt:Vertex offset 主要吃相對座標,varname:node_951,prsc:2|IN-272-OUT;n:type:ShaderForge.SFN_Relay,id:1815,x:33497,y:33468,cmnt:基本能分成,varname:node_1815,prsc:2|IN-951-OUT;n:type:ShaderForge.SFN_Relay,id:9316,x:33636,y:33521,cmnt:從世界座標轉換成相對原點座標,varname:node_9316,prsc:2|IN-1815-OUT;n:type:ShaderForge.SFN_Relay,id:5187,x:33814,y:33564,cmnt:直接接入 Vertex offset 意思就是 位移目前距離道原點距離,varname:node_5187,prsc:2|IN-9316-OUT;n:type:ShaderForge.SFN_Relay,id:8898,x:33953,y:33610,cmnt:因為有反轉 所以會往反方向跑 而不是往原點跑,varname:node_8898,prsc:2|IN-5187-OUT;n:type:ShaderForge.SFN_Relay,id:8382,x:33623,y:33695,cmnt:其實很簡單 從 V上獲得灰階 放到 Lerp 的 T 就會以灰階數值運算V軸上模型要為移多少,varname:node_8382,prsc:2|IN-2086-OUT;n:type:ShaderForge.SFN_Relay,id:2444,x:33607,y:33858,cmnt:其實就是設定一個點 轉成相對座標 加入到 運算好的灰階點上 就把灰階以0為點變成以目標點為點,varname:node_2444,prsc:2|IN-3994-OUT;proporder:4318-6701-6727;pass:END;sub:END;*/

Shader "Shader Forge/transform_shader" {
    Properties {
        _Transform ("Transform", Range(-1, 1)) = 0
        _Target ("Target", Vector) = (0,0,0,0)
        _Color ("Color", Color) = (1,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            uniform float _Transform;
            uniform float4 _Target;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_147 = 0.0; // 自身座標 因為是相對位置
                float node_4703 = saturate(((o.uv0.g*2.0+-1.0)+(2.0*_Transform)));
                float3 node_2809 = lerp((-1*mul( unity_WorldToObject, float4(mul(unity_ObjectToWorld, v.vertex).rgb,0) ).xyz.rgb),float3(node_147,node_147,node_147),node_4703);
                float3 node_8787 = (node_2809+lerp(mul( unity_WorldToObject, float4(_Target.rgb,0) ).xyz.rgb,float3(node_147,node_147,node_147),node_4703));
                v.vertex.xyz += node_8787;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = _Color.rgb;
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
            Cull Back
            
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
            uniform float _Transform;
            uniform float4 _Target;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float node_147 = 0.0; // 自身座標 因為是相對位置
                float node_4703 = saturate(((o.uv0.g*2.0+-1.0)+(2.0*_Transform)));
                float3 node_2809 = lerp((-1*mul( unity_WorldToObject, float4(mul(unity_ObjectToWorld, v.vertex).rgb,0) ).xyz.rgb),float3(node_147,node_147,node_147),node_4703);
                float3 node_8787 = (node_2809+lerp(mul( unity_WorldToObject, float4(_Target.rgb,0) ).xyz.rgb,float3(node_147,node_147,node_147),node_4703));
                v.vertex.xyz += node_8787;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
