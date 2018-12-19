// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33618,y:32716,varname:node_9361,prsc:2|custl-3895-OUT,clip-2932-OUT;n:type:ShaderForge.SFN_TexCoord,id:5515,x:31297,y:32950,varname:node_5515,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:9416,x:31614,y:33019,varname:node_9416,prsc:2|A-5515-V,B-5922-OUT;n:type:ShaderForge.SFN_Append,id:7944,x:31825,y:32962,varname:node_7944,prsc:2|A-5515-U,B-9416-OUT;n:type:ShaderForge.SFN_Time,id:4348,x:31297,y:33121,varname:node_4348,prsc:2;n:type:ShaderForge.SFN_Slider,id:1923,x:31242,y:33334,ptovrint:False,ptlb:UV Speed,ptin:_UVSpeed,varname:node_1923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:5922,x:31584,y:33217,varname:node_5922,prsc:2|A-4348-TSL,B-1923-OUT;n:type:ShaderForge.SFN_Tex2d,id:8979,x:32147,y:32978,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_8979,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7944-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9197,x:31648,y:33797,ptovrint:False,ptlb:SecondUV,ptin:_SecondUV,varname:node_9197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7867-OUT,B-7861-V;n:type:ShaderForge.SFN_Vector1,id:7867,x:31440,y:33775,varname:node_7867,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:7861,x:31392,y:33896,cmnt:調整到UV1 就是第二張UV,varname:node_7861,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Desaturate,id:114,x:32451,y:33012,varname:node_114,prsc:2|COL-8979-RGB;n:type:ShaderForge.SFN_Multiply,id:8580,x:32625,y:33170,varname:node_8580,prsc:2|A-114-OUT,B-9197-OUT,C-8979-A;n:type:ShaderForge.SFN_Append,id:5529,x:32457,y:32701,varname:node_5529,prsc:2|A-8979-R,B-8979-G;n:type:ShaderForge.SFN_Slider,id:8612,x:32048,y:32694,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_8612,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:7653,x:32184,y:32510,varname:node_7653,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Lerp,id:6133,x:32633,y:32533,varname:node_6133,prsc:2|A-7653-UVOUT,B-5529-OUT,T-8612-OUT;n:type:ShaderForge.SFN_Tex2d,id:358,x:32805,y:32708,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:93741e55e6895234f95e8e45e8ebdb82,ntxv:0,isnm:False|UVIN-6133-OUT;n:type:ShaderForge.SFN_Multiply,id:5976,x:33121,y:32737,varname:node_5976,prsc:2|A-988-RGB,B-358-RGB,C-2162-OUT;n:type:ShaderForge.SFN_Color,id:988,x:32820,y:32533,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_988,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:2162,x:32820,y:32448,varname:node_2162,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:3895,x:33438,y:32880,varname:node_3895,prsc:2|A-5976-OUT,B-3288-OUT;n:type:ShaderForge.SFN_Step,id:8961,x:33009,y:33135,varname:node_8961,prsc:2|A-5373-OUT,B-8580-OUT;n:type:ShaderForge.SFN_Step,id:2932,x:32974,y:33321,varname:node_2932,prsc:2|A-6790-OUT,B-8580-OUT;n:type:ShaderForge.SFN_Slider,id:5373,x:32572,y:32954,ptovrint:False,ptlb:Cut,ptin:_Cut,varname:node_5373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1.1;n:type:ShaderForge.SFN_Slider,id:1422,x:32302,y:33589,ptovrint:False,ptlb:Edge,ptin:_Edge,varname:node_1422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:584,x:32632,y:33541,varname:node_584,prsc:2|IN-1422-OUT;n:type:ShaderForge.SFN_Multiply,id:6790,x:32883,y:33503,varname:node_6790,prsc:2|A-5373-OUT,B-584-OUT;n:type:ShaderForge.SFN_Subtract,id:980,x:33215,y:33337,varname:node_980,prsc:2|A-2932-OUT,B-8961-OUT;n:type:ShaderForge.SFN_Color,id:9400,x:33215,y:33500,ptovrint:False,ptlb:EdgeColor,ptin:_EdgeColor,varname:node_9400,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:6944,x:33215,y:33670,varname:node_6944,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3288,x:33436,y:33382,varname:node_3288,prsc:2|A-9400-RGB,B-980-OUT,C-6944-OUT;n:type:ShaderForge.SFN_Relay,id:7149,x:32035,y:32866,cmnt:UV 移動遮罩,varname:node_7149,prsc:2|IN-7944-OUT;n:type:ShaderForge.SFN_Relay,id:7127,x:31364,y:34098,cmnt:因為第二章UV是3D整體一個縱向UV 所以讓V縱向乘進去就會由下到上消失,varname:node_7127,prsc:2|IN-7861-V;n:type:ShaderForge.SFN_Relay,id:299,x:32001,y:33790,cmnt:主要設定是這幾個,varname:node_299,prsc:2|IN-9197-OUT;n:type:ShaderForge.SFN_Relay,id:774,x:32125,y:33843,cmnt:UV2 是個縱向UV,varname:node_774,prsc:2|IN-299-OUT;n:type:ShaderForge.SFN_Relay,id:2495,x:32274,y:33904,cmnt:所以把V提出去 跟遮罩相乘 就會變成 下邊比較黑,varname:node_2495,prsc:2|IN-774-OUT;n:type:ShaderForge.SFN_Relay,id:7137,x:32416,y:33955,cmnt:就看不到了,varname:node_7137,prsc:2|IN-2495-OUT;proporder:988-358-8612-8979-9197-5373-1923-9400-1422;pass:END;sub:END;*/

