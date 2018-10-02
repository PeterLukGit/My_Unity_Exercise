// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33586,y:32776,varname:node_9361,prsc:2|custl-468-OUT,clip-8534-OUT;n:type:ShaderForge.SFN_Tex2d,id:3454,x:32687,y:32685,varname:node_3454,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1119-OUT,TEX-752-TEX;n:type:ShaderForge.SFN_TexCoord,id:325,x:31292,y:32534,cmnt:就是徒刑的UV座標但我認為比較像是一設計藍圖做完後再乘以Texture,varname:node_325,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:9940,x:32687,y:32897,ptovrint:False,ptlb:Fire color,ptin:_Firecolor,varname:_Firecolor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7265,x:32902,y:32685,cmnt:圖片顯示疊加顏色,varname:node_7265,prsc:2|A-3454-RGB,B-9940-RGB;n:type:ShaderForge.SFN_Tex2d,id:1935,x:32386,y:33387,varname:_node_3454_copy,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1119-OUT,TEX-752-TEX;n:type:ShaderForge.SFN_Step,id:3332,x:32926,y:33177,cmnt:數值低於一個地方為黑0.5 較小,varname:node_3332,prsc:2|A-6397-OUT,B-6377-OUT;n:type:ShaderForge.SFN_Vector1,id:6397,x:32786,y:33107,varname:node_6397,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:8534,x:32940,y:33372,cmnt:數值低於一個地方為黑0.4 較大,varname:node_8534,prsc:2|A-3179-OUT,B-6377-OUT;n:type:ShaderForge.SFN_Multiply,id:6377,x:32671,y:33177,cmnt:相乘後取的要挖空區域,varname:node_6377,prsc:2|A-2023-OUT,B-1935-R;n:type:ShaderForge.SFN_Subtract,id:3179,x:32774,y:33421,cmnt:減法,varname:node_3179,prsc:2|A-6397-OUT,B-1842-OUT;n:type:ShaderForge.SFN_Vector1,id:1842,x:32603,y:33435,varname:node_1842,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Subtract,id:1767,x:33112,y:33226,cmnt:大減小為邊框,varname:node_1767,prsc:2|A-8534-OUT,B-3332-OUT;n:type:ShaderForge.SFN_Add,id:468,x:33297,y:32990,varname:node_468,prsc:2|A-7265-OUT,B-7317-OUT;n:type:ShaderForge.SFN_Color,id:5165,x:33124,y:33401,ptovrint:False,ptlb:edge color,ptin:_edgecolor,varname:_edgecolor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8308824,c2:0.5285288,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7317,x:33319,y:33293,cmnt:邊框上色,varname:node_7317,prsc:2|A-1767-OUT,B-5165-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:752,x:32240,y:32832,ptovrint:False,ptlb:Texture,ptin:_Texture,cmnt:Texture 統合節省資源,varname:_Texture,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector2,id:2847,x:31695,y:33065,cmnt:X軸 0.5 Y軸 0.1 為中下往外灰階,varname:node_2847,prsc:2,v1:0.5,v2:0.1;n:type:ShaderForge.SFN_Distance,id:7181,x:31779,y:33193,cmnt:透過UV code 生成一張可控灰階用以挖空區域,varname:node_7181,prsc:2|A-2847-OUT,B-325-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:9617,x:32182,y:33195,cmnt:反轉因白為顯示黑為隱藏,varname:node_9617,prsc:2|IN-7181-OUT;n:type:ShaderForge.SFN_Power,id:2023,x:32420,y:33195,cmnt:將圖開次方黑會更黑 白會更白,varname:node_2023,prsc:2|VAL-9617-OUT,EXP-3089-OUT;n:type:ShaderForge.SFN_Slider,id:3089,x:32046,y:33392,ptovrint:False,ptlb:Fire Range,ptin:_FireRange,varname:_FireRange,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4668652,max:1;n:type:ShaderForge.SFN_Append,id:1119,x:32352,y:32467,cmnt:附加 將單個向量轉為二為向量也能讓二維向量便三維,varname:node_1119,prsc:2|A-325-U,B-7328-OUT;n:type:ShaderForge.SFN_Add,id:7328,x:32063,y:32578,varname:node_7328,prsc:2|A-7224-OUT,B-9967-OUT;n:type:ShaderForge.SFN_Time,id:1002,x:31653,y:32744,varname:node_1002,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:7224,x:31688,y:32608,cmnt:1- 輸入  反轉,varname:node_7224,prsc:2|IN-325-V;n:type:ShaderForge.SFN_Slider,id:1139,x:31664,y:32901,ptovrint:False,ptlb:Fire Speed,ptin:_FireSpeed,varname:_FireSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:1,max:10;n:type:ShaderForge.SFN_Multiply,id:9967,x:31973,y:32748,varname:node_9967,prsc:2|A-1002-TSL,B-1139-OUT;n:type:ShaderForge.SFN_Relay,id:8925,x:32299,y:32658,cmnt:將時間 X 可控數  把UV位移 G為Y軸,varname:node_8925,prsc:2|IN-1119-OUT;n:type:ShaderForge.SFN_Relay,id:5241,x:33557,y:33308,cmnt:opactiy clip 裁減 ,varname:node_5241,prsc:2|IN-7317-OUT;n:type:ShaderForge.SFN_Relay,id:3110,x:33557,y:33412,cmnt:左邊 Geometry 的 Face Culling 設定 Doble sided 雙面材質,varname:node_3110,prsc:2|IN-7317-OUT;proporder:9940-5165-752-3089-1139;pass:END;sub:END;*/

