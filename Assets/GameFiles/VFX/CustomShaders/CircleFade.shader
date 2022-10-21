Shader "Unlit/CircleFade"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _AspectRatio ("AspectRatio", Vector) = (16,9,0,0)  // "white" {} //16:9 ?
        //_EmissiveUVScale("EmissiveUVScale", Vector) = (1,1,0,0)
        _Radius ("Wipe Radius", float) = 0
        _RadialSpeed ("Radial Speed", float) = 1
        _Alpha ("Alpha", float) = 1
        _FadeColor ("Fade Color", Vector) = (0,0,0,1)
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
            float4 _MainTex_ST;
            float2 _AspectRatio;
            float _Radius;
            float _RadialSpeed; //cant be 0
            float _Alpha;
            fixed4 pureBlack= fixed4(0,0,0,1);
            float4 _FadeColor= (0,0,0,1);
            
            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                UNITY_TRANSFER_FOG(o,o.vertex);
                return o;
            }

            fixed4 frag (const v2f i) : SV_Target
            {
                float2 uv = i.uv;
                // sample the texture
                fixed4 col = tex2D(_MainTex,uv);
                // apply fog
                UNITY_APPLY_FOG(i.fogCoord, col);


                const float3 pos = float3((uv.x - 0.5) / _AspectRatio.y , (uv.y - 0.5) / _AspectRatio.x , 0) ; //Unity does (0,0) in top left corner, [bot left (0,1) ?]

                if(length(pos) > _Radius / _RadialSpeed)
                {
                    float4 faded= lerp(_FadeColor, col, _Alpha);
                    faded.a = 1;
                    return faded;
                }
                
                return col;
                //return length(pos) > _Radius / _RadialSpeed ? fixed4(0,0,0,_Alpha) : col;
            }
            ENDCG
        }
    }
}
