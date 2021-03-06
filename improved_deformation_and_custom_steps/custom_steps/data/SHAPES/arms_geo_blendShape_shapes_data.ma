//Maya ASCII 2018ff09 scene
//Name: arms_geo_blendShape_shapes_data.ma
//Last modified: Fri, Aug 23, 2019 06:50:34 AM
//Codeset: 1252
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode network -n "arms_geo_blendShape_data";
	rename -uid "0D3F29E5-4A7F-1F59-ED12-C3BE4F1E9E25";
	addAttr -s false -ci true -sn "SHAPESData" -ln "SHAPESData" -at "message";
	addAttr -ci true -m -sn "shape" -ln "shape" -at "compound" -nc 4;
	addAttr -ci true -sn "shapeLabel" -ln "shapeLabel" -at "long" -p "shape";
	addAttr -ci true -sn "shapeRange" -ln "shapeRange" -dt "Int32Array" -p "shape";
	addAttr -ci true -sn "shapeTarget" -ln "shapeTarget" -dt "string" -p "shape";
	addAttr -ci true -sn "shapeTimeRange" -ln "shapeTimeRange" -dt "floatArray" -p "shape";
	addAttr -ci true -m -sn "helper" -ln "helper" -at "compound" -nc 4;
	addAttr -ci true -sn "helperLabel" -ln "helperLabel" -at "long" -p "helper";
	addAttr -ci true -sn "helperRange" -ln "helperRange" -dt "Int32Array" -p "helper";
	addAttr -ci true -sn "helperTarget" -ln "helperTarget" -dt "string" -p "helper";
	addAttr -ci true -sn "helperTimeRange" -ln "helperTimeRange" -dt "floatArray" -p "helper";
	addAttr -ci true -m -sn "group" -ln "group" -at "compound" -nc 4;
	addAttr -ci true -sn "groupLabel" -ln "groupLabel" -at "long" -p "group";
	addAttr -ci true -sn "groupRange" -ln "groupRange" -dt "Int32Array" -p "group";
	addAttr -ci true -sn "groupTarget" -ln "groupTarget" -dt "string" -p "group";
	addAttr -ci true -sn "groupTimeRange" -ln "groupTimeRange" -dt "floatArray" -p "group";
	addAttr -ci true -m -sn "drivenSet" -ln "drivenSet" -at "compound" -nc 4;
	addAttr -ci true -sn "drivenSetLabel" -ln "drivenSetLabel" -at "long" -p "drivenSet";
	addAttr -ci true -sn "drivenSetRange" -ln "drivenSetRange" -dt "Int32Array" -p "drivenSet";
	addAttr -ci true -sn "drivenSetTarget" -ln "drivenSetTarget" -dt "string" -p "drivenSet";
	addAttr -ci true -sn "drivenSetTimeRange" -ln "drivenSetTimeRange" -dt "floatArray" 
		-p "drivenSet";
	addAttr -ci true -h true -sn "order" -ln "order" -dt "string";
	addAttr -ci true -h true -sn "parent" -ln "parent" -dt "string";
	addAttr -ci true -h true -sn "expand" -ln "expand" -dt "string";
	addAttr -ci true -h true -sn "alias" -ln "alias" -dt "string";
	addAttr -ci true -h true -sn "driver" -ln "driver" -dt "string";
	addAttr -ci true -h true -sn "driverGroup" -ln "driverGroup" -dt "string";
	setAttr -s 50 ".shape";
	setAttr ".shape[0].shapeLabel" -1;
	setAttr ".shape[0].shapeTarget" -type "string" "elbow_90_L";
	setAttr ".shape[1].shapeLabel" -1;
	setAttr ".shape[1].shapeTarget" -type "string" "elbow_150_L";
	setAttr ".shape[2].shapeLabel" -1;
	setAttr ".shape[2].shapeTarget" -type "string" "hand_up_L";
	setAttr ".shape[3].shapeLabel" -1;
	setAttr ".shape[3].shapeTarget" -type "string" "hand_down_L";
	setAttr ".shape[4].shapeLabel" -1;
	setAttr ".shape[4].shapeTarget" -type "string" "hand_back_L";
	setAttr ".shape[5].shapeLabel" -1;
	setAttr ".shape[5].shapeTarget" -type "string" "hand_front_L";
	setAttr ".shape[6].shapeLabel" -1;
	setAttr ".shape[6].shapeTarget" -type "string" "elbow_90_R";
	setAttr ".shape[7].shapeLabel" -1;
	setAttr ".shape[7].shapeTarget" -type "string" "elbow_150_R";
	setAttr ".shape[8].shapeLabel" -1;
	setAttr ".shape[8].shapeTarget" -type "string" "hand_up_R";
	setAttr ".shape[9].shapeLabel" -1;
	setAttr ".shape[9].shapeTarget" -type "string" "hand_down_R";
	setAttr ".shape[10].shapeLabel" -1;
	setAttr ".shape[10].shapeTarget" -type "string" "hand_back_R";
	setAttr ".shape[11].shapeLabel" -1;
	setAttr ".shape[11].shapeTarget" -type "string" "hand_front_R";
	setAttr ".shape[12].shapeLabel" -1;
	setAttr ".shape[12].shapeTarget" -type "string" "finger_L0_2";
	setAttr ".shape[13].shapeLabel" -1;
	setAttr ".shape[13].shapeTarget" -type "string" "finger_L0_1";
	setAttr ".shape[14].shapeLabel" -1;
	setAttr ".shape[14].shapeTarget" -type "string" "finger_L0_0";
	setAttr ".shape[15].shapeLabel" -1;
	setAttr ".shape[15].shapeTarget" -type "string" "finger_L0_COMB";
	setAttr ".shape[16].shapeLabel" -1;
	setAttr ".shape[16].shapeTarget" -type "string" "finger_L1_2";
	setAttr ".shape[17].shapeLabel" -1;
	setAttr ".shape[17].shapeTarget" -type "string" "finger_L1_1";
	setAttr ".shape[18].shapeLabel" -1;
	setAttr ".shape[18].shapeTarget" -type "string" "finger_L1_0";
	setAttr ".shape[19].shapeLabel" -1;
	setAttr ".shape[19].shapeTarget" -type "string" "finger_L1_COMB";
	setAttr ".shape[20].shapeLabel" -1;
	setAttr ".shape[20].shapeTarget" -type "string" "finger_L2_2";
	setAttr ".shape[21].shapeLabel" -1;
	setAttr ".shape[21].shapeTarget" -type "string" "finger_L2_1";
	setAttr ".shape[22].shapeLabel" -1;
	setAttr ".shape[22].shapeTarget" -type "string" "finger_L2_0";
	setAttr ".shape[23].shapeLabel" -1;
	setAttr ".shape[23].shapeTarget" -type "string" "finger_L2_COMB";
	setAttr ".shape[24].shapeLabel" -1;
	setAttr ".shape[24].shapeTarget" -type "string" "finger_L3_2";
	setAttr ".shape[25].shapeLabel" -1;
	setAttr ".shape[25].shapeTarget" -type "string" "finger_L3_1";
	setAttr ".shape[26].shapeLabel" -1;
	setAttr ".shape[26].shapeTarget" -type "string" "finger_L3_0";
	setAttr ".shape[27].shapeLabel" -1;
	setAttr ".shape[27].shapeTarget" -type "string" "finger_L3_COMB";
	setAttr ".shape[28].shapeLabel" -1;
	setAttr ".shape[28].shapeTarget" -type "string" "thumb_L_2";
	setAttr ".shape[29].shapeLabel" -1;
	setAttr ".shape[29].shapeTarget" -type "string" "thumb_L_1";
	setAttr ".shape[30].shapeLabel" -1;
	setAttr ".shape[30].shapeTarget" -type "string" "thumb_L_0";
	setAttr ".shape[31].shapeLabel" -1;
	setAttr ".shape[31].shapeTarget" -type "string" "finger_R0_2";
	setAttr ".shape[32].shapeLabel" -1;
	setAttr ".shape[32].shapeTarget" -type "string" "finger_R0_1";
	setAttr ".shape[33].shapeLabel" -1;
	setAttr ".shape[33].shapeTarget" -type "string" "thumb_R_0";
	setAttr ".shape[34].shapeLabel" -1;
	setAttr ".shape[34].shapeTarget" -type "string" "thumb_R_1";
	setAttr ".shape[35].shapeLabel" -1;
	setAttr ".shape[35].shapeTarget" -type "string" "thumb_R_2";
	setAttr ".shape[36].shapeLabel" -1;
	setAttr ".shape[36].shapeTarget" -type "string" "finger_R3_0";
	setAttr ".shape[37].shapeLabel" -1;
	setAttr ".shape[37].shapeTarget" -type "string" "finger_R3_1";
	setAttr ".shape[38].shapeLabel" -1;
	setAttr ".shape[38].shapeTarget" -type "string" "finger_R3_2";
	setAttr ".shape[39].shapeLabel" -1;
	setAttr ".shape[39].shapeTarget" -type "string" "finger_R3_COMB";
	setAttr ".shape[40].shapeLabel" -1;
	setAttr ".shape[40].shapeTarget" -type "string" "finger_R2_2";
	setAttr ".shape[41].shapeLabel" -1;
	setAttr ".shape[41].shapeTarget" -type "string" "finger_R2_1";
	setAttr ".shape[42].shapeLabel" -1;
	setAttr ".shape[42].shapeTarget" -type "string" "finger_R2_0";
	setAttr ".shape[43].shapeLabel" -1;
	setAttr ".shape[43].shapeTarget" -type "string" "finger_R2_COMB";
	setAttr ".shape[44].shapeLabel" -1;
	setAttr ".shape[44].shapeTarget" -type "string" "finger_R1_0";
	setAttr ".shape[45].shapeLabel" -1;
	setAttr ".shape[45].shapeTarget" -type "string" "finger_R1_1";
	setAttr ".shape[46].shapeLabel" -1;
	setAttr ".shape[46].shapeTarget" -type "string" "finger_R1_2";
	setAttr ".shape[47].shapeLabel" -1;
	setAttr ".shape[47].shapeTarget" -type "string" "finger_R1_COMB";
	setAttr ".shape[48].shapeLabel" -1;
	setAttr ".shape[48].shapeTarget" -type "string" "finger_R0_0";
	setAttr ".shape[49].shapeLabel" -1;
	setAttr ".shape[49].shapeTarget" -type "string" "finger_R0_COMB";
	setAttr -s 3 ".group";
	setAttr ".group[0].groupLabel" 3;
	setAttr ".group[0].groupTarget" -type "string" "arm_L0_end_jnt_RBF";
	setAttr ".group[1].groupLabel" 3;
	setAttr ".group[1].groupTarget" -type "string" "arm_R0_end_jnt_RBF";
	setAttr ".group[2].groupLabel" 6;
	setAttr ".group[2].groupTarget" -type "string" "arm";
	setAttr ".order" -type "string" "arm,elbow_90_L,elbow_90_R,elbow_150_L,elbow_150_R,arm_L0_end_jnt_RBF,hand_up_L,hand_down_L,hand_back_L,hand_front_L,arm_R0_end_jnt_RBF,hand_up_R,hand_down_R,hand_back_R,hand_front_R,finger_L0_2,finger_R0_2,finger_L0_1,finger_R0_1,finger_L0_0,finger_R0_0,finger_L0_COMB,finger_R0_COMB,finger_L1_2,finger_R1_2,finger_L1_1,finger_R1_1,finger_L1_0,finger_R1_0,finger_L1_COMB,finger_R1_COMB,finger_L2_2,finger_R2_2,finger_L2_1,finger_R2_1,finger_L2_0,finger_R2_0,finger_L2_COMB,finger_R2_COMB,finger_L3_2,finger_R3_2,finger_L3_1,finger_R3_1,finger_L3_0,finger_R3_0,finger_L3_COMB,finger_R3_COMB,thumb_L_2,thumb_R_2,thumb_L_1,thumb_R_1,thumb_L_0,thumb_R_0";
	setAttr ".parent" -type "string" "none,arm,arm,arm,arm,arm,arm_L0_end_jnt_RBF,arm_L0_end_jnt_RBF,arm_L0_end_jnt_RBF,arm_L0_end_jnt_RBF,arm,arm_R0_end_jnt_RBF,arm_R0_end_jnt_RBF,arm_R0_end_jnt_RBF,arm_R0_end_jnt_RBF,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none,none";
	setAttr ".expand" -type "string" "0,1,1,1,1,0,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1";
	setAttr ".alias" -type "string" (
		"elbow_90_L weight[0] hand_back_R weight[10] hand_front_R weight[11] finger_L0_2 weight[12] finger_L0_1 weight[13] finger_L0_0 weight[14] finger_L0_COMB weight[15] finger_L1_2 weight[16] finger_L1_1 weight[17] finger_L1_0 weight[18] finger_L1_COMB weight[19] elbow_150_L weight[1] finger_L2_2 weight[20] finger_L2_1 weight[21] finger_L2_0 weight[22] finger_L2_COMB weight[23] finger_L3_2 weight[24] finger_L3_1 weight[25] finger_L3_0 weight[26] finger_L3_COMB weight[27] thumb_L_2 weight[28] thumb_L_1 weight[29] hand_up_L weight[2] thumb_L_0 weight[30] finger_R0_2 weight[31] finger_R0_1 weight[32] thumb_R_0 weight[33] thumb_R_1 weight[34] thumb_R_2 weight[35] finger_R3_0 weight[36] finger_R3_1 weight[37] finger_R3_2 weight[38] finger_R3_COMB weight[39] hand_down_L weight[3] finger_R2_2 weight[40] finger_R2_1 weight[41] finger_R2_0 weight[42] finger_R2_COMB weight[43] finger_R1_0 weight[44] finger_R1_1 weight[45] finger_R1_2 weight[46] finger_R1_COMB weight[47] finger_R0_0 weight[48] finger_R0_COMB weight[49] hand_back_L weight[4] hand_front_L weight[5] elbow_90_R weight[6] elbow_150_R weight[7] hand_up_R weight[8] hand_down_R weight[9]");
	setAttr ".driver" -type "string" "arm:none:0,arm_L0_readerB_loc:arm:1,arm_R0_readerB_loc:arm:1,arm_L0_end_jnt:arm:1,arm_R0_end_jnt:arm:1,fingers:none:1,finger_L0_2_jnt:fingers:1,finger_R0_2_jnt:none:1,finger_L0_1_jnt:fingers:1,finger_R0_1_jnt:none:1,finger_L0_0_jnt:fingers:1,finger_R0_0_jnt:none:1,finger_L1_2_jnt:fingers:1,finger_R1_2_jnt:none:1,finger_L1_1_jnt:fingers:1,finger_R1_1_jnt:none:1,finger_L1_0_jnt:fingers:1,finger_R1_0_jnt:none:1,finger_L2_2_jnt:fingers:1,finger_R2_2_jnt:none:1,finger_L2_1_jnt:fingers:1,finger_R2_1_jnt:none:1,finger_L2_0_jnt:fingers:1,finger_R2_0_jnt:none:1,finger_L3_2_jnt:fingers:1,finger_R3_2_jnt:none:1,finger_L3_1_jnt:fingers:1,finger_R3_1_jnt:none:1,finger_L3_0_jnt:fingers:1,finger_R3_0_jnt:none:1,thumb_L0_2_jnt:fingers:1,thumb_R0_2_jnt:none:1,thumb_L0_1_jnt:fingers:1,thumb_R0_1_jnt:none:1,thumb_L0_0_jnt:fingers:1,thumb_R0_0_jnt:none:1";
	setAttr ".driverGroup" -type "string" "arm,fingers";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 32 ".u";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 51 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7777780294418335;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 2 ".sol";
// End of arms_geo_blendShape_shapes_data.ma
