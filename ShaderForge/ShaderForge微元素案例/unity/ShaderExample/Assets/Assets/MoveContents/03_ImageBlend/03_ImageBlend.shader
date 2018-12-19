// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7202,x:34141,y:32613,varname:node_7202,prsc:2|emission-7549-OUT;n:type:ShaderForge.SFN_Vector1,id:5988,x:31972,y:32782,varname:node_5988,prsc:2,v1:0.5;n:type:ShaderForge.SFN_ScreenParameters,id:486,x:31972,y:32847,varname:node_486,prsc:2;n:type:ShaderForge.SFN_Divide,id:5281,x:32221,y:32707,varname:node_5281,prsc:2|A-5988-OUT,B-486-PXW;n:type:ShaderForge.SFN_Divide,id:7429,x:32221,y:32832,varname:node_7429,prsc:2|A-5988-OUT,B-486-PXH;n:type:ShaderForge.SFN_ScreenPos,id:4937,x:32423,y:32832,varname:node_4937,prsc:2,sctp:0;n:type:ShaderForge.SFN_RemapRange,id:5335,x:32612,y:32832,varname:node_5335,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4937-UVOUT;n:type:ShaderForge.SFN_Add,id:9081,x:32806,y:32706,varname:node_9081,prsc:2|A-5935-OUT,B-5335-OUT;n:type:ShaderForge.SFN_Append,id:5935,x:32413,y:32707,varname:node_5935,prsc:2|A-5281-OUT,B-7429-OUT;n:type:ShaderForge.SFN_SceneColor,id:7283,x:32997,y:32706,varname:node_7283,prsc:2|UVIN-9081-OUT;n:type:ShaderForge.SFN_Tex2d,id:8923,x:33139,y:32534,ptovrint:False,ptlb:Primary,ptin:_Primary,varname:node_8923,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cb9ee3fe7e1d7d5419dad35e12e54a92,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1470,x:33107,y:32914,ptovrint:False,ptlb:Secondary,ptin:_Secondary,varname:_Primary_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:823f54d5a9890354a8437aaff76431ff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:5751,x:33503,y:32546,varname:node_5751,prsc:2|A-8923-RGB,B-7283-RGB,T-4353-OUT;n:type:ShaderForge.SFN_OneMinus,id:4353,x:33320,y:32645,varname:node_4353,prsc:2|IN-8923-A;n:type:ShaderForge.SFN_OneMinus,id:2622,x:33302,y:33002,varname:node_2622,prsc:2|IN-1470-A;n:type:ShaderForge.SFN_Lerp,id:2141,x:33508,y:32911,varname:node_2141,prsc:2|A-1470-RGB,B-7283-RGB,T-2622-OUT;n:type:ShaderForge.SFN_Slider,id:699,x:33414,y:32802,ptovrint:False,ptlb:Range,ptin:_Range,varname:node_699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1794872,max:1;n:type:ShaderForge.SFN_Lerp,id:7549,x:33785,y:32662,varname:node_7549,prsc:2|A-5751-OUT,B-2141-OUT,T-699-OUT;n:type:ShaderForge.SFN_Tex2d,id:4910,x:33622,y:33129,ptovrint:False,ptlb:Primary_copy,ptin:_Primary_copy,varname:_Primary_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cb9ee3fe7e1d7d5419dad35e12e54a92,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2107,x:33632,y:33324,ptovrint:False,ptlb:Secondary_copy,ptin:_Secondary_copy,varname:_Secondary_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:823f54d5a9890354a8437aaff76431ff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:5115,x:33671,y:33543,ptovrint:False,ptlb:Range_copy,ptin:_Range_copy,varname:_Range_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:8220,x:34070,y:33269,varname:node_8220,prsc:2|A-8066-OUT,B-8113-OUT,T-5115-OUT;n:type:ShaderForge.SFN_OneMinus,id:8066,x:33838,y:33198,varname:node_8066,prsc:2|IN-4910-A;n:type:ShaderForge.SFN_OneMinus,id:8113,x:33828,y:33341,varname:node_8113,prsc:2|IN-2107-A;n:type:ShaderForge.SFN_Lerp,id:5128,x:34070,y:33111,varname:node_5128,prsc:2|A-4910-RGB,B-2107-RGB,T-5115-OUT;n:type:ShaderForge.SFN_Add,id:8280,x:34245,y:33185,varname:node_8280,prsc:2|A-5128-OUT,B-8220-OUT;n:type:ShaderForge.SFN_Relay,id:6560,x:34401,y:33434,cmnt:一張圖 alpha 沒把手用 lerp 來地淺過去 至於範例前半段是把背景計算上去,varname:node_6560,prsc:2|IN-8280-OUT;proporder:8923-1470-699-4910-2107-5115;pass:END;sub:END;*/

Shader "Move/03_ImageBlend" {
    Properties {
        _Primary ("Primary", 2D) = "white" {}
        _Secondary ("Secondary", 2D) = "white" {}
        _Range ("Range", Range(0, 1)) = 0.1794872
        _Primary_copy ("Primary_copy", 2D) = "white" {}
        _Secondary_copy ("Secondary_copy", 2D) = "white" {}
        _Range_copy ("Range_copy", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
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
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Primary; uniform float4 _Primary_ST;
            uniform sampler2D _Secondary; uniform float4 _Secondary_ST;
            uniform float _Range;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 _Primary_var = tex2D(_Primary,TRANSFORM_TEX(i.uv0, _Primary));
                float node_5988 = 0.5;
                float4 node_7283 = tex2D( _GrabTexture, (float2((node_5988/_ScreenParams.r),(node_5988/_ScreenParams.g))+((sceneUVs * 2 - 1).rg*0.5+0.5)));
                float4 _Secondary_var = tex2D(_Secondary,TRANSFORM_TEX(i.uv0, _Secondary));
                float3 emissive = lerp(lerp(_Primary_var.rgb,node_7283.rgb,(1.0 - _Primary_var.a)),lerp(_Secondary_var.rgb,node_7283.rgb,(1.0 - _Secondary_var.a)),_Range);
                float3 finalColor = emissive;
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
