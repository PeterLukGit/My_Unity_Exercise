// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7751,x:33595,y:32642,varname:node_7751,prsc:2|diff-5993-OUT,spec-8412-OUT,gloss-3180-OUT,normal-2203-OUT,alpha-5850-OUT,refract-1094-OUT;n:type:ShaderForge.SFN_TexCoord,id:3302,x:31342,y:32571,varname:node_3302,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:9338,x:31546,y:32581,cmnt:UV 旋轉 Ang未連接 Spd為旋轉速度,varname:node_9338,prsc:2|UVIN-3302-UVOUT,SPD-4128-OUT;n:type:ShaderForge.SFN_Vector1,id:4128,x:31329,y:32734,varname:node_4128,prsc:2,v1:-3;n:type:ShaderForge.SFN_Tex2d,id:6093,x:31699,y:32718,ptovrint:False,ptlb:Refraction,ptin:_Refraction,cmnt:因為是法線貼圖 後面才能這樣接,varname:node_6093,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fcf3858d81d9a7f46b97ea7f104b0d72,ntxv:3,isnm:True|UVIN-9338-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:6232,x:32225,y:32735,varname:node_6232,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6093-RGB;n:type:ShaderForge.SFN_Slider,id:6303,x:31810,y:32902,ptovrint:False,ptlb:RefractionIntensity,ptin:_RefractionIntensity,varname:node_6303,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6001186,max:1;n:type:ShaderForge.SFN_Lerp,id:1186,x:32225,y:32614,cmnt:因為Texture 是法線 所以Lerp取貼圖 0沒Normel 1就是全部,varname:node_1186,prsc:2|A-6405-OUT,B-6093-RGB,T-6303-OUT;n:type:ShaderForge.SFN_Vector3,id:6405,x:31978,y:32614,varname:node_6405,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Multiply,id:9890,x:32225,y:32892,varname:node_9890,prsc:2|A-6303-OUT,B-3801-OUT;n:type:ShaderForge.SFN_Vector1,id:3801,x:31967,y:32976,varname:node_3801,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:5561,x:32423,y:32735,cmnt:取RG 就是 UV 後乘上 強度幅度,varname:node_5561,prsc:2|A-6232-OUT,B-9890-OUT;n:type:ShaderForge.SFN_Tex2d,id:3552,x:32423,y:32885,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_3552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3051,x:32751,y:32903,cmnt:用遮罩Mask 乘上衰減為透明度,varname:node_3051,prsc:2|A-3552-R,B-7640-OUT;n:type:ShaderForge.SFN_Vector1,id:7640,x:32423,y:33052,varname:node_7640,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:6944,x:32751,y:32735,cmnt:Mask 遮罩 輸出成 反射資訊,varname:node_6944,prsc:2|A-5561-OUT,B-3552-R;n:type:ShaderForge.SFN_Vector1,id:8412,x:33391,y:32680,varname:node_8412,prsc:2,v1:6;n:type:ShaderForge.SFN_Vector1,id:3180,x:33391,y:32747,varname:node_3180,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Fresnel,id:6473,x:33148,y:32468,varname:node_6473,prsc:2|NRM-1652-OUT;n:type:ShaderForge.SFN_NormalVector,id:1652,x:32983,y:32468,prsc:2,pt:True;n:type:ShaderForge.SFN_ConstantLerp,id:5993,x:33311,y:32468,cmnt:Normal 用 菲涅爾 取外邊 用 Lerp 削減,varname:node_5993,prsc:2,a:0,b:0.2|IN-6473-OUT;n:type:ShaderForge.SFN_Set,id:6152,x:32423,y:32614,varname:Normal,prsc:2|IN-1186-OUT;n:type:ShaderForge.SFN_Get,id:2203,x:33370,y:32804,varname:node_2203,prsc:2|IN-6152-OUT;n:type:ShaderForge.SFN_Set,id:5481,x:32930,y:32903,varname:Opacity,prsc:2|IN-3051-OUT;n:type:ShaderForge.SFN_Get,id:5850,x:33370,y:32896,varname:node_5850,prsc:2|IN-5481-OUT;n:type:ShaderForge.SFN_Set,id:6924,x:32930,y:32735,varname:Refraction,prsc:2|IN-6944-OUT;n:type:ShaderForge.SFN_Get,id:1094,x:33370,y:32960,varname:node_1094,prsc:2|IN-6924-OUT;proporder:6093-6303-3552;pass:END;sub:END;*/

