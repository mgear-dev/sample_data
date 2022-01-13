//Maya ASCII 2020 scene
//Name: head_geo_proportions_setup_blendShape_shapes_data.ma
//Last modified: Mon, Dec 14, 2020 10:35:26 AM
//Codeset: 1252
requires maya "2020";
requires "stereoCamera" "10.0";
requires "mtoa" "4.0.3";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202009141615-87c40af620";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19041)\n";
fileInfo "UUID" "5659D888-4CE3-73A6-1E45-BCAD14671A0E";
createNode network -n "head_geo_proportions_setup_blendShape_data";
	rename -uid "2A31CCC8-4587-05B7-5F46-C9BCB89A64AB";
	addAttr -s false -ci true -sn "SHAPESData" -ln "SHAPESData" -at "message";
	addAttr -ci true -sn "SHAPESVersion" -ln "SHAPESVersion" -at "long";
	addAttr -ci true -m -sn "shape" -ln "shape" -at "compound" -nc 4;
	addAttr -ci true -sn "shapeLabel" -ln "shapeLabel" -at "long" -p "shape";
	addAttr -ci true -sn "shapeRange" -ln "shapeRange" -dt "floatArray" -p "shape";
	addAttr -ci true -sn "shapeTarget" -ln "shapeTarget" -dt "string" -p "shape";
	addAttr -ci true -sn "shapeTimeRange" -ln "shapeTimeRange" -dt "floatArray" -p "shape";
	addAttr -ci true -m -sn "helper" -ln "helper" -at "compound" -nc 4;
	addAttr -ci true -sn "helperLabel" -ln "helperLabel" -at "long" -p "helper";
	addAttr -ci true -sn "helperRange" -ln "helperRange" -dt "floatArray" -p "helper";
	addAttr -ci true -sn "helperTarget" -ln "helperTarget" -dt "string" -p "helper";
	addAttr -ci true -sn "helperTimeRange" -ln "helperTimeRange" -dt "floatArray" -p "helper";
	addAttr -ci true -m -sn "group" -ln "group" -at "compound" -nc 4;
	addAttr -ci true -sn "groupLabel" -ln "groupLabel" -at "long" -p "group";
	addAttr -ci true -sn "groupRange" -ln "groupRange" -dt "floatArray" -p "group";
	addAttr -ci true -sn "groupTarget" -ln "groupTarget" -dt "string" -p "group";
	addAttr -ci true -sn "groupTimeRange" -ln "groupTimeRange" -dt "floatArray" -p "group";
	addAttr -ci true -m -sn "drivenSet" -ln "drivenSet" -at "compound" -nc 4;
	addAttr -ci true -sn "drivenSetLabel" -ln "drivenSetLabel" -at "long" -p "drivenSet";
	addAttr -ci true -sn "drivenSetRange" -ln "drivenSetRange" -dt "floatArray" -p "drivenSet";
	addAttr -ci true -sn "drivenSetTarget" -ln "drivenSetTarget" -dt "string" -p "drivenSet";
	addAttr -ci true -sn "drivenSetTimeRange" -ln "drivenSetTimeRange" -dt "floatArray" 
		-p "drivenSet";
	addAttr -ci true -h true -sn "order" -ln "order" -dt "string";
	addAttr -ci true -h true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -h true -sn "expand" -ln "expand" -dt "string";
	addAttr -ci true -h true -sn "alias" -ln "alias" -dt "string";
	addAttr -ci true -h true -sn "driver" -ln "driver" -dt "string";
	addAttr -ci true -h true -sn "driverGroup" -ln "driverGroup" -dt "string";
	setAttr -l on ".SHAPESVersion" 50702;
	setAttr -s 40 ".shape";
	setAttr ".shape[0].shapeLabel" -1;
	setAttr ".shape[0].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[0].shapeTarget" -type "string" "mouth_wide";
	setAttr ".shape[0].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[1].shapeLabel" -1;
	setAttr ".shape[1].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[1].shapeTarget" -type "string" "mouth_narrow";
	setAttr ".shape[1].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[2].shapeLabel" -1;
	setAttr ".shape[2].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[2].shapeTarget" -type "string" "mouth_smile";
	setAttr ".shape[2].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[3].shapeLabel" -1;
	setAttr ".shape[3].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[3].shapeTarget" -type "string" "mouth_sad";
	setAttr ".shape[3].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[4].shapeLabel" -1;
	setAttr ".shape[4].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[4].shapeTarget" -type "string" "mouth_wide_smile_COMBO";
	setAttr ".shape[4].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[5].shapeLabel" -1;
	setAttr ".shape[5].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[5].shapeTarget" -type "string" "mouth_narrow_sad_COMBO";
	setAttr ".shape[5].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[6].shapeLabel" 10;
	setAttr ".shape[6].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[6].shapeTarget" -type "string" "mouth_open";
	setAttr ".shape[6].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[7].shapeLabel" -1;
	setAttr ".shape[7].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[7].shapeTarget" -type "string" "mouth_open_neck";
	setAttr ".shape[7].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[8].shapeLabel" -1;
	setAttr ".shape[8].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[8].shapeTarget" -type "string" "mouth_open_wide_COMBO";
	setAttr ".shape[8].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[9].shapeLabel" -1;
	setAttr ".shape[9].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[9].shapeTarget" -type "string" "mouth_open_narrow_COMBO";
	setAttr ".shape[9].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[10].shapeLabel" -1;
	setAttr ".shape[10].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[10].shapeTarget" -type "string" "mouth_open_smile_COMBO";
	setAttr ".shape[10].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[11].shapeLabel" -1;
	setAttr ".shape[11].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[11].shapeTarget" -type "string" "mouth_open_sad_COMBO";
	setAttr ".shape[11].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[12].shapeLabel" -1;
	setAttr ".shape[12].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[12].shapeTarget" -type "string" "mouth_open_wide_smile_COMBO";
	setAttr ".shape[12].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[13].shapeLabel" -1;
	setAttr ".shape[13].shapeTarget" -type "string" "mouth_open_wide_extreme_COMBO";
	setAttr ".shape[14].shapeLabel" -1;
	setAttr ".shape[14].shapeRange" -type "floatArray" 0 ;
	setAttr ".shape[14].shapeTarget" -type "string" "mouth_open_neck_extreme_COMBO";
	setAttr ".shape[14].shapeTimeRange" -type "floatArray" 0 ;
	setAttr ".shape[16].shapeLabel" -1;
	setAttr ".shape[16].shapeTarget" -type "string" "mouth_puker";
	setAttr ".shape[17].shapeLabel" -1;
	setAttr ".shape[17].shapeTarget" -type "string" "R_mouth_smile";
	setAttr ".shape[18].shapeLabel" -1;
	setAttr ".shape[18].shapeTarget" -type "string" "L_mouth_smile";
	setAttr ".shape[19].shapeLabel" -1;
	setAttr ".shape[19].shapeTarget" -type "string" "R_mouth_wide";
	setAttr ".shape[20].shapeLabel" -1;
	setAttr ".shape[20].shapeTarget" -type "string" "L_mouth_wide";
	setAttr ".shape[21].shapeLabel" -1;
	setAttr ".shape[21].shapeTarget" -type "string" "R_mouth_sad";
	setAttr ".shape[22].shapeLabel" -1;
	setAttr ".shape[22].shapeTarget" -type "string" "L_mouth_sad";
	setAttr ".shape[23].shapeLabel" -1;
	setAttr ".shape[23].shapeTarget" -type "string" "R_mouth_wide_smile_COMBO";
	setAttr ".shape[24].shapeLabel" -1;
	setAttr ".shape[24].shapeTarget" -type "string" "L_mouth_wide_smile_COMBO";
	setAttr ".shape[25].shapeLabel" -1;
	setAttr ".shape[25].shapeTarget" -type "string" "R_mouth_narrow_sad_COMBO";
	setAttr ".shape[26].shapeLabel" -1;
	setAttr ".shape[26].shapeTarget" -type "string" "L_mouth_narrow_sad_COMBO";
	setAttr ".shape[27].shapeLabel" -1;
	setAttr ".shape[27].shapeTarget" -type "string" "R_mouth_open_wide_COMBO";
	setAttr ".shape[28].shapeLabel" -1;
	setAttr ".shape[28].shapeTarget" -type "string" "L_mouth_open_wide_COMBO";
	setAttr ".shape[31].shapeLabel" -1;
	setAttr ".shape[31].shapeTarget" -type "string" "R_mouth_open_wide_extreme_COMBO";
	setAttr ".shape[32].shapeLabel" -1;
	setAttr ".shape[32].shapeTarget" -type "string" "L_mouth_open_wide_extreme_COMBO";
	setAttr ".shape[33].shapeLabel" -1;
	setAttr ".shape[33].shapeTarget" -type "string" "R_mouth_open_wide_smile_COMBO";
	setAttr ".shape[34].shapeLabel" -1;
	setAttr ".shape[34].shapeTarget" -type "string" "L_mouth_open_wide_smile_COMBO";
	setAttr ".shape[35].shapeLabel" -1;
	setAttr ".shape[35].shapeTarget" -type "string" "R_mouth_open_sad_COMBO";
	setAttr ".shape[36].shapeLabel" -1;
	setAttr ".shape[36].shapeTarget" -type "string" "L_mouth_open_sad_COMBO";
	setAttr ".shape[37].shapeLabel" -1;
	setAttr ".shape[37].shapeTarget" -type "string" "R_mouth_open_smile_COMBO";
	setAttr ".shape[38].shapeLabel" -1;
	setAttr ".shape[38].shapeTarget" -type "string" "L_mouth_open_smile_COMBO";
	setAttr ".shape[39].shapeLabel" -1;
	setAttr ".shape[39].shapeTarget" -type "string" "R_mouth_open_narrow_COMBO";
	setAttr ".shape[40].shapeLabel" -1;
	setAttr ".shape[40].shapeTarget" -type "string" "L_mouth_open_narrow_COMBO";
	setAttr ".shape[41].shapeLabel" -1;
	setAttr ".shape[41].shapeTarget" -type "string" "R_mouth_narrow";
	setAttr ".shape[42].shapeLabel" -1;
	setAttr ".shape[42].shapeTarget" -type "string" "L_mouth_narrow";
	setAttr ".order" -type "string" "mouth_wide,L_mouth_wide,R_mouth_wide,mouth_narrow,L_mouth_narrow,R_mouth_narrow,mouth_smile,L_mouth_smile,R_mouth_smile,mouth_sad,L_mouth_sad,R_mouth_sad,mouth_wide_smile_COMBO,L_mouth_wide_smile_COMBO,R_mouth_wide_smile_COMBO,mouth_narrow_sad_COMBO,L_mouth_narrow_sad_COMBO,R_mouth_narrow_sad_COMBO,mouth_open,mouth_open_neck,mouth_open_wide_COMBO,L_mouth_open_wide_COMBO,R_mouth_open_wide_COMBO,mouth_open_narrow_COMBO,L_mouth_open_narrow_COMBO,R_mouth_open_narrow_COMBO,mouth_open_smile_COMBO,L_mouth_open_smile_COMBO,R_mouth_open_smile_COMBO,mouth_open_sad_COMBO,L_mouth_open_sad_COMBO,R_mouth_open_sad_COMBO,mouth_open_wide_smile_COMBO,L_mouth_open_wide_smile_COMBO,R_mouth_open_wide_smile_COMBO,mouth_open_wide_extreme_COMBO,L_mouth_open_wide_extreme_COMBO,R_mouth_open_wide_extreme_COMBO,mouth_open_neck_extreme_COMBO,mouth_puker";
	setAttr ".parent" -type "string" "none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none";
	setAttr ".expand" -type "string" "1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1";
	setAttr ".alias" -type "string" (
		"mouth_wide weight[0] mouth_open_smile_COMBO weight[10] mouth_open_sad_COMBO weight[11] mouth_open_wide_smile_COMBO weight[12] mouth_open_wide_extreme_COMBO weight[13] mouth_open_neck_extreme_COMBO weight[14] mouth_puker weight[16] R_mouth_smile weight[17] L_mouth_smile weight[18] R_mouth_wide weight[19] mouth_narrow weight[1] L_mouth_wide weight[20] R_mouth_sad weight[21] L_mouth_sad weight[22] R_mouth_wide_smile_COMBO weight[23] L_mouth_wide_smile_COMBO weight[24] R_mouth_narrow_sad_COMBO weight[25] L_mouth_narrow_sad_COMBO weight[26] R_mouth_open_wide_COMBO weight[27] L_mouth_open_wide_COMBO weight[28] mouth_smile weight[2] R_mouth_open_wide_extreme_COMBO weight[31] L_mouth_open_wide_extreme_COMBO weight[32] R_mouth_open_wide_smile_COMBO weight[33] L_mouth_open_wide_smile_COMBO weight[34] R_mouth_open_sad_COMBO weight[35] L_mouth_open_sad_COMBO weight[36] R_mouth_open_smile_COMBO weight[37] L_mouth_open_smile_COMBO weight[38] R_mouth_open_narrow_COMBO weight[39] mouth_sad weight[3] L_mouth_open_narrow_COMBO weight[40] R_mouth_narrow weight[41] L_mouth_narrow weight[42] mouth_wide_smile_COMBO weight[4] mouth_narrow_sad_COMBO weight[5] mouth_open weight[6] mouth_open_neck weight[7] mouth_open_wide_COMBO weight[8] mouth_open_narrow_COMBO weight[9]");
	setAttr ".driver" -type "string" "mouthCorner_L0_ctl:none:1,mouthCorner_R0_ctl:none:1,mouth_C0_jaw_ctl:none:1,mouthSlide_C0_ctl:none:1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 202 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 205 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 60 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 62 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 41 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
// End of head_geo_proportions_setup_blendShape_shapes_data.ma