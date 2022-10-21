Shader "Custom/HighlightShader"
{
    // show values to edit in the inspector
    Properties
    {
        _OutlineColor ("Outline Color", Color) = (0.9144436, 0.763172, 0.9245283, 1)
        _OutlineThickness ("Outline Thickness", Range(0,.1)) = 0.01 // .0035

        _Color ("Tint", Color) = (1,1, 1, 1)
        _MainTex ("Texture", 2D) = "white" {}
    }

    SubShader
    {
        // the material is completely non-transparent and is rendered at the same time as the other opaque geometry
        Tags { "RenderType"="Opaque" "Queue"="Geometry"}

        // the first pass renders the object
        Pass
        {
            CGPROGRAM

            #include "UnityCG.cginc"

            #pragma vertex vert
            #pragma fragment frag

            sampler2D _MainTex;
            float4 _MainTex_ST;

            fixed4 _Color;

            struct appdata {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f {
                float4 position : SV_POSITION;
                float2 uv : TEXCOORD0;
            };

            // vertex shader
            v2f vert(appdata v)
            {
                v2f o;

                o.position = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            // fragment shader
            fixed4 frag(v2f i) : SV_TARGET
            {
                fixed4 col = tex2D(_MainTex, i.uv);
                col *= _Color;
                return col;
            }

            ENDCG
        }

        // the second pass for outlines
        Pass
        {
            Cull front

            CGPROGRAM

            #include "UnityCG.cginc"

            #pragma vertex vert
            #pragma fragment frag

            fixed4 _OutlineColor;
            float _OutlineThickness;

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };

            struct v2f
            {
                float4 position : SV_POSITION;
            };

            // vertex shader
            v2f vert(appdata v)
            {
                v2f o;

                float3 normal = normalize(v.normal);
                float3 outlineOffset = normal * _OutlineThickness;
                float3 position = v.vertex + outlineOffset;

                o.position = UnityObjectToClipPos(position);

                return o;
            }

            // fragment shader
            fixed4 frag(v2f i) : SV_TARGET
            {
                return _OutlineColor;
            }

            ENDCG
        }
    }

    // fallback
    FallBack "Standard"
}
