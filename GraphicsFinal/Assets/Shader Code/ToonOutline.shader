Shader "Custom/ToonWithOutline"
{
    Properties
    {
        _Color("Color", Color) = (1,1,1,1)
        _RampTex("Ramp Texture", 2D) = "white"{}
        _Step1("1", Range(0, 1)) = 0.25
        _Step2("2", Range(0, 1)) = 0.5
        _Step3("3", Range(0, 1)) = 0.75
        _OutlineColor("Outline Color", Color) = (0,0,0,1)
        _Outline("Outline Width", Range(.002, 0.1)) = 0.005
    }

    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        
        Pass
        {
            Name "Outline"
            Cull Front

            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };

            struct v2f
            {
                float4 pos : SV_POSITION;
                fixed4 color : COLOR;
            };

            float _Outline;
            float4 _OutlineColor;

            v2f vert(appdata v)
            {
                v2f o;
                float3 worldNormal = UnityObjectToWorldNormal(v.normal);
                float3 offset = worldNormal * _Outline;
                o.pos = UnityObjectToClipPos(v.vertex + offset);
                o.color = _OutlineColor;
                return o;
            }

            fixed4 frag(v2f i) : SV_Target
            {
                return i.color;
            }
            ENDCG
        }

      
        CGPROGRAM
        #pragma surface surf ToonRamp

        sampler2D _RampTex;
        float4 _Color;
        float _Step1;
        float _Step2;
        float _Step3;

        struct Input
        {
            float2 uv_MainTex;
        };

        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color.rgb;
        }

        float4 LightingToonRamp(SurfaceOutput s, fixed3 lightDir, fixed atten)
        {
            float diff = dot(s.Normal, lightDir);
            float h = diff * 0.5 + 0.5;

            float rampValue;
            if (h < _Step1)
                rampValue = 1.2;
            else if (h < _Step2)
                rampValue = 1.0;
            else if (h < _Step3)
                rampValue = 0.66;
            else
                rampValue = 0.33;

            float2 rh = float2(rampValue, 0);
            float3 ramp = tex2D(_RampTex, rh).rgb;

            float4 c;
            c.rgb = s.Albedo * _LightColor0.rgb * (ramp);
            c.a = s.Alpha;
            return c;
        }
        ENDCG
    }

    FallBack "Diffuse"
}
