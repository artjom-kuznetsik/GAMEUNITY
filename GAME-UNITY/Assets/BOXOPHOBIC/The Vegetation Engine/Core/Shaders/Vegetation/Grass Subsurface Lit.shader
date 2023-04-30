// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Subsurface Lit"
{
	Properties
	{
		[StyledCategory(Render Settings, 5, 10)]_RenderingCat("[ Rendering Cat ]", Float) = 0
		[Enum(Opaque,0,Transparent,1)]_RenderMode("Render Mode", Float) = 0
		[Enum(Off,0,On,1)]_RenderZWrite("Render ZWrite", Float) = 1
		[IntRange]_RenderPriority("Render Priority", Range( -100 , 100)) = 0
		[Enum(Both,0,Back,1,Front,2)]_RenderCull("Render Faces", Float) = 0
		[Enum(Flip,0,Mirror,1,Same,2)]_RenderNormals("Render Normals", Float) = 0
		[StyledSpace(10)]_ReceiveSpace("# Receive Space", Float) = 0
		[Enum(Off,0,On,1)]_RenderSpecular("Receive Specular", Float) = 1
		[Enum(Off,0,On,1)]_RenderDecals("Receive Decals", Float) = 1
		[Enum(Off,0,On,1)]_RenderSSR("Receive SSR/SSGI", Float) = 1
		[Enum(Off,0,On,1)][Space(10)]_RenderClip("Alpha Clipping", Float) = 1
		_Cutoff("Alpha Treshold", Range( 0 , 1)) = 0.5
		[StyledSpace(10)]_FadeSpace("# Fade Space", Float) = 0
		[StyledCategory(Global Settings)]_GlobalCat("[ Global Cat ]", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerColorsValue("Layer Colors", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerExtrasValue("Layer Extras", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerMotionValue("Layer Motion", Float) = 0
		[StyledEnum(Default _Layer 1 _Layer 2 _Layer 3 _Layer 4 _Layer 5 _Layer 6 _Layer 7 _Layer 8)]_LayerReactValue("Layer React", Float) = 0
		[StyledSpace(10)]_LayersSpace("# Layers Space", Float) = 0
		[StyledMessage(Info, Procedural Variation in use. The Variation might not work as expected when switching from one LOD to another., _VertexVariationMode, 1 , 0, 10)]_VariationGlobalsMessage("# Variation Globals Message", Float) = 0
		_GlobalColors("Global Colors", Range( 0 , 1)) = 1
		_GlobalOverlay("Global Overlay", Range( 0 , 1)) = 1
		_GlobalWetness("Global Wetness", Range( 0 , 1)) = 1
		_GlobalEmissive("Global Emissive", Range( 0 , 1)) = 1
		_GlobalAlpha("Global Alpha", Range( 0 , 1)) = 1
		_GlobalSize("Global Size", Range( 0 , 1)) = 1
		[StyledRemapSlider(_ColorsMaskMinValue, _ColorsMaskMaxValue, 0, 1, 10, 0)]_ColorsMaskRemap("Colors Mask", Vector) = (0,0,0,0)
		[HideInInspector]_ColorsMaskMinValue("Colors Mask Min Value", Range( 0 , 1)) = 0
		[HideInInspector]_ColorsMaskMaxValue("Colors Mask Max Value", Range( 0 , 1)) = 1
		_ColorsVariationValue("Colors Variation", Range( 0 , 1)) = 0
		[StyledRemapSlider(_OverlayMaskMinValue, _OverlayMaskMaxValue, 0, 1, 10, 0)]_OverlayMaskRemap("Overlay Mask", Vector) = (0,0,0,0)
		[HideInInspector]_OverlayMaskMinValue("Overlay Mask Min Value", Range( 0 , 1)) = 0.45
		[HideInInspector]_OverlayMaskMaxValue("Overlay Mask Max Value", Range( 0 , 1)) = 0.55
		_OverlayVariationValue("Overlay Variation", Range( 0 , 1)) = 0
		[StyledCategory(Main Settings)]_MainCat("[ Main Cat ]", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_MainAlbedoTex("Main Albedo", 2D) = "white" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainNormalTex("Main Normal", 2D) = "bump" {}
		[NoScaleOffset][StyledTextureSingleLine]_MainMaskTex("Main Mask", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[HDR]_MainColor("Main Color", Color) = (1,1,1,1)
		_MainNormalValue("Main Normal", Range( -8 , 8)) = 1
		_MainOcclusionValue("Main Occlusion", Range( 0 , 1)) = 1
		_MainSmoothnessValue("Main Smoothness", Range( 0 , 1)) = 1
		[StyledCategory(Detail Settings)]_DetailCat("[ Detail Cat ]", Float) = 0
		[Enum(Off,0,On,1)]_DetailMode("Detail Mode", Float) = 0
		[Enum(Overlay,0,Replace,1)]_DetailBlendMode("Detail Blend", Float) = 1
		[Enum(Vertex Blue,0,Projection,1)]_DetailTypeMode("Detail Type", Float) = 0
		[StyledSpace(10)]_DetailSpace("# Detail Space", Float) = 0
		[StyledRemapSlider(_DetailBlendMinValue, _DetailBlendMaxValue,0,1)]_DetailBlendRemap("Detail Blending", Vector) = (0,0,0,0)
		[StyledCategory(Occlusion Settings)]_OcclusionCat("[ Occlusion Cat ]", Float) = 0
		[HDR]_VertexOcclusionColor("Vertex Occlusion Color", Color) = (1,1,1,1)
		[StyledRemapSlider(_VertexOcclusionMinValue, _VertexOcclusionMaxValue, 0, 1)]_VertexOcclusionRemap("Vertex Occlusion Mask", Vector) = (0,0,0,0)
		[HideInInspector]_VertexOcclusionMinValue("Vertex Occlusion Min Value", Range( 0 , 1)) = 0
		[HideInInspector]_VertexOcclusionMaxValue("Vertex Occlusion Max Value", Range( 0 , 1)) = 1
		[StyledCategory(Subsurface Settings)]_SubsurfaceCat("[ Subsurface Cat ]", Float) = 0
		_SubsurfaceValue("Subsurface Intensity", Range( 0 , 1)) = 1
		[HDR]_SubsurfaceColor("Subsurface Color", Color) = (0.4,0.4,0.1,1)
		[StyledRemapSlider(_SubsurfaceMaskMinValue, _SubsurfaceMaskMaxValue,0,1)]_SubsurfaceMaskRemap("Subsurface Mask", Vector) = (0,0,0,0)
		[HideInInspector]_SubsurfaceMaskMinValue("Subsurface Mask Min Value", Range( 0 , 1)) = 0
		[HideInInspector]_SubsurfaceMaskMaxValue("Subsurface Mask Max Value", Range( 0 , 1)) = 1
		[Space(10)][DiffusionProfile]_SubsurfaceDiffusion("Subsurface Diffusion", Float) = 0
		[HideInInspector]_SubsurfaceDiffusion_Asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[HideInInspector][Space(10)][ASEDiffusionProfile(_SubsurfaceDiffusion)]_SubsurfaceDiffusion_asset("Subsurface Diffusion", Vector) = (0,0,0,0)
		[Space(10)]_MainLightScatteringValue("Subsurface Scattering Intensity", Range( 0 , 16)) = 8
		_MainLightAngleValue("Subsurface Scattering Angle", Range( 0 , 16)) = 8
		[Space(10)]_TranslucencyIntensityValue("Translucency Intensity", Range( 0 , 50)) = 1
		_TranslucencyNormalValue("Translucency Normal", Range( 0 , 1)) = 0.1
		_TranslucencyScatteringValue("Translucency Scattering", Range( 1 , 50)) = 2
		_TranslucencyDirectValue("Translucency Direct", Range( 0 , 1)) = 1
		_TranslucencyAmbientValue("Translucency Ambient", Range( 0 , 1)) = 0.2
		_TranslucencyShadowValue("Translucency Shadow", Range( 0 , 1)) = 1
		[StyledMessage(Warning,  Translucency is not supported in HDRP. Diffusion Profiles will be used instead., 10, 5)]_TranslucencyHDMessage("# Translucency HD Message", Float) = 0
		[StyledCategory(Gradient Settings)]_GradientCat("[ Gradient Cat ]", Float) = 0
		[HDR]_GradientColorOne("Gradient Color One", Color) = (1,1,1,1)
		[HDR]_GradientColorTwo("Gradient Color Two", Color) = (1,1,1,1)
		[StyledRemapSlider(_GradientMinValue, _GradientMaxValue, 0, 1)]_GradientMaskRemap("Gradient Mask", Vector) = (0,0,0,0)
		[HideInInspector]_GradientMinValue("Gradient Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_GradientMaxValue("Gradient Mask Max ", Range( 0 , 1)) = 1
		[StyledCategory(Noise Settings)]_NoiseCat("[ Noise Cat ]", Float) = 0
		[HDR]_NoiseColorOne("Noise Color One", Color) = (1,1,1,1)
		[HDR]_NoiseColorTwo("Noise Color Two", Color) = (1,1,1,1)
		[StyledRemapSlider(_NoiseMinValue, _NoiseMaxValue, 0, 1)]_NoiseMaskRemap("Noise Mask", Vector) = (0,0,0,0)
		[HideInInspector]_NoiseMinValue("Noise Mask Min", Range( 0 , 1)) = 0
		[HideInInspector]_NoiseMaxValue("Noise Mask Max ", Range( 0 , 1)) = 1
		_NoiseScaleValue("Noise Scale", Range( 0 , 1)) = 0.01
		[StyledCategory(Emissive Settings)]_EmissiveCat("[ Emissive Cat]", Float) = 0
		[NoScaleOffset][StyledTextureSingleLine]_EmissiveTex("Emissive Texture", 2D) = "white" {}
		[Space(10)][StyledVector(9)]_EmissiveUVs("Emissive UVs", Vector) = (1,1,0,0)
		[Enum(None,0,Any,10,Baked,20,Realtime,30)]_EmissiveFlagMode("Emissive Baking", Float) = 0
		[HDR]_EmissiveColor("Emissive Color", Color) = (0,0,0,0)
		[StyledCategory(Perspective Settings)]_PerspectiveCat("[ Perspective Cat ]", Float) = 0
		_PerspectivePushValue("Perspective Push", Range( 0 , 4)) = 0
		_PerspectiveNoiseValue("Perspective Noise", Range( 0 , 4)) = 0
		_PerspectiveAngleValue("Perspective Angle", Range( 0 , 8)) = 1
		[StyledCategory(Size Fade Settings)]_SizeFadeCat("[ Size Fade Cat ]", Float) = 0
		[StyledMessage(Info, The Size Fade feature is recommended to be used to fade out vegetation at a distance in combination with the LOD Groups or with a 3rd party culling system., _SizeFadeMode, 1, 0, 10)]_SizeFadeMessage("# Size Fade Message", Float) = 0
		[Enum(Off,0,On,1)]_SizeFadeMode("Size Fade Mode", Float) = 0
		_SizeFadeStartValue("Size Fade Start", Float) = 200
		_SizeFadeEndValue("Size Fade End", Float) = 300
		[StyledCategory(Motion Settings)]_MotionCat("[ Motion Cat ]", Float) = 0
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is breaking the bending and rolling animation., _VertexVariationMode, 1 , 0, 10)]_VariationMotionMessage("# Variation Motion Message", Float) = 0
		[HDR]_MotionHighlightColor("Motion Highlight", Color) = (2,2,2,1)
		[StyledSpace(10)]_MotionSpace("# Motion Space", Float) = 0
		_MotionAmplitude_10("Bending Amplitude", Range( 0 , 2)) = 0.05
		[IntRange]_MotionSpeed_10("Bending Speed", Range( 0 , 60)) = 2
		_MotionScale_10("Bending Scale", Range( 0 , 20)) = 0
		_MotionVariation_10("Bending Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_32("Flutter Amplitude", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_32("Flutter Speed", Range( 0 , 60)) = 20
		_MotionScale_32("Flutter Scale", Range( 0 , 20)) = 2
		_MotionVariation_32("Flutter Variation", Range( 0 , 20)) = 2
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 10)) = 1
		_InteractionVariation("Interaction Variation", Range( 0 , 1)) = 0
		[HideInInspector][Enum(Single Pivot,0,Baked Pivots,1)]_VertexPivotMode("Enable Prebaked Pivots", Float) = 0
		[HideInInspector][StyledToggle]_VertexDataMode("Enable Batching Support", Float) = 0
		[HideInInspector]_IsTVEShader("_IsTVEShader", Float) = 1
		[HideInInspector]_IsVersion("_IsVersion", Float) = 400
		[HideInInspector]_Color("Legacy Color", Color) = (0,0,0,0)
		[HideInInspector]_MainTex("Legacy MainTex", 2D) = "white" {}
		[HideInInspector]_BumpMap("Legacy BumpMap", 2D) = "white" {}
		[HideInInspector]_render_normals_options("_render_normals_options", Vector) = (1,1,1,0)
		[HideInInspector]_vertex_pivot_mode("_vertex_pivot_mode", Float) = 0
		[HideInInspector]_MaxBoundsInfo("_MaxBoundsInfo", Vector) = (1,1,1,1)
		[HideInInspector]_VertexVariationMode("_VertexVariationMode", Float) = 0
		[HideInInspector]_VertexMasksMode("_VertexMasksMode", Float) = 0
		[HideInInspector]_IsGrassShader("_IsGrassShader", Float) = 1
		[HideInInspector]_subsurface_shadow("_subsurface_shadow", Float) = 1
		[HideInInspector]_IsSubsurfaceShader("_IsSubsurfaceShader", Float) = 1
		[HideInInspector]_render_src("_render_src", Float) = 1
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_dst("_render_dst", Float) = 0
		[HideInInspector]_render_zw("_render_zw", Float) = 1
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull [_render_cull]
		ZWrite [_render_zw]
		Blend [_render_src] [_render_dst]
		
		CGPROGRAM
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityPBSLighting.cginc"
		#pragma target 4.0
		#pragma shader_feature_local TVE_ALPHA_CLIP
		#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
		//TVE Shader Type Defines
		#define TVE_IS_GRASS_SHADER
		//TVE Pivots Support Defines
		#define TVE_PIVOT_DATA_BAKED
		//TVE Pipeline Defines
		#define THE_VEGETATION_ENGINE
		#define IS_STANDARD_PIPELINE
		//TVE Injection Defines
		//SHADER INJECTION POINT BEGIN
		//SHADER INJECTION POINT END
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE3D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_ARRAY(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE3D(tex,samplerTex,coord) tex3D(tex,coord)
		#define SAMPLE_TEXTURE3D_LOD(tex,samplerTex,coord,lod) tex3Dlod(tex,float4(coord,lod))
		#define SAMPLE_TEXTURE2D_ARRAY(tex,samplertex,coord) tex2DArray(tex,coord)
		#define SAMPLE_TEXTURE2D_ARRAY_LOD(tex,samplertex,coord,lod) tex2DArraylod(tex, float4(coord,lod))
		#endif//ASE Sampling Macros

		#pragma surface surf StandardSpecularCustom keepalpha addshadow fullforwardshadows exclude_path:deferred dithercrossfade vertex:vertexDataFunc 
		struct Input
		{
			float3 worldPos;
			float2 vertexToFrag11_g59839;
			half ASEVFace : VFACE;
			float3 vertexToFrag11_g59898;
			float3 vertexToFrag11_g59904;
			float3 vertexToFrag11_g59893;
			float vertexToFrag11_g59906;
			float3 vertexToFrag3890_g59802;
			float4 vertexColor : COLOR;
			float3 vertexToFrag11_g59816;
			float2 vertexToFrag11_g59807;
		};

		struct SurfaceOutputStandardSpecularCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half3 Specular;
			half Smoothness;
			half Occlusion;
			half Alpha;
			half3 Transmission;
		};

		uniform half _render_cull;
		uniform half _render_zw;
		uniform half _render_dst;
		uniform half _render_src;
		uniform half _subsurface_shadow;
		uniform half _TranslucencyDirectValue;
		uniform half _GradientCat;
		uniform half _VertexVariationMode;
		uniform half _FadeSpace;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainTex);
		SamplerState sampler_MainTex;
		uniform half _MotionSpace;
		uniform float4 _Color;
		uniform half _PerspectiveCat;
		uniform half _RenderCull;
		uniform float4 _SubsurfaceDiffusion_Asset;
		uniform half _TranslucencyIntensityValue;
		uniform half _RenderPriority;
		uniform half _NoiseCat;
		uniform half _EmissiveCat;
		uniform half _MotionCat;
		uniform half _VariationGlobalsMessage;
		uniform half _RenderNormals;
		uniform half _SubsurfaceCat;
		uniform half _DetailMode;
		uniform half _MainCat;
		uniform half _Cutoff;
		uniform half _ReceiveSpace;
		uniform float4 _SubsurfaceDiffusion_asset;
		uniform half _LayersSpace;
		uniform half _DetailBlendMode;
		uniform half _TranslucencyNormalValue;
		uniform half _TranslucencyScatteringValue;
		uniform half _DetailCat;
		uniform half _DetailTypeMode;
		uniform half _DetailSpace;
		uniform half _IsTVEShader;
		uniform half _GlobalCat;
		uniform half _RenderClip;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_BumpMap);
		SamplerState sampler_BumpMap;
		uniform half _RenderingCat;
		uniform half _TranslucencyAmbientValue;
		uniform half _VariationMotionMessage;
		uniform half _VertexMasksMode;
		uniform half _IsVersion;
		uniform float4 _MaxBoundsInfo;
		uniform half _RenderMode;
		uniform half _SizeFadeCat;
		uniform half _EmissiveFlagMode;
		uniform float _SubsurfaceDiffusion;
		uniform half _RenderSSR;
		uniform half _RenderDecals;
		uniform half _RenderZWrite;
		uniform half _TranslucencyShadowValue;
		uniform half _OcclusionCat;
		uniform half _TranslucencyHDMessage;
		uniform half _SizeFadeMessage;
		uniform half4 _DetailBlendRemap;
		uniform half4 _VertexOcclusionRemap;
		uniform half4 _ColorsMaskRemap;
		uniform half4 _SubsurfaceMaskRemap;
		uniform float4 _NoiseMaskRemap;
		uniform half4 _OverlayMaskRemap;
		uniform float4 _GradientMaskRemap;
		uniform half _IsSubsurfaceShader;
		uniform half _IsGrassShader;
		uniform half _VertexPivotMode;
		uniform half _MotionAmplitude_10;
		uniform half4 TVE_MotionParams;
		UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_MotionTex);
		uniform half4 TVE_MotionCoord;
		uniform half _vertex_pivot_mode;
		uniform half _LayerMotionValue;
		SamplerState samplerTVE_MotionTex;
		uniform float TVE_MotionUsage[9];
		UNITY_DECLARE_TEX2D_NOSAMPLER(TVE_NoiseTex);
		uniform float2 TVE_NoiseSpeed_Vegetation;
		uniform float2 TVE_NoiseSpeed_Grass;
		uniform half TVE_NoiseSize_Vegetation;
		uniform half TVE_NoiseSize_Grass;
		SamplerState samplerTVE_NoiseTex;
		uniform float _MotionSpeed_10;
		uniform half _MotionVariation_10;
		uniform float _MotionScale_10;
		uniform half _InteractionAmplitude;
		uniform half4 TVE_ReactParams;
		UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ReactTex);
		uniform half4 TVE_ReactCoord;
		uniform half _LayerReactValue;
		SamplerState samplerTVE_ReactTex;
		uniform float TVE_ReactUsage[9];
		uniform half _InteractionVariation;
		uniform float _MotionScale_32;
		uniform float _MotionSpeed_32;
		uniform float _MotionVariation_32;
		uniform half _MotionAmplitude_32;
		uniform half TVE_MotionFadeEnd;
		uniform half TVE_MotionFadeStart;
		uniform half _VertexDataMode;
		uniform half _GlobalSize;
		uniform half TVE_DistanceFadeBias;
		uniform half _SizeFadeEndValue;
		uniform half _SizeFadeStartValue;
		uniform half _SizeFadeMode;
		uniform half _PerspectivePushValue;
		uniform half _PerspectiveNoiseValue;
		uniform half _PerspectiveAngleValue;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainNormalTex);
		uniform half4 _MainUVs;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainAlbedoTex);
		SamplerState sampler_MainAlbedoTex;
		uniform half _MainNormalValue;
		uniform half3 _render_normals_options;
		uniform half4 _GradientColorTwo;
		uniform half4 _GradientColorOne;
		uniform half _GradientMinValue;
		uniform half _GradientMaxValue;
		uniform half4 _NoiseColorTwo;
		uniform half4 _NoiseColorOne;
		UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_WorldTex3D);
		uniform half _NoiseScaleValue;
		SamplerState samplerTVE_WorldTex3D;
		uniform half _NoiseMinValue;
		uniform half _NoiseMaxValue;
		uniform half4 _MotionHighlightColor;
		uniform half4 _MainColor;
		uniform half4 TVE_ColorsParams;
		UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
		uniform half4 TVE_ColorsCoord;
		uniform half _LayerColorsValue;
		SamplerState samplerTVE_ColorsTex;
		uniform float TVE_ColorsUsage[9];
		uniform half _GlobalColors;
		uniform half _ColorsVariationValue;
		uniform half _ColorsMaskMinValue;
		uniform half _ColorsMaskMaxValue;
		uniform half4 _SubsurfaceColor;
		uniform half _SubsurfaceValue;
		uniform half4 TVE_MainLightParams;
		uniform half _SubsurfaceMaskMinValue;
		uniform half _SubsurfaceMaskMaxValue;
		uniform half3 TVE_MainLightDirection;
		uniform half _MainLightAngleValue;
		uniform half _MainLightScatteringValue;
		uniform half4 TVE_OverlayColor;
		uniform half _GlobalOverlay;
		uniform half4 TVE_ExtrasParams;
		UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ExtrasTex);
		uniform half4 TVE_ExtrasCoord;
		uniform half _LayerExtrasValue;
		SamplerState samplerTVE_ExtrasTex;
		uniform float TVE_ExtrasUsage[9];
		uniform half _OverlayVariationValue;
		uniform half _OverlayMaskMinValue;
		uniform half _OverlayMaskMaxValue;
		uniform half4 _VertexOcclusionColor;
		uniform half _VertexOcclusionMinValue;
		uniform half _VertexOcclusionMaxValue;
		uniform half4 _EmissiveColor;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_EmissiveTex);
		uniform half4 _EmissiveUVs;
		SamplerState sampler_EmissiveTex;
		uniform half _GlobalEmissive;
		uniform half _RenderSpecular;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
		uniform half _MainSmoothnessValue;
		uniform half TVE_OverlaySmoothness;
		uniform half _GlobalWetness;
		uniform half _MainOcclusionValue;
		UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_ScreenTex3D);
		uniform half TVE_ScreenTexCoord;
		SamplerState samplerTVE_ScreenTex3D;
		uniform half _GlobalAlpha;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float3 ase_vertex3Pos = v.vertex.xyz;
			float3 PositionOS3588_g59802 = ase_vertex3Pos;
			half3 _Vector1 = half3(0,0,0);
			half3 Off19_g59803 = _Vector1;
			float3 appendResult2827_g59802 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			half3 Mesh_PivotsData2831_g59802 = ( appendResult2827_g59802 * _VertexPivotMode );
			half3 On20_g59803 = Mesh_PivotsData2831_g59802;
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59803 = On20_g59803;
			#else
				float3 staticSwitch14_g59803 = Off19_g59803;
			#endif
			half3 ObjectData20_g59804 = staticSwitch14_g59803;
			half3 WorldData19_g59804 = Off19_g59803;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59804 = WorldData19_g59804;
			#else
				float3 staticSwitch14_g59804 = ObjectData20_g59804;
			#endif
			half3 Mesh_PivotsOS2291_g59802 = staticSwitch14_g59804;
			float3 temp_output_2283_0_g59802 = ( PositionOS3588_g59802 - Mesh_PivotsOS2291_g59802 );
			half3 VertexPos40_g59845 = temp_output_2283_0_g59802;
			float3 appendResult74_g59845 = (float3(VertexPos40_g59845.x , 0.0 , 0.0));
			half3 VertexPosRotationAxis50_g59845 = appendResult74_g59845;
			float3 break84_g59845 = VertexPos40_g59845;
			float3 appendResult81_g59845 = (float3(0.0 , break84_g59845.y , break84_g59845.z));
			half3 VertexPosOtherAxis82_g59845 = appendResult81_g59845;
			float ObjectData20_g59840 = 3.14;
			float Bounds_Height374_g59802 = _MaxBoundsInfo.y;
			float WorldData19_g59840 = ( Bounds_Height374_g59802 * 3.14 );
			#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g59840 = WorldData19_g59840;
			#else
				float staticSwitch14_g59840 = ObjectData20_g59840;
			#endif
			float Motion_Max_Bending1133_g59802 = staticSwitch14_g59840;
			float4x4 break19_g59868 = unity_ObjectToWorld;
			float3 appendResult20_g59868 = (float3(break19_g59868[ 0 ][ 3 ] , break19_g59868[ 1 ][ 3 ] , break19_g59868[ 2 ][ 3 ]));
			half3 Off19_g59871 = appendResult20_g59868;
			float3 appendResult93_g59868 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g59868 = ( appendResult93_g59868 * _vertex_pivot_mode );
			float3 PivotsOnly105_g59868 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g59868 , 0.0 ) ).xyz).xyz;
			half3 On20_g59871 = ( appendResult20_g59868 + PivotsOnly105_g59868 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59871 = On20_g59871;
			#else
				float3 staticSwitch14_g59871 = Off19_g59871;
			#endif
			half3 ObjectData20_g59872 = staticSwitch14_g59871;
			half3 WorldData19_g59872 = Off19_g59871;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59872 = WorldData19_g59872;
			#else
				float3 staticSwitch14_g59872 = ObjectData20_g59872;
			#endif
			float3 temp_output_42_0_g59868 = staticSwitch14_g59872;
			half3 ObjectData20_g59867 = temp_output_42_0_g59868;
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			half3 WorldData19_g59867 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59867 = WorldData19_g59867;
			#else
				float3 staticSwitch14_g59867 = ObjectData20_g59867;
			#endif
			float3 Position83_g59866 = staticSwitch14_g59867;
			float temp_output_84_0_g59866 = _LayerMotionValue;
			float4 lerpResult87_g59866 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, float3(( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g59866).xz ) ),temp_output_84_0_g59866), 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g59866]);
			half4 Global_Motion_Params3909_g59802 = lerpResult87_g59866;
			float4 break322_g59841 = Global_Motion_Params3909_g59802;
			half Wind_Power369_g59841 = break322_g59841.z;
			float lerpResult376_g59841 = lerp( 0.1 , 1.0 , Wind_Power369_g59841);
			half Wind_Power_103106_g59802 = lerpResult376_g59841;
			float3 appendResult397_g59841 = (float3(break322_g59841.x , 0.0 , break322_g59841.y));
			float3 temp_output_398_0_g59841 = (appendResult397_g59841*2.0 + -1.0);
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float3 temp_output_339_0_g59841 = ( mul( unity_WorldToObject, float4( temp_output_398_0_g59841 , 0.0 ) ).xyz * ase_parentObjectScale );
			half2 Wind_DirectionOS39_g59802 = (temp_output_339_0_g59841).xz;
			#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g59821 = TVE_NoiseSpeed_Grass;
			#else
				float2 staticSwitch160_g59821 = TVE_NoiseSpeed_Vegetation;
			#endif
			float4x4 break19_g59823 = unity_ObjectToWorld;
			float3 appendResult20_g59823 = (float3(break19_g59823[ 0 ][ 3 ] , break19_g59823[ 1 ][ 3 ] , break19_g59823[ 2 ][ 3 ]));
			half3 Off19_g59826 = appendResult20_g59823;
			float3 appendResult93_g59823 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g59823 = ( appendResult93_g59823 * _vertex_pivot_mode );
			float3 PivotsOnly105_g59823 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g59823 , 0.0 ) ).xyz).xyz;
			half3 On20_g59826 = ( appendResult20_g59823 + PivotsOnly105_g59823 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59826 = On20_g59826;
			#else
				float3 staticSwitch14_g59826 = Off19_g59826;
			#endif
			half3 ObjectData20_g59827 = staticSwitch14_g59826;
			half3 WorldData19_g59827 = Off19_g59826;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59827 = WorldData19_g59827;
			#else
				float3 staticSwitch14_g59827 = ObjectData20_g59827;
			#endif
			float3 temp_output_42_0_g59823 = staticSwitch14_g59827;
			half3 ObjectData20_g59822 = temp_output_42_0_g59823;
			half3 WorldData19_g59822 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59822 = WorldData19_g59822;
			#else
				float3 staticSwitch14_g59822 = ObjectData20_g59822;
			#endif
			#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g59821 = (ase_worldPos).xz;
			#else
				float2 staticSwitch164_g59821 = (staticSwitch14_g59822).xz;
			#endif
			#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g59821 = TVE_NoiseSize_Grass;
			#else
				float staticSwitch161_g59821 = TVE_NoiseSize_Vegetation;
			#endif
			float2 panner73_g59821 = ( _Time.y * staticSwitch160_g59821 + ( staticSwitch164_g59821 * staticSwitch161_g59821 ));
			float4 tex2DNode75_g59821 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g59821, 0.0 );
			float4 saferPower77_g59821 = max( abs( tex2DNode75_g59821 ) , 0.0001 );
			half Wind_Power2223_g59802 = Wind_Power369_g59841;
			float temp_output_167_0_g59821 = Wind_Power2223_g59802;
			float lerpResult168_g59821 = lerp( 1.5 , 0.25 , temp_output_167_0_g59821);
			float4 temp_cast_9 = (lerpResult168_g59821).xxxx;
			float4 break142_g59821 = pow( saferPower77_g59821 , temp_cast_9 );
			half Global_NoiseTex_R34_g59802 = break142_g59821.r;
			half Input_Speed62_g59883 = _MotionSpeed_10;
			float mulTime373_g59883 = _Time.y * Input_Speed62_g59883;
			float4x4 break19_g59878 = unity_ObjectToWorld;
			float3 appendResult20_g59878 = (float3(break19_g59878[ 0 ][ 3 ] , break19_g59878[ 1 ][ 3 ] , break19_g59878[ 2 ][ 3 ]));
			half3 Off19_g59881 = appendResult20_g59878;
			float3 appendResult93_g59878 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g59878 = ( appendResult93_g59878 * _vertex_pivot_mode );
			float3 PivotsOnly105_g59878 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g59878 , 0.0 ) ).xyz).xyz;
			half3 On20_g59881 = ( appendResult20_g59878 + PivotsOnly105_g59878 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59881 = On20_g59881;
			#else
				float3 staticSwitch14_g59881 = Off19_g59881;
			#endif
			half3 ObjectData20_g59882 = staticSwitch14_g59881;
			half3 WorldData19_g59882 = Off19_g59881;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59882 = WorldData19_g59882;
			#else
				float3 staticSwitch14_g59882 = ObjectData20_g59882;
			#endif
			float3 temp_output_42_0_g59878 = staticSwitch14_g59882;
			float3 break9_g59878 = temp_output_42_0_g59878;
			half Variation_Complex102_g59876 = frac( ( v.color.r + ( break9_g59878.x + break9_g59878.z ) ) );
			float ObjectData20_g59877 = Variation_Complex102_g59876;
			half Variation_Simple105_g59876 = v.color.r;
			float WorldData19_g59877 = Variation_Simple105_g59876;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g59877 = WorldData19_g59877;
			#else
				float staticSwitch14_g59877 = ObjectData20_g59877;
			#endif
			half Motion_Variation3073_g59802 = staticSwitch14_g59877;
			half Motion_Variation284_g59883 = ( _MotionVariation_10 * Motion_Variation3073_g59802 );
			float2 appendResult344_g59883 = (float2(ase_worldPos.x , ase_worldPos.z));
			float2 Motion_Scale287_g59883 = ( _MotionScale_10 * appendResult344_g59883 );
			half2 Sine_MinusOneToOne281_g59883 = sin( ( mulTime373_g59883 + Motion_Variation284_g59883 + Motion_Scale287_g59883 ) );
			float2 temp_cast_12 = (1.0).xx;
			half Input_Turbulence327_g59883 = Global_NoiseTex_R34_g59802;
			float2 lerpResult321_g59883 = lerp( Sine_MinusOneToOne281_g59883 , temp_cast_12 , Input_Turbulence327_g59883);
			half2 Motion_Bending2258_g59802 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g59802 ) * Wind_Power_103106_g59802 * Wind_DirectionOS39_g59802 * Global_NoiseTex_R34_g59802 * lerpResult321_g59883 );
			half Interaction_Amplitude4137_g59802 = _InteractionAmplitude;
			float4x4 break19_g59860 = unity_ObjectToWorld;
			float3 appendResult20_g59860 = (float3(break19_g59860[ 0 ][ 3 ] , break19_g59860[ 1 ][ 3 ] , break19_g59860[ 2 ][ 3 ]));
			half3 Off19_g59863 = appendResult20_g59860;
			float3 appendResult93_g59860 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g59860 = ( appendResult93_g59860 * _vertex_pivot_mode );
			float3 PivotsOnly105_g59860 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g59860 , 0.0 ) ).xyz).xyz;
			half3 On20_g59863 = ( appendResult20_g59860 + PivotsOnly105_g59860 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59863 = On20_g59863;
			#else
				float3 staticSwitch14_g59863 = Off19_g59863;
			#endif
			half3 ObjectData20_g59864 = staticSwitch14_g59863;
			half3 WorldData19_g59864 = Off19_g59863;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59864 = WorldData19_g59864;
			#else
				float3 staticSwitch14_g59864 = ObjectData20_g59864;
			#endif
			float3 temp_output_42_0_g59860 = staticSwitch14_g59864;
			half3 ObjectData20_g59859 = temp_output_42_0_g59860;
			half3 WorldData19_g59859 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59859 = WorldData19_g59859;
			#else
				float3 staticSwitch14_g59859 = ObjectData20_g59859;
			#endif
			float3 Position83_g59858 = staticSwitch14_g59859;
			float temp_output_84_0_g59858 = _LayerReactValue;
			float4 lerpResult87_g59858 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, float3(( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g59858).xz ) ),temp_output_84_0_g59858), 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g59858]);
			half4 Global_React_Params4173_g59802 = lerpResult87_g59858;
			float4 break322_g59846 = Global_React_Params4173_g59802;
			half Interaction_Mask66_g59802 = break322_g59846.z;
			float3 appendResult397_g59846 = (float3(break322_g59846.x , 0.0 , break322_g59846.y));
			float3 temp_output_398_0_g59846 = (appendResult397_g59846*2.0 + -1.0);
			float3 temp_output_339_0_g59846 = ( mul( unity_WorldToObject, float4( temp_output_398_0_g59846 , 0.0 ) ).xyz * ase_parentObjectScale );
			half2 Interaction_DirectionOS4158_g59802 = (temp_output_339_0_g59846).xz;
			float lerpResult3307_g59802 = lerp( 1.0 , Motion_Variation3073_g59802 , _InteractionVariation);
			half2 Motion_Interaction53_g59802 = ( Interaction_Amplitude4137_g59802 * Motion_Max_Bending1133_g59802 * Interaction_Mask66_g59802 * Interaction_Mask66_g59802 * Interaction_DirectionOS4158_g59802 * lerpResult3307_g59802 );
			float2 lerpResult109_g59802 = lerp( Motion_Bending2258_g59802 , Motion_Interaction53_g59802 , ( Interaction_Mask66_g59802 * saturate( Interaction_Amplitude4137_g59802 ) ));
			half Mesh_Motion_182_g59802 = v.texcoord3.x;
			float2 break143_g59802 = ( lerpResult109_g59802 * Mesh_Motion_182_g59802 );
			half Motion_Z190_g59802 = break143_g59802.y;
			half Angle44_g59845 = Motion_Z190_g59802;
			half3 VertexPos40_g59844 = ( VertexPosRotationAxis50_g59845 + ( VertexPosOtherAxis82_g59845 * cos( Angle44_g59845 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g59845 ) * sin( Angle44_g59845 ) ) );
			float3 appendResult74_g59844 = (float3(0.0 , 0.0 , VertexPos40_g59844.z));
			half3 VertexPosRotationAxis50_g59844 = appendResult74_g59844;
			float3 break84_g59844 = VertexPos40_g59844;
			float3 appendResult81_g59844 = (float3(break84_g59844.x , break84_g59844.y , 0.0));
			half3 VertexPosOtherAxis82_g59844 = appendResult81_g59844;
			half Motion_X216_g59802 = break143_g59802.x;
			half Angle44_g59844 = -Motion_X216_g59802;
			half Motion_Scale321_g59806 = ( _MotionScale_32 * 10.0 );
			half Input_Speed62_g59806 = _MotionSpeed_32;
			float mulTime349_g59806 = _Time.y * Input_Speed62_g59806;
			float Motion_Variation330_g59806 = ( _MotionVariation_32 * Motion_Variation3073_g59802 );
			float Bounds_Radius121_g59802 = _MaxBoundsInfo.x;
			half Input_Amplitude58_g59806 = ( _MotionAmplitude_32 * Bounds_Radius121_g59802 * 0.1 );
			float temp_output_299_0_g59806 = ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g59806 ) + mulTime349_g59806 + Motion_Variation330_g59806 ) ) * Input_Amplitude58_g59806 );
			float3 ase_vertexNormal = v.normal.xyz;
			float3 appendResult354_g59806 = (float3(temp_output_299_0_g59806 , 0.0 , temp_output_299_0_g59806));
			#ifdef TVE_IS_GRASS_SHADER
				float3 staticSwitch358_g59806 = appendResult354_g59806;
			#else
				float3 staticSwitch358_g59806 = ( temp_output_299_0_g59806 * ase_vertexNormal );
			#endif
			half Global_NoiseTex_A139_g59802 = break142_g59821.a;
			half Mesh_Motion_3144_g59802 = v.texcoord3.z;
			float lerpResult378_g59841 = lerp( 0.3 , 1.0 , Wind_Power369_g59841);
			half Wind_Power_323115_g59802 = lerpResult378_g59841;
			float temp_output_7_0_g59809 = TVE_MotionFadeEnd;
			half Wind_FadeOut4005_g59802 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g59809 ) / ( TVE_MotionFadeStart - temp_output_7_0_g59809 ) ) );
			half3 Motion_Detail263_g59802 = ( staticSwitch358_g59806 * ( ( Global_NoiseTex_R34_g59802 + Global_NoiseTex_A139_g59802 ) * Mesh_Motion_3144_g59802 * Wind_Power_323115_g59802 ) * Wind_FadeOut4005_g59802 );
			float3 Vertex_Motion_Object833_g59802 = ( ( VertexPosRotationAxis50_g59844 + ( VertexPosOtherAxis82_g59844 * cos( Angle44_g59844 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g59844 ) * sin( Angle44_g59844 ) ) ) + Motion_Detail263_g59802 );
			float3 temp_output_3474_0_g59802 = ( PositionOS3588_g59802 - Mesh_PivotsOS2291_g59802 );
			float3 appendResult2043_g59802 = (float3(Motion_X216_g59802 , 0.0 , Motion_Z190_g59802));
			float3 Vertex_Motion_World1118_g59802 = ( ( temp_output_3474_0_g59802 + appendResult2043_g59802 ) + Motion_Detail263_g59802 );
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g59802 = Vertex_Motion_World1118_g59802;
			#else
				float3 staticSwitch3312_g59802 = ( Vertex_Motion_Object833_g59802 + ( 0.0 * _VertexDataMode ) );
			#endif
			half Global_Vertex_Size174_g59802 = break322_g59846.w;
			float lerpResult346_g59802 = lerp( 1.0 , Global_Vertex_Size174_g59802 , _GlobalSize);
			float3 appendResult3480_g59802 = (float3(lerpResult346_g59802 , lerpResult346_g59802 , lerpResult346_g59802));
			half3 ObjectData20_g59819 = appendResult3480_g59802;
			half3 _Vector11 = half3(1,1,1);
			half3 WorldData19_g59819 = _Vector11;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59819 = WorldData19_g59819;
			#else
				float3 staticSwitch14_g59819 = ObjectData20_g59819;
			#endif
			half3 Vertex_Size1741_g59802 = staticSwitch14_g59819;
			half3 _Vector5 = half3(1,1,1);
			float4x4 break19_g59831 = unity_ObjectToWorld;
			float3 appendResult20_g59831 = (float3(break19_g59831[ 0 ][ 3 ] , break19_g59831[ 1 ][ 3 ] , break19_g59831[ 2 ][ 3 ]));
			half3 Off19_g59834 = appendResult20_g59831;
			float3 appendResult93_g59831 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g59831 = ( appendResult93_g59831 * _vertex_pivot_mode );
			float3 PivotsOnly105_g59831 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g59831 , 0.0 ) ).xyz).xyz;
			half3 On20_g59834 = ( appendResult20_g59831 + PivotsOnly105_g59831 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g59834 = On20_g59834;
			#else
				float3 staticSwitch14_g59834 = Off19_g59834;
			#endif
			half3 ObjectData20_g59835 = staticSwitch14_g59834;
			half3 WorldData19_g59835 = Off19_g59834;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59835 = WorldData19_g59835;
			#else
				float3 staticSwitch14_g59835 = ObjectData20_g59835;
			#endif
			float3 temp_output_42_0_g59831 = staticSwitch14_g59835;
			float temp_output_7_0_g59875 = _SizeFadeEndValue;
			float temp_output_335_0_g59802 = saturate( ( ( ( distance( _WorldSpaceCameraPos , temp_output_42_0_g59831 ) * ( 1.0 / TVE_DistanceFadeBias ) ) - temp_output_7_0_g59875 ) / ( _SizeFadeStartValue - temp_output_7_0_g59875 ) ) );
			float3 appendResult3482_g59802 = (float3(temp_output_335_0_g59802 , temp_output_335_0_g59802 , temp_output_335_0_g59802));
			float3 lerpResult3556_g59802 = lerp( _Vector5 , appendResult3482_g59802 , _SizeFadeMode);
			half3 ObjectData20_g59805 = lerpResult3556_g59802;
			half3 WorldData19_g59805 = _Vector5;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g59805 = WorldData19_g59805;
			#else
				float3 staticSwitch14_g59805 = ObjectData20_g59805;
			#endif
			float3 Vertex_SizeFade1740_g59802 = staticSwitch14_g59805;
			float3 normalizeResult2696_g59802 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
			float3 break2709_g59802 = cross( normalizeResult2696_g59802 , half3(0,1,0) );
			float3 appendResult2710_g59802 = (float3(-break2709_g59802.z , 0.0 , break2709_g59802.x));
			float3 appendResult2667_g59802 = (float3(v.color.r , 0.5 , v.color.r));
			float3 normalizeResult2169_g59802 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
			float3 ViewDir_Normalized3963_g59802 = normalizeResult2169_g59802;
			float dotResult2212_g59802 = dot( ViewDir_Normalized3963_g59802 , float3(0,1,0) );
			half Mask_HView2656_g59802 = dotResult2212_g59802;
			float saferPower2652_g59802 = max( Mask_HView2656_g59802 , 0.0001 );
			half3 Grass_Coverage2661_g59802 = ( ( ( mul( unity_WorldToObject, float4( appendResult2710_g59802 , 0.0 ) ).xyz * _PerspectivePushValue ) + ( (appendResult2667_g59802*2.0 + -1.0) * _PerspectiveNoiseValue ) ) * v.color.a * pow( saferPower2652_g59802 , _PerspectiveAngleValue ) );
			float3 Final_VertexPosition890_g59802 = ( ( staticSwitch3312_g59802 * Vertex_Size1741_g59802 * Vertex_SizeFade1740_g59802 ) + Mesh_PivotsOS2291_g59802 + Grass_Coverage2661_g59802 );
			v.vertex.xyz = Final_VertexPosition890_g59802;
			v.vertex.w = 1;
			o.vertexToFrag11_g59839 = ( ( v.texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
			float temp_output_7_0_g59894 = _GradientMinValue;
			float4 lerpResult2779_g59802 = lerp( _GradientColorTwo , _GradientColorOne , saturate( ( ( v.color.a - temp_output_7_0_g59894 ) / ( _GradientMaxValue - temp_output_7_0_g59894 ) ) ));
			half3 Gradient_Tint2784_g59802 = (lerpResult2779_g59802).rgb;
			o.vertexToFrag11_g59898 = Gradient_Tint2784_g59802;
			float3 temp_cast_24 = (_NoiseScaleValue).xxx;
			float3 vertexToFrag3890_g59802 = ase_worldPos;
			float3 PositionWS_PerVertex3905_g59802 = vertexToFrag3890_g59802;
			float temp_output_7_0_g59903 = _NoiseMinValue;
			half Noise_Mask3162_g59802 = saturate( ( ( SAMPLE_TEXTURE3D_LOD( TVE_WorldTex3D, samplerTVE_WorldTex3D, ( temp_cast_24 * PositionWS_PerVertex3905_g59802 * 0.1 ), 0.0 ).r - temp_output_7_0_g59903 ) / ( _NoiseMaxValue - temp_output_7_0_g59903 ) ) );
			float4 lerpResult2800_g59802 = lerp( _NoiseColorTwo , _NoiseColorOne , Noise_Mask3162_g59802);
			half3 Noise_Tint2802_g59802 = (lerpResult2800_g59802).rgb;
			o.vertexToFrag11_g59904 = Noise_Tint2802_g59802;
			float lerpResult169_g59821 = lerp( 4.0 , 2.0 , temp_output_167_0_g59821);
			half Global_NoiseTex_H2869_g59802 = pow( abs( tex2DNode75_g59821.a ) , lerpResult169_g59821 );
			half3 Highlight_Tint3231_g59802 = ( ( (_MotionHighlightColor).rgb * Global_NoiseTex_H2869_g59802 * Wind_Power_103106_g59802 * v.color.r * v.color.a ) + float3( 1,1,1 ) );
			o.vertexToFrag11_g59893 = Highlight_Tint3231_g59802;
			float3 Position58_g59884 = PositionWS_PerVertex3905_g59802;
			float temp_output_82_0_g59884 = _LayerColorsValue;
			float4 lerpResult88_g59884 = lerp( TVE_ColorsParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, samplerTVE_ColorsTex, float3(( (TVE_ColorsCoord).zw + ( (TVE_ColorsCoord).xy * (Position58_g59884).xz ) ),temp_output_82_0_g59884), 0.0 ) , TVE_ColorsUsage[(int)temp_output_82_0_g59884]);
			half Global_ColorsTex_A1701_g59802 = (lerpResult88_g59884).a;
			o.vertexToFrag11_g59906 = Global_ColorsTex_A1701_g59802;
			o.vertexToFrag3890_g59802 = ase_worldPos;
			float3 temp_cast_27 = (1.0).xxx;
			float Mesh_Occlusion318_g59802 = v.color.g;
			float temp_output_7_0_g59900 = _VertexOcclusionMinValue;
			float3 lerpResult2945_g59802 = lerp( (_VertexOcclusionColor).rgb , temp_cast_27 , saturate( ( ( Mesh_Occlusion318_g59802 - temp_output_7_0_g59900 ) / ( _VertexOcclusionMaxValue - temp_output_7_0_g59900 ) ) ));
			float3 Vertex_Occlusion648_g59802 = lerpResult2945_g59802;
			o.vertexToFrag11_g59816 = Vertex_Occlusion648_g59802;
			o.vertexToFrag11_g59807 = ( ( v.texcoord.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
		}

		inline half4 LightingStandardSpecularCustom(SurfaceOutputStandardSpecularCustom s, half3 viewDir, UnityGI gi )
		{
			half3 transmission = max(0 , -dot(s.Normal, gi.light.dir)) * gi.light.color * s.Transmission;
			half4 d = half4(s.Albedo * transmission , 0);

			SurfaceOutputStandardSpecular r;
			r.Albedo = s.Albedo;
			r.Normal = s.Normal;
			r.Emission = s.Emission;
			r.Specular = s.Specular;
			r.Smoothness = s.Smoothness;
			r.Occlusion = s.Occlusion;
			r.Alpha = s.Alpha;
			return LightingStandardSpecular (r, viewDir, gi) + d;
		}

		inline void LightingStandardSpecularCustom_GI(SurfaceOutputStandardSpecularCustom s, UnityGIInput data, inout UnityGI gi )
		{
			#if defined(UNITY_PASS_DEFERRED) && UNITY_ENABLE_REFLECTION_BUFFERS
				gi = UnityGlobalIllumination(data, s.Occlusion, s.Normal);
			#else
				UNITY_GLOSSY_ENV_FROM_SURFACE( g, s, data );
				gi = UnityGlobalIllumination( data, s.Occlusion, s.Normal, g );
			#endif
		}

		void surf( Input i , inout SurfaceOutputStandardSpecularCustom o )
		{
			half2 Main_UVs15_g59802 = i.vertexToFrag11_g59839;
			float3 localUnpackNormal4112_g59802 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g59802 ), _MainNormalValue );
			half3 Main_Normal137_g59802 = localUnpackNormal4112_g59802;
			float3 temp_output_13_0_g59896 = Main_Normal137_g59802;
			float3 switchResult12_g59896 = (((i.ASEVFace>0)?(temp_output_13_0_g59896):(( temp_output_13_0_g59896 * _render_normals_options ))));
			half3 Blend_Normal312_g59802 = switchResult12_g59896;
			half3 Final_Normal366_g59802 = Blend_Normal312_g59802;
			o.Normal = Final_Normal366_g59802;
			float4 tex2DNode29_g59802 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g59802 );
			float3 temp_output_51_0_g59802 = ( (_MainColor).rgb * (tex2DNode29_g59802).rgb );
			half3 Main_Albedo99_g59802 = temp_output_51_0_g59802;
			half3 Blend_Albedo265_g59802 = Main_Albedo99_g59802;
			half3 Blend_AlbedoTinted2808_g59802 = ( i.vertexToFrag11_g59898 * i.vertexToFrag11_g59904 * i.vertexToFrag11_g59893 * Blend_Albedo265_g59802 );
			float dotResult3616_g59802 = dot( Blend_AlbedoTinted2808_g59802 , float3(0.2126,0.7152,0.0722) );
			float3 temp_cast_1 = (dotResult3616_g59802).xxx;
			half Global_Colors_Influence3668_g59802 = i.vertexToFrag11_g59906;
			float3 lerpResult3618_g59802 = lerp( Blend_AlbedoTinted2808_g59802 , temp_cast_1 , Global_Colors_Influence3668_g59802);
			float3 PositionWS_PerVertex3905_g59802 = i.vertexToFrag3890_g59802;
			float3 Position58_g59884 = PositionWS_PerVertex3905_g59802;
			float temp_output_82_0_g59884 = _LayerColorsValue;
			float4 lerpResult88_g59884 = lerp( TVE_ColorsParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ColorsTex, samplerTVE_ColorsTex, float3(( (TVE_ColorsCoord).zw + ( (TVE_ColorsCoord).xy * (Position58_g59884).xz ) ),temp_output_82_0_g59884) ) , TVE_ColorsUsage[(int)temp_output_82_0_g59884]);
			half3 Global_ColorsTex_RGB1700_g59802 = (lerpResult88_g59884).rgb;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g59892 = 2.0;
			#else
				float staticSwitch1_g59892 = 4.594794;
			#endif
			float3 temp_output_1953_0_g59802 = ( Global_ColorsTex_RGB1700_g59802 * staticSwitch1_g59892 );
			half3 Global_Colors1954_g59802 = temp_output_1953_0_g59802;
			float lerpResult3870_g59802 = lerp( 1.0 , i.vertexColor.r , _ColorsVariationValue);
			half Global_Colors_Value3650_g59802 = ( _GlobalColors * lerpResult3870_g59802 );
			float temp_output_7_0_g59899 = _ColorsMaskMinValue;
			half Global_Colors_Mask3692_g59802 = saturate( ( ( ( 1.0 - i.vertexColor.a ) - temp_output_7_0_g59899 ) / ( _ColorsMaskMaxValue - temp_output_7_0_g59899 ) ) );
			float3 lerpResult3628_g59802 = lerp( Blend_AlbedoTinted2808_g59802 , ( lerpResult3618_g59802 * Global_Colors1954_g59802 ) , ( Global_Colors_Value3650_g59802 * Global_Colors_Mask3692_g59802 ));
			half3 Blend_AlbedoColored863_g59802 = lerpResult3628_g59802;
			float3 temp_output_799_0_g59802 = (_SubsurfaceColor).rgb;
			float dotResult3930_g59802 = dot( temp_output_799_0_g59802 , float3(0.2126,0.7152,0.0722) );
			float3 temp_cast_4 = (dotResult3930_g59802).xxx;
			float3 lerpResult3932_g59802 = lerp( temp_output_799_0_g59802 , temp_cast_4 , Global_Colors_Influence3668_g59802);
			float3 lerpResult3942_g59802 = lerp( temp_output_799_0_g59802 , ( lerpResult3932_g59802 * Global_Colors1954_g59802 ) , ( Global_Colors_Value3650_g59802 * Global_Colors_Mask3692_g59802 ));
			half3 Subsurface_Color1722_g59802 = lerpResult3942_g59802;
			half MainLight_Subsurface4041_g59802 = TVE_MainLightParams.a;
			half Subsurface_Intensity1752_g59802 = ( _SubsurfaceValue * MainLight_Subsurface4041_g59802 );
			float temp_output_7_0_g59901 = _SubsurfaceMaskMinValue;
			half Subsurface_Mask1557_g59802 = saturate( ( ( i.vertexColor.a - temp_output_7_0_g59901 ) / ( _SubsurfaceMaskMaxValue - temp_output_7_0_g59901 ) ) );
			half3 Subsurface_Transmission884_g59802 = ( Subsurface_Color1722_g59802 * Subsurface_Intensity1752_g59802 * Subsurface_Mask1557_g59802 );
			half3 MainLight_Direction3926_g59802 = TVE_MainLightDirection;
			float3 ase_worldPos = i.worldPos;
			float3 normalizeResult2169_g59802 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
			float3 ViewDir_Normalized3963_g59802 = normalizeResult2169_g59802;
			float dotResult785_g59802 = dot( -MainLight_Direction3926_g59802 , ViewDir_Normalized3963_g59802 );
			float saferPower1624_g59802 = max( (dotResult785_g59802*0.5 + 0.5) , 0.0001 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g59802 = 0.0;
			#else
				float staticSwitch1602_g59802 = ( pow( saferPower1624_g59802 , _MainLightAngleValue ) * _MainLightScatteringValue );
			#endif
			half Mask_Subsurface_View782_g59802 = staticSwitch1602_g59802;
			half3 Subsurface_Scattering1693_g59802 = ( Subsurface_Transmission884_g59802 * Blend_AlbedoColored863_g59802 * Mask_Subsurface_View782_g59802 );
			half3 Blend_AlbedoAndSubsurface149_g59802 = ( Blend_AlbedoColored863_g59802 + Subsurface_Scattering1693_g59802 );
			half3 Global_OverlayColor1758_g59802 = (TVE_OverlayColor).rgb;
			half Main_AlbedoTex_G3526_g59802 = tex2DNode29_g59802.g;
			float3 Position82_g59850 = PositionWS_PerVertex3905_g59802;
			float temp_output_84_0_g59850 = _LayerExtrasValue;
			float4 lerpResult88_g59850 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, float3(( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g59850).xz ) ),temp_output_84_0_g59850) ) , TVE_ExtrasUsage[(int)temp_output_84_0_g59850]);
			float4 break89_g59850 = lerpResult88_g59850;
			half Global_Extras_Overlay156_g59802 = break89_g59850.b;
			float temp_output_1025_0_g59802 = ( _GlobalOverlay * Global_Extras_Overlay156_g59802 );
			float lerpResult1065_g59802 = lerp( 1.0 , i.vertexColor.r , _OverlayVariationValue);
			half Overlay_Commons1365_g59802 = ( temp_output_1025_0_g59802 * lerpResult1065_g59802 );
			float temp_output_7_0_g59897 = _OverlayMaskMinValue;
			half Overlay_Mask269_g59802 = saturate( ( ( ( ( ( i.vertexColor.a * 0.5 ) + Main_AlbedoTex_G3526_g59802 ) * Overlay_Commons1365_g59802 ) - temp_output_7_0_g59897 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g59897 ) ) );
			float3 lerpResult336_g59802 = lerp( Blend_AlbedoAndSubsurface149_g59802 , Global_OverlayColor1758_g59802 , Overlay_Mask269_g59802);
			half3 Final_Albedo359_g59802 = lerpResult336_g59802;
			o.Albedo = ( Final_Albedo359_g59802 * i.vertexToFrag11_g59816 );
			half2 Emissive_UVs2468_g59802 = i.vertexToFrag11_g59807;
			half Global_Extras_Emissive4203_g59802 = break89_g59850.r;
			float lerpResult4206_g59802 = lerp( 1.0 , Global_Extras_Emissive4203_g59802 , _GlobalEmissive);
			half3 Final_Emissive2476_g59802 = ( (( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissiveTex, sampler_EmissiveTex, Emissive_UVs2468_g59802 ) )).rgb * lerpResult4206_g59802 );
			o.Emission = Final_Emissive2476_g59802;
			float3 temp_cast_7 = (( 0.04 * _RenderSpecular )).xxx;
			o.Specular = temp_cast_7;
			float4 tex2DNode35_g59802 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g59802 );
			half Main_Smoothness227_g59802 = ( tex2DNode35_g59802.a * _MainSmoothnessValue );
			half Blend_Smoothness314_g59802 = Main_Smoothness227_g59802;
			half Global_OverlaySmoothness311_g59802 = TVE_OverlaySmoothness;
			float lerpResult343_g59802 = lerp( Blend_Smoothness314_g59802 , Global_OverlaySmoothness311_g59802 , Overlay_Mask269_g59802);
			half Final_Smoothness371_g59802 = lerpResult343_g59802;
			half Global_Extras_Wetness305_g59802 = break89_g59850.g;
			float lerpResult3673_g59802 = lerp( 0.0 , Global_Extras_Wetness305_g59802 , _GlobalWetness);
			half Final_SmoothnessAndWetness4130_g59802 = saturate( ( Final_Smoothness371_g59802 + lerpResult3673_g59802 ) );
			o.Smoothness = Final_SmoothnessAndWetness4130_g59802;
			float lerpResult240_g59802 = lerp( 1.0 , tex2DNode35_g59802.g , _MainOcclusionValue);
			half Main_Occlusion247_g59802 = lerpResult240_g59802;
			half Blend_Occlusion323_g59802 = Main_Occlusion247_g59802;
			o.Occlusion = Blend_Occlusion323_g59802;
			o.Transmission = Subsurface_Transmission884_g59802;
			float localCustomAlphaClip3735_g59802 = ( 0.0 );
			half Final_AlphaFade3727_g59802 = 1.0;
			float temp_output_41_0_g59810 = Final_AlphaFade3727_g59802;
			float Main_Alpha316_g59802 = ( _MainColor.a * tex2DNode29_g59802.a );
			float Mesh_Variation16_g59802 = i.vertexColor.r;
			float temp_output_4023_0_g59802 = (Mesh_Variation16_g59802*0.5 + 0.5);
			half Global_Extras_Alpha1033_g59802 = break89_g59850.a;
			float temp_output_4022_0_g59802 = ( temp_output_4023_0_g59802 - ( 1.0 - Global_Extras_Alpha1033_g59802 ) );
			half AlphaTreshold2132_g59802 = _Cutoff;
			#ifdef TVE_ALPHA_CLIP
				float staticSwitch4017_g59802 = ( temp_output_4022_0_g59802 + AlphaTreshold2132_g59802 );
			#else
				float staticSwitch4017_g59802 = temp_output_4022_0_g59802;
			#endif
			float lerpResult4011_g59802 = lerp( 1.0 , staticSwitch4017_g59802 , _GlobalAlpha);
			half Global_Alpha315_g59802 = saturate( lerpResult4011_g59802 );
			#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g59802 = ( ( Main_Alpha316_g59802 * Global_Alpha315_g59802 ) - ( AlphaTreshold2132_g59802 - 0.5 ) );
			#else
				float staticSwitch3792_g59802 = ( Main_Alpha316_g59802 * Global_Alpha315_g59802 );
			#endif
			half Final_Alpha3754_g59802 = staticSwitch3792_g59802;
			float temp_output_661_0_g59802 = ( saturate( ( temp_output_41_0_g59810 + ( temp_output_41_0_g59810 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g59802 ) ).r ) ) ) * Final_Alpha3754_g59802 );
			float Alpha3735_g59802 = temp_output_661_0_g59802;
			float Treshold3735_g59802 = 0.5;
			{
			#if TVE_ALPHA_CLIP
				clip(Alpha3735_g59802 - Treshold3735_g59802);
			#endif
			}
			half Final_Clip914_g59802 = saturate( Alpha3735_g59802 );
			o.Alpha = Final_Clip914_g59802;
		}

		ENDCG
	}
	Fallback "Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback"
	CustomEditor "TVEShaderCoreGUI"
}
/*ASEBEGIN
Version=18909
1920;0;1920;1029;2521.575;783.114;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-768;Half;False;Property;_render_cull;_render_cull;215;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;168;-2176,-896;Half;False;Property;_IsGrassShader;_IsGrassShader;211;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1039;-1600,384;Inherit;False;Define PIPELINE STANDARD;-1;;59910;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;735;-2176,384;Inherit;False;Define TVE PIVOT DATA BAKED;-1;;59909;8da5867b3f9f1834693af40d3eff73f4;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;713;-1888,384;Inherit;False;Define TVE IS GRASS SHADER;-1;;59908;921559c53826c0142ba6e27dd03eaef2;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1010;-1984,-896;Half;False;Property;_IsSubsurfaceShader;_IsSubsurfaceShader;213;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1040;-1344,-896;Inherit;False;Compile All Shaders;-1;;59907;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1013;-1408,-768;Half;False;Property;_subsurface_shadow;_subsurface_shadow;212;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-1984,-768;Half;False;Property;_render_src;_render_src;214;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1792,-768;Half;False;Property;_render_dst;_render_dst;216;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1041;-1536,-896;Inherit;False;Compile Core;-1;;59801;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1600,-768;Half;False;Property;_render_zw;_render_zw;217;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1037;-2176,-384;Inherit;False;Base Shader;0;;59802;856f7164d1c579d43a5cf4968a75ca43;80,3882,1,3880,1,3957,1,4029,1,4028,1,3904,1,3903,1,3900,1,4204,1,3908,1,4172,1,1300,1,1298,1,4179,1,3586,0,1271,1,3889,0,3658,1,1708,1,3509,1,1712,0,3873,1,1714,1,1717,1,1715,1,1718,1,916,0,1762,0,1763,0,3568,1,1949,1,1776,1,3475,1,4210,1,893,1,1745,1,3479,0,3501,1,3221,1,1646,1,1757,0,2807,1,3886,0,2953,1,3887,0,3243,1,3888,0,3728,0,3949,0,2172,0,3883,0,2658,1,1742,1,3484,0,1737,0,1735,0,1736,0,1734,0,3575,0,1733,0,1550,0,878,0,4069,0,4072,0,4067,0,4070,0,4068,0,860,1,3544,1,2260,1,2261,1,2054,0,2032,0,2060,0,2036,0,2039,1,2062,1,4177,1,3592,1,2750,1;0;19;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4135;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4127;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT3;1230;FLOAT;1461;FLOAT;1290;FLOAT;721;FLOAT;532;FLOAT;629;FLOAT3;534
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;1038;-1376,-384;Float;False;True;-1;4;TVEShaderCoreGUI;0;0;StandardSpecular;BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Subsurface Lit;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;False;True;Back;0;True;17;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;0;True;Opaque;;Geometry;ForwardOnly;16;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;1;0;True;20;0;True;7;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Absolute;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;218;-1;-1;-1;0;False;0;0;True;10;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-1024;Inherit;False;1023.392;100;Internal;0;;1,0.252,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;408;-2176,256;Inherit;False;1026.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1024.392;100;Final;0;;0,1,0.5,1;0;0
WireConnection;1038;0;1037;0
WireConnection;1038;1;1037;528
WireConnection;1038;2;1037;2489
WireConnection;1038;3;1037;3678
WireConnection;1038;4;1037;530
WireConnection;1038;5;1037;531
WireConnection;1038;6;1037;1230
WireConnection;1038;9;1037;532
WireConnection;1038;11;1037;534
ASEEND*/
//CHKSM=F2374C4BAC1CACB480142CD9E44151D556A82AFA
