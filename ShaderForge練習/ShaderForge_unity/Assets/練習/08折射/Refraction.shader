// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33869,y:32590,varname:node_9361,prsc:2|custl-7692-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7283,x:32213,y:32820,cmnt:螢幕座標,varname:node_7283,prsc:2,sctp:2;n:type:ShaderForge.SFN_Tex2d,id:6218,x:32296,y:32996,ptovrint:False,ptlb:Roughness Texture,ptin:_RoughnessTexture,varname:node_6218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Append,id:7611,x:32505,y:32966,varname:node_7611,prsc:2|A-6218-R,B-6218-G;n:type:ShaderForge.SFN_Slider,id:757,x:32348,y:33186,ptovrint:False,ptlb:Distort,ptin:_Distort,varname:node_757,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:1816,x:32726,y:32839,cmnt:线性插值,varname:node_1816,prsc:2|A-7283-UVOUT,B-7611-OUT,T-757-OUT;n:type:ShaderForge.SFN_Parallax,id:3241,x:32976,y:32872,cmnt:视差,varname:node_3241,prsc:2|UVIN-1816-OUT,HEI-8753-OUT;n:type:ShaderForge.SFN_Slider,id:8753,x:32666,y:33192,ptovrint:False,ptlb:Parallax,ptin:_Parallax,varname:node_8753,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_SceneColor,id:8766,x:33208,y:32872,cmnt:場景顏色,varname:node_8766,prsc:2|UVIN-3241-UVOUT;n:type:ShaderForge.SFN_Add,id:7692,x:33407,y:32830,varname:node_7692,prsc:2|A-9906-OUT,B-8766-RGB;n:type:ShaderForge.SFN_Fresnel,id:307,x:32492,y:32481,varname:node_307,prsc:2;n:type:ShaderForge.SFN_Slider,id:2082,x:32351,y:32624,ptovrint:False,ptlb:Rim Range,ptin:_RimRange,varname:node_2082,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Power,id:7859,x:32750,y:32464,varname:node_7859,prsc:2|VAL-307-OUT,EXP-8993-OUT;n:type:ShaderForge.SFN_Exp,id:8993,x:32750,y:32613,varname:node_8993,prsc:2,et:0|IN-2082-OUT;n:type:ShaderForge.SFN_Multiply,id:9906,x:33140,y:32517,varname:node_9906,prsc:2|A-7859-OUT,B-2755-OUT;n:type:ShaderForge.SFN_Slider,id:2755,x:32873,y:32730,ptovrint:False,ptlb:Rim Intensity,ptin:_RimIntensity,varname:node_2755,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Relay,id:1685,x:32225,y:32742,cmnt:輸出網格當前部分的屏幕位置可用作屏幕空間映射的UV坐標,varname:node_1685,prsc:2|IN-7283-UVOUT;n:type:ShaderForge.SFN_Relay,id:8596,x:33117,y:33069,cmnt:輸出輸入UV坐標具有從Hei輸入派生的視差偏移深度,varname:node_8596,prsc:2|IN-3241-UVOUT;n:type:ShaderForge.SFN_Relay,id:5496,x:33130,y:33194,cmnt:測試  大於1時為凸透鏡  小於1時為凹透鏡,varname:node_5496,prsc:2|IN-8596-OUT;n:type:ShaderForge.SFN_Relay,id:6991,x:32744,y:33073,cmnt:透過混和讓折射多一層遮罩 讓其變得模糊,varname:node_6991,prsc:2|IN-1816-OUT;n:type:ShaderForge.SFN_Relay,id:5062,x:33199,y:32778,cmnt:簡而言之 就是當前攝影機所渲染的圖片,varname:node_5062,prsc:2|IN-8766-RGB;n:type:ShaderForge.SFN_Relay,id:7240,x:33564,y:33006,cmnt:這些節點作的方法為,varname:node_7240,prsc:2|IN-8766-RGB;n:type:ShaderForge.SFN_Relay,id:7342,x:33681,y:33101,cmnt:一 當前該物體對應螢幕UV座標,varname:node_7342,prsc:2|IN-7240-OUT;n:type:ShaderForge.SFN_Relay,id:8861,x:33944,y:33100,cmnt:這邊要理解成 因為要上一層遮罩 所以要UV座標,varname:node_8861,prsc:2|IN-7342-OUT;n:type:ShaderForge.SFN_Relay,id:7379,x:33944,y:33180,cmnt:但是折射是將螢幕貼圖貼在上面,varname:node_7379,prsc:2|IN-7342-OUT;n:type:ShaderForge.SFN_Relay,id:3815,x:33944,y:33259,cmnt:所以自然要用螢幕UV 而不是物件UV,varname:node_3815,prsc:2|IN-7342-OUT;n:type:ShaderForge.SFN_Relay,id:3665,x:33680,y:33347,cmnt:二 貼上遮罩 用以讓物體沒那麼清晰,varname:node_3665,prsc:2|IN-7240-OUT;n:type:ShaderForge.SFN_Relay,id:9699,x:33680,y:33469,cmnt:三 使用視差 UV 運算,varname:node_9699,prsc:2|IN-7240-OUT;n:type:ShaderForge.SFN_Relay,id:3079,x:33680,y:33551,cmnt:四 把當前螢幕貼圖 貼上去,varname:node_3079,prsc:2|IN-7240-OUT;proporder:6218-757-8753-2082-2755;pass:END;sub:END;*/

Shader "Shader Forge/Refraction" {
    Properties {
        _RoughnessTexture ("Roughness Texture", 2D) = "black" {}
        _Distort ("Distort", Range(0, 1)) = 0
        _Parallax ("Parallax", Range(-10, 10)) = 0
        _RimRange ("Rim Range", Range(0, 10)) = 0
        _RimIntensity ("Rim Intensity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
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
            uniform sampler2D _RoughnessTexture; uniform float4 _RoughnessTexture_ST;
            uniform float _Distort;
            uniform float _Parallax;
            uniform float _RimRange;
            uniform float _RimIntensity;
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
                float4 screenPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float4 _RoughnessTexture_var = tex2D(_RoughnessTexture,TRANSFORM_TEX(i.uv0, _RoughnessTexture));
                float2 node_1816 = lerp(sceneUVs.rg,float2(_RoughnessTexture_var.r,_RoughnessTexture_var.g),_Distort); // 线性插值
                float2 node_3241 = (0.05*(_Parallax - 0.5)*mul(tangentTransform, viewDirection).xy + node_1816); // 视差
                float4 node_8766 = tex2D( _GrabTexture, node_3241.rg); // 場景顏色
                float3 finalColor = ((pow((1.0-max(0,dot(normalDirection, viewDirection))),exp(_RimRange))*_RimIntensity)+node_8766.rgb);
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
