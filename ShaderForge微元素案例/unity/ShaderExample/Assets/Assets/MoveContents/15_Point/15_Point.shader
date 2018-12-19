// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1745,x:33573,y:32579,varname:node_1745,prsc:2|custl-4266-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9886,x:31808,y:32615,cmnt:輸出網格目前部分的屏幕位置可在屏幕空間貼圖時用作 UV 坐標在下拉框中Normalized歸一化會將 00 放在屏幕中心將 11 放在右上方Tiled平鋪也會將 00 放在中心但將根據縱橫比在 X 軸上縮放 ,varname:node_9886,prsc:2,sctp:1;n:type:ShaderForge.SFN_RemapRange,id:9922,x:32075,y:32749,varname:node_9922,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9886-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:1818,x:32086,y:32965,ptovrint:False,ptlb:HalftoneTilling,ptin:_HalftoneTilling,varname:node_1818,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:60;n:type:ShaderForge.SFN_Multiply,id:3434,x:32296,y:32807,cmnt:成出大範圍 取完小數 就會有點點,varname:node_3434,prsc:2|A-9922-OUT,B-1818-OUT;n:type:ShaderForge.SFN_Frac,id:4370,x:32477,y:32840,cmnt:取小數,varname:node_4370,prsc:2|IN-3434-OUT;n:type:ShaderForge.SFN_RemapRange,id:1107,x:32681,y:32807,varname:node_1107,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-4370-OUT;n:type:ShaderForge.SFN_Length,id:7596,x:32841,y:32807,cmnt:把輸入數據 轉成黑白圖 就變成點點圖,varname:node_7596,prsc:2|IN-1107-OUT;n:type:ShaderForge.SFN_LightVector,id:8360,x:32315,y:33065,varname:node_8360,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:7337,x:32315,y:33193,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:8661,x:32504,y:33065,cmnt:外部光源與Normal的內積,varname:node_8661,prsc:2,dt:1|A-8360-OUT,B-7337-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:508,x:32504,y:33218,varname:node_508,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9497,x:32684,y:33114,cmnt:光源衰減,varname:node_9497,prsc:2|A-8661-OUT,B-508-OUT;n:type:ShaderForge.SFN_RemapRange,id:7119,x:32871,y:33061,cmnt:這就變成 陰影處黑 其他地方白 但是比1的白還亮,varname:node_7119,prsc:2,frmn:1,frmx:0,tomn:-0.5,tomx:2|IN-9497-OUT;n:type:ShaderForge.SFN_Power,id:5905,x:33044,y:32889,cmnt:開次方 根據陰影和亮面 開不同次方,varname:node_5905,prsc:2|VAL-7596-OUT,EXP-7119-OUT;n:type:ShaderForge.SFN_Round,id:4266,x:33334,y:32814,cmnt:四捨五入,varname:node_4266,prsc:2|IN-5905-OUT;proporder:1818;pass:END;sub:END;*/

Shader "Move/15_Point" {
    Properties {
        _HalftoneTilling ("HalftoneTilling", Float ) = 60
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
            uniform float _HalftoneTilling;
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
                float node_4266 = round(pow(length((frac(((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*0.5+0.5)*_HalftoneTilling))*1.0+-0.5)),((max(0,dot(lightDirection,i.normalDir))*attenuation)*-2.5+2.0))); // 四捨五入
                float3 finalColor = float3(node_4266,node_4266,node_4266);
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
