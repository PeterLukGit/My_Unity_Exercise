// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6459,x:32925,y:32581,varname:node_6459,prsc:2|emission-7751-OUT,alpha-1140-OUT;n:type:ShaderForge.SFN_Fresnel,id:2294,x:31538,y:32771,varname:node_2294,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:9188,x:31698,y:32771,cmnt:把取外邊 變成取內部,varname:node_9188,prsc:2|IN-2294-OUT;n:type:ShaderForge.SFN_Slider,id:8488,x:31993,y:33042,ptovrint:False,ptlb:DepthSlider,ptin:_DepthSlider,varname:node_8488,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Color,id:5759,x:32359,y:32656,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5759,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9264706,c2:0.8366723,c3:0.7289144,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:6406,x:32360,y:33046,cmnt:深度混和,varname:node_6406,prsc:2|DIST-8488-OUT;n:type:ShaderForge.SFN_Multiply,id:1140,x:32557,y:32845,varname:node_1140,prsc:2|A-709-OUT,B-6406-OUT;n:type:ShaderForge.SFN_Multiply,id:7751,x:32557,y:32591,varname:node_7751,prsc:2|A-2910-OUT,B-5759-RGB;n:type:ShaderForge.SFN_Slider,id:2910,x:32202,y:32567,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_2910,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:10;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:4009,x:31938,y:32830,cmnt:將輸入數值 更改成另一數值 輸出,varname:node_4009,prsc:2|IN-9188-OUT,IMIN-73-X,IMAX-73-Y,OMIN-73-Z,OMAX-73-W;n:type:ShaderForge.SFN_Vector4Property,id:73,x:31698,y:32928,ptovrint:False,ptlb:RemapValue,ptin:_RemapValue,varname:node_73,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0.1;n:type:ShaderForge.SFN_Clamp01,id:709,x:32215,y:32833,varname:node_709,prsc:2|IN-4009-OUT;n:type:ShaderForge.SFN_Relay,id:1353,x:32561,y:33251,cmnt:深度混和 當物體有碰到時 會輸出0 沒碰就是1 掛在透明度下就能控制碰到物體時的透明度,varname:node_1353,prsc:2|IN-6406-OUT;n:type:ShaderForge.SFN_Relay,id:189,x:32775,y:33115,cmnt:整體就是整個內部填充顏色利用深度混和找到有碰到的地方 呈上 Fresnel 的倒轉 就是內部位置 就是碰到地方帶透明 其他沒透明,varname:node_189,prsc:2|IN-1140-OUT;proporder:8488-5759-2910-73;pass:END;sub:END;*/

Shader "Move/19_Halo" {
    Properties {
        _DepthSlider ("DepthSlider", Range(0, 5)) = 1
        _Color ("Color", Color) = (0.9264706,0.8366723,0.7289144,1)
        _Emission ("Emission", Range(0, 10)) = 1
        _RemapValue ("RemapValue", Vector) = (0,1,0,0.1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform sampler2D _CameraDepthTexture;
            uniform float _DepthSlider;
            uniform float4 _Color;
            uniform float _Emission;
            uniform float4 _RemapValue;
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
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float3 emissive = (_Emission*_Color.rgb);
                float3 finalColor = emissive;
                float node_6406 = saturate((sceneZ-partZ)/_DepthSlider); // 深度混和
                float node_1140 = (saturate((_RemapValue.b + ( ((1.0 - (1.0-max(0,dot(normalDirection, viewDirection)))) - _RemapValue.r) * (_RemapValue.a - _RemapValue.b) ) / (_RemapValue.g - _RemapValue.r)))*node_6406);
                fixed4 finalRGBA = fixed4(finalColor,node_1140);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
