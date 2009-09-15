#define LIGHT_COUNT 6
#define MATERIAL_COUNT 1

// sunlight /  night time
uniform extern float4 g_sunlight;
uniform extern float g_time;

// Textures
uniform extern texture g_normalTexture;

// Samplers
sampler diffuseSampler : register(s0) = sampler_state
{
	MinFilter = LINEAR;
	MagFilter = LINEAR;
	MipFilter = LINEAR;
};

sampler normalSampler = sampler_state
{
	Texture = <g_normalTexture>;
	//MinFilter = LINEAR;
	//MagFilter = LINEAR;
	//MipFilter = LINEAR;
	//AddressU  = WRAP;
    //AddressV  = WRAP;
    //MaxAnisotropy = 16;
};


// matrices
uniform extern float4x4 g_worldMatrix;
uniform extern float4x4 g_worldViewProjectionMatrix;
uniform extern float4x4 g_worldInverseTransposeMatrix;

struct Material
{
	float4 diffuse;
	float4 emissive;
	float4 ambient;
	float4 specular;
	float specularAttenuation;
};

struct Light
{
	bool isTargetLight;
	float4 color;
	float3 target;
	float3 position;
	float3 direction;
	float radius;
	float innerCone;
	float outerCone;
};

struct Camera
{
	float3 position;
};

// material components
uniform extern Material g_materials[MATERIAL_COUNT];
uniform extern Light g_lights[LIGHT_COUNT];

// camera compoenents
uniform extern Camera g_camera;

struct VSInput
{
	float3 position : POSITION;
	float2 textureCoordinates : TEXCOORD0;
	float3 normal : NORMAL;
	float4 tangent : TANGENT;
	float3 binormal : BINORMAL;
};

struct VSOutput
{
	float4 position : POSITION;
	float2 textureCoordinates : TEXCOORD0;
	float3 worldPosition : TEXCOORD1;

	float3 normal : TEXCOORD2;
	float3 binormal : TEXCOORD3;
	float3 tangent : TEXCOORD4;

	//float3x3 tangentToWorld : TEXCOORD5;
	//float3 view : TEXCOORD6;
};

VSOutput VS_Lumos(VSInput a_input)
{
	VSOutput output;

	output.position      = mul(float4(a_input.position, 1.0f), g_worldViewProjectionMatrix);
	output.worldPosition = mul(float4(a_input.position, 1.0f), g_worldMatrix).xyz;
	output.textureCoordinates = a_input.textureCoordinates;	

	output.normal = a_input.normal;
	output.tangent = a_input.tangent;
	output.binormal = cross(output.normal, output.tangent) * a_input.tangent.w;

	return output;
}

float4 PS_Lumos(VSOutput a_input) : COLOR
{
	Material material = g_materials[0];

	float3 normal   = normalize(a_input.normal);
	float3 tangent  = normalize(a_input.tangent);
	float3 binormal = normalize(a_input.binormal);

	float3x3 tangentSpaceMatrix = float3x3(
		tangent.x, binormal.x, normal.x,
		tangent.y, binormal.y, normal.y,
		tangent.z, binormal.z, normal.z
	);
    //float3x3 tangentSpaceMatrix = transpose(float3x3(tangent, binormal, normal));
	float3 view = normalize(mul(g_camera.position - a_input.worldPosition, tangentSpaceMatrix));

	float3 light   = float3(0.0f, 0.0f, 0.0f);
    float3 halfway = float3(0.0f, 0.0f, 0.0f);

    float attenuation = 0.0f;
    float normalDotLight = 0.0f;
    float normalDotHalfway = 0.0f;
    float specularAttenuation = 0.0f;

	float4 color = float4(0.0f, 0.0f, 0.0f, 0.0f);

	normal = normalize(tex2D(normalSampler, a_input.textureCoordinates).rgb * 2.0f - 1.0f);

	for(uint index = 0; index < LIGHT_COUNT; ++index)
	{
		Light lightModel = g_lights[index];

        light = mul((lightModel.position - a_input.worldPosition) / lightModel.radius, tangentSpaceMatrix);
        //light = (lightModel.position - a_input.worldPosition) / lightModel.radius;
        //float3 lightDirection = mul(normalize(lightModel.direction), tangentSpaceMatrix);
        attenuation = saturate(1.0f - dot(light, light));
        
        light = normalize(light);
        halfway = normalize(light + view);
        
        if (lightModel.isTargetLight) {
            lightModel.direction = lightModel.target - lightModel.position;        
        }

        float2 cosSpotlightCones = cos(float2(lightModel.outerCone, lightModel.innerCone) * 0.5f);
        float spotlightDot = dot(-light, normalize(lightModel.direction));
        //float spotlightDot = dot(-light, lightDirection);
        float spotlightEffect = smoothstep(cosSpotlightCones[0], cosSpotlightCones[1], spotlightDot);

        attenuation *= spotlightEffect;
        
        normalDotLight = saturate(dot(normal, light));
        normalDotHalfway = saturate(dot(normal, halfway));
        specularAttenuation = (normalDotLight == 0.0f) ? 0.0f : pow(normalDotHalfway, material.specularAttenuation);
        
        color +=
			(((material.ambient * (attenuation * lightModel.color))  + g_sunlight) * g_time)        // ambient
			+ (material.diffuse * lightModel.color * normalDotLight * attenuation)        // diffuse
            + (material.specular * lightModel.color * specularAttenuation * attenuation); // specular
	}

	return color * tex2D(diffuseSampler, a_input.textureCoordinates);
}

technique Master
{
	pass
	{
		vertexShader = compile vs_3_0 VS_Lumos();
		pixelShader = compile ps_3_0 PS_Lumos();
	}
}