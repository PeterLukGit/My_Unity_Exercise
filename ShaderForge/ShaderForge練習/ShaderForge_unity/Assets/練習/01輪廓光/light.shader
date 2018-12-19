// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,cmnt:Custom Lighting 自定义照明,varname:node_9361,prsc:2|custl-8174-OUT;n:type:ShaderForge.SFN_Fresnel,id:8960,x:32544,y:32969,cmnt:Fresnel  外部框邊線,varname:node_8960,prsc:2|EXP-231-OUT;n:type:ShaderForge.SFN_Color,id:814,x:32544,y:33136,ptovrint:False,ptlb:edge color,ptin:_edgecolor,cmnt:顏色要右鍵開啟HDR,varname:_node_814,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.1176469,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:9854,x:32787,y:32969,cmnt:外框腺上色,varname:node_9854,prsc:2|A-8960-OUT,B-814-RGB;n:type:ShaderForge.SFN_Add,id:8174,x:32952,y:32864,cmnt:材質與外框疊加輸出成亮度,varname:node_8174,prsc:2|A-3071-RGB,B-9854-OUT;n:type:ShaderForge.SFN_Tex2d,id:3071,x:32750,y:32752,ptovrint:False,ptlb:Texture 2d,ptin:_Texture2d,varname:_node_3071,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7394,x:31763,y:32937,ptovrint:False,ptlb:test,ptin:_test,varname:_node_7394,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.802404,max:10;n:type:ShaderForge.SFN_ViewVector,id:357,x:31640,y:32818,varname:node_357,prsc:2;n:type:ShaderForge.SFN_Dot,id:3180,x:31842,y:32720,varname:node_3180,prsc:2,dt:1|A-1254-OUT,B-357-OUT;n:type:ShaderForge.SFN_OneMinus,id:5009,x:32029,y:32720,varname:node_5009,prsc:2|IN-3180-OUT;n:type:ShaderForge.SFN_NormalVector,id:1254,x:31640,y:32642,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:194,x:32214,y:32720,varname:node_194,prsc:2|VAL-5009-OUT,EXP-7394-OUT;n:type:ShaderForge.SFN_Slider,id:7859,x:31957,y:33067,ptovrint:False,ptlb:light edge,ptin:_lightedge,varname:_node_7394_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9054294,max:1;n:type:ShaderForge.SFN_RemapRange,id:231,x:32313,y:33044,cmnt:反轉數據 0無光 1有光,varname:node_231,prsc:2,frmn:0,frmx:1,tomn:10,tomx:0.1|IN-7859-OUT;n:type:ShaderForge.SFN_Relay,id:6412,x:32382,y:32720,cmnt:這些節點  Fresnel 也就是 Normal Dot View外部光,varname:node_6412,prsc:2|IN-194-OUT;n:type:ShaderForge.SFN_Relay,id:2891,x:33131,y:32660,cmnt:Custom Lighting 自定义照明 此输入在着色器设置为不打光时处于活动状态可让您定义自定义照明行为您在此处根据光线放置节点,varname:node_2891,prsc:2|IN-8174-OUT;proporder:814-3071-7394-7859;pass:END;sub:END;*/

Shader "Shader Forge/light" {
    Properties {
        [HDR]_edgecolor ("edge color", Color) = (0,0.1176469,1,1)
        _Texture2d ("Texture 2d", 2D) = "white" {}
        _test ("test", Range(0, 10)) = 1.802404
        _lightedge ("light edge", Range(0, 1)) = 0.9054294
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
            uniform float4 _edgecolor;
            uniform sampler2D _Texture2d; uniform float4 _Texture2d_ST;
            uniform float _lightedge;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float4 _Texture2d_var = tex2D(_Texture2d,TRANSFORM_TEX(i.uv0, _Texture2d));
                float3 node_8174 = (_Texture2d_var.rgb+(pow(1.0-max(0,dot(normalDirection, viewDirection)),(_lightedge*-9.9+10.0))*_edgecolor.rgb)); // 材質與外框疊加輸出成亮度
                float3 finalColor = node_8174;
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
