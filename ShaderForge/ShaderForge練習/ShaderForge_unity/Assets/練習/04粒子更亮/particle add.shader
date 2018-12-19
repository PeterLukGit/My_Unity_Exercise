// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|custl-6346-OUT;n:type:ShaderForge.SFN_Multiply,id:3167,x:32804,y:32779,varname:node_3167,prsc:2|A-3886-RGB,B-3886-A;n:type:ShaderForge.SFN_Tex2d,id:3886,x:32582,y:32779,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_3886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_VertexColor,id:2837,x:32569,y:33192,cmnt:外部頂點色 在這邊也就是監測粒子控制變化,varname:node_2837,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9206,x:32796,y:33192,varname:node_9206,prsc:2|A-2837-RGB,B-2837-A;n:type:ShaderForge.SFN_Multiply,id:6346,x:32999,y:32967,varname:node_6346,prsc:2|A-3167-OUT,B-6919-OUT,C-9206-OUT;n:type:ShaderForge.SFN_Multiply,id:6919,x:32796,y:32947,varname:node_6919,prsc:2|A-6069-RGB,B-6920-OUT;n:type:ShaderForge.SFN_Vector1,id:6920,x:32796,y:33109,cmnt:數值乘二 實際上就是單純把疊加顏色變兩倍,varname:node_6920,prsc:2,v1:2;n:type:ShaderForge.SFN_Color,id:6069,x:32569,y:32981,ptovrint:False,ptlb:color,ptin:_color,varname:node_6069,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Relay,id:7885,x:33092,y:33201,cmnt:Blending blend mode 要改成 Addtive,varname:node_7885,prsc:2|IN-6346-OUT;proporder:6069-3886;pass:END;sub:END;*/

Shader "Shader Forge/particle add" {
    Properties {
        [HDR]_color ("color", Color) = (0.5,0.5,0.5,1)
        _Texture ("Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_6346 = ((_Texture_var.rgb*_Texture_var.a)*(_color.rgb*2.0)*(i.vertexColor.rgb*i.vertexColor.a));
                float3 finalColor = node_6346;
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
