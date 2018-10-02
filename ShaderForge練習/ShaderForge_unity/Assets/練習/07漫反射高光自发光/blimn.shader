// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33452,y:32766,varname:node_9361,prsc:2|normal-9793-RGB,custl-1535-OUT;n:type:ShaderForge.SFN_LightVector,id:3633,x:31384,y:32558,varname:node_3633,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7680,x:31368,y:32768,prsc:2,pt:True;n:type:ShaderForge.SFN_HalfVector,id:6740,x:31368,y:33031,varname:node_6740,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9531,x:32921,y:32637,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_9531,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Set,id:1314,x:33111,y:32637,cmnt:設定數據這樣比較好拿,varname:MainTexture,prsc:2|IN-9531-RGB;n:type:ShaderForge.SFN_Dot,id:6801,x:31603,y:32600,varname:node_6801,prsc:2,dt:1|A-3633-OUT,B-7680-OUT;n:type:ShaderForge.SFN_Add,id:7559,x:31815,y:32600,varname:node_7559,prsc:2|A-6801-OUT,B-8888-OUT;n:type:ShaderForge.SFN_Vector1,id:8888,x:31815,y:32530,varname:node_8888,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7022,x:32011,y:32600,varname:node_7022,prsc:2|A-8888-OUT,B-7559-OUT;n:type:ShaderForge.SFN_Multiply,id:2477,x:32206,y:32600,varname:node_2477,prsc:2|A-7022-OUT,B-7022-OUT;n:type:ShaderForge.SFN_Multiply,id:3755,x:32404,y:32600,varname:node_3755,prsc:2|A-4831-OUT,B-2477-OUT;n:type:ShaderForge.SFN_Get,id:4831,x:32206,y:32532,varname:node_4831,prsc:2|IN-1314-OUT;n:type:ShaderForge.SFN_Multiply,id:3195,x:32602,y:32600,varname:node_3195,prsc:2|A-3755-OUT,B-9962-OUT,C-3639-OUT,D-1331-RGB;n:type:ShaderForge.SFN_Slider,id:9962,x:32127,y:32753,ptovrint:False,ptlb:MainTextureIntensity,ptin:_MainTextureIntensity,cmnt:整體顏色亮度,varname:node_9962,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Dot,id:6113,x:31603,y:32890,cmnt:計算反光面積,varname:node_6113,prsc:2,dt:1|A-7680-OUT,B-6740-OUT;n:type:ShaderForge.SFN_Power,id:8740,x:31851,y:32890,cmnt:計算反光強度 也就是開幾次方,varname:node_8740,prsc:2|VAL-6113-OUT,EXP-752-OUT;n:type:ShaderForge.SFN_Exp,id:752,x:31851,y:33068,varname:node_752,prsc:2,et:1|IN-3900-OUT;n:type:ShaderForge.SFN_Slider,id:1137,x:31289,y:33250,ptovrint:False,ptlb:SpecularRange,ptin:_SpecularRange,varname:node_1137,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:7568,x:32430,y:32954,varname:node_7568,prsc:2|A-8740-OUT,B-4496-OUT,C-4059-OUT;n:type:ShaderForge.SFN_Slider,id:4496,x:32009,y:33151,ptovrint:False,ptlb:SpecularIntensity,ptin:_SpecularIntensity,varname:node_4496,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Color,id:2097,x:32020,y:33337,ptovrint:False,ptlb:SpecularColor,ptin:_SpecularColor,varname:node_2097,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:762,x:32020,y:33251,varname:node_762,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:4059,x:32210,y:33265,varname:node_4059,prsc:2|A-762-OUT,B-2097-RGB;n:type:ShaderForge.SFN_Get,id:8461,x:31357,y:33519,varname:node_8461,prsc:2|IN-1314-OUT;n:type:ShaderForge.SFN_Desaturate,id:637,x:31583,y:33519,cmnt:去飽和度 弄成灰階圖,varname:node_637,prsc:2|COL-8461-OUT;n:type:ShaderForge.SFN_RemapRange,id:9599,x:31804,y:33519,cmnt:找出要反光的地方 縫隙不反光 也就是灰階亮暗,varname:node_9599,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-637-OUT;n:type:ShaderForge.SFN_RemapRange,id:5551,x:31804,y:33710,cmnt:照到縫隙,varname:node_5551,prsc:2,frmn:0,frmx:1,tomn:2,tomx:-2|IN-637-OUT;n:type:ShaderForge.SFN_Clamp01,id:3251,x:31994,y:33519,varname:node_3251,prsc:2|IN-9599-OUT;n:type:ShaderForge.SFN_Clamp01,id:2453,x:31994,y:33710,varname:node_2453,prsc:2|IN-5551-OUT;n:type:ShaderForge.SFN_Color,id:8768,x:31994,y:33910,ptovrint:False,ptlb:Edge,ptin:_Edge,varname:node_8768,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2268,x:32219,y:33710,varname:node_2268,prsc:2|A-2453-OUT,B-3818-OUT;n:type:ShaderForge.SFN_Vector1,id:1692,x:31994,y:34072,varname:node_1692,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:3818,x:32219,y:33910,varname:node_3818,prsc:2|A-8768-RGB,B-1692-OUT;n:type:ShaderForge.SFN_Multiply,id:5323,x:32623,y:33180,varname:node_5323,prsc:2|A-7568-OUT,B-3251-OUT;n:type:ShaderForge.SFN_Add,id:1535,x:32908,y:33176,varname:node_1535,prsc:2|A-5323-OUT,B-4153-OUT,C-8616-OUT,D-3195-OUT;n:type:ShaderForge.SFN_Color,id:3698,x:32811,y:33377,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_3698,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:2404,x:32811,y:33528,varname:node_2404,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:2026,x:33046,y:33377,varname:node_2026,prsc:2|A-3698-RGB,B-2404-OUT;n:type:ShaderForge.SFN_Fresnel,id:9372,x:32811,y:33636,varname:node_9372,prsc:2;n:type:ShaderForge.SFN_Power,id:3404,x:33077,y:33632,varname:node_3404,prsc:2|VAL-9372-OUT,EXP-7205-OUT;n:type:ShaderForge.SFN_Exp,id:7205,x:33077,y:33834,varname:node_7205,prsc:2,et:1|IN-6307-OUT;n:type:ShaderForge.SFN_Slider,id:8186,x:32569,y:33911,ptovrint:False,ptlb:RimRnage,ptin:_RimRnage,varname:node_8186,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_RemapRange,id:6307,x:32907,y:33906,varname:node_6307,prsc:2,frmn:0,frmx:10,tomn:10,tomx:0|IN-8186-OUT;n:type:ShaderForge.SFN_Multiply,id:8616,x:33306,y:33383,cmnt:外暈光,varname:node_8616,prsc:2|A-2026-OUT,B-3404-OUT;n:type:ShaderForge.SFN_Tex2d,id:9793,x:32844,y:32862,ptovrint:False,ptlb:Nomal,ptin:_Nomal,cmnt:Nomal 記得Nomal Dir 的 Perturbad 要打勾,varname:node_9793,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:8682,x:32172,y:34099,ptovrint:False,ptlb:EdgeIntensity,ptin:_EdgeIntensity,varname:node_8682,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:4153,x:32453,y:33710,varname:node_4153,prsc:2|A-2268-OUT,B-8682-OUT;n:type:ShaderForge.SFN_RemapRange,id:3900,x:31650,y:33171,varname:node_3900,prsc:2,frmn:0,frmx:10,tomn:10,tomx:0|IN-1137-OUT;n:type:ShaderForge.SFN_Relay,id:438,x:32470,y:32348,cmnt:這段是演算圖片,varname:node_438,prsc:2|IN-3195-OUT;n:type:ShaderForge.SFN_Relay,id:9354,x:32683,y:32348,cmnt:主要是先演算 Dot 歸納出看的到看不到 至於後半則是讓圖形更圓滑不會黑一塊白一塊,varname:node_9354,prsc:2|IN-438-OUT;n:type:ShaderForge.SFN_Color,id:1331,x:32417,y:32753,ptovrint:False,ptlb:MainTextureColor,ptin:_MainTextureColor,cmnt:蓋顏色,varname:node_1331,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:3639,x:32586,y:32735,varname:node_3639,prsc:2,v1:2;n:type:ShaderForge.SFN_Relay,id:5503,x:32628,y:32954,cmnt:這段是演算反光,varname:node_5503,prsc:2|IN-7568-OUT;n:type:ShaderForge.SFN_Relay,id:743,x:32163,y:33581,cmnt:縫隙不會反光 所以要額外提出來 相乘,varname:node_743,prsc:2|IN-3251-OUT;n:type:ShaderForge.SFN_Relay,id:8037,x:32358,y:33630,cmnt:縫隙發光 的顏色亮度 找到後加到輸出就會讓縫隙發光,varname:node_8037,prsc:2|IN-4153-OUT;n:type:ShaderForge.SFN_Relay,id:3472,x:33069,y:32980,cmnt:把各個地方算好的相加,varname:node_3472,prsc:2|IN-1535-OUT;n:type:ShaderForge.SFN_Relay,id:6898,x:33180,y:33030,cmnt:材質色 根據光照 有深淺,varname:node_6898,prsc:2|IN-3472-OUT;n:type:ShaderForge.SFN_Relay,id:9842,x:33180,y:33096,cmnt:縫隙光 讓縫隙發光,varname:node_9842,prsc:2|IN-3472-OUT;n:type:ShaderForge.SFN_Relay,id:2132,x:33180,y:33168,cmnt:材質反光  不包含縫隙,varname:node_2132,prsc:2|IN-3472-OUT;n:type:ShaderForge.SFN_Relay,id:9338,x:33180,y:33245,cmnt:外暈光,varname:node_9338,prsc:2|IN-3472-OUT;proporder:9531-9793-1331-9962-8768-8682-2097-1137-4496-3698-8186;pass:END;sub:END;*/

