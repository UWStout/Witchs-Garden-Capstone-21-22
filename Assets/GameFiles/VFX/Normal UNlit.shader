Shader "Unlit/Normal UNlit"
{
    Properties
    {
        //_MainTex ("Texture", 2D) = "white" {}
        _Color ("Main Color", Color) = (1,1,1,1)
        
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
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "UnityCG.cginc"
            //#include "TerrainSplatmapCommon.cginc"
            
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _Color;
            float4 _MainTex_ST;
            sampler2D _Control;
            float4 _Control_ST;
            float4 _Control_TexelSize;
            sampler2D _Splat0, _Splat1, _Splat2, _Splat3;
            float4 _Splat0_ST, _Splat1_ST, _Splat2_ST, _Splat3_ST;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                UNITY_TRANSFER_FOG(o,o.vertex);
                return o;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                //fixed4 col = tex2D(_MainTex, i.uv);
                fixed4 c = tex2D(_Control, i.uv) * _Color;
                fixed4 splat0 = tex2D(_Splat0, i.uv)  * _Color;
                fixed4 splat1 = tex2D(_Splat1, i.uv)  * _Color;
                fixed4 splat2 = tex2D(_Splat2, i.uv)  * _Color;
                fixed4 splat3 = tex2D(_Splat3, i.uv)  * _Color;
            
                fixed4 col= splat0 * c.r + splat1 * c.g + splat2 *c.b + splat3 * c.a;
                col.a = 1;
                // apply fog
                //UNITY_APPLY_FOG(i.fogCoord, col);

                fixed4 mixedDiffuse2 = 0.0f;
                float2 splatUV = (i.uv * (_Control_TexelSize.zw - 1.0f) + 0.5f) * _Control_TexelSize.xy;
                half4 splat_control2 = tex2D(_Control, splatUV);
            //I think lighting comes from "IN" ????
                float2 uvSplat0 = TRANSFORM_TEX(i.uv, _Splat0);
                float2 uvSplat1 = TRANSFORM_TEX(i.uv, _Splat1);
                float2 uvSplat2 = TRANSFORM_TEX(i.uv, _Splat2);
                float2 uvSplat3 = TRANSFORM_TEX(i.uv, _Splat3);
                // mixedDiffuse2 += splat_control2.r * tex2D(_Splat0, uvSplat0) * half4(1.0, 1.0, 1.0, 1);
                // mixedDiffuse2 += splat_control2.g * tex2D(_Splat1, uvSplat1) * half4(1.0, 1.0, 1.0, 1);
                // mixedDiffuse2 += splat_control2.b * tex2D(_Splat2, uvSplat2) * half4(1.0, 1.0, 1.0, 1);
                // mixedDiffuse2 += splat_control2.a * tex2D(_Splat3, uvSplat3) * half4(1.0, 1.0, 1.0, 1);
                mixedDiffuse2 += splat_control2.r * tex2D(_Splat0, uvSplat0);
                mixedDiffuse2 += splat_control2.g * tex2D(_Splat1, uvSplat1);
                mixedDiffuse2 += splat_control2.b * tex2D(_Splat2, uvSplat2);
                mixedDiffuse2 += splat_control2.a * tex2D(_Splat3, uvSplat3);
                col.rgb = mixedDiffuse2.rgb;

                
                return col;
            }
            ENDCG
        }
    }
}
