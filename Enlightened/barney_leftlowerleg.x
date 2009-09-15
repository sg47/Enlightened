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
Frame barney_leftlowerlegF {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh barney_leftlowerleg1 {
 104;
-0.358180;0.412801;0.304235;,
0.005576;-0.553720;0.568482;,
-0.334236;-0.286660;0.311899;,
0.055928;-1.026251;-0.179956;,
0.827838;-0.679146;0.656423;,
0.753859;-1.163646;-0.169996;,
1.847314;-0.696587;0.637812;,
1.890833;-1.127864;-0.124730;,
2.261997;-0.975856;-0.135407;,
2.221366;-0.642509;-0.700527;,
2.097621;0.358608;-0.135762;,
1.889219;0.564237;-0.122865;,
1.942374;0.133670;-0.827794;,
0.114221;0.866486;-0.156071;,
0.139543;0.406342;-0.907243;,
-0.326927;0.412808;-0.811335;,
-0.302984;-0.286652;-0.803670;,
-0.298897;-0.642455;-0.230781;,
1.848524;0.135342;0.581247;,
2.221687;-0.640970;0.447051;,
0.028453;0.393866;0.581611;,
2.138057;0.025241;0.446856;,
1.942424;-0.698133;-0.883722;,
0.916758;-0.679305;-0.972685;,
0.114151;-0.543761;-0.917906;,
-0.302984;-0.286652;-0.803670;,
2.221366;-0.642509;-0.700527;,
2.137706;0.023699;-0.698222;,
1.942424;-0.698133;-0.883722;,
0.916758;-0.679305;-0.972685;,
0.114151;-0.543761;-0.917906;,
-0.346895;0.762010;-0.244254;,
-0.440795;0.045277;-0.262500;,
-0.302984;-0.286652;-0.803670;,
-0.326927;0.412808;-0.811335;,
-0.298897;-0.642455;-0.230781;,
-0.334236;-0.286660;0.311899;,
-0.346895;0.762010;-0.244254;,
-0.358180;0.412801;0.304235;,
4.865659;1.641216;-0.536884;,
4.805727;1.836238;-0.161884;,
4.583137;1.581314;-0.496884;,
4.485694;1.746349;-0.159384;,
4.468061;1.358853;-0.484384;,
4.368118;1.523888;-0.154384;,
4.395492;1.158878;-0.386884;,
4.395496;1.171379;0.093116;,
4.050283;0.553997;-0.134384;,
4.182718;0.366452;0.255617;,
3.535358;-0.018416;0.262433;,
4.064929;-0.466007;0.335617;,
3.562812;-0.657241;0.262029;,
4.274810;-0.816080;0.253117;,
3.573833;-0.870944;-0.150611;,
4.267234;-1.036078;-0.131882;,
4.274806;-0.826081;-0.519383;,
4.752317;-0.796245;-0.564383;,
4.069927;-0.481010;-0.604383;,
4.430065;-0.078634;-0.576883;,
4.182697;0.306451;-0.479384;,
4.622955;1.046300;-0.639384;,
4.752304;-0.831245;0.263118;,
4.435070;-0.063635;0.345617;,
4.622947;1.028800;0.428117;,
4.468074;1.396355;0.205616;,
2.221366;-0.642509;-0.700527;,
2.261997;-0.975856;-0.135407;,
2.221687;-0.640970;0.447051;,
2.138057;0.025241;0.446856;,
2.097621;0.358608;-0.135762;,
3.523573;0.256256;-0.149919;,
2.137706;0.023699;-0.698222;,
3.536497;-0.018723;-0.537605;,
4.848171;1.678723;0.225616;,
4.805727;1.836238;-0.161884;,
5.068229;1.843647;-0.161884;,
4.865659;1.641216;-0.536884;,
5.115659;1.641130;-0.536883;,
4.935440;1.003691;-0.686883;,
5.182945;1.016106;-0.686883;,
4.915184;0.266198;-0.551883;,
5.167688;0.276111;-0.551883;,
5.174829;-0.761391;-0.564382;,
4.622955;1.046300;-0.639384;,
4.182697;0.306451;-0.479384;,
4.935434;0.991192;0.525617;,
5.182939;1.006107;0.525617;,
5.115659;1.641130;-0.536883;,
5.182945;1.016106;-0.686883;,
5.182939;1.006107;0.525617;,
5.167688;0.276111;-0.551883;,
5.174816;-0.796390;0.263118;,
5.174829;-0.761391;-0.564382;,
5.174739;-1.018891;-0.136882;,
3.561458;-0.657128;-0.535536;,
3.536497;-0.018723;-0.537605;,
4.583150;1.618814;0.185616;,
5.174816;-0.796390;0.263118;,
5.174739;-1.018891;-0.136882;,
5.088172;1.678640;0.225617;,
5.068229;1.843647;-0.161884;,
5.088172;1.678640;0.225617;,
4.583137;1.581314;-0.496884;,
2.137706;0.023699;-0.698222;;

 138;
3;2,1,0;,
3;3,1,2;,
3;3,4,1;,
3;5,4,3;,
3;5,6,4;,
3;7,6,5;,
3;7,8,6;,
3;9,8,7;,
3;12,11,10;,
3;12,13,11;,
3;14,13,12;,
3;14,15,13;,
3;16,15,14;,
3;3,2,17;,
3;6,19,18;,
3;4,6,18;,
3;20,4,18;,
3;13,20,18;,
3;11,13,18;,
3;21,11,18;,
3;19,21,18;,
3;5,22,7;,
3;5,23,22;,
3;3,23,5;,
3;3,24,23;,
3;17,24,3;,
3;17,25,24;,
3;28,27,26;,
3;28,12,27;,
3;29,12,28;,
3;29,14,12;,
3;30,14,29;,
3;30,16,14;,
3;13,15,31;,
3;20,13,31;,
3;0,20,31;,
3;20,1,4;,
3;20,0,1;,
3;9,7,22;,
3;8,19,6;,
3;21,10,11;,
3;10,27,12;,
3;34,33,32;,
3;33,35,32;,
3;35,36,32;,
3;37,34,32;,
3;38,37,32;,
3;36,38,32;,
3;41,40,39;,
3;41,42,40;,
3;43,42,41;,
3;43,44,42;,
3;45,44,43;,
3;45,46,44;,
3;47,46,45;,
3;47,48,46;,
3;49,48,47;,
3;49,50,48;,
3;51,50,49;,
3;51,52,50;,
3;53,52,51;,
3;53,54,52;,
3;55,54,53;,
3;55,56,54;,
3;57,56,55;,
3;57,58,56;,
3;59,58,57;,
3;59,60,58;,
3;61,52,54;,
3;61,50,52;,
3;62,50,61;,
3;62,48,50;,
3;63,48,62;,
3;63,46,48;,
3;64,46,63;,
3;64,44,46;,
3;42,44,64;,
3;53,66,65;,
3;53,67,66;,
3;51,67,53;,
3;51,68,67;,
3;49,68,51;,
3;49,69,68;,
3;70,69,49;,
3;70,71,69;,
3;72,71,70;,
3;75,74,73;,
3;75,76,74;,
3;77,76,75;,
3;77,78,76;,
3;79,78,77;,
3;79,80,78;,
3;81,80,79;,
3;81,82,80;,
3;83,43,41;,
3;83,45,43;,
3;84,45,83;,
3;84,47,45;,
3;72,47,84;,
3;72,70,47;,
3;86,73,85;,
3;61,86,85;,
3;62,61,85;,
3;63,62,85;,
3;73,63,85;,
3;89,88,87;,
3;89,90,88;,
3;91,90,89;,
3;91,92,90;,
3;93,92,91;,
3;53,65,94;,
3;55,53,94;,
3;57,55,94;,
3;95,57,94;,
3;65,95,94;,
3;64,63,96;,
3;42,64,96;,
3;40,42,96;,
3;73,40,96;,
3;60,78,80;,
3;58,60,80;,
3;56,58,80;,
3;82,56,80;,
3;61,97,86;,
3;61,98,97;,
3;54,98,61;,
3;54,56,98;,
3;99,73,86;,
3;99,75,73;,
3;101,87,100;,
3;101,89,87;,
3;76,60,102;,
3;76,78,60;,
3;73,96,63;,
3;95,65,103;,
3;47,70,49;,
3;57,95,59;,
3;98,56,82;;
MeshMaterialList {
 3;
 138;
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
  1;;
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
Material Material {
 0.752941;0.752941;0.752941;1.000000;;
8.000000;
 0.301176;0.301176;0.301176;;
 0.023529;0.023529;0.023529;;
 }
}

 MeshNormals {
 104;
-0.557549;0.291842;0.777153;,
-0.507774;-0.336023;0.793255;,
-0.728715;-0.436833;0.527400;,
-0.467939;-0.883306;0.028346;,
-0.085391;-0.468376;0.879393;,
-0.048895;-0.998790;-0.005227;,
0.228621;-0.623442;0.747698;,
0.265719;-0.958684;-0.101582;,
0.385353;-0.906348;0.173312;,
0.376637;-0.803472;-0.461061;,
0.686204;0.713849;-0.139800;,
0.485336;0.867973;0.105221;,
0.378749;0.541004;-0.750909;,
0.014916;0.996223;-0.085542;,
-0.076785;0.340707;-0.937029;,
-0.146238;0.630596;-0.762210;,
-0.227896;0.000004;-0.973685;,
-0.681096;-0.705134;-0.197214;,
0.268980;0.430759;0.861450;,
0.465448;-0.253950;0.847861;,
-0.225722;0.489101;0.842514;,
0.584208;0.525325;0.618656;,
0.173558;-0.857961;-0.483508;,
-0.101421;-0.839574;-0.533695;,
-0.460993;-0.737131;-0.494089;,
-0.555732;-0.708009;-0.435758;,
0.537735;0.070434;-0.840167;,
0.623860;0.291418;-0.725172;,
0.410956;0.065932;-0.909268;,
0.026996;0.060860;-0.997781;,
-0.160667;0.015370;-0.986889;,
-0.266125;0.946702;0.181472;,
-0.998930;-0.036052;-0.028970;,
-0.977165;-0.121476;-0.174332;,
-0.983948;0.048308;-0.171792;,
-0.978755;-0.203204;-0.027316;,
-0.986463;-0.115855;0.116052;,
-0.991063;0.130540;-0.027456;,
-0.992382;0.048310;0.113335;,
-0.246428;0.843155;-0.477873;,
-0.275321;0.960120;-0.048662;,
-0.483730;0.622636;-0.615085;,
-0.734415;0.677709;-0.036678;,
-0.784161;0.232747;-0.575257;,
-0.971763;0.234774;-0.023617;,
-0.898157;0.184036;-0.399305;,
-0.917710;0.207785;0.338577;,
-0.716109;0.696802;-0.040689;,
-0.473819;0.292929;0.830474;,
-0.128292;0.542462;0.830226;,
-0.060277;-0.062417;0.996228;,
-0.010667;-0.381321;0.924381;,
-0.111983;-0.671580;0.732421;,
-0.079084;-0.996849;-0.006077;,
-0.076506;-0.997068;0.001129;,
-0.105889;-0.681205;-0.724394;,
0.021680;-0.467537;-0.883708;,
-0.048784;-0.035706;-0.998171;,
-0.052419;0.025205;-0.998307;,
-0.156068;0.113721;-0.981178;,
-0.148951;0.044766;-0.987831;,
0.005160;-0.470243;0.882522;,
-0.165038;-0.026709;0.985925;,
-0.469035;0.196839;0.860965;,
-0.806604;0.280386;0.520359;,
0.101225;-0.494994;-0.862980;,
0.079655;-0.996807;-0.005492;,
0.100826;-0.660146;0.744340;,
0.135628;0.335505;0.932224;,
0.081447;0.975657;0.203617;,
-0.153442;0.978532;-0.137591;,
0.073703;0.837469;-0.541492;,
-0.210223;0.775467;-0.595363;,
-0.118225;0.658925;0.742860;,
-0.028182;0.998490;-0.047156;,
-0.013964;0.998810;-0.046721;,
-0.071979;0.536849;-0.840602;,
-0.004069;0.484537;-0.874761;,
-0.059641;0.066119;-0.996028;,
0.001513;-0.043410;-0.999056;,
-0.000740;-0.083030;-0.996547;,
0.003304;-0.084173;-0.996446;,
0.026060;-0.313520;-0.949224;,
-0.641019;0.132471;-0.756007;,
-0.630430;0.428601;-0.647193;,
-0.129465;0.095817;0.986944;,
-0.000851;0.134496;0.990914;,
0.989014;0.146656;0.018532;,
0.999067;0.043178;0.000360;,
0.998251;0.058974;0.004150;,
0.999977;-0.005493;-0.004058;,
0.999991;0.001273;-0.004002;,
0.999995;0.003266;0.000155;,
1.000000;-0.000346;0.000002;,
-0.043689;-0.455474;-0.889177;,
0.029308;0.041885;-0.998693;,
-0.434539;0.633724;0.639976;,
0.046753;-0.566742;0.822568;,
0.050124;-0.998590;-0.017455;,
0.000245;0.713110;0.701053;,
0.983103;0.181123;0.026530;,
0.985667;0.166469;0.027343;,
-0.185782;0.239960;-0.952840;,
0.114591;0.017826;-0.993253;;

 138;
3;2,1,0;,
3;3,1,2;,
3;3,4,1;,
3;5,4,3;,
3;5,6,4;,
3;7,6,5;,
3;7,8,6;,
3;9,8,7;,
3;12,11,10;,
3;12,13,11;,
3;14,13,12;,
3;14,15,13;,
3;16,15,14;,
3;3,2,17;,
3;6,19,18;,
3;4,6,18;,
3;20,4,18;,
3;13,20,18;,
3;11,13,18;,
3;21,11,18;,
3;19,21,18;,
3;5,22,7;,
3;5,23,22;,
3;3,23,5;,
3;3,24,23;,
3;17,24,3;,
3;17,25,24;,
3;28,27,26;,
3;28,12,27;,
3;29,12,28;,
3;29,14,12;,
3;30,14,29;,
3;30,16,14;,
3;13,15,31;,
3;20,13,31;,
3;0,20,31;,
3;20,1,4;,
3;20,0,1;,
3;9,7,22;,
3;8,19,6;,
3;21,10,11;,
3;10,27,12;,
3;34,33,32;,
3;33,35,32;,
3;35,36,32;,
3;37,34,32;,
3;38,37,32;,
3;36,38,32;,
3;41,40,39;,
3;41,42,40;,
3;43,42,41;,
3;43,44,42;,
3;45,44,43;,
3;45,46,44;,
3;47,46,45;,
3;47,48,46;,
3;49,48,47;,
3;49,50,48;,
3;51,50,49;,
3;51,52,50;,
3;53,52,51;,
3;53,54,52;,
3;55,54,53;,
3;55,56,54;,
3;57,56,55;,
3;57,58,56;,
3;59,58,57;,
3;59,60,58;,
3;61,52,54;,
3;61,50,52;,
3;62,50,61;,
3;62,48,50;,
3;63,48,62;,
3;63,46,48;,
3;64,46,63;,
3;64,44,46;,
3;42,44,64;,
3;53,66,65;,
3;53,67,66;,
3;51,67,53;,
3;51,68,67;,
3;49,68,51;,
3;49,69,68;,
3;70,69,49;,
3;70,71,69;,
3;72,71,70;,
3;75,74,73;,
3;75,76,74;,
3;77,76,75;,
3;77,78,76;,
3;79,78,77;,
3;79,80,78;,
3;81,80,79;,
3;81,82,80;,
3;83,43,41;,
3;83,45,43;,
3;84,45,83;,
3;84,47,45;,
3;72,47,84;,
3;72,70,47;,
3;86,73,85;,
3;61,86,85;,
3;62,61,85;,
3;63,62,85;,
3;73,63,85;,
3;89,88,87;,
3;89,90,88;,
3;91,90,89;,
3;91,92,90;,
3;93,92,91;,
3;53,65,94;,
3;55,53,94;,
3;57,55,94;,
3;95,57,94;,
3;65,95,94;,
3;64,63,96;,
3;42,64,96;,
3;40,42,96;,
3;73,40,96;,
3;60,78,80;,
3;58,60,80;,
3;56,58,80;,
3;82,56,80;,
3;61,97,86;,
3;61,98,97;,
3;54,98,61;,
3;54,56,98;,
3;99,73,86;,
3;99,75,73;,
3;101,87,100;,
3;101,89,87;,
3;76,60,102;,
3;76,78,60;,
3;73,96,63;,
3;95,65,103;,
3;47,70,49;,
3;57,95,59;,
3;98,56,82;;
 }
MeshTextureCoords {
 104;
0.253906;0.811765;,
0.171875;0.854902;,
0.171875;0.827451;,
0.078125;0.850980;,
0.171875;0.898039;,
0.078125;0.894118;,
0.171875;0.972549;,
0.082031;0.968628;,
0.078125;0.996078;,
0.003906;0.996078;,
0.304688;0.996078;,
0.304688;0.972549;,
0.359375;0.976471;,
0.304688;0.874510;,
0.359375;0.874510;,
0.359375;0.819608;,
0.398438;0.827451;,
0.078125;0.831373;,
0.253906;0.972549;,
0.171875;0.996078;,
0.253906;0.866667;,
0.253906;0.996078;,
0.003906;0.972549;,
0.003906;0.901961;,
0.003906;0.854902;,
0.003906;0.831373;,
0.398438;0.996078;,
0.359375;0.996078;,
0.398438;0.980392;,
0.398438;0.921569;,
0.398438;0.866667;,
0.304688;0.811765;,
0.000000;0.000000;,
0.000000;0.000000;,
0.000000;0.000000;,
0.000000;0.000000;,
0.000000;0.000000;,
0.000000;0.000000;,
0.000000;0.000000;,
0.289683;0.870588;,
0.285714;0.921569;,
0.269841;0.850980;,
0.269841;0.901961;,
0.257937;0.862745;,
0.250000;0.886275;,
0.238095;0.850980;,
0.198413;0.886275;,
0.174603;0.854902;,
0.142857;0.870588;,
0.095238;0.827451;,
0.047619;0.870588;,
0.035714;0.827451;,
0.019841;0.894118;,
0.015873;0.831373;,
0.003968;0.890196;,
0.019841;0.894118;,
0.019841;0.941177;,
0.047619;0.870588;,
0.083333;0.901961;,
0.142857;0.870588;,
0.194444;0.917647;,
0.019841;0.941177;,
0.087302;0.901961;,
0.194444;0.917647;,
0.222222;0.905882;,
0.035714;0.705882;,
0.007937;0.709804;,
0.035714;0.705882;,
0.103175;0.690196;,
0.138889;0.690196;,
0.142857;0.807843;,
0.178571;0.698039;,
0.174603;0.788235;,
0.238095;0.952941;,
0.257937;0.949020;,
0.257937;0.968628;,
0.238095;0.952941;,
0.242064;0.972549;,
0.186508;0.956863;,
0.186508;0.976471;,
0.119048;0.952941;,
0.119048;0.976471;,
0.023810;0.976471;,
0.234127;0.815686;,
0.190476;0.827451;,
0.186508;0.956863;,
0.186508;0.976471;,
0.313492;0.784314;,
0.309524;0.843137;,
0.408730;0.843137;,
0.321429;0.874510;,
0.392857;0.968628;,
0.329365;0.964706;,
0.361111;0.988235;,
0.035714;0.827451;,
0.095238;0.827451;,
0.226190;0.921569;,
0.019841;0.976471;,
0.003968;0.976471;,
0.246032;0.972549;,
0.341270;0.760784;,
0.380952;0.776471;,
0.226190;0.921569;,
0.103175;0.690196;;
}
}
 }
