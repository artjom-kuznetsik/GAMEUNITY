// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BOXOPHOBIC/The Vegetation Engine/Vegetation/Leaf Standard Lit"
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
		_FadeCameraValue("Fade by Camera Distance", Range( 0 , 1)) = 1
		_FadeGlancingValue("Fade by Glancing Angle", Range( 0 , 1)) = 0
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
		_OverlayBottomValue("Overlay Bottom", Range( 0 , 1)) = 0.5
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
		_MainLightNormalValue("Subsurface Scattering Normal", Range( 0 , 1)) = 0.5
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
		[StyledCategory(Size Fade Settings)]_SizeFadeCat("[ Size Fade Cat ]", Float) = 0
		[StyledMessage(Info, The Size Fade feature is recommended to be used to fade out vegetation at a distance in combination with the LOD Groups or with a 3rd party culling system., _SizeFadeMode, 1, 0, 10)]_SizeFadeMessage("# Size Fade Message", Float) = 0
		[StyledCategory(Motion Settings)]_MotionCat("[ Motion Cat ]", Float) = 0
		[StyledMessage(Info, Procedural variation in use. Use the Scale settings if the Variation is breaking the bending and rolling animation., _VertexVariationMode, 1 , 0, 10)]_VariationMotionMessage("# Variation Motion Message", Float) = 0
		[StyledSpace(10)]_MotionSpace("# Motion Space", Float) = 0
		_MotionAmplitude_10("Bending Amplitude", Range( 0 , 2)) = 0.05
		[IntRange]_MotionSpeed_10("Bending Speed", Range( 0 , 60)) = 2
		_MotionScale_10("Bending Scale", Range( 0 , 20)) = 0
		_MotionVariation_10("Bending Variation", Range( 0 , 20)) = 0
		[Space(10)]_MotionAmplitude_20("Rolling Amplitude", Range( 0 , 2)) = 0.1
		[IntRange]_MotionSpeed_20("Rolling Speed", Range( 0 , 60)) = 6
		_MotionScale_20("Rolling Scale", Range( 0 , 60)) = 0
		_MotionVariation_20("Rolling Variation", Range( 0 , 60)) = 5
		[Space(10)]_MotionAmplitude_32("Flutter Amplitude", Range( 0 , 2)) = 0.2
		[IntRange]_MotionSpeed_32("Flutter Speed", Range( 0 , 60)) = 20
		_MotionScale_32("Flutter Scale", Range( 0 , 20)) = 2
		_MotionVariation_32("Flutter Variation", Range( 0 , 20)) = 2
		[Space(10)]_InteractionAmplitude("Interaction Amplitude", Range( 0 , 10)) = 1
		_InteractionVariation("Interaction Variation", Range( 0 , 1)) = 0
		[HideInInspector]_VertexRollingMode("Enable Motion Rolling", Float) = 1
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
		[HideInInspector]_IsLeafShader("_IsLeafShader", Float) = 1
		[HideInInspector]_IsStandardShader("_IsStandardShader", Float) = 1
		[HideInInspector]_render_cull("_render_cull", Float) = 0
		[HideInInspector]_render_src("_render_src", Float) = 1
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
		#pragma target 4.0
		#pragma shader_feature_local TVE_ALPHA_CLIP
		#pragma shader_feature_local TVE_VERTEX_DATA_BATCHED
		//TVE Shader Type Defines
		#define TVE_IS_VEGETATION_SHADER
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

		#pragma surface surf StandardSpecular keepalpha addshadow fullforwardshadows dithercrossfade vertex:vertexDataFunc 
		struct Input
		{
			float3 worldPos;
			float2 vertexToFrag11_g52153;
			half ASEVFace : VFACE;
			float3 vertexToFrag11_g52212;
			float3 vertexToFrag11_g52218;
			float vertexToFrag11_g52220;
			float3 vertexToFrag3890_g49638;
			float4 vertexColor : COLOR;
			float3 worldNormal;
			INTERNAL_DATA
			float3 vertexToFrag11_g52074;
			float2 vertexToFrag11_g52065;
			float vertexToFrag11_g52069;
		};

		uniform half _render_cull;
		uniform half _render_zw;
		uniform half _render_src;
		uniform half _render_dst;
		uniform half _IsStandardShader;
		uniform half _IsLeafShader;
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
		uniform half _MotionAmplitude_20;
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
		uniform half _VertexRollingMode;
		uniform half _MotionSpeed_20;
		uniform half _MotionVariation_20;
		uniform half _MotionScale_20;
		uniform half _MotionAmplitude_10;
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
		uniform half4 _MainColor;
		uniform half4 TVE_ColorsParams;
		UNITY_DECLARE_TEX2DARRAY_NOSAMPLER(TVE_ColorsTex);
		uniform half4 TVE_ColorsCoord;
		uniform half _LayerColorsValue;
		SamplerState samplerTVE_ColorsTex;
		uniform float TVE_ColorsUsage[9];
		uniform half _GlobalColors;
		uniform half _ColorsVariationValue;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_MainMaskTex);
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
		uniform half _MainLightNormalValue;
		uniform half4 TVE_OverlayColor;
		uniform half _OverlayBottomValue;
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
		uniform half _MainSmoothnessValue;
		uniform half TVE_OverlaySmoothness;
		uniform half _GlobalWetness;
		uniform half _MainOcclusionValue;
		uniform half _FadeGlancingValue;
		uniform half TVE_CameraFadeStart;
		uniform half TVE_CameraFadeEnd;
		uniform half _FadeCameraValue;
		UNITY_DECLARE_TEX3D_NOSAMPLER(TVE_ScreenTex3D);
		uniform half TVE_ScreenTexCoord;
		SamplerState samplerTVE_ScreenTex3D;
		uniform half _GlobalAlpha;

		void vertexDataFunc( inout appdata_full v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float3 ase_vertex3Pos = v.vertex.xyz;
			float3 PositionOS3588_g49638 = ase_vertex3Pos;
			half3 _Vector1 = half3(0,0,0);
			half3 Mesh_PivotsOS2291_g49638 = _Vector1;
			float3 temp_output_2283_0_g49638 = ( PositionOS3588_g49638 - Mesh_PivotsOS2291_g49638 );
			half3 VertexPos40_g52142 = temp_output_2283_0_g49638;
			float3 appendResult74_g52142 = (float3(0.0 , VertexPos40_g52142.y , 0.0));
			float3 VertexPosRotationAxis50_g52142 = appendResult74_g52142;
			float3 break84_g52142 = VertexPos40_g52142;
			float3 appendResult81_g52142 = (float3(break84_g52142.x , 0.0 , break84_g52142.z));
			float3 VertexPosOtherAxis82_g52142 = appendResult81_g52142;
			float ObjectData20_g52187 = 3.14;
			float Bounds_Radius121_g49638 = _MaxBoundsInfo.x;
			float WorldData19_g52187 = Bounds_Radius121_g49638;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g52187 = WorldData19_g52187;
			#else
				float staticSwitch14_g52187 = ObjectData20_g52187;
			#endif
			float Motion_Max_Rolling1137_g49638 = staticSwitch14_g52187;
			float4x4 break19_g52182 = unity_ObjectToWorld;
			float3 appendResult20_g52182 = (float3(break19_g52182[ 0 ][ 3 ] , break19_g52182[ 1 ][ 3 ] , break19_g52182[ 2 ][ 3 ]));
			half3 Off19_g52185 = appendResult20_g52182;
			float3 appendResult93_g52182 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g52182 = ( appendResult93_g52182 * _vertex_pivot_mode );
			float3 PivotsOnly105_g52182 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g52182 , 0.0 ) ).xyz).xyz;
			half3 On20_g52185 = ( appendResult20_g52182 + PivotsOnly105_g52182 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g52185 = On20_g52185;
			#else
				float3 staticSwitch14_g52185 = Off19_g52185;
			#endif
			half3 ObjectData20_g52186 = staticSwitch14_g52185;
			half3 WorldData19_g52186 = Off19_g52185;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52186 = WorldData19_g52186;
			#else
				float3 staticSwitch14_g52186 = ObjectData20_g52186;
			#endif
			float3 temp_output_42_0_g52182 = staticSwitch14_g52186;
			half3 ObjectData20_g52181 = temp_output_42_0_g52182;
			float3 ase_worldPos = mul( unity_ObjectToWorld, v.vertex );
			half3 WorldData19_g52181 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52181 = WorldData19_g52181;
			#else
				float3 staticSwitch14_g52181 = ObjectData20_g52181;
			#endif
			float3 Position83_g52180 = staticSwitch14_g52181;
			float temp_output_84_0_g52180 = _LayerMotionValue;
			float4 lerpResult87_g52180 = lerp( TVE_MotionParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_MotionTex, samplerTVE_MotionTex, float3(( (TVE_MotionCoord).zw + ( (TVE_MotionCoord).xy * (Position83_g52180).xz ) ),temp_output_84_0_g52180), 0.0 ) , TVE_MotionUsage[(int)temp_output_84_0_g52180]);
			half4 Global_Motion_Params3909_g49638 = lerpResult87_g52180;
			float4 break322_g52155 = Global_Motion_Params3909_g49638;
			half Wind_Power369_g52155 = break322_g52155.z;
			float lerpResult410_g52155 = lerp( 0.2 , 1.0 , Wind_Power369_g52155);
			half Wind_Power_203109_g49638 = lerpResult410_g52155;
			half Mesh_Motion_260_g49638 = v.texcoord3.y;
			#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch160_g52135 = TVE_NoiseSpeed_Grass;
			#else
				float2 staticSwitch160_g52135 = TVE_NoiseSpeed_Vegetation;
			#endif
			float4x4 break19_g52137 = unity_ObjectToWorld;
			float3 appendResult20_g52137 = (float3(break19_g52137[ 0 ][ 3 ] , break19_g52137[ 1 ][ 3 ] , break19_g52137[ 2 ][ 3 ]));
			half3 Off19_g52140 = appendResult20_g52137;
			float3 appendResult93_g52137 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g52137 = ( appendResult93_g52137 * _vertex_pivot_mode );
			float3 PivotsOnly105_g52137 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g52137 , 0.0 ) ).xyz).xyz;
			half3 On20_g52140 = ( appendResult20_g52137 + PivotsOnly105_g52137 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g52140 = On20_g52140;
			#else
				float3 staticSwitch14_g52140 = Off19_g52140;
			#endif
			half3 ObjectData20_g52141 = staticSwitch14_g52140;
			half3 WorldData19_g52141 = Off19_g52140;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52141 = WorldData19_g52141;
			#else
				float3 staticSwitch14_g52141 = ObjectData20_g52141;
			#endif
			float3 temp_output_42_0_g52137 = staticSwitch14_g52141;
			half3 ObjectData20_g52136 = temp_output_42_0_g52137;
			half3 WorldData19_g52136 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52136 = WorldData19_g52136;
			#else
				float3 staticSwitch14_g52136 = ObjectData20_g52136;
			#endif
			#ifdef TVE_IS_GRASS_SHADER
				float2 staticSwitch164_g52135 = (ase_worldPos).xz;
			#else
				float2 staticSwitch164_g52135 = (staticSwitch14_g52136).xz;
			#endif
			#ifdef TVE_IS_GRASS_SHADER
				float staticSwitch161_g52135 = TVE_NoiseSize_Grass;
			#else
				float staticSwitch161_g52135 = TVE_NoiseSize_Vegetation;
			#endif
			float2 panner73_g52135 = ( _Time.y * staticSwitch160_g52135 + ( staticSwitch164_g52135 * staticSwitch161_g52135 ));
			float4 tex2DNode75_g52135 = SAMPLE_TEXTURE2D_LOD( TVE_NoiseTex, samplerTVE_NoiseTex, panner73_g52135, 0.0 );
			float4 saferPower77_g52135 = max( abs( tex2DNode75_g52135 ) , 0.0001 );
			half Wind_Power2223_g49638 = Wind_Power369_g52155;
			float temp_output_167_0_g52135 = Wind_Power2223_g49638;
			float lerpResult168_g52135 = lerp( 1.5 , 0.25 , temp_output_167_0_g52135);
			float4 temp_cast_7 = (lerpResult168_g52135).xxxx;
			float4 break142_g52135 = pow( saferPower77_g52135 , temp_cast_7 );
			half Global_NoiseTex_R34_g49638 = break142_g52135.r;
			half Input_Speed62_g52179 = _MotionSpeed_20;
			float mulTime354_g52179 = _Time.y * Input_Speed62_g52179;
			float4x4 break19_g52192 = unity_ObjectToWorld;
			float3 appendResult20_g52192 = (float3(break19_g52192[ 0 ][ 3 ] , break19_g52192[ 1 ][ 3 ] , break19_g52192[ 2 ][ 3 ]));
			half3 Off19_g52195 = appendResult20_g52192;
			float3 appendResult93_g52192 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g52192 = ( appendResult93_g52192 * _vertex_pivot_mode );
			float3 PivotsOnly105_g52192 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g52192 , 0.0 ) ).xyz).xyz;
			half3 On20_g52195 = ( appendResult20_g52192 + PivotsOnly105_g52192 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g52195 = On20_g52195;
			#else
				float3 staticSwitch14_g52195 = Off19_g52195;
			#endif
			half3 ObjectData20_g52196 = staticSwitch14_g52195;
			half3 WorldData19_g52196 = Off19_g52195;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52196 = WorldData19_g52196;
			#else
				float3 staticSwitch14_g52196 = ObjectData20_g52196;
			#endif
			float3 temp_output_42_0_g52192 = staticSwitch14_g52196;
			float3 break9_g52192 = temp_output_42_0_g52192;
			half Variation_Complex102_g52190 = frac( ( v.color.r + ( break9_g52192.x + break9_g52192.z ) ) );
			float ObjectData20_g52191 = Variation_Complex102_g52190;
			half Variation_Simple105_g52190 = v.color.r;
			float WorldData19_g52191 = Variation_Simple105_g52190;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g52191 = WorldData19_g52191;
			#else
				float staticSwitch14_g52191 = ObjectData20_g52191;
			#endif
			half Motion_Variation3073_g49638 = staticSwitch14_g52191;
			float temp_output_3154_0_g49638 = ( _MotionVariation_20 * Motion_Variation3073_g49638 );
			float Motion_Variation284_g52179 = temp_output_3154_0_g49638;
			float Motion_Scale287_g52179 = ( _MotionScale_20 * ase_worldPos.x );
			half Variation127_g52143 = temp_output_3154_0_g49638;
			float lerpResult110_g52143 = lerp( ceil( saturate( ( frac( ( Variation127_g52143 + 0.3576 ) ) - 0.6 ) ) ) , ceil( saturate( ( frac( ( Variation127_g52143 + 0.1715 ) ) - 0.4 ) ) ) , (sin( _Time.y )*0.5 + 0.5));
			float temp_output_112_0_g52143 = Wind_Power2223_g49638;
			float lerpResult111_g52143 = lerp( lerpResult110_g52143 , 1.0 , ( temp_output_112_0_g52143 * temp_output_112_0_g52143 * temp_output_112_0_g52143 * temp_output_112_0_g52143 ));
			float lerpResult126_g52143 = lerp( lerpResult111_g52143 , 1.0 , ( 1.0 - saturate( Variation127_g52143 ) ));
			half Motion_Rolling138_g49638 = ( ( _MotionAmplitude_20 * Motion_Max_Rolling1137_g49638 ) * ( Wind_Power_203109_g49638 * Mesh_Motion_260_g49638 * Global_NoiseTex_R34_g49638 * _VertexRollingMode ) * sin( ( mulTime354_g52179 + Motion_Variation284_g52179 + Motion_Scale287_g52179 ) ) * lerpResult126_g52143 );
			half Angle44_g52142 = Motion_Rolling138_g49638;
			half3 VertexPos40_g52159 = ( VertexPosRotationAxis50_g52142 + ( VertexPosOtherAxis82_g52142 * cos( Angle44_g52142 ) ) + ( cross( float3(0,1,0) , VertexPosOtherAxis82_g52142 ) * sin( Angle44_g52142 ) ) );
			float3 appendResult74_g52159 = (float3(VertexPos40_g52159.x , 0.0 , 0.0));
			half3 VertexPosRotationAxis50_g52159 = appendResult74_g52159;
			float3 break84_g52159 = VertexPos40_g52159;
			float3 appendResult81_g52159 = (float3(0.0 , break84_g52159.y , break84_g52159.z));
			half3 VertexPosOtherAxis82_g52159 = appendResult81_g52159;
			float ObjectData20_g52154 = 3.14;
			float Bounds_Height374_g49638 = _MaxBoundsInfo.y;
			float WorldData19_g52154 = ( Bounds_Height374_g49638 * 3.14 );
			#ifdef TVE_VERTEX_DATA_BATCHED
				float staticSwitch14_g52154 = WorldData19_g52154;
			#else
				float staticSwitch14_g52154 = ObjectData20_g52154;
			#endif
			float Motion_Max_Bending1133_g49638 = staticSwitch14_g52154;
			float lerpResult376_g52155 = lerp( 0.1 , 1.0 , Wind_Power369_g52155);
			half Wind_Power_103106_g49638 = lerpResult376_g52155;
			float3 appendResult397_g52155 = (float3(break322_g52155.x , 0.0 , break322_g52155.y));
			float3 temp_output_398_0_g52155 = (appendResult397_g52155*2.0 + -1.0);
			float3 ase_parentObjectScale = (1.0/float3( length( unity_WorldToObject[ 0 ].xyz ), length( unity_WorldToObject[ 1 ].xyz ), length( unity_WorldToObject[ 2 ].xyz ) ));
			float3 temp_output_339_0_g52155 = ( mul( unity_WorldToObject, float4( temp_output_398_0_g52155 , 0.0 ) ).xyz * ase_parentObjectScale );
			half2 Wind_DirectionOS39_g49638 = (temp_output_339_0_g52155).xz;
			half Input_Speed62_g52197 = _MotionSpeed_10;
			float mulTime373_g52197 = _Time.y * Input_Speed62_g52197;
			half Motion_Variation284_g52197 = ( _MotionVariation_10 * Motion_Variation3073_g49638 );
			float2 appendResult344_g52197 = (float2(ase_worldPos.x , ase_worldPos.z));
			float2 Motion_Scale287_g52197 = ( _MotionScale_10 * appendResult344_g52197 );
			half2 Sine_MinusOneToOne281_g52197 = sin( ( mulTime373_g52197 + Motion_Variation284_g52197 + Motion_Scale287_g52197 ) );
			float2 temp_cast_12 = (1.0).xx;
			half Input_Turbulence327_g52197 = Global_NoiseTex_R34_g49638;
			float2 lerpResult321_g52197 = lerp( Sine_MinusOneToOne281_g52197 , temp_cast_12 , Input_Turbulence327_g52197);
			half2 Motion_Bending2258_g49638 = ( ( _MotionAmplitude_10 * Motion_Max_Bending1133_g49638 ) * Wind_Power_103106_g49638 * Wind_DirectionOS39_g49638 * Global_NoiseTex_R34_g49638 * lerpResult321_g52197 );
			half Interaction_Amplitude4137_g49638 = _InteractionAmplitude;
			float4x4 break19_g52174 = unity_ObjectToWorld;
			float3 appendResult20_g52174 = (float3(break19_g52174[ 0 ][ 3 ] , break19_g52174[ 1 ][ 3 ] , break19_g52174[ 2 ][ 3 ]));
			half3 Off19_g52177 = appendResult20_g52174;
			float3 appendResult93_g52174 = (float3(v.texcoord.z , v.texcoord3.w , v.texcoord.w));
			float3 temp_output_91_0_g52174 = ( appendResult93_g52174 * _vertex_pivot_mode );
			float3 PivotsOnly105_g52174 = (mul( unity_ObjectToWorld, float4( temp_output_91_0_g52174 , 0.0 ) ).xyz).xyz;
			half3 On20_g52177 = ( appendResult20_g52174 + PivotsOnly105_g52174 );
			#ifdef TVE_PIVOT_DATA_BAKED
				float3 staticSwitch14_g52177 = On20_g52177;
			#else
				float3 staticSwitch14_g52177 = Off19_g52177;
			#endif
			half3 ObjectData20_g52178 = staticSwitch14_g52177;
			half3 WorldData19_g52178 = Off19_g52177;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52178 = WorldData19_g52178;
			#else
				float3 staticSwitch14_g52178 = ObjectData20_g52178;
			#endif
			float3 temp_output_42_0_g52174 = staticSwitch14_g52178;
			half3 ObjectData20_g52173 = temp_output_42_0_g52174;
			half3 WorldData19_g52173 = ase_worldPos;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52173 = WorldData19_g52173;
			#else
				float3 staticSwitch14_g52173 = ObjectData20_g52173;
			#endif
			float3 Position83_g52172 = staticSwitch14_g52173;
			float temp_output_84_0_g52172 = _LayerReactValue;
			float4 lerpResult87_g52172 = lerp( TVE_ReactParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ReactTex, samplerTVE_ReactTex, float3(( (TVE_ReactCoord).zw + ( (TVE_ReactCoord).xy * (Position83_g52172).xz ) ),temp_output_84_0_g52172), 0.0 ) , TVE_ReactUsage[(int)temp_output_84_0_g52172]);
			half4 Global_React_Params4173_g49638 = lerpResult87_g52172;
			float4 break322_g52160 = Global_React_Params4173_g49638;
			half Interaction_Mask66_g49638 = break322_g52160.z;
			float3 appendResult397_g52160 = (float3(break322_g52160.x , 0.0 , break322_g52160.y));
			float3 temp_output_398_0_g52160 = (appendResult397_g52160*2.0 + -1.0);
			float3 temp_output_339_0_g52160 = ( mul( unity_WorldToObject, float4( temp_output_398_0_g52160 , 0.0 ) ).xyz * ase_parentObjectScale );
			half2 Interaction_DirectionOS4158_g49638 = (temp_output_339_0_g52160).xz;
			float lerpResult3307_g49638 = lerp( 1.0 , Motion_Variation3073_g49638 , _InteractionVariation);
			half2 Motion_Interaction53_g49638 = ( Interaction_Amplitude4137_g49638 * Motion_Max_Bending1133_g49638 * Interaction_Mask66_g49638 * Interaction_Mask66_g49638 * Interaction_DirectionOS4158_g49638 * lerpResult3307_g49638 );
			float2 lerpResult109_g49638 = lerp( Motion_Bending2258_g49638 , Motion_Interaction53_g49638 , ( Interaction_Mask66_g49638 * saturate( Interaction_Amplitude4137_g49638 ) ));
			half Mesh_Motion_182_g49638 = v.texcoord3.x;
			float2 break143_g49638 = ( lerpResult109_g49638 * Mesh_Motion_182_g49638 );
			half Motion_Z190_g49638 = break143_g49638.y;
			half Angle44_g52159 = Motion_Z190_g49638;
			half3 VertexPos40_g52158 = ( VertexPosRotationAxis50_g52159 + ( VertexPosOtherAxis82_g52159 * cos( Angle44_g52159 ) ) + ( cross( float3(1,0,0) , VertexPosOtherAxis82_g52159 ) * sin( Angle44_g52159 ) ) );
			float3 appendResult74_g52158 = (float3(0.0 , 0.0 , VertexPos40_g52158.z));
			half3 VertexPosRotationAxis50_g52158 = appendResult74_g52158;
			float3 break84_g52158 = VertexPos40_g52158;
			float3 appendResult81_g52158 = (float3(break84_g52158.x , break84_g52158.y , 0.0));
			half3 VertexPosOtherAxis82_g52158 = appendResult81_g52158;
			half Motion_X216_g49638 = break143_g49638.x;
			half Angle44_g52158 = -Motion_X216_g49638;
			half Motion_Scale321_g52064 = ( _MotionScale_32 * 10.0 );
			half Input_Speed62_g52064 = _MotionSpeed_32;
			float mulTime349_g52064 = _Time.y * Input_Speed62_g52064;
			float Motion_Variation330_g52064 = ( _MotionVariation_32 * Motion_Variation3073_g49638 );
			half Input_Amplitude58_g52064 = ( _MotionAmplitude_32 * Bounds_Radius121_g49638 * 0.1 );
			float temp_output_299_0_g52064 = ( sin( ( ( ( ase_worldPos.x + ase_worldPos.y + ase_worldPos.z ) * Motion_Scale321_g52064 ) + mulTime349_g52064 + Motion_Variation330_g52064 ) ) * Input_Amplitude58_g52064 );
			float3 ase_vertexNormal = v.normal.xyz;
			float3 appendResult354_g52064 = (float3(temp_output_299_0_g52064 , 0.0 , temp_output_299_0_g52064));
			#ifdef TVE_IS_GRASS_SHADER
				float3 staticSwitch358_g52064 = appendResult354_g52064;
			#else
				float3 staticSwitch358_g52064 = ( temp_output_299_0_g52064 * ase_vertexNormal );
			#endif
			half Global_NoiseTex_A139_g49638 = break142_g52135.a;
			half Mesh_Motion_3144_g49638 = v.texcoord3.z;
			float lerpResult378_g52155 = lerp( 0.3 , 1.0 , Wind_Power369_g52155);
			half Wind_Power_323115_g49638 = lerpResult378_g52155;
			float temp_output_7_0_g52067 = TVE_MotionFadeEnd;
			half Wind_FadeOut4005_g49638 = saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g52067 ) / ( TVE_MotionFadeStart - temp_output_7_0_g52067 ) ) );
			half3 Motion_Detail263_g49638 = ( staticSwitch358_g52064 * ( ( Global_NoiseTex_R34_g49638 + Global_NoiseTex_A139_g49638 ) * Mesh_Motion_3144_g49638 * Wind_Power_323115_g49638 ) * Wind_FadeOut4005_g49638 );
			float3 Vertex_Motion_Object833_g49638 = ( ( VertexPosRotationAxis50_g52158 + ( VertexPosOtherAxis82_g52158 * cos( Angle44_g52158 ) ) + ( cross( float3(0,0,1) , VertexPosOtherAxis82_g52158 ) * sin( Angle44_g52158 ) ) ) + Motion_Detail263_g49638 );
			float3 temp_output_3474_0_g49638 = ( PositionOS3588_g49638 - Mesh_PivotsOS2291_g49638 );
			float3 appendResult2047_g49638 = (float3(Motion_Rolling138_g49638 , 0.0 , -Motion_Rolling138_g49638));
			float3 appendResult2043_g49638 = (float3(Motion_X216_g49638 , 0.0 , Motion_Z190_g49638));
			float3 Vertex_Motion_World1118_g49638 = ( ( ( temp_output_3474_0_g49638 + appendResult2047_g49638 ) + appendResult2043_g49638 ) + Motion_Detail263_g49638 );
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch3312_g49638 = Vertex_Motion_World1118_g49638;
			#else
				float3 staticSwitch3312_g49638 = ( Vertex_Motion_Object833_g49638 + ( 0.0 * _VertexDataMode ) );
			#endif
			half Global_Vertex_Size174_g49638 = break322_g52160.w;
			float lerpResult346_g49638 = lerp( 1.0 , Global_Vertex_Size174_g49638 , _GlobalSize);
			float3 appendResult3480_g49638 = (float3(lerpResult346_g49638 , lerpResult346_g49638 , lerpResult346_g49638));
			half3 ObjectData20_g52131 = appendResult3480_g49638;
			half3 _Vector11 = half3(1,1,1);
			half3 WorldData19_g52131 = _Vector11;
			#ifdef TVE_VERTEX_DATA_BATCHED
				float3 staticSwitch14_g52131 = WorldData19_g52131;
			#else
				float3 staticSwitch14_g52131 = ObjectData20_g52131;
			#endif
			half3 Vertex_Size1741_g49638 = staticSwitch14_g52131;
			half3 _Vector5 = half3(1,1,1);
			float3 Vertex_SizeFade1740_g49638 = _Vector5;
			half3 Grass_Coverage2661_g49638 = half3(0,0,0);
			float3 Final_VertexPosition890_g49638 = ( ( staticSwitch3312_g49638 * Vertex_Size1741_g49638 * Vertex_SizeFade1740_g49638 ) + Mesh_PivotsOS2291_g49638 + Grass_Coverage2661_g49638 );
			v.vertex.xyz = Final_VertexPosition890_g49638;
			v.vertex.w = 1;
			o.vertexToFrag11_g52153 = ( ( v.texcoord.xy * (_MainUVs).xy ) + (_MainUVs).zw );
			float temp_output_7_0_g52208 = _GradientMinValue;
			float4 lerpResult2779_g49638 = lerp( _GradientColorTwo , _GradientColorOne , saturate( ( ( v.color.a - temp_output_7_0_g52208 ) / ( _GradientMaxValue - temp_output_7_0_g52208 ) ) ));
			half3 Gradient_Tint2784_g49638 = (lerpResult2779_g49638).rgb;
			o.vertexToFrag11_g52212 = Gradient_Tint2784_g49638;
			float3 temp_cast_20 = (_NoiseScaleValue).xxx;
			float3 vertexToFrag3890_g49638 = ase_worldPos;
			float3 PositionWS_PerVertex3905_g49638 = vertexToFrag3890_g49638;
			float temp_output_7_0_g52217 = _NoiseMinValue;
			half Noise_Mask3162_g49638 = saturate( ( ( SAMPLE_TEXTURE3D_LOD( TVE_WorldTex3D, samplerTVE_WorldTex3D, ( temp_cast_20 * PositionWS_PerVertex3905_g49638 * 0.1 ), 0.0 ).r - temp_output_7_0_g52217 ) / ( _NoiseMaxValue - temp_output_7_0_g52217 ) ) );
			float4 lerpResult2800_g49638 = lerp( _NoiseColorTwo , _NoiseColorOne , Noise_Mask3162_g49638);
			half3 Noise_Tint2802_g49638 = (lerpResult2800_g49638).rgb;
			o.vertexToFrag11_g52218 = Noise_Tint2802_g49638;
			float3 Position58_g52198 = PositionWS_PerVertex3905_g49638;
			float temp_output_82_0_g52198 = _LayerColorsValue;
			float4 lerpResult88_g52198 = lerp( TVE_ColorsParams , SAMPLE_TEXTURE2D_ARRAY_LOD( TVE_ColorsTex, samplerTVE_ColorsTex, float3(( (TVE_ColorsCoord).zw + ( (TVE_ColorsCoord).xy * (Position58_g52198).xz ) ),temp_output_82_0_g52198), 0.0 ) , TVE_ColorsUsage[(int)temp_output_82_0_g52198]);
			half Global_ColorsTex_A1701_g49638 = (lerpResult88_g52198).a;
			o.vertexToFrag11_g52220 = Global_ColorsTex_A1701_g49638;
			o.vertexToFrag3890_g49638 = ase_worldPos;
			float3 temp_cast_23 = (1.0).xxx;
			float Mesh_Occlusion318_g49638 = v.color.g;
			float temp_output_7_0_g52214 = _VertexOcclusionMinValue;
			float3 lerpResult2945_g49638 = lerp( (_VertexOcclusionColor).rgb , temp_cast_23 , saturate( ( ( Mesh_Occlusion318_g49638 - temp_output_7_0_g52214 ) / ( _VertexOcclusionMaxValue - temp_output_7_0_g52214 ) ) ));
			float3 Vertex_Occlusion648_g49638 = lerpResult2945_g49638;
			o.vertexToFrag11_g52074 = Vertex_Occlusion648_g49638;
			o.vertexToFrag11_g52065 = ( ( v.texcoord.xy * (_EmissiveUVs).xy ) + (_EmissiveUVs).zw );
			float temp_output_7_0_g52070 = TVE_CameraFadeStart;
			float saferPower3976_g49638 = max( saturate( ( ( distance( ase_worldPos , _WorldSpaceCameraPos ) - temp_output_7_0_g52070 ) / ( TVE_CameraFadeEnd - temp_output_7_0_g52070 ) ) ) , 0.0001 );
			float temp_output_3976_0_g49638 = pow( saferPower3976_g49638 , _FadeCameraValue );
			o.vertexToFrag11_g52069 = temp_output_3976_0_g49638;
		}

		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			half2 Main_UVs15_g49638 = i.vertexToFrag11_g52153;
			float3 localUnpackNormal4112_g49638 = UnpackScaleNormal( SAMPLE_TEXTURE2D( _MainNormalTex, sampler_MainAlbedoTex, Main_UVs15_g49638 ), _MainNormalValue );
			half3 Main_Normal137_g49638 = localUnpackNormal4112_g49638;
			float3 temp_output_13_0_g52210 = Main_Normal137_g49638;
			float3 switchResult12_g52210 = (((i.ASEVFace>0)?(temp_output_13_0_g52210):(( temp_output_13_0_g52210 * _render_normals_options ))));
			half3 Blend_Normal312_g49638 = switchResult12_g52210;
			half3 Final_Normal366_g49638 = Blend_Normal312_g49638;
			o.Normal = Final_Normal366_g49638;
			float4 tex2DNode29_g49638 = SAMPLE_TEXTURE2D( _MainAlbedoTex, sampler_MainAlbedoTex, Main_UVs15_g49638 );
			float3 temp_output_51_0_g49638 = ( (_MainColor).rgb * (tex2DNode29_g49638).rgb );
			half3 Main_Albedo99_g49638 = temp_output_51_0_g49638;
			half3 Blend_Albedo265_g49638 = Main_Albedo99_g49638;
			half3 Blend_AlbedoTinted2808_g49638 = ( i.vertexToFrag11_g52212 * i.vertexToFrag11_g52218 * float3(1,1,1) * Blend_Albedo265_g49638 );
			float dotResult3616_g49638 = dot( Blend_AlbedoTinted2808_g49638 , float3(0.2126,0.7152,0.0722) );
			float3 temp_cast_1 = (dotResult3616_g49638).xxx;
			half Global_Colors_Influence3668_g49638 = i.vertexToFrag11_g52220;
			float3 lerpResult3618_g49638 = lerp( Blend_AlbedoTinted2808_g49638 , temp_cast_1 , Global_Colors_Influence3668_g49638);
			float3 PositionWS_PerVertex3905_g49638 = i.vertexToFrag3890_g49638;
			float3 Position58_g52198 = PositionWS_PerVertex3905_g49638;
			float temp_output_82_0_g52198 = _LayerColorsValue;
			float4 lerpResult88_g52198 = lerp( TVE_ColorsParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ColorsTex, samplerTVE_ColorsTex, float3(( (TVE_ColorsCoord).zw + ( (TVE_ColorsCoord).xy * (Position58_g52198).xz ) ),temp_output_82_0_g52198) ) , TVE_ColorsUsage[(int)temp_output_82_0_g52198]);
			half3 Global_ColorsTex_RGB1700_g49638 = (lerpResult88_g52198).rgb;
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch1_g52206 = 2.0;
			#else
				float staticSwitch1_g52206 = 4.594794;
			#endif
			float3 temp_output_1953_0_g49638 = ( Global_ColorsTex_RGB1700_g49638 * staticSwitch1_g52206 );
			half3 Global_Colors1954_g49638 = temp_output_1953_0_g49638;
			float lerpResult3870_g49638 = lerp( 1.0 , i.vertexColor.r , _ColorsVariationValue);
			half Global_Colors_Value3650_g49638 = ( _GlobalColors * lerpResult3870_g49638 );
			float4 tex2DNode35_g49638 = SAMPLE_TEXTURE2D( _MainMaskTex, sampler_MainAlbedoTex, Main_UVs15_g49638 );
			half Main_Mask57_g49638 = tex2DNode35_g49638.b;
			float temp_output_7_0_g52213 = _ColorsMaskMinValue;
			half Global_Colors_Mask3692_g49638 = saturate( ( ( Main_Mask57_g49638 - temp_output_7_0_g52213 ) / ( _ColorsMaskMaxValue - temp_output_7_0_g52213 ) ) );
			float3 lerpResult3628_g49638 = lerp( Blend_AlbedoTinted2808_g49638 , ( lerpResult3618_g49638 * Global_Colors1954_g49638 ) , ( Global_Colors_Value3650_g49638 * Global_Colors_Mask3692_g49638 ));
			half3 Blend_AlbedoColored863_g49638 = lerpResult3628_g49638;
			float3 temp_output_799_0_g49638 = (_SubsurfaceColor).rgb;
			float dotResult3930_g49638 = dot( temp_output_799_0_g49638 , float3(0.2126,0.7152,0.0722) );
			float3 temp_cast_4 = (dotResult3930_g49638).xxx;
			float3 lerpResult3932_g49638 = lerp( temp_output_799_0_g49638 , temp_cast_4 , Global_Colors_Influence3668_g49638);
			float3 lerpResult3942_g49638 = lerp( temp_output_799_0_g49638 , ( lerpResult3932_g49638 * Global_Colors1954_g49638 ) , ( Global_Colors_Value3650_g49638 * Global_Colors_Mask3692_g49638 ));
			half3 Subsurface_Color1722_g49638 = lerpResult3942_g49638;
			half MainLight_Subsurface4041_g49638 = TVE_MainLightParams.a;
			half Subsurface_Intensity1752_g49638 = ( _SubsurfaceValue * MainLight_Subsurface4041_g49638 );
			float temp_output_7_0_g52215 = _SubsurfaceMaskMinValue;
			half Subsurface_Mask1557_g49638 = saturate( ( ( Main_Mask57_g49638 - temp_output_7_0_g52215 ) / ( _SubsurfaceMaskMaxValue - temp_output_7_0_g52215 ) ) );
			half3 Subsurface_Transmission884_g49638 = ( Subsurface_Color1722_g49638 * Subsurface_Intensity1752_g49638 * Subsurface_Mask1557_g49638 );
			half3 MainLight_Direction3926_g49638 = TVE_MainLightDirection;
			float3 ase_worldPos = i.worldPos;
			float3 normalizeResult2169_g49638 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
			float3 ViewDir_Normalized3963_g49638 = normalizeResult2169_g49638;
			float dotResult785_g49638 = dot( -MainLight_Direction3926_g49638 , ViewDir_Normalized3963_g49638 );
			float saferPower1624_g49638 = max( (dotResult785_g49638*0.5 + 0.5) , 0.0001 );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1602_g49638 = 0.0;
			#else
				float staticSwitch1602_g49638 = ( pow( saferPower1624_g49638 , _MainLightAngleValue ) * _MainLightScatteringValue );
			#endif
			half Mask_Subsurface_View782_g49638 = staticSwitch1602_g49638;
			float3 Main_Normal_WS4101_g49638 = (WorldNormalVector( i , Main_Normal137_g49638 ));
			float dotResult777_g49638 = dot( MainLight_Direction3926_g49638 , Main_Normal_WS4101_g49638 );
			float lerpResult4198_g49638 = lerp( 1.0 , saturate( dotResult777_g49638 ) , _MainLightNormalValue);
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch1604_g49638 = 0.0;
			#else
				float staticSwitch1604_g49638 = lerpResult4198_g49638;
			#endif
			half Mask_Subsurface_Normal870_g49638 = staticSwitch1604_g49638;
			half3 Subsurface_Scattering1693_g49638 = ( Subsurface_Transmission884_g49638 * Blend_AlbedoColored863_g49638 * Mask_Subsurface_View782_g49638 * Mask_Subsurface_Normal870_g49638 );
			half3 Blend_AlbedoAndSubsurface149_g49638 = ( Blend_AlbedoColored863_g49638 + Subsurface_Scattering1693_g49638 );
			half3 Global_OverlayColor1758_g49638 = (TVE_OverlayColor).rgb;
			float lerpResult3567_g49638 = lerp( _OverlayBottomValue , 1.0 , Main_Normal_WS4101_g49638.y);
			half Main_AlbedoTex_G3526_g49638 = tex2DNode29_g49638.g;
			float3 Position82_g52164 = PositionWS_PerVertex3905_g49638;
			float temp_output_84_0_g52164 = _LayerExtrasValue;
			float4 lerpResult88_g52164 = lerp( TVE_ExtrasParams , SAMPLE_TEXTURE2D_ARRAY( TVE_ExtrasTex, samplerTVE_ExtrasTex, float3(( (TVE_ExtrasCoord).zw + ( (TVE_ExtrasCoord).xy * (Position82_g52164).xz ) ),temp_output_84_0_g52164) ) , TVE_ExtrasUsage[(int)temp_output_84_0_g52164]);
			float4 break89_g52164 = lerpResult88_g52164;
			half Global_Extras_Overlay156_g49638 = break89_g52164.b;
			float temp_output_1025_0_g49638 = ( _GlobalOverlay * Global_Extras_Overlay156_g49638 );
			float lerpResult1065_g49638 = lerp( 1.0 , i.vertexColor.r , _OverlayVariationValue);
			half Overlay_Commons1365_g49638 = ( temp_output_1025_0_g49638 * lerpResult1065_g49638 );
			float temp_output_7_0_g52211 = _OverlayMaskMinValue;
			half Overlay_Mask269_g49638 = saturate( ( ( ( ( ( lerpResult3567_g49638 * 0.5 ) + Main_AlbedoTex_G3526_g49638 ) * Overlay_Commons1365_g49638 ) - temp_output_7_0_g52211 ) / ( _OverlayMaskMaxValue - temp_output_7_0_g52211 ) ) );
			float3 lerpResult336_g49638 = lerp( Blend_AlbedoAndSubsurface149_g49638 , Global_OverlayColor1758_g49638 , Overlay_Mask269_g49638);
			half3 Final_Albedo359_g49638 = lerpResult336_g49638;
			o.Albedo = ( Final_Albedo359_g49638 * i.vertexToFrag11_g52074 );
			half2 Emissive_UVs2468_g49638 = i.vertexToFrag11_g52065;
			half Global_Extras_Emissive4203_g49638 = break89_g52164.r;
			float lerpResult4206_g49638 = lerp( 1.0 , Global_Extras_Emissive4203_g49638 , _GlobalEmissive);
			half3 Final_Emissive2476_g49638 = ( (( _EmissiveColor * SAMPLE_TEXTURE2D( _EmissiveTex, sampler_EmissiveTex, Emissive_UVs2468_g49638 ) )).rgb * lerpResult4206_g49638 );
			o.Emission = Final_Emissive2476_g49638;
			float3 temp_cast_7 = (( 0.04 * _RenderSpecular )).xxx;
			o.Specular = temp_cast_7;
			half Main_Smoothness227_g49638 = ( tex2DNode35_g49638.a * _MainSmoothnessValue );
			half Blend_Smoothness314_g49638 = Main_Smoothness227_g49638;
			half Global_OverlaySmoothness311_g49638 = TVE_OverlaySmoothness;
			float lerpResult343_g49638 = lerp( Blend_Smoothness314_g49638 , Global_OverlaySmoothness311_g49638 , Overlay_Mask269_g49638);
			half Final_Smoothness371_g49638 = lerpResult343_g49638;
			half Global_Extras_Wetness305_g49638 = break89_g52164.g;
			float lerpResult3673_g49638 = lerp( 0.0 , Global_Extras_Wetness305_g49638 , _GlobalWetness);
			half Final_SmoothnessAndWetness4130_g49638 = saturate( ( Final_Smoothness371_g49638 + lerpResult3673_g49638 ) );
			o.Smoothness = Final_SmoothnessAndWetness4130_g49638;
			float lerpResult240_g49638 = lerp( 1.0 , tex2DNode35_g49638.g , _MainOcclusionValue);
			half Main_Occlusion247_g49638 = lerpResult240_g49638;
			half Blend_Occlusion323_g49638 = Main_Occlusion247_g49638;
			o.Occlusion = Blend_Occlusion323_g49638;
			float localCustomAlphaClip3735_g49638 = ( 0.0 );
			float3 normalizeResult3971_g49638 = normalize( cross( ddy( ase_worldPos ) , ddx( ase_worldPos ) ) );
			float3 NormalsWS_Derivates3972_g49638 = normalizeResult3971_g49638;
			float dotResult3851_g49638 = dot( ViewDir_Normalized3963_g49638 , NormalsWS_Derivates3972_g49638 );
			float lerpResult3993_g49638 = lerp( 1.0 , abs( dotResult3851_g49638 ) , _FadeGlancingValue);
			half Fade_Glancing3853_g49638 = lerpResult3993_g49638;
			half Fade_Camera3743_g49638 = i.vertexToFrag11_g52069;
			half Final_AlphaFade3727_g49638 = ( Fade_Glancing3853_g49638 * Fade_Camera3743_g49638 );
			float temp_output_41_0_g52068 = Final_AlphaFade3727_g49638;
			float Main_Alpha316_g49638 = ( _MainColor.a * tex2DNode29_g49638.a );
			float Mesh_Variation16_g49638 = i.vertexColor.r;
			float temp_output_4023_0_g49638 = (Mesh_Variation16_g49638*0.5 + 0.5);
			half Global_Extras_Alpha1033_g49638 = break89_g52164.a;
			float temp_output_4022_0_g49638 = ( temp_output_4023_0_g49638 - ( 1.0 - Global_Extras_Alpha1033_g49638 ) );
			half AlphaTreshold2132_g49638 = _Cutoff;
			#ifdef TVE_ALPHA_CLIP
				float staticSwitch4017_g49638 = ( temp_output_4022_0_g49638 + AlphaTreshold2132_g49638 );
			#else
				float staticSwitch4017_g49638 = temp_output_4022_0_g49638;
			#endif
			float lerpResult4011_g49638 = lerp( 1.0 , staticSwitch4017_g49638 , _GlobalAlpha);
			half Global_Alpha315_g49638 = saturate( lerpResult4011_g49638 );
			#ifdef TVE_ALPHA_CLIP
				float staticSwitch3792_g49638 = ( ( Main_Alpha316_g49638 * Global_Alpha315_g49638 ) - ( AlphaTreshold2132_g49638 - 0.5 ) );
			#else
				float staticSwitch3792_g49638 = ( Main_Alpha316_g49638 * Global_Alpha315_g49638 );
			#endif
			half Final_Alpha3754_g49638 = staticSwitch3792_g49638;
			float temp_output_661_0_g49638 = ( saturate( ( temp_output_41_0_g52068 + ( temp_output_41_0_g52068 * SAMPLE_TEXTURE3D( TVE_ScreenTex3D, samplerTVE_ScreenTex3D, ( TVE_ScreenTexCoord * PositionWS_PerVertex3905_g49638 ) ).r ) ) ) * Final_Alpha3754_g49638 );
			float Alpha3735_g49638 = temp_output_661_0_g49638;
			float Treshold3735_g49638 = 0.5;
			{
			#if TVE_ALPHA_CLIP
				clip(Alpha3735_g49638 - Treshold3735_g49638);
			#endif
			}
			half Final_Clip914_g49638 = saturate( Alpha3735_g49638 );
			o.Alpha = Final_Clip914_g49638;
		}

		ENDCG
	}
	Fallback "Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback"
	CustomEditor "TVEShaderCoreGUI"
}
/*ASEBEGIN
Version=18909
1920;0;1920;1029;2684.201;715.155;1;True;False
Node;AmplifyShaderEditor.RangedFloatNode;10;-2176,-768;Half;False;Property;_render_cull;_render_cull;213;1;[HideInInspector];Create;True;0;3;Both;0;Back;1;Front;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-1600,-768;Half;False;Property;_render_zw;_render_zw;216;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;20;-1984,-768;Half;False;Property;_render_src;_render_src;214;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;7;-1792,-768;Half;False;Property;_render_dst;_render_dst;215;1;[HideInInspector];Create;True;0;2;Opaque;0;Transparent;1;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;81;-1984,-896;Half;False;Property;_IsStandardShader;_IsStandardShader;212;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;168;-2176,-896;Half;False;Property;_IsLeafShader;_IsLeafShader;211;1;[HideInInspector];Create;True;0;0;0;True;0;False;1;0;1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;610;-2176,384;Inherit;False;Define TVE IS VEGETATION SHADER;-1;;49634;b458122dd75182d488380bd0f592b9e6;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;638;-1856,384;Inherit;False;Define PIPELINE STANDARD;-1;;49635;9af03ae8defe78d448ef2a4ef3601e12;0;0;1;FLOAT;529
Node;AmplifyShaderEditor.FunctionNode;639;-1344,-896;Inherit;False;Compile All Shaders;-1;;49636;e67c8238031dbf04ab79a5d4d63d1b4f;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;640;-1536,-896;Inherit;False;Compile Core;-1;;49637;634b02fd1f32e6a4c875d8fc2c450956;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;635;-2176,-384;Inherit;False;Base Shader;0;;49638;856f7164d1c579d43a5cf4968a75ca43;80,3882,1,3880,1,3957,1,4029,1,4028,1,3904,1,3903,1,3900,1,4204,1,3908,1,4172,1,1300,1,1298,1,4179,1,3586,0,1271,1,3889,0,3658,1,1708,1,3509,1,1712,2,3873,1,1714,1,1717,1,1715,1,1718,1,916,1,1762,0,1763,0,3568,1,1949,1,1776,1,3475,1,4210,1,893,1,1745,1,3479,0,3501,1,3221,2,1646,1,1757,1,2807,1,3886,0,2953,1,3887,0,3243,0,3888,0,3728,1,3949,0,2172,1,3883,0,2658,0,1742,0,3484,0,1737,0,1735,0,1736,0,1734,0,3575,0,1733,0,1550,0,878,0,4069,0,4072,0,4067,0,4070,0,4068,0,860,1,3544,1,2260,1,2261,1,2054,1,2032,1,2060,0,2036,0,2039,1,2062,1,4177,1,3592,1,2750,0;0;19;FLOAT3;0;FLOAT3;528;FLOAT3;2489;FLOAT;531;FLOAT;4135;FLOAT;529;FLOAT;3678;FLOAT;530;FLOAT;4127;FLOAT;4122;FLOAT;4134;FLOAT;1235;FLOAT3;1230;FLOAT;1461;FLOAT;1290;FLOAT;721;FLOAT;532;FLOAT;629;FLOAT3;534
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;637;-1376,-384;Float;False;True;-1;4;TVEShaderCoreGUI;0;0;StandardSpecular;BOXOPHOBIC/The Vegetation Engine/Vegetation/Leaf Standard Lit;False;False;False;False;False;False;False;False;False;False;False;False;True;False;False;False;False;False;False;False;True;Back;0;True;17;0;False;-1;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;True;0;True;Opaque;;Geometry;All;16;all;True;True;True;True;0;False;-1;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;15;10;25;False;0.5;True;1;0;True;20;0;True;7;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Absolute;0;Hidden/BOXOPHOBIC/The Vegetation Engine/Fallback;217;-1;-1;-1;0;False;0;0;True;10;-1;0;False;-1;0;0;0;False;0.1;False;-1;0;False;-1;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
Node;AmplifyShaderEditor.CommentaryNode;33;-2176,-512;Inherit;False;1024.392;100;Final;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;408;-2176,256;Inherit;False;1026.438;100;Features;0;;0,1,0.5,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;37;-2176,-1024;Inherit;False;1023.392;100;Internal;0;;1,0.252,0,1;0;0
WireConnection;637;0;635;0
WireConnection;637;1;635;528
WireConnection;637;2;635;2489
WireConnection;637;3;635;3678
WireConnection;637;4;635;530
WireConnection;637;5;635;531
WireConnection;637;9;635;532
WireConnection;637;11;635;534
ASEEND*/
//CHKSM=EE251B239DEDD87F59F5423BDAFBC1F4C382DE27
