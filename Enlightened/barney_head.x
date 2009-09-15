xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}
Frame barney_headFrame {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh barney_headFrame1 {
 249;
0.393748;-0.414371;0.651248;,
-0.581343;-0.625789;0.211247;,
-0.348396;-0.233556;0.598747;,
0.105479;-0.763514;0.151247;,
0.239760;-0.859876;0.475116;,
0.172175;-1.104853;0.242616;,
0.977753;-1.041124;0.588749;,
0.617001;-1.161077;0.286248;,
1.113840;-1.204466;0.336248;,
0.965775;-1.244257;0.178748;,
1.052077;-1.242762;0.121248;,
0.978608;-1.466513;0.063748;,
1.387556;-1.202330;0.066249;,
1.408958;-1.258883;-0.001251;,
1.475079;-1.304810;-0.001251;,
1.387556;-1.202330;-0.071251;,
1.442032;-1.178066;-0.228751;,
1.338091;-1.131199;-0.153751;,
1.245403;-1.156994;-0.223751;,
1.052077;-1.242762;-0.126252;,
1.113840;-1.204466;-0.341252;,
0.965777;-1.244257;-0.183752;,
0.617003;-1.161077;-0.291252;,
0.879868;-1.243284;-0.166252;,
0.715813;-1.288132;-0.058752;,
0.839698;-1.257160;-0.001252;,
0.715813;-1.288132;0.053748;,
0.879868;-1.243284;0.161248;,
0.534645;-1.192478;0.210116;,
0.444638;-1.214946;0.132616;,
0.517117;-1.274971;-0.002384;,
0.444638;-1.214946;-0.137384;,
0.534645;-1.192478;-0.214884;,
0.174675;-1.107353;-0.247384;,
0.977755;-1.041124;-0.593752;,
1.228073;-1.042870;-0.606251;,
1.257668;-1.095657;-0.463751;,
1.394087;-0.985676;-0.591250;,
1.439716;-1.144790;-0.463751;,
1.475531;-1.046692;-0.631250;,
1.512817;-1.242452;-0.406251;,
2.278328;-0.900682;-0.588749;,
2.337169;-1.120115;-0.001249;,
1.338091;-1.131201;0.148749;,
1.442030;-1.178066;0.223749;,
1.245403;-1.156996;0.218749;,
1.439715;-1.144793;0.458749;,
1.257666;-1.095659;0.458749;,
1.394083;-0.985678;0.586250;,
1.228072;-1.042870;0.601249;,
1.386107;-0.700911;0.733750;,
0.878787;-0.420451;0.728749;,
0.624266;0.224903;0.588750;,
-0.145328;0.263713;0.651248;,
-0.092342;0.688654;0.006249;,
0.269631;-1.237385;-0.079884;,
0.269629;-1.237385;0.072616;,
0.164643;-1.199850;0.075116;,
0.112174;-1.107332;-0.002384;,
0.105479;-0.763513;-0.131253;,
-0.586342;-0.625783;-0.193754;,
1.379511;-0.487234;-1.136250;,
1.758545;0.449950;-0.951248;,
0.909644;-0.002621;-1.086251;,
1.841414;-0.320046;-1.048749;,
1.672859;-0.999529;-0.973750;,
1.954565;-0.915129;-0.878750;,
1.825718;-1.679381;-0.503751;,
2.074732;-1.513855;-0.431250;,
1.825716;-1.679381;0.508749;,
2.074337;-1.516325;0.443750;,
1.954561;-0.915131;0.896251;,
1.512816;-1.242453;0.401249;,
2.278324;-0.900684;0.583751;,
1.475529;-1.046694;0.626250;,
1.392908;-0.466582;0.776250;,
1.435347;-0.374595;0.858751;,
1.466151;-0.371888;0.833751;,
1.230587;-0.101639;0.928751;,
0.878787;-0.420451;0.728749;,
0.870903;-0.358450;0.798750;,
0.850642;-0.342579;0.776249;,
0.917105;-0.274654;0.858750;,
0.898017;-0.251376;0.841250;,
0.878791;-0.420449;-0.733751;,
0.977755;-1.041124;-0.593752;,
1.386111;-0.700908;-0.738750;,
1.392912;-0.466579;-0.781250;,
2.278328;-0.900682;-0.588749;,
1.475531;-1.046692;-0.631250;,
1.394087;-0.985676;-0.591250;,
1.228073;-1.042870;-0.606251;,
0.850644;-0.342577;-0.781251;,
0.917109;-0.274652;-0.863750;,
0.898021;-0.251374;-0.846251;,
0.870907;-0.358448;-0.803751;,
0.878791;-0.420449;-0.733751;,
1.230591;-0.101636;-0.933750;,
1.392912;-0.466579;-0.781250;,
1.435351;-0.374593;-0.863750;,
1.466154;-0.371886;-0.838750;,
0.902339;-1.436693;0.063748;,
0.978608;-1.466513;-0.068752;,
0.902339;-1.436693;-0.068752;,
1.440464;0.391569;0.726252;,
0.723164;0.561060;-0.001250;,
0.624268;0.224905;-0.591250;,
-0.145332;0.258715;-0.656252;,
0.393750;-0.414370;-0.656252;,
-0.338397;-0.236066;-0.593753;,
1.672855;-0.999532;0.986250;,
1.841410;-0.320050;1.063751;,
1.379505;-0.487237;1.136250;,
1.758541;0.449947;0.968752;,
0.909638;-0.002624;1.103750;,
0.603125;0.458603;0.956250;,
0.909638;-0.002624;0.891250;,
0.164643;-1.199850;-0.082384;,
0.239760;-0.859875;-0.482384;,
0.393750;-0.414370;-0.656252;,
1.672859;-0.999530;-0.751250;,
1.772395;-1.377293;-0.451251;,
1.379511;-0.487234;-0.946250;,
0.909642;-0.002621;-0.901250;,
0.603129;0.458605;-0.966250;,
1.715668;0.993382;-0.588747;,
1.715664;0.993380;0.606253;,
1.720663;1.248245;0.008753;,
1.758541;0.449947;0.968752;,
0.592274;-1.205250;-0.113752;,
0.642833;-1.205677;-0.113752;,
0.593319;-1.023163;-0.283752;,
0.642833;-1.205677;0.111248;,
0.592274;-1.205250;0.111248;,
0.641407;-1.023199;0.283748;,
0.593319;-1.023164;0.283748;,
0.594647;-1.189999;-0.114883;,
0.637146;-1.190012;-0.114883;,
0.594710;-1.007498;-0.284883;,
0.637146;-1.190014;0.112617;,
0.594647;-1.189999;0.112617;,
0.637210;-1.007513;0.282616;,
0.594708;-1.007498;0.282616;,
0.617121;-1.262506;0.082617;,
0.617121;-1.262506;-0.089883;,
0.483329;0.852240;-0.556250;,
0.455798;1.061638;0.008751;,
1.440466;0.391569;-0.731249;,
1.672855;-0.999531;0.768750;,
1.379507;-0.487237;0.943750;,
1.391833;-0.170250;-0.786249;,
0.898021;-0.251374;-0.846251;,
1.230591;-0.101636;-0.933750;,
0.850644;-0.342577;-0.781251;,
0.878791;-0.420449;-0.733751;,
1.391829;-0.170252;0.781251;,
0.850642;-0.342579;0.776249;,
0.878787;-0.420451;0.728749;,
0.898017;-0.251376;0.841250;,
1.230587;-0.101639;0.928751;,
1.392908;-0.466582;0.776250;,
1.391829;-0.170252;0.781251;,
0.617121;-1.262506;0.082617;,
0.617285;-0.785005;-0.149883;,
0.617121;-1.262506;-0.089883;,
0.617285;-0.785006;0.145117;,
0.617001;-1.161077;0.286248;,
0.618617;-1.262585;0.083747;,
0.618617;-1.262585;-0.088752;,
1.772392;-1.377293;0.456250;,
1.715664;0.993380;0.606253;,
0.483326;0.852238;0.556251;,
1.720663;1.248245;0.008753;,
0.482543;0.847300;0.008750;,
0.482543;0.847300;0.008750;,
0.455798;1.061638;0.008751;,
-0.338397;-0.236066;-0.593753;,
1.392912;-0.466579;-0.781250;,
1.466154;-0.371886;-0.838750;,
1.391833;-0.170250;-0.786249;,
1.392908;-0.466582;0.776250;,
1.466151;-0.371888;0.833751;,
0.617003;-1.161077;-0.291252;,
0.641410;-1.023199;-0.283752;,
0.637210;-1.007513;-0.284884;,
0.239760;-0.859875;-0.482384;,
0.909638;-0.002624;0.891250;,
1.379507;-0.487237;0.943750;,
2.951457;0.007560;0.008754;,
0.482543;0.847300;0.008750;,
0.909642;-0.002621;-0.901250;,
1.379511;-0.487234;-0.946250;,
1.672859;-0.999530;-0.751250;,
1.772395;-1.377293;-0.451251;,
1.772392;-1.377293;0.456250;,
1.672855;-0.999531;0.768750;,
0.618617;-1.262585;-0.088752;,
0.617003;-1.161077;-0.291252;,
0.617285;-0.785005;-0.149883;,
0.618617;-1.262585;-0.088752;,
0.617285;-0.785005;-0.149883;,
0.618617;-1.262585;0.083747;,
0.618617;-1.262585;0.083747;,
0.617285;-0.785005;-0.149883;,
0.617285;-0.785006;0.145117;,
0.618617;-1.262585;0.083747;,
0.617285;-0.785006;0.145117;,
0.617001;-1.161077;0.286248;,
2.091780;1.146336;0.011254;,
1.672039;1.053459;0.398753;,
1.675127;1.184595;0.011253;,
2.249931;0.946585;0.446254;,
2.512834;0.912468;0.011254;,
2.695417;0.531654;0.436254;,
2.826673;0.513362;0.011254;,
2.897375;-0.014235;0.408754;,
2.985243;-0.002863;0.011254;,
2.972112;-0.532346;0.011253;,
2.897375;-0.014234;-0.391246;,
2.849643;-0.586322;-0.418747;,
2.643649;-0.049916;-0.733747;,
2.472937;-0.663243;-0.771248;,
2.263454;-0.100972;-0.941248;,
1.866484;-0.688527;-0.933749;,
1.779400;-0.168457;-1.001249;,
1.683270;0.773237;0.728753;,
2.310947;0.501526;0.788753;,
2.643648;-0.049919;0.751253;,
2.849642;-0.586323;0.436253;,
2.778499;-1.002819;0.011252;,
2.534343;-1.105833;-0.428749;,
1.950386;-1.116967;-0.711250;,
1.720257;0.352240;0.951252;,
2.263450;-0.100975;0.958752;,
2.472934;-0.663245;0.788752;,
2.534342;-1.105834;0.446252;,
2.438379;-1.343736;0.011251;,
2.008528;-1.404631;-0.381250;,
1.779396;-0.168460;1.018751;,
1.866480;-0.688529;0.951251;,
1.950382;-1.116969;0.728750;,
2.008526;-1.404633;0.398750;,
2.040945;-1.503432;0.011250;,
2.695419;0.531655;-0.418746;,
2.249933;0.946587;-0.428746;,
1.672041;1.053459;-0.381247;,
2.310949;0.501528;-0.771247;,
1.720261;0.352242;-0.933748;,
1.683272;0.773239;-0.711248;;

 326;
3;2,1,0;,
3;1,3,0;,
3;0,3,4;,
3;3,5,4;,
3;4,5,6;,
3;5,7,6;,
3;6,7,8;,
3;7,9,8;,
3;8,9,10;,
3;9,11,10;,
3;10,11,12;,
3;11,13,12;,
3;12,13,14;,
3;13,15,14;,
3;14,15,16;,
3;15,17,16;,
3;16,17,18;,
3;17,19,18;,
3;18,19,20;,
3;19,21,20;,
3;20,21,22;,
3;21,23,22;,
3;22,23,24;,
3;23,25,24;,
3;24,25,26;,
3;25,27,26;,
3;26,27,7;,
3;27,9,7;,
3;7,5,28;,
3;5,29,28;,
3;28,29,30;,
3;29,31,30;,
3;30,31,32;,
3;31,33,32;,
3;32,33,22;,
3;33,34,22;,
3;22,34,20;,
3;34,35,20;,
3;20,35,36;,
3;35,37,36;,
3;36,37,38;,
3;37,39,38;,
3;38,39,40;,
3;39,41,40;,
3;40,41,42;,
3;10,12,43;,
3;12,44,43;,
3;43,44,45;,
3;44,46,45;,
3;45,46,47;,
3;46,48,47;,
3;47,48,49;,
3;48,50,49;,
3;49,50,6;,
3;50,51,6;,
3;6,51,0;,
3;51,52,0;,
3;0,52,53;,
3;52,54,53;,
3;33,31,55;,
3;31,56,55;,
3;55,56,57;,
3;56,5,57;,
3;57,5,58;,
3;5,3,58;,
3;58,3,59;,
3;3,1,59;,
3;59,1,60;,
3;63,62,61;,
3;62,64,61;,
3;61,64,65;,
3;64,66,65;,
3;65,66,67;,
3;66,68,67;,
3;67,68,69;,
3;68,70,69;,
3;69,70,71;,
3;20,36,18;,
3;36,38,18;,
3;18,38,16;,
3;38,40,16;,
3;16,40,14;,
3;40,42,14;,
3;14,42,72;,
3;42,73,72;,
3;72,73,74;,
3;77,76,75;,
3;76,78,75;,
3;75,78,79;,
3;78,80,79;,
3;79,80,81;,
3;80,82,81;,
3;81,82,83;,
3;82,78,83;,
3;86,85,84;,
3;86,84,87;,
3;86,87,88;,
3;86,88,89;,
3;86,89,90;,
3;86,90,91;,
3;86,91,85;,
3;94,93,92;,
3;93,95,92;,
3;92,95,96;,
3;95,97,96;,
3;96,97,98;,
3;97,99,98;,
3;98,99,100;,
3;102,11,101;,
3;102,101,103;,
3;102,103,21;,
3;102,21,19;,
3;102,19,15;,
3;102,15,13;,
3;102,13,11;,
3;51,104,52;,
3;104,105,52;,
3;52,105,54;,
3;105,106,54;,
3;54,106,107;,
3;106,108,107;,
3;107,108,109;,
3;69,71,110;,
3;71,111,110;,
3;110,111,112;,
3;111,113,112;,
3;112,113,114;,
3;113,115,114;,
3;114,115,116;,
3;55,57,117;,
3;57,58,117;,
3;117,58,33;,
3;58,59,33;,
3;33,59,118;,
3;59,119,118;,
3;50,48,74;,
3;48,46,74;,
3;74,46,72;,
3;46,44,72;,
3;72,44,14;,
3;44,12,14;,
3;121,120,65;,
3;120,122,65;,
3;65,122,61;,
3;122,123,61;,
3;61,123,63;,
3;123,124,63;,
3;127,126,125;,
3;126,128,125;,
3;125,128,62;,
3;128,111,62;,
3;62,111,64;,
3;131,130,129;,
3;130,132,129;,
3;129,132,133;,
3;132,134,133;,
3;133,134,135;,
3;138,137,136;,
3;137,139,136;,
3;136,139,140;,
3;139,141,140;,
3;140,141,142;,
3;7,28,143;,
3;28,30,143;,
3;143,30,144;,
3;30,32,144;,
3;144,32,22;,
3;146,127,145;,
3;127,125,145;,
3;145,125,124;,
3;125,62,124;,
3;124,62,63;,
3;85,108,84;,
3;108,106,84;,
3;84,106,147;,
3;106,105,147;,
3;147,105,104;,
3;11,27,101;,
3;27,25,101;,
3;101,25,103;,
3;25,23,103;,
3;103,23,21;,
3;8,10,45;,
3;8,45,47;,
3;8,47,49;,
3;8,49,6;,
3;149,148,110;,
3;149,110,112;,
3;149,112,114;,
3;149,114,116;,
3;152,151,150;,
3;151,153,150;,
3;150,153,154;,
3;157,156,155;,
3;156,158,155;,
3;155,158,159;,
3;51,50,160;,
3;50,73,160;,
3;160,73,161;,
3;164,163,162;,
3;163,165,162;,
3;162,165,166;,
3;64,71,66;,
3;71,70,66;,
3;66,70,68;,
3;26,167,24;,
3;167,168,24;,
3;24,168,22;,
3;69,169,67;,
3;169,121,67;,
3;67,121,65;,
3;172,171,170;,
3;171,115,170;,
3;170,115,113;,
3;146,145,173;,
3;145,124,173;,
3;173,124,123;,
3;116,115,174;,
3;115,171,174;,
3;174,171,175;,
3;5,56,29;,
3;56,31,29;,
3;94,97,93;,
3;97,95,93;,
3;176,119,60;,
3;119,59,60;,
3;55,117,33;,
3;178,150,177;,
3;179,84,147;,
3;17,15,19;,
3;167,26,7;,
3;181,180,155;,
3;161,104,51;,
3;45,10,43;,
3;164,182,163;,
3;2,0,53;,
3;64,111,71;,
3;148,169,110;,
3;183,130,131;,
3;184,137,138;,
3;78,82,80;,
3;172,175,171;,
3;6,0,4;,
3;185,108,85;,
3;118,34,33;,
3;169,69,110;,
3;74,73,50;,
3;179,88,87;,
3;11,9,27;,
3;188,187,186;,
3;188,186,189;,
3;188,189,190;,
3;188,190,191;,
3;188,191,192;,
3;188,192,193;,
3;188,193,194;,
3;188,194,195;,
3;188,195,187;,
3;198,197,196;,
3;201,200,199;,
3;204,203,202;,
3;207,206,205;,
3;210,209,208;,
3;209,211,208;,
3;208,211,212;,
3;211,213,212;,
3;212,213,214;,
3;213,215,214;,
3;214,215,216;,
3;215,217,216;,
3;216,217,218;,
3;217,219,218;,
3;218,219,220;,
3;219,221,220;,
3;220,221,222;,
3;221,223,222;,
3;222,223,224;,
3;209,225,211;,
3;225,226,211;,
3;211,226,213;,
3;226,227,213;,
3;213,227,215;,
3;227,228,215;,
3;215,228,217;,
3;228,229,217;,
3;217,229,219;,
3;229,230,219;,
3;219,230,221;,
3;230,231,221;,
3;221,231,223;,
3;225,232,226;,
3;232,233,226;,
3;226,233,227;,
3;233,234,227;,
3;227,234,228;,
3;234,235,228;,
3;228,235,229;,
3;235,236,229;,
3;229,236,230;,
3;236,237,230;,
3;230,237,231;,
3;232,238,233;,
3;238,239,233;,
3;233,239,234;,
3;239,240,234;,
3;234,240,235;,
3;240,241,235;,
3;235,241,236;,
3;241,242,236;,
3;236,242,237;,
3;216,218,214;,
3;218,243,214;,
3;214,243,212;,
3;243,244,212;,
3;212,244,208;,
3;244,245,208;,
3;208,245,210;,
3;246,244,243;,
3;246,243,220;,
3;246,220,222;,
3;246,222,247;,
3;246,247,248;,
3;246,248,244;,
3;220,243,218;,
3;248,245,244;,
3;224,247,222;;
MeshMaterialList {
 4;
 326;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
Material barney_legs_bmp {
 0.800000;0.800000;0.800000;1.000000;;
2.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"barney_legs.bmp";
}
 }
Material barney_body_bmp {
 0.800000;0.800000;0.800000;1.000000;;
2.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"barney_body.bmp";
}
 }
Material barney_chrome_bmp {
 0.800000;0.800000;0.800000;1.000000;;
2.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"barney_chrome.bmp";
}
 }