Shader "Shader Forge/double_shader" {
    Properties {
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Noise ("Noise", Range(0, 1)) = 0
        _Mask ("Mask", 2D) = "white" {}
        [MaterialToggle] _SecondUV ("SecondUV", Float ) = 1
        _Cut ("Cut", Range(0, 1.1)) = 0
        _UVSpeed ("UV Speed", Range(0, 5)) = 0
        [HDR]_EdgeColor ("EdgeColor", Color) = (0.5,0.5,0.5,1)
        _Edge ("Edge", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
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
            uniform float4 _TimeEditor;
            uniform float _UVSpeed;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform fixed _SecondUV;
            uniform float _Noise;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float _Cut;
            uniform float _Edge;
            uniform float4 _EdgeColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4348 = _Time + _TimeEditor;
                float2 node_7944 = float2(i.uv0.r,(i.uv0.g+(node_4348.r*_UVSpeed)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_7944, _Mask));
                float _SecondUV_var = lerp( 1.0, i.uv1.g, _SecondUV );
                float node_8580 = (dot(_Mask_var.rgb,float3(0.3,0.59,0.11))*_SecondUV_var*_Mask_var.a);
                float node_2932 = step((_Cut*(1.0 - _Edge)),node_8580);
                clip(node_2932 - 0.5);
////// Lighting:
                float2 node_6133 = lerp(i.uv0,float2(_Mask_var.r,_Mask_var.g),_Noise);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6133, _MainTex));
                float3 finalColor = ((_Color.rgb*_MainTex_var.rgb*2.0)+(_EdgeColor.rgb*(node_2932-step(_Cut,node_8580))*2.0));
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
            uniform float4 _TimeEditor;
            uniform float _UVSpeed;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform fixed _SecondUV;
            uniform float _Cut;
            uniform float _Edge;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 node_4348 = _Time + _TimeEditor;
                float2 node_7944 = float2(i.uv0.r,(i.uv0.g+(node_4348.r*_UVSpeed)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_7944, _Mask));
                float _SecondUV_var = lerp( 1.0, i.uv1.g, _SecondUV );
                float node_8580 = (dot(_Mask_var.rgb,float3(0.3,0.59,0.11))*_SecondUV_var*_Mask_var.a);
                float node_2932 = step((_Cut*(1.0 - _Edge)),node_8580);
                clip(node_2932 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