Shader "Move/11_Swirl" {
    Properties {
        _Refraction ("Refraction", 2D) = "bump" {}
        _RefractionIntensity ("RefractionIntensity", Range(0, 1)) = 0.6001186
        _Mask ("Mask", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 100
        GrabPass{ }
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
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float _RefractionIntensity;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_7657 = _Time;
                float node_9338_ang = node_7657.g;
                float node_9338_spd = (-3.0);
                float node_9338_cos = cos(node_9338_spd*node_9338_ang);
                float node_9338_sin = sin(node_9338_spd*node_9338_ang);
                float2 node_9338_piv = float2(0.5,0.5);
                float2 node_9338 = (mul(i.uv0-node_9338_piv,float2x2( node_9338_cos, -node_9338_sin, node_9338_sin, node_9338_cos))+node_9338_piv); // UV 旋轉 Ang未連接 Spd為旋轉速度
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_9338, _Refraction))); // 因為是法線貼圖 後面才能這樣接
                float3 Normal = lerp(float3(0,0,1),_Refraction_var.rgb,_RefractionIntensity);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float2 Refraction = ((_Refraction_var.rgb.rg*(_RefractionIntensity*0.2))*_Mask_var.r);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.8;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_8412 = 6.0;
                float3 specularColor = float3(node_8412,node_8412,node_8412);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float node_5993 = lerp(0,0.2,(1.0-max(0,dot(normalDirection, viewDirection)))); // Normal 用 菲涅爾 取外邊 用 Lerp 削減
                float3 diffuseColor = float3(node_5993,node_5993,node_5993);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float Opacity = (_Mask_var.r*0.1);
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,Opacity),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _GrabTexture;
            uniform sampler2D _Refraction; uniform float4 _Refraction_ST;
            uniform float _RefractionIntensity;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_6323 = _Time;
                float node_9338_ang = node_6323.g;
                float node_9338_spd = (-3.0);
                float node_9338_cos = cos(node_9338_spd*node_9338_ang);
                float node_9338_sin = sin(node_9338_spd*node_9338_ang);
                float2 node_9338_piv = float2(0.5,0.5);
                float2 node_9338 = (mul(i.uv0-node_9338_piv,float2x2( node_9338_cos, -node_9338_sin, node_9338_sin, node_9338_cos))+node_9338_piv); // UV 旋轉 Ang未連接 Spd為旋轉速度
                float3 _Refraction_var = UnpackNormal(tex2D(_Refraction,TRANSFORM_TEX(node_9338, _Refraction))); // 因為是法線貼圖 後面才能這樣接
                float3 Normal = lerp(float3(0,0,1),_Refraction_var.rgb,_RefractionIntensity);
                float3 normalLocal = Normal;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float2 Refraction = ((_Refraction_var.rgb.rg*(_RefractionIntensity*0.2))*_Mask_var.r);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.8;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_8412 = 6.0;
                float3 specularColor = float3(node_8412,node_8412,node_8412);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_5993 = lerp(0,0.2,(1.0-max(0,dot(normalDirection, viewDirection)))); // Normal 用 菲涅爾 取外邊 用 Lerp 削減
                float3 diffuseColor = float3(node_5993,node_5993,node_5993);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                float Opacity = (_Mask_var.r*0.1);
                fixed4 finalRGBA = fixed4(finalColor * Opacity,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