Material Material {
 0.752941;0.752941;0.752941;1.000000;;
8.000000;
 0.301176;0.301176;0.301176;;
 0.023529;0.023529;0.023529;;
 }
}

 MeshNormals {
 249;
-0.246204;-0.233928;0.940564;,
-0.189454;-0.910005;0.368778;,
-0.153675;-0.364016;0.918627;,
-0.856967;-0.387540;0.339735;,
-0.665763;-0.247071;0.704071;,
-0.503915;-0.685353;0.525700;,
-0.152124;-0.570563;0.807041;,
-0.109449;-0.884059;0.454379;,
0.153104;-0.934976;0.319967;,
0.054196;-0.820867;0.568542;,
0.330751;-0.790517;0.515448;,
0.141248;-0.695992;0.704020;,
-0.171419;-0.738676;0.651899;,
0.062956;-0.997990;0.007286;,
-0.513232;-0.858247;0.002254;,
-0.170265;-0.743027;-0.647241;,
-0.550109;-0.828483;-0.104857;,
-0.031611;-0.977256;-0.209693;,
0.137631;-0.988830;-0.057208;,
0.330759;-0.790513;-0.515449;,
0.153110;-0.934976;-0.319965;,
0.011478;-0.770686;-0.637112;,
-0.109244;-0.884353;-0.453856;,
-0.247841;-0.838501;-0.485275;,
-0.029648;-0.986422;-0.161535;,
-0.489026;-0.872269;0.000940;,
0.017642;-0.980866;0.193885;,
-0.239761;-0.782860;0.574147;,
-0.137165;-0.891701;0.431342;,
-0.184141;-0.936315;0.299010;,
-0.197414;-0.980320;0.000008;,
-0.129010;-0.959768;-0.249404;,
-0.138680;-0.891894;-0.430457;,
-0.504671;-0.684990;-0.525448;,
-0.145668;-0.804904;-0.575249;,
0.211067;-0.871594;-0.442465;,
0.152586;-0.893679;-0.421965;,
-0.189564;-0.776569;-0.600838;,
-0.447927;-0.801188;-0.396810;,
-0.364146;-0.716443;-0.595068;,
-0.290798;-0.878103;-0.379962;,
0.241749;-0.819191;-0.520080;,
0.268137;-0.963381;0.000557;,
-0.031608;-0.977257;0.209688;,
-0.551143;-0.827755;0.105186;,
0.137629;-0.988830;0.057207;,
-0.447924;-0.801193;0.396806;,
0.152578;-0.893679;0.421968;,
-0.204499;-0.660834;0.722135;,
0.173100;-0.722174;0.669703;,
-0.069005;-0.302208;0.950741;,
-0.153023;-0.043841;0.987250;,
-0.054122;0.543937;0.837379;,
0.031280;0.309052;0.950531;,
0.128498;0.991708;0.001892;,
-0.194107;-0.954923;-0.224597;,
-0.097942;-0.969369;0.225234;,
-0.605763;-0.780042;0.156799;,
-0.970630;-0.240563;-0.002583;,
-0.801581;-0.522325;-0.290937;,
-0.184910;-0.859658;-0.476231;,
-0.479377;-0.450797;-0.752980;,
0.625063;0.274822;-0.730595;,
-0.570389;-0.319168;-0.756828;,
0.791126;0.056238;-0.609062;,
-0.613909;-0.515260;-0.598016;,
0.861297;-0.105012;-0.497132;,
-0.480954;-0.735279;-0.477544;,
0.783741;-0.579898;-0.222414;,
0.006633;-0.894538;0.446942;,
0.932267;-0.279928;0.229169;,
0.857590;-0.112407;0.501900;,
-0.291052;-0.877758;0.380564;,
0.198964;-0.457645;0.866588;,
-0.340759;-0.586868;0.734486;,
-0.013920;-0.596302;0.802639;,
0.047219;-0.678918;0.732694;,
0.487963;-0.696713;0.525816;,
-0.102823;-0.439573;0.892302;,
-0.247615;-0.630908;0.735283;,
-0.336495;-0.581738;0.740508;,
-0.785453;-0.222519;0.577537;,
-0.494501;-0.130282;0.859358;,
-0.582734;0.125725;0.802879;,
-0.153584;-0.042835;-0.987207;,
-0.140189;-0.278732;-0.950082;,
-0.069002;-0.302206;-0.950742;,
0.075062;-0.125054;-0.989306;,
0.143877;-0.157054;-0.977053;,
-0.281677;-0.350525;-0.893191;,
-0.215936;-0.453841;-0.864523;,
0.091818;-0.396380;-0.913484;,
-0.785431;-0.222536;-0.577560;,
-0.494487;-0.130285;-0.859365;,
-0.582728;0.125732;-0.802882;,
-0.336469;-0.581746;-0.740514;,
-0.247598;-0.630910;-0.735287;,
-0.102819;-0.439570;-0.892304;,
-0.013917;-0.596300;-0.802641;,
0.047221;-0.678917;-0.732695;,
0.487967;-0.696712;-0.525814;,
-0.669271;-0.692573;0.269107;,
0.115567;-0.810104;-0.574783;,
-0.640790;-0.592805;-0.487822;,
-0.114525;0.649819;0.751412;,
-0.001416;0.999999;0.000197;,
-0.056828;0.546535;-0.835506;,
0.024315;0.307497;-0.951238;,
-0.110340;-0.079935;-0.990674;,
-0.105083;-0.084162;-0.990896;,
-0.620205;-0.511559;0.594688;,
0.784860;0.038902;0.618450;,
-0.355375;-0.322229;0.877427;,
0.044228;0.287986;0.956613;,
-0.666989;-0.456093;0.589156;,
-0.753731;0.045837;0.655583;,
-0.799570;-0.599341;-0.038447;,
-0.668718;-0.716466;-0.198730;,
-0.804179;-0.206031;-0.557537;,
-0.497494;-0.513211;-0.699367;,
-0.925351;-0.379112;-0.000002;,
-0.978797;-0.204015;0.018295;,
-0.823552;-0.567240;-0.000001;,
-0.780330;-0.624738;0.028068;,
-0.747241;0.038705;-0.663426;,
0.680757;0.562882;-0.468758;,
0.999563;0.029562;0.000003;,
0.355759;0.865988;-0.351425;,
0.996110;0.088114;0.000003;,
-0.008153;-0.964785;-0.262912;,
-0.005300;-0.850383;-0.526138;,
-0.003141;-0.682028;-0.731320;,
-0.008157;-0.965289;0.261058;,
-0.005299;-0.853042;0.521816;,
-0.003150;-0.687358;0.726312;,
-0.000495;-0.687739;0.725958;,
-0.000314;-0.964728;-0.263247;,
-0.000274;-0.850182;-0.526488;,
-0.000228;-0.681604;-0.731721;,
-0.000327;-0.964730;0.263241;,
-0.000305;-0.850183;0.526488;,
-0.000244;-0.681602;0.731723;,
-0.000243;-0.681602;0.731723;,
-0.050597;-0.958862;0.279326;,
-0.055846;-0.958125;-0.280851;,
-0.665785;0.617109;-0.419412;,
-0.789779;0.561625;-0.246631;,
-0.115911;0.650284;-0.750796;,
-0.925350;-0.379113;-0.000001;,
-0.799102;-0.601196;-0.000005;,
0.018477;0.538137;0.842655;,
-0.198892;0.714791;0.670459;,
-0.200196;0.786241;0.584590;,
-0.170367;0.558580;0.811766;,
-0.143851;0.476911;0.867100;,
0.018480;0.538140;-0.842653;,
-0.170364;0.558582;-0.811765;,
-0.143849;0.476918;-0.867097;,
-0.198889;0.714793;-0.670459;,
-0.200193;0.786246;-0.584586;,
0.075058;-0.125057;0.989306;,
0.026056;0.047713;0.998521;,
1.000000;-0.000379;0.000272;,
1.000000;-0.000378;-0.000271;,
1.000000;-0.000395;-0.000406;,
1.000000;-0.000397;0.000408;,
1.000000;-0.000450;0.000816;,
-0.206969;-0.966404;0.152404;,
-0.180591;-0.956437;-0.229378;,
-0.980418;-0.196460;-0.013550;,
-0.080255;0.742603;0.664906;,
-0.668283;0.611269;0.423966;,
-0.128302;0.918384;0.374311;,
-0.945804;-0.322761;0.035777;,
-0.945821;-0.322601;-0.036751;,
-0.789413;0.559068;0.253517;,
-0.216847;-0.628616;-0.746873;,
0.604842;0.015636;0.796192;,
0.604842;0.015636;0.796192;,
0.026061;0.047716;-0.998521;,
0.604845;0.015639;-0.796190;,
0.604845;0.015639;-0.796190;,
1.000000;-0.000446;-0.000812;,
-0.000516;-0.681650;-0.731679;,
-0.000248;-0.681607;-0.731719;,
-0.212200;-0.290763;-0.932967;,
-0.312641;-0.607310;-0.730363;,
-0.445572;-0.222880;-0.867058;,
-0.974672;-0.223622;-0.002753;,
-0.322000;-0.946711;-0.007351;,
-0.319747;-0.610902;0.724266;,
-0.458550;-0.209894;0.863525;,
-0.607811;0.189785;0.771069;,
-0.766846;0.535229;0.354228;,
-0.766398;0.540187;-0.347609;,
-0.605833;0.185285;-0.773716;,
-0.999974;-0.001889;0.007021;,
-0.999974;-0.001889;0.007021;,
-0.999974;-0.001889;0.007021;,
-0.999996;-0.002788;0.000000;,
-0.999996;-0.002788;-0.000000;,
-0.999996;-0.002788;-0.000000;,
-0.999996;-0.002788;-0.000000;,
-0.999996;-0.002788;-0.000000;,
-0.999996;-0.002788;-0.000000;,
-0.999973;-0.001884;-0.007035;,
-0.999973;-0.001884;-0.007035;,
-0.999973;-0.001884;-0.007035;,
0.249618;0.968343;0.001752;,
0.106049;0.886283;0.450840;,
0.091441;0.995809;0.001934;,
0.364637;0.771603;0.521219;,
0.661137;0.750264;0.001429;,
0.737391;0.478066;0.477186;,
0.906779;0.421604;0.001355;,
0.920466;0.126008;0.369951;,
0.990681;0.136200;0.001322;,
0.986956;-0.160986;0.001362;,
0.921167;0.126104;-0.368170;,
0.840011;-0.261343;-0.475480;,
0.657780;0.089864;-0.747830;,
0.472961;-0.303178;-0.827279;,
0.279132;0.038628;-0.959475;,
0.219177;-0.235975;-0.946719;,
0.120616;0.017326;-0.992548;,
0.135625;0.623666;0.769836;,
0.366225;0.421568;0.829554;,
0.657777;0.089862;0.747833;,
0.839328;-0.261068;0.476836;,
0.841134;-0.540825;0.001442;,
0.579189;-0.631420;-0.515606;,
0.323053;-0.547481;-0.771946;,
0.141826;0.291112;0.946118;,
0.279128;0.038625;0.959477;,
0.472958;-0.303180;0.827280;,
0.578552;-0.630803;0.517073;,
0.525125;-0.851023;0.001616;,
0.383356;-0.818237;-0.428400;,
0.120612;0.017323;0.992549;,
0.219173;-0.235978;0.946719;,
0.323050;-0.547483;0.771946;,
0.382812;-0.817359;0.430556;,
0.372843;-0.927893;0.001592;,
0.737972;0.478515;-0.475837;,
0.365065;0.772401;-0.519735;,
0.106314;0.887457;-0.448461;,
0.366228;0.421570;-0.829551;,
0.141830;0.291114;-0.946117;,
0.135627;0.623668;-0.769833;;

 326;
3;2,1,0;,
3;1,3,0;,
3;0,3,4;,
3;3,5,4;,
3;4,5,6;,
3;5,7,6;,
3;6,7,8;,
3;7,9,8;,
3;8,9,10;,
3;9,11,10;,
3;10,11,12;,
3;11,13,12;,
3;12,13,14;,
3;13,15,14;,
3;14,15,16;,
3;15,17,16;,
3;16,17,18;,
3;17,19,18;,
3;18,19,20;,
3;19,21,20;,
3;20,21,22;,
3;21,23,22;,
3;22,23,24;,
3;23,25,24;,
3;24,25,26;,
3;25,27,26;,
3;26,27,7;,
3;27,9,7;,
3;7,5,28;,
3;5,29,28;,
3;28,29,30;,
3;29,31,30;,
3;30,31,32;,
3;31,33,32;,
3;32,33,22;,
3;33,34,22;,
3;22,34,20;,
3;34,35,20;,
3;20,35,36;,
3;35,37,36;,
3;36,37,38;,
3;37,39,38;,
3;38,39,40;,
3;39,41,40;,
3;40,41,42;,
3;10,12,43;,
3;12,44,43;,
3;43,44,45;,
3;44,46,45;,
3;45,46,47;,
3;46,48,47;,
3;47,48,49;,
3;48,50,49;,
3;49,50,6;,
3;50,51,6;,
3;6,51,0;,
3;51,52,0;,
3;0,52,53;,
3;52,54,53;,
3;33,31,55;,
3;31,56,55;,
3;55,56,57;,
3;56,5,57;,
3;57,5,58;,
3;5,3,58;,
3;58,3,59;,
3;3,1,59;,
3;59,1,60;,
3;63,62,61;,
3;62,64,61;,
3;61,64,65;,
3;64,66,65;,
3;65,66,67;,
3;66,68,67;,
3;67,68,69;,
3;68,70,69;,
3;69,70,71;,
3;20,36,18;,
3;36,38,18;,
3;18,38,16;,
3;38,40,16;,
3;16,40,14;,
3;40,42,14;,
3;14,42,72;,
3;42,73,72;,
3;72,73,74;,
3;77,76,75;,
3;76,78,75;,
3;75,78,79;,
3;78,80,79;,
3;79,80,81;,
3;80,82,81;,
3;81,82,83;,
3;82,78,83;,
3;86,85,84;,
3;86,84,87;,
3;86,87,88;,
3;86,88,89;,
3;86,89,90;,
3;86,90,91;,
3;86,91,85;,
3;94,93,92;,
3;93,95,92;,
3;92,95,96;,
3;95,97,96;,
3;96,97,98;,
3;97,99,98;,
3;98,99,100;,
3;102,11,101;,
3;102,101,103;,
3;102,103,21;,
3;102,21,19;,
3;102,19,15;,
3;102,15,13;,
3;102,13,11;,
3;51,104,52;,
3;104,105,52;,
3;52,105,54;,
3;105,106,54;,
3;54,106,107;,
3;106,108,107;,
3;107,108,109;,
3;69,71,110;,
3;71,111,110;,
3;110,111,112;,
3;111,113,112;,
3;112,113,114;,
3;113,115,114;,
3;114,115,116;,
3;55,57,117;,
3;57,58,117;,
3;117,58,33;,
3;58,59,33;,
3;33,59,118;,
3;59,119,118;,
3;50,48,74;,
3;48,46,74;,
3;74,46,72;,
3;46,44,72;,
3;72,44,14;,
3;44,12,14;,
3;121,120,65;,
3;120,122,65;,
3;65,122,61;,
3;122,123,61;,
3;61,123,63;,
3;123,124,63;,
3;127,126,125;,
3;126,128,125;,
3;125,128,62;,
3;128,111,62;,
3;62,111,64;,
3;131,130,129;,
3;130,132,129;,
3;129,132,133;,
3;132,134,133;,
3;133,134,135;,
3;138,137,136;,
3;137,139,136;,
3;136,139,140;,
3;139,141,140;,
3;140,141,142;,
3;7,28,143;,
3;28,30,143;,
3;143,30,144;,
3;30,32,144;,
3;144,32,22;,
3;146,127,145;,
3;127,125,145;,
3;145,125,124;,
3;125,62,124;,
3;124,62,63;,
3;85,108,84;,
3;108,106,84;,
3;84,106,147;,
3;106,105,147;,
3;147,105,104;,
3;11,27,101;,
3;27,25,101;,
3;101,25,103;,
3;25,23,103;,
3;103,23,21;,
3;8,10,45;,
3;8,45,47;,
3;8,47,49;,
3;8,49,6;,
3;149,148,110;,
3;149,110,112;,
3;149,112,114;,
3;149,114,116;,
3;152,151,150;,
3;151,153,150;,
3;150,153,154;,
3;157,156,155;,
3;156,158,155;,
3;155,158,159;,
3;51,50,160;,
3;50,73,160;,
3;160,73,161;,
3;164,163,162;,
3;163,165,162;,
3;162,165,166;,
3;64,71,66;,
3;71,70,66;,
3;66,70,68;,
3;26,167,24;,
3;167,168,24;,
3;24,168,22;,
3;69,169,67;,
3;169,121,67;,
3;67,121,65;,
3;172,171,170;,
3;171,115,170;,
3;170,115,113;,
3;146,145,173;,
3;145,124,173;,
3;173,124,123;,
3;116,115,174;,
3;115,171,174;,
3;174,171,175;,
3;5,56,29;,
3;56,31,29;,
3;94,97,93;,
3;97,95,93;,
3;176,119,60;,
3;119,59,60;,
3;55,117,33;,
3;178,150,177;,
3;179,84,147;,
3;17,15,19;,
3;167,26,7;,
3;181,180,155;,
3;161,104,51;,
3;45,10,43;,
3;164,182,163;,
3;2,0,53;,
3;64,111,71;,
3;148,169,110;,
3;183,130,131;,
3;184,137,138;,
3;78,82,80;,
3;172,175,171;,
3;6,0,4;,
3;185,108,85;,
3;118,34,33;,
3;169,69,110;,
3;74,73,50;,
3;179,88,87;,
3;11,9,27;,
3;188,187,186;,
3;188,186,189;,
3;188,189,190;,
3;188,190,191;,
3;188,191,192;,
3;188,192,193;,
3;188,193,194;,
3;188,194,195;,
3;188,195,187;,
3;198,197,196;,
3;201,200,199;,
3;204,203,202;,
3;207,206,205;,
3;210,209,208;,
3;209,211,208;,
3;208,211,212;,
3;211,213,212;,
3;212,213,214;,
3;213,215,214;,
3;214,215,216;,
3;215,217,216;,
3;216,217,218;,
3;217,219,218;,
3;218,219,220;,
3;219,221,220;,
3;220,221,222;,
3;221,223,222;,
3;222,223,224;,
3;209,225,211;,
3;225,226,211;,
3;211,226,213;,
3;226,227,213;,
3;213,227,215;,
3;227,228,215;,
3;215,228,217;,
3;228,229,217;,
3;217,229,219;,
3;229,230,219;,
3;219,230,221;,
3;230,231,221;,
3;221,231,223;,
3;225,232,226;,
3;232,233,226;,
3;226,233,227;,
3;233,234,227;,
3;227,234,228;,
3;234,235,228;,
3;228,235,229;,
3;235,236,229;,
3;229,236,230;,
3;236,237,230;,
3;230,237,231;,
3;232,238,233;,
3;238,239,233;,
3;233,239,234;,
3;239,240,234;,
3;234,240,235;,
3;240,241,235;,
3;235,241,236;,
3;241,242,236;,
3;236,242,237;,
3;216,218,214;,
3;218,243,214;,
3;214,243,212;,
3;243,244,212;,
3;212,244,208;,
3;244,245,208;,
3;208,245,210;,
3;246,244,243;,
3;246,243,220;,
3;246,220,222;,
3;246,222,247;,
3;246,247,248;,
3;246,248,244;,
3;220,243,218;,
3;248,245,244;,
3;224,247,222;;
 }
