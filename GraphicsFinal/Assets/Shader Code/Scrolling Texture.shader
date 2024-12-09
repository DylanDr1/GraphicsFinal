Shader "Custom/ScrollingTexture"
{
    Properties
    {
        _MainTex("Albedo (RGB)", 2D) = "white" {}
        _ScrollX("Scroll X", Range(0, 5)) = 1
        _ScrollY("Scroll Y", Range(0, 5)) = 1
    }

        SubShader
        {
            CGPROGRAM
            #pragma surface surf Lambert
            float _ScrollX;
            float _ScrollY;

            sampler2D _MainTex;

            struct Input
            {
                float2 uv_MainTex;
            };

            void surf(Input IN, inout SurfaceOutput o)
            {
                _ScrollX *= _Time.y;
                _ScrollY *= _Time.y;

                float2 newUV = IN.uv_MainTex + float2(_ScrollX, _ScrollY);
                o.Albedo = tex2D(_MainTex, newUV);
            }
            ENDCG
        }

            Fallback "Diffuse"
}
