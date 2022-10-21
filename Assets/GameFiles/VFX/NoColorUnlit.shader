Shader "Unlit/Nature-NoColorUnlit"
{
Properties {
        //Things marked hide in inspector set by terrain tool
        //Splat control texture-w/e that means
        [HideInInspector] _Control ("Control (RGBA)", 2D) = "red" {}
        //textures
        [HideInInspector] _Splat0 ("Layer 0 (R)", 2D) = "white" {}
        [HideInInspector] _Splat1 ("Layer 1 (G)", 2D) = "white" {}
        [HideInInspector] _Splat2 ("Layer 2 (B)", 2D) = "white" {}
        [HideInInspector] _Splat3 ("Layer 3 (A)", 2D) = "white" {}
        //normal maps
        [HideInInspector] _Normal0 ("Normal 0 (R)", 2D) = "bump" {}
        [HideInInspector] _Normal1 ("Normal 1 (G)", 2D) = "bump" {}
        [HideInInspector] _Normal2 ("Normal 2 (B)", 2D) = "bump" {}
        [HideInInspector] _Normal3 ("Normal 3 (A)", 2D) = "bump" {}
        // used in fallback on old cards & base map
        [HideInInspector] _MainTex ("BaseMap (RGB)", 2D) = "white" {}
        [HideInInspector] _Color ("Main Color", Color) = (1,1,1,1)
    }

    CGINCLUDE
        //I think doing pragma surf Lambert - is applying random lighting we dont want... but where?
        #pragma surface surf Lambert vertex:SplatmapVert finalcolor:SplatmapFinalColor finalprepass:SplatmapFinalPrepass finalgbuffer:SplatmapFinalGBuffer noinstancing
        #pragma multi_compile_fog
    #include <Lighting.cginc>

        #include "TerrainSplatmapCommon.cginc"

        fixed4 _Color;
        void surf(Input IN, inout SurfaceOutput o)
        {
            half4 splat_control;
            half weight;
            fixed4 mixedDiffuse;
            SplatmapMix(IN, splat_control, weight, mixedDiffuse, o.Normal);
            o.Albedo = mixedDiffuse.rgb;
            o.Alpha = 1;
            o.Emission = float3(0,0,0);
            o.Specular = float3(0,0,0);
            o.Gloss = float3(0,0,0);
            //o.Normal = float3(1,1,1);
        //STEVE-undo:
        //     fixed4 mixedDiffuse2 = 0.0f;
        //     float2 splatUV = (IN.tc.xy * (_Control_TexelSize.zw - 1.0f) + 0.5f) * _Control_TexelSize.xy;
        //     half4 splat_control2 = tex2D(_Control, splatUV);
        // //I think lighting comes from "IN" ????
        //     float2 uvSplat0 = TRANSFORM_TEX(IN.tc.xy, _Splat0);
        //     float2 uvSplat1 = TRANSFORM_TEX(IN.tc.xy, _Splat1);
        //     float2 uvSplat2 = TRANSFORM_TEX(IN.tc.xy, _Splat2);
        //     float2 uvSplat3 = TRANSFORM_TEX(IN.tc.xy, _Splat3);
        //     // mixedDiffuse2 += splat_control2.r * tex2D(_Splat0, uvSplat0) * half4(1.0, 1.0, 1.0, 1);
        //     // mixedDiffuse2 += splat_control2.g * tex2D(_Splat1, uvSplat1) * half4(1.0, 1.0, 1.0, 1);
        //     // mixedDiffuse2 += splat_control2.b * tex2D(_Splat2, uvSplat2) * half4(1.0, 1.0, 1.0, 1);
        //     // mixedDiffuse2 += splat_control2.a * tex2D(_Splat3, uvSplat3) * half4(1.0, 1.0, 1.0, 1);
        //     mixedDiffuse2 += splat_control2.r * tex2D(_Splat0, uvSplat0);
        //     mixedDiffuse2 += splat_control2.g * tex2D(_Splat1, uvSplat1);
        //     mixedDiffuse2 += splat_control2.b * tex2D(_Splat2, uvSplat2);
        //     mixedDiffuse2 += splat_control2.a * tex2D(_Splat3, uvSplat3);
        //      o.Albedo = mixedDiffuse2.rgb;
        //Steve-tut
            fixed4 c= tex2D(_Control, IN.tc) * _Color;
            fixed4 splat0 = tex2D(_Splat0, IN.tc)  * _Color;
            fixed4 splat1 = tex2D(_Splat1, IN.tc)  * _Color;
            fixed4 splat2 = tex2D(_Splat2, IN.tc)  * _Color;
            fixed4 splat3 = tex2D(_Splat3, IN.tc)  * _Color;
            
            o.Albedo= splat0 * c.r + splat1 * c.g + splat2 *c.b + splat3 * c.a;
            o.Alpha=1;
        
        }
    ENDCG

    Category {
        Tags {
            "Queue" = "Geometry-99"
            "RenderType" = "Opaque"
        }
        // TODO: Seems like "#pragma target 3.0 _TERRAIN_NORMAL_MAP" can't fallback correctly on less capable devices?
        // Use two sub-shaders to simulate different features for different targets and still fallback correctly.
        SubShader { // for sm3.0+ targets
            CGPROGRAM
                #pragma target 3.0
                #pragma multi_compile __ _TERRAIN_NORMAL_MAP
            ENDCG
        }
        SubShader { // for sm2.0 targets
            CGPROGRAM
            ENDCG
        }
    }

    Dependency "AddPassShader" = "Hidden/TerrainEngine/Splatmap/Diffuse-AddPass"
    Dependency "BaseMapShader" = "Diffuse"
    Dependency "Details0"      = "Hidden/TerrainEngine/Details/Vertexlit"
    Dependency "Details1"      = "Hidden/TerrainEngine/Details/WavingDoublePass"
    Dependency "Details2"      = "Hidden/TerrainEngine/Details/BillboardWavingDoublePass"
    Dependency "Tree0"         = "Hidden/TerrainEngine/BillboardTree"

    Fallback "Diffuse"
}