Shader "Shader Forge/fire" {
    Properties {
        [HDR]_Firecolor ("Fire color", Color) = (1,0,0,1)
        [HDR]_edgecolor ("edge color", Color) = (0.8308824,0.5285288,0,1)
        _Texture ("Texture", 2D) = "white" {}
        _FireRange ("Fire Range", Range(0, 1)) = 0.4668652
        _FireSpeed ("Fire Speed", Range(-10, 10)) = 1
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
            Cull Off
            
            
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
            uniform float4 _Firecolor;
            uniform float4 _edgecolor;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _FireRange;
            uniform float _FireSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float node_6397 = 0.5;
                float4 node_1002 = _Time + _TimeEditor;
                float2 node_1119 = float2(i.uv0.r,((1.0 - i.uv0.g)+(node_1002.r*_FireSpeed))); // 附加 將單個向量轉為二為向量也能讓二維向量便三維
                float4 _node_3454_copy = tex2D(_Texture,TRANSFORM_TEX(node_1119, _Texture));
                float node_6377 = (pow((1.0 - distance(float2(0.5,0.1),i.uv0)),_FireRange)*_node_3454_copy.r); // 相乘後取的要挖空區域
                float node_8534 = step((node_6397-0.1),node_6377); // 數值低於一個地方為黑0.4 較大
                clip(node_8534 - 0.5);
////// Lighting:
                float4 node_3454 = tex2D(_Texture,TRANSFORM_TEX(node_1119, _Texture));
                float3 node_7317 = ((node_8534-step(node_6397,node_6377))*_edgecolor.rgb); // 邊框上色
                float3 finalColor = ((node_3454.rgb*_Firecolor.rgb)+node_7317);
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
            Cull Off
            
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _FireRange;
            uniform float _FireSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float node_6397 = 0.5;
                float4 node_1002 = _Time + _TimeEditor;
                float2 node_1119 = float2(i.uv0.r,((1.0 - i.uv0.g)+(node_1002.r*_FireSpeed))); // 附加 將單個向量轉為二為向量也能讓二維向量便三維
                float4 _node_3454_copy = tex2D(_Texture,TRANSFORM_TEX(node_1119, _Texture));
                float node_6377 = (pow((1.0 - distance(float2(0.5,0.1),i.uv0)),_FireRange)*_node_3454_copy.r); // 相乘後取的要挖空區域
                float node_8534 = step((node_6397-0.1),node_6377); // 數值低於一個地方為黑0.4 較大
                clip(node_8534 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
