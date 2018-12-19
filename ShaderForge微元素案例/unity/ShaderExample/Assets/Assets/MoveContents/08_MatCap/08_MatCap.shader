// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3891,x:32877,y:32730,varname:node_3891,prsc:2|normal-3868-RGB,custl-7455-RGB;n:type:ShaderForge.SFN_NormalVector,id:1456,x:31934,y:33077,prsc:2,pt:True;n:type:ShaderForge.SFN_Tex2d,id:3868,x:32378,y:32758,ptovrint:False,ptlb:BumpMap,ptin:_BumpMap,varname:node_3868,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Transform,id:4413,x:32110,y:33077,varname:node_4413,prsc:2,tffrom:0,tfto:3|IN-1456-OUT;n:type:ShaderForge.SFN_RemapRange,id:1809,x:32284,y:33077,varname:node_1809,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4413-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:3973,x:32463,y:33077,varname:node_3973,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1809-OUT;n:type:ShaderForge.SFN_Tex2d,id:7455,x:32648,y:33078,ptovrint:False,ptlb:MatCap,ptin:_MatCap,varname:node_7455,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3c9f3cb27205c75459d252b001ad5ee0,ntxv:0,isnm:False|UVIN-3973-OUT;n:type:ShaderForge.SFN_Relay,id:9725,x:32034,y:33436,cmnt:計算每個點 Normal 轉換 成視圖座標 歸零歸一後 留下 RG 就是 Texture UV 座標 根據該點的視圖位置決定顏色,varname:node_9725,prsc:2|IN-7455-RGB;n:type:ShaderForge.SFN_Relay,id:8361,x:32239,y:33510,cmnt:Comp. Mask 輸出時 已經是 每個點的數據  只勾R或G時會呈現灰階,varname:node_8361,prsc:2|IN-9725-OUT;proporder:3868-7455;pass:END;sub:END;*/

Shader "Move/08_MatCap" {
    Properties {
        _BumpMap ("BumpMap", 2D) = "bump" {}
        _MatCap ("MatCap", 2D) = "white" {}
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform sampler2D _MatCap; uniform float4 _MatCap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
                float2 node_3973 = (mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb*0.5+0.5).rg;
                float4 _MatCap_var = tex2D(_MatCap,TRANSFORM_TEX(node_3973, _MatCap));
                float3 finalColor = _MatCap_var.rgb;
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