MeshTextureCoords {
 249;
0.300781;0.372549;,
0.195313;0.490196;,
0.300781;0.490196;,
0.183594;0.392157;,
0.265625;0.352941;,
0.210938;0.364706;,
0.285156;0.227451;,
0.210938;0.286275;,
0.226563;0.211765;,
0.187500;0.231373;,
0.175781;0.215686;,
0.164063;0.223529;,
0.164063;0.156863;,
0.148438;0.152941;,
0.148438;0.137255;,
0.132813;0.156863;,
0.093750;0.149020;,
0.113281;0.160784;,
0.097656;0.188235;,
0.121094;0.215686;,
0.070313;0.211765;,
0.109375;0.231373;,
0.085938;0.286275;,
0.113281;0.243137;,
0.136719;0.278431;,
0.148438;0.258824;,
0.164063;0.278431;,
0.183594;0.243137;,
0.195313;0.301961;,
0.179688;0.321569;,
0.148438;0.309804;,
0.117188;0.321569;,
0.097656;0.301961;,
0.089844;0.364706;,
0.015625;0.227451;,
0.011719;0.184314;,
0.042969;0.184314;,
0.011719;0.156863;,
0.042969;0.149020;,
0.007813;0.137255;,
0.050781;0.129412;,
0.015625;0.000000;,
0.148438;0.000000;,
0.183594;0.160784;,
0.199219;0.149020;,
0.199219;0.188235;,
0.253906;0.149020;,
0.253906;0.184314;,
0.285156;0.156863;,
0.285156;0.184314;,
0.351563;0.164706;,
0.386719;0.262745;,
0.464844;0.313726;,
0.468750;0.462745;,
0.570313;0.443137;,
0.132813;0.349020;,
0.167969;0.349020;,
0.167969;0.368627;,
0.152344;0.384314;,
0.117188;0.392157;,
0.101563;0.490196;,
0.894531;0.631373;,
0.992188;0.580392;,
0.847656;0.600000;,
0.992188;0.627451;,
0.949219;0.662745;,
0.992188;0.666667;,
0.953125;0.717647;,
0.992188;0.717647;,
0.953125;0.776471;,
0.992188;0.776471;,
0.992188;0.827451;,
0.242188;0.129412;,
0.281250;0.000000;,
0.292969;0.133333;,
0.648438;0.023529;,
0.667969;0.011765;,
0.671875;0.003922;,
0.742188;0.058824;,
0.660156;0.145098;,
0.675781;0.149020;,
0.679688;0.152941;,
0.699219;0.137255;,
0.703125;0.141176;,
0.386719;0.262745;,
0.285156;0.227451;,
0.351563;0.164706;,
0.382813;0.164706;,
0.281250;0.000000;,
0.292969;0.133333;,
0.285156;0.156863;,
0.285156;0.184314;,
0.679688;0.152941;,
0.699219;0.137255;,
0.703125;0.141176;,
0.675781;0.149020;,
0.660156;0.145098;,
0.742188;0.058824;,
0.648438;0.023529;,
0.667969;0.011765;,
0.671875;0.003922;,
0.164063;0.239216;,
0.132813;0.223529;,
0.132813;0.239216;,
0.601563;0.160784;,
0.550781;0.290196;,
0.464844;0.313726;,
0.468750;0.462745;,
0.300781;0.372549;,
0.300781;0.490196;,
0.945313;0.827451;,
0.992188;0.866667;,
0.902344;0.858824;,
0.992188;0.913726;,
0.847656;0.890196;,
0.824219;0.921569;,
0.835938;0.878431;,
0.132813;0.368627;,
0.031250;0.352941;,
0.000000;0.372549;,
0.921875;0.674510;,
0.929688;0.717647;,
0.882813;0.643137;,
0.839844;0.619608;,
0.824219;0.572549;,
0.992188;0.541177;,
0.992188;0.949020;,
0.992188;0.501961;,
0.992188;0.909804;,
0.898438;0.745098;,
0.914063;0.745098;,
0.902344;0.733333;,
0.914063;0.792157;,
0.898438;0.792157;,
0.914063;0.803922;,
0.902344;0.803922;,
0.875000;0.745098;,
0.886719;0.745098;,
0.875000;0.733333;,
0.886719;0.788235;,
0.875000;0.788235;,
0.886719;0.803922;,
0.875000;0.803922;,
0.167969;0.290196;,
0.128906;0.290196;,
0.812500;0.537255;,
0.812500;0.501961;,
0.601563;0.160784;,
0.921875;0.815686;,
0.878906;0.847059;,
0.449219;0.003922;,
0.464844;0.054902;,
0.460938;0.019608;,
0.457031;0.062745;,
0.449219;0.062745;,
0.449219;0.003922;,
0.457031;0.062745;,
0.449219;0.062745;,
0.464844;0.054902;,
0.460938;0.019608;,
0.382813;0.164706;,
0.519531;0.152941;,
0.855469;0.850980;,
0.808594;0.796078;,
0.820313;0.850980;,
0.863281;0.796078;,
0.878906;0.835294;,
0.167969;0.290196;,
0.128906;0.290196;,
0.929688;0.776471;,
0.992188;0.952941;,
0.812500;0.956863;,
0.992188;0.992157;,
0.792969;0.549020;,
0.796875;0.949020;,
0.812500;0.992157;,
0.003906;0.494118;,
0.414063;0.011765;,
0.417969;0.000000;,
0.519531;0.152941;,
0.414063;0.011765;,
0.417969;0.000000;,
0.789063;0.835294;,
0.914063;0.733333;,
0.886719;0.733333;,
0.265625;0.352941;,
0.027778;0.635294;,
0.027778;0.631373;,
0.027778;0.627451;,
0.031746;0.635294;,
0.027778;0.635294;,
0.027778;0.631373;,
0.023810;0.631373;,
0.023810;0.631373;,
0.023810;0.631373;,
0.023810;0.631373;,
0.027778;0.631373;,
0.027778;0.635294;,
0.023810;0.631373;,
0.027778;0.635294;,
0.023810;0.635294;,
0.027778;0.631373;,
0.027778;0.635294;,
0.023810;0.639216;,
0.023810;0.635294;,
0.027778;0.627451;,
0.023810;0.627451;,
0.027778;0.623529;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;,
0.000000;0.984375;;
}
}
 }
