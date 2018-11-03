// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32715,y:32637,varname:node_3138,prsc:2|emission-6991-RGB;n:type:ShaderForge.SFN_Tex2d,id:6991,x:32403,y:32821,ptovrint:False,ptlb:node_6991,ptin:_node_6991,varname:node_6991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9a549385c0d248e408c8a902de14bd07,ntxv:0,isnm:False|UVIN-2818-OUT;n:type:ShaderForge.SFN_Append,id:2818,x:32149,y:32838,varname:node_2818,prsc:2|A-3471-OUT,B-9090-OUT;n:type:ShaderForge.SFN_Slider,id:3471,x:31639,y:32860,ptovrint:False,ptlb:U,ptin:_U,varname:node_3471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:0.9;n:type:ShaderForge.SFN_Slider,id:9090,x:31663,y:32964,ptovrint:False,ptlb:V,ptin:_V,varname:node_9090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.99,max:1;n:type:ShaderForge.SFN_Tex2d,id:1623,x:32403,y:33039,ptovrint:False,ptlb:node_1623,ptin:_node_1623,varname:node_1623,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9a549385c0d248e408c8a902de14bd07,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Relay,id:1867,x:32595,y:33161,cmnt:Texture 的 UV 意思是說 以輸入數值來對應相對圖片顏色 例輸入0.50.5就是這張圖片正中間顏色,varname:node_1867,prsc:2|IN-6991-RGB;n:type:ShaderForge.SFN_Relay,id:30,x:32721,y:33230,cmnt:現在是第一排 黑到白,varname:node_30,prsc:2|IN-1867-OUT;n:type:ShaderForge.SFN_Relay,id:4435,x:32721,y:33333,cmnt:算式問題無法精準定位,varname:node_4435,prsc:2|IN-1867-OUT;proporder:6991-3471-9090;pass:END;sub:END;*/

Shader "Shader Forge/texture" {
    Properties {
        _node_6991 ("node_6991", 2D) = "white" {}
        _U ("U", Range(0, 0.9)) = 0.1
        _V ("V", Range(0, 1)) = 0.99
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_6991; uniform float4 _node_6991_ST;
            uniform float _U;
            uniform float _V;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_2818 = float2(_U,_V);
                float4 _node_6991_var = tex2D(_node_6991,TRANSFORM_TEX(node_2818, _node_6991));
                float3 emissive = _node_6991_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
