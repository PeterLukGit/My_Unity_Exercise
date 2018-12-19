// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33305,y:32690,varname:node_9361,prsc:2|custl-7655-OUT;n:type:ShaderForge.SFN_Tex2d,id:729,x:32364,y:32673,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:343,x:32442,y:33079,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_343,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Fresnel,id:5255,x:32422,y:32886,varname:node_5255,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9822,x:32763,y:33012,varname:node_9822,prsc:2|A-5255-OUT,B-343-RGB,C-8223-OUT;n:type:ShaderForge.SFN_Vector1,id:8223,x:32411,y:33256,varname:node_8223,prsc:2,v1:2;n:type:ShaderForge.SFN_Depth,id:4796,x:32739,y:32648,cmnt:它根据距离输入输出 0 和 1 之间的值具体取决于此像素距背景几何图形多近,varname:node_4796,prsc:2;n:type:ShaderForge.SFN_SceneDepth,id:8433,x:32739,y:32498,cmnt:摄像机到当前像素背后的场景的深度,varname:node_8433,prsc:2;n:type:ShaderForge.SFN_If,id:7655,x:32984,y:32862,varname:node_7655,prsc:2|A-8433-OUT,B-4796-OUT,GT-729-RGB,EQ-729-RGB,LT-9822-OUT;n:type:ShaderForge.SFN_Relay,id:2899,x:33024,y:33176,cmnt:整理,varname:node_2899,prsc:2|IN-7655-OUT;n:type:ShaderForge.SFN_Relay,id:4789,x:33146,y:33254,cmnt:其實全部意思很簡單,varname:node_4789,prsc:2|IN-2899-OUT;n:type:ShaderForge.SFN_Relay,id:3838,x:33257,y:33309,cmnt:偵測攝影機和物體之間的深度關系,varname:node_3838,prsc:2|IN-4789-OUT;n:type:ShaderForge.SFN_Relay,id:9931,x:33383,y:33368,cmnt:當大於或等於 意思就是 攝影機有照到他,varname:node_9931,prsc:2|IN-3838-OUT;n:type:ShaderForge.SFN_Relay,id:3163,x:33383,y:33447,cmnt:當小於時就是攝影機 沒照到,varname:node_3163,prsc:2|IN-3838-OUT;n:type:ShaderForge.SFN_Relay,id:3842,x:33542,y:33533,cmnt:沒照到 就是被擋住 所以那部份就輸出RIM,varname:node_3842,prsc:2|IN-3163-OUT;n:type:ShaderForge.SFN_Relay,id:5496,x:33057,y:33425,cmnt:Blending,varname:node_5496,prsc:2|IN-2899-OUT;n:type:ShaderForge.SFN_Relay,id:6749,x:33144,y:33525,cmnt:Auto Sort 取消,varname:node_6749,prsc:2|IN-5496-OUT;n:type:ShaderForge.SFN_Relay,id:9848,x:33304,y:33601,cmnt:Write to Depth buffer 打勾,varname:node_9848,prsc:2|IN-6749-OUT;n:type:ShaderForge.SFN_Relay,id:1792,x:33304,y:33692,cmnt:Depth Test 改成 always,varname:node_1792,prsc:2|IN-6749-OUT;n:type:ShaderForge.SFN_Relay,id:3040,x:33304,y:33775,cmnt:材質球面板上的 Render Queue 改成 Transparent,varname:node_3040,prsc:2|IN-6749-OUT;proporder:729-343;pass:END;sub:END;*/

Shader "Shader Forge/mask" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
        _RimColor ("RimColor", Color) = (0.5,0.5,0.5,1)
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
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _RimColor;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
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
                float node_7655_if_leA = step(sceneZ,partZ);
                float node_7655_if_leB = step(partZ,sceneZ);
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 node_7655 = lerp((node_7655_if_leA*((1.0-max(0,dot(normalDirection, viewDirection)))*_RimColor.rgb*2.0))+(node_7655_if_leB*_Texture_var.rgb),_Texture_var.rgb,node_7655_if_leA*node_7655_if_leB);
                float3 finalColor = node_7655;
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