Shader "Shader Forge/blimn" {
    Properties {
        _Texture ("Texture", 2D) = "black" {}
        _Nomal ("Nomal", 2D) = "bump" {}
        [HDR]_MainTextureColor ("MainTextureColor", Color) = (0.5,0.5,0.5,1)
        _MainTextureIntensity ("MainTextureIntensity", Range(0, 3)) = 1
        [HDR]_Edge ("Edge", Color) = (0.5,0.5,0.5,1)
        _EdgeIntensity ("EdgeIntensity", Range(0, 10)) = 1
        [HDR]_SpecularColor ("SpecularColor", Color) = (0.5,0.5,0.5,1)
        _SpecularRange ("SpecularRange", Range(0, 10)) = 1
        _SpecularIntensity ("SpecularIntensity", Range(0, 5)) = 1
        [HDR]_RimColor ("RimColor", Color) = (0.5,0.5,0.5,1)
        _RimRnage ("RimRnage", Range(0, 10)) = 1
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _MainTextureIntensity;
            uniform float _SpecularRange;
            uniform float _SpecularIntensity;
            uniform float4 _SpecularColor;
            uniform float4 _Edge;
            uniform float4 _RimColor;
            uniform float _RimRnage;
            uniform sampler2D _Nomal; uniform float4 _Nomal_ST;
            uniform float _EdgeIntensity;
            uniform float4 _MainTextureColor;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Nomal_var = UnpackNormal(tex2D(_Nomal,TRANSFORM_TEX(i.uv0, _Nomal))); // Nomal 記得Nomal Dir 的 Perturbad 要打勾
                float3 normalLocal = _Nomal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 node_7568 = (pow(max(0,dot(normalDirection,halfDirection)),exp2((_SpecularRange*-1.0+10.0)))*_SpecularIntensity*(2.0*_SpecularColor.rgb));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 MainTexture = _Texture_var.rgb; // 設定數據這樣比較好拿
                float node_637 = dot(MainTexture,float3(0.3,0.59,0.11)); // 去飽和度 弄成灰階圖
                float node_3251 = saturate((node_637*2.0+-1.0));
                float3 node_4153 = ((saturate((node_637*-4.0+2.0))*(_Edge.rgb*2.0))*_EdgeIntensity);
                float node_8888 = 0.5;
                float node_7022 = (node_8888*(max(0,dot(lightDirection,normalDirection))+node_8888));
                float3 node_3195 = ((MainTexture*(node_7022*node_7022))*_MainTextureIntensity*2.0*_MainTextureColor.rgb);
                float3 node_1535 = ((node_7568*node_3251)+node_4153+((_RimColor.rgb*2.0)*pow((1.0-max(0,dot(normalDirection, viewDirection))),exp2((_RimRnage*-1.0+10.0))))+node_3195);
                float3 finalColor = node_1535;
                return fixed4(finalColor,1);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _MainTextureIntensity;
            uniform float _SpecularRange;
            uniform float _SpecularIntensity;
            uniform float4 _SpecularColor;
            uniform float4 _Edge;
            uniform float4 _RimColor;
            uniform float _RimRnage;
            uniform sampler2D _Nomal; uniform float4 _Nomal_ST;
            uniform float _EdgeIntensity;
            uniform float4 _MainTextureColor;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Nomal_var = UnpackNormal(tex2D(_Nomal,TRANSFORM_TEX(i.uv0, _Nomal))); // Nomal 記得Nomal Dir 的 Perturbad 要打勾
                float3 normalLocal = _Nomal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 node_7568 = (pow(max(0,dot(normalDirection,halfDirection)),exp2((_SpecularRange*-1.0+10.0)))*_SpecularIntensity*(2.0*_SpecularColor.rgb));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 MainTexture = _Texture_var.rgb; // 設定數據這樣比較好拿
                float node_637 = dot(MainTexture,float3(0.3,0.59,0.11)); // 去飽和度 弄成灰階圖
                float node_3251 = saturate((node_637*2.0+-1.0));
                float3 node_4153 = ((saturate((node_637*-4.0+2.0))*(_Edge.rgb*2.0))*_EdgeIntensity);
                float node_8888 = 0.5;
                float node_7022 = (node_8888*(max(0,dot(lightDirection,normalDirection))+node_8888));
                float3 node_3195 = ((MainTexture*(node_7022*node_7022))*_MainTextureIntensity*2.0*_MainTextureColor.rgb);
                float3 node_1535 = ((node_7568*node_3251)+node_4153+((_RimColor.rgb*2.0)*pow((1.0-max(0,dot(normalDirection, viewDirection))),exp2((_RimRnage*-1.0+10.0))))+node_3195);
                float3 finalColor = node_1535;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
