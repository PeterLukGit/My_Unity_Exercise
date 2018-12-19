// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2350,x:32787,y:32760,varname:node_2350,prsc:2|emission-2595-RGB;n:type:ShaderForge.SFN_Tex2d,id:2532,x:32186,y:32787,ptovrint:False,ptlb:Pattern,ptin:_Pattern,varname:node_2532,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:adf777c58f11b7b4ea7a851260cb6245,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector1,id:3454,x:31639,y:33011,varname:node_3454,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7761,x:31639,y:33092,ptovrint:False,ptlb:GradientCount,ptin:_GradientCount,varname:node_7761,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Divide,id:6592,x:31850,y:33031,varname:node_6592,prsc:2|A-3454-OUT,B-7761-OUT;n:type:ShaderForge.SFN_Vector1,id:61,x:31850,y:32950,varname:node_61,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:6704,x:32031,y:32984,varname:node_6704,prsc:2|A-61-OUT,B-6592-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7095,x:31843,y:33257,ptovrint:False,ptlb:GradientID,ptin:_GradientID,varname:node_7095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8792,x:32031,y:33131,varname:node_8792,prsc:2|A-6592-OUT,B-7095-OUT;n:type:ShaderForge.SFN_Append,id:5482,x:32354,y:32945,varname:node_5482,prsc:2|A-2532-R,B-1549-OUT;n:type:ShaderForge.SFN_Add,id:1549,x:32222,y:33069,varname:node_1549,prsc:2|A-6704-OUT,B-8792-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6135,x:32354,y:33099,ptovrint:False,ptlb:Gradients,ptin:_Gradients,varname:node_6135,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c50821d106653b648b1c3fafd1507044,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2595,x:32525,y:32943,varname:node_2595,prsc:2,tex:c50821d106653b648b1c3fafd1507044,ntxv:0,isnm:False|UVIN-5482-OUT,TEX-6135-TEX;proporder:2532-7761-7095-6135;pass:END;sub:END;*/

Shader "Move/05_Gradients" {
    Properties {
        _Pattern ("Pattern", 2D) = "white" {}
        _GradientCount ("GradientCount", Float ) = 8
        _GradientID ("GradientID", Float ) = 0
        _Gradients ("Gradients", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
            uniform sampler2D _Pattern; uniform float4 _Pattern_ST;
            uniform float _GradientCount;
            uniform float _GradientID;
            uniform sampler2D _Gradients; uniform float4 _Gradients_ST;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _Pattern_var = tex2D(_Pattern,TRANSFORM_TEX(i.uv0, _Pattern));
                float node_6592 = (1.0/_GradientCount);
                float2 node_5482 = float2(_Pattern_var.r,((0.5*node_6592)+(node_6592*_GradientID)));
                float4 node_2595 = tex2D(_Gradients,TRANSFORM_TEX(node_5482, _Gradients));
                float3 emissive = node_2595.rgb;
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
