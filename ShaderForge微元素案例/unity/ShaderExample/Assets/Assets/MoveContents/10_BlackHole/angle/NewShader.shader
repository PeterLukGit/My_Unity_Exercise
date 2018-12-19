// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2;n:type:ShaderForge.SFN_Rotator,id:6322,x:32283,y:32704,varname:node_6322,prsc:2|UVIN-5140-UVOUT,ANG-3540-OUT;n:type:ShaderForge.SFN_TexCoord,id:5140,x:32047,y:32704,varname:node_5140,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Distance,id:2706,x:32283,y:32898,varname:node_2706,prsc:2|A-6287-OUT,B-2044-UVOUT;n:type:ShaderForge.SFN_Vector2,id:6287,x:32049,y:32898,varname:node_6287,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_TexCoord,id:2044,x:32049,y:32992,varname:node_2044,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3540,x:32472,y:32898,varname:node_3540,prsc:2|A-2706-OUT,B-2499-OUT;n:type:ShaderForge.SFN_Slider,id:2499,x:32212,y:33063,ptovrint:False,ptlb:node_7314,ptin:_node_7314,varname:node_7314,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:50,max:50;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
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
                float3 finalColor = 0;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
