//Maya ASCII 2018ff09 scene
//Name: 01_ghost_control_END.ma
//Last modified: Tue, Sep 22, 2020 06:33:22 PM
//Codeset: 1252
requires maya "2018ff09";
requires -nodeType "decomposeMatrix" "matrixNodes" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "mgear_mulMatrix" "mgear_solvers" "2.1.0";
requires "mtoa" "4.0.3.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "AE53C1FA-4A43-D1CF-8B8C-7AA6581BDA99";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7024679080949046 10.666405538696289 9.9872299163134155 ;
	setAttr ".r" -type "double3" -44.738352729604401 21.000000000000124 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "76D8D957-4E1C-F2E6-EE39-BB8AD33A1FFD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.327840985984647;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "CDD70841-4919-5FF3-441C-9B8F121BB601";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DB44EDFE-4B1D-7CCA-9983-55BC472ACAF5";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E8092297-48ED-0FD5-11B9-3189AC788AFD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A310D7F1-4481-E1C6-465E-A8A7AE4A1DA9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4C8C7E6C-4470-4E18-7132-D69389F9A102";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "FBF39C7E-4BE7-885B-7DBC-07AE50344006";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "guide";
	rename -uid "655CCDC8-4CBF-A6D9-BF01-EA9F030015AB";
	addAttr -ci true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "mode" -ln "mode" -min 0 -max 1 -en "Final:WIP" -at "enum";
	addAttr -ci true -k true -sn "step" -ln "step" -min 0 -max 6 -en "All Steps:Objects:Properties:Operators:Connect:Joints:Finalize" 
		-at "enum";
	addAttr -ci true -sn "ismodel" -ln "ismodel" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "classicChannelNames" -ln "classicChannelNames" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "proxyChannels" -ln "proxyChannels" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "worldCtl" -ln "worldCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "importSkin" -ln "importSkin" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "skin" -ln "skin" -dt "string";
	addAttr -ci true -sn "L_color_fk" -ln "L_color_fk" -dv 6 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "L_color_ik" -ln "L_color_ik" -dv 18 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_fk" -ln "R_color_fk" -dv 23 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "R_color_ik" -ln "R_color_ik" -dv 14 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_fk" -ln "C_color_fk" -dv 13 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "C_color_ik" -ln "C_color_ik" -dv 17 -min 0 -max 31 -at "long";
	addAttr -ci true -sn "joint_rig" -ln "joint_rig" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "force_uniScale" -ln "force_uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "synoptic" -ln "synoptic" -dt "string";
	addAttr -ci true -sn "doPreCustomStep" -ln "doPreCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "doPostCustomStep" -ln "doPostCustomStep" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "preCustomStep" -ln "preCustomStep" -dt "string";
	addAttr -ci true -sn "postCustomStep" -ln "postCustomStep" -dt "string";
	addAttr -ci true -sn "comments" -ln "comments" -dt "string";
	addAttr -ci true -sn "user" -ln "user" -dt "string";
	addAttr -ci true -sn "date" -ln "date" -dt "string";
	addAttr -ci true -sn "maya_version" -ln "maya_version" -dt "string";
	addAttr -ci true -sn "gear_version" -ln "gear_version" -dt "string";
	setAttr ".v" no;
	setAttr ".rig_name" -type "string" "rig";
	setAttr -k on ".step" 6;
	setAttr ".skin" -type "string" "";
	setAttr ".synoptic" -type "string" "";
	setAttr ".preCustomStep" -type "string" "";
	setAttr ".postCustomStep" -type "string" "";
	setAttr ".comments" -type "string" "";
	setAttr ".user" -type "string" "miquel";
	setAttr ".date" -type "string" "2020-09-22 18:24:16.550000";
	setAttr ".maya_version" -type "string" "2018.0";
	setAttr ".gear_version" -type "string" "3.6.0";
createNode transform -n "controllers_org" -p "guide";
	rename -uid "253F2728-4E18-74DF-EE4A-7BBEDDD1A779";
	setAttr ".v" no;
createNode transform -n "control_C0_root" -p "guide";
	rename -uid "78946293-481B-5DE7-92E6-D480AB168CF6";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "comp_type" -ln "comp_type" -dt "string";
	addAttr -ci true -sn "comp_name" -ln "comp_name" -dt "string";
	addAttr -ci true -sn "comp_side" -ln "comp_side" -dt "string";
	addAttr -ci true -sn "comp_index" -ln "comp_index" -min 0 -at "long";
	addAttr -ci true -sn "connector" -ln "connector" -dt "string";
	addAttr -ci true -sn "ui_host" -ln "ui_host" -dt "string";
	addAttr -ci true -sn "ctlGrp" -ln "ctlGrp" -dt "string";
	addAttr -ci true -sn "joint_names" -ln "joint_names" -dt "string";
	addAttr -ci true -sn "icon" -ln "icon" -dt "string";
	addAttr -ci true -sn "ikrefarray" -ln "ikrefarray" -dt "string";
	addAttr -ci true -sn "joint" -ln "joint" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uniScale" -ln "uniScale" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tx" -ln "k_tx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ty" -ln "k_ty" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_tz" -ln "k_tz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ro" -ln "k_ro" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rx" -ln "k_rx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_ry" -ln "k_ry" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_rz" -ln "k_rz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sx" -ln "k_sx" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sy" -ln "k_sy" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "k_sz" -ln "k_sz" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "default_rotorder" -ln "default_rotorder" -min 0 -max 5 -at "long";
	addAttr -ci true -sn "neutralRotation" -ln "neutralRotation" -dv 1 -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "mirrorBehaviour" -ln "mirrorBehaviour" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ctlSize" -ln "ctlSize" -dv 1 -at "double";
	addAttr -ci true -sn "useIndex" -ln "useIndex" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "parentJointIndex" -ln "parentJointIndex" -dv -1 -at "long";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".comp_type" -type "string" "control_01";
	setAttr ".comp_name" -type "string" "control";
	setAttr ".comp_side" -type "string" "C";
	setAttr ".connector" -type "string" "standard";
	setAttr ".ui_host" -type "string" "";
	setAttr ".ctlGrp" -type "string" "";
	setAttr ".joint_names" -type "string" "";
	setAttr ".icon" -type "string" "cube";
	setAttr ".ikrefarray" -type "string" "";
	setAttr ".joint" yes;
createNode nurbsCurve -n "control_C0_rootShape" -p "|guide|control_C0_root";
	rename -uid "21825FD1-4AD3-C991-2A25-23991A41D046";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0.25 0 0
		-0.25 0 0
		;
createNode nurbsCurve -n "control_C0_root1Shape" -p "|guide|control_C0_root";
	rename -uid "7370C6D1-44C8-1F7D-A16D-81B6A3B7B575";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0.25 0
		0 -0.25 0
		;
createNode nurbsCurve -n "control_C0_root2Shape" -p "|guide|control_C0_root";
	rename -uid "83805B40-4D55-A6D2-6373-DF8E6D3A41CA";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0.25
		0 0 -0.25
		;
createNode nurbsCurve -n "control_C0_root3Shape" -p "|guide|control_C0_root";
	rename -uid "64D94F79-4E91-652C-6DAC-D6AAFE7334D4";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.125 0.125 0.125
		0.125 0.125 -0.125
		-0.125 0.125 -0.125
		-0.125 -0.125 -0.125
		-0.125 -0.125 0.125
		-0.125 0.125 0.125
		-0.125 0.125 -0.125
		-0.125 0.125 0.125
		0.125 0.125 0.125
		0.125 -0.125 0.125
		-0.125 -0.125 0.125
		0.125 -0.125 0.125
		0.125 -0.125 -0.125
		0.125 0.125 -0.125
		0.125 -0.125 -0.125
		-0.125 -0.125 -0.125
		;
createNode transform -n "control_C0_sizeRef" -p "|guide|control_C0_root";
	rename -uid "9B91CDBA-494F-1DEA-97D9-5AB96C168ECA";
	addAttr -ci true -sn "isGearGuide" -ln "isGearGuide" -dv 1 -min 0 -max 1 -at "bool";
	setAttr -l on -k off -cb on ".v";
	setAttr ".t" -type "double3" 0 0 1 ;
	setAttr -l on -k off -cb on ".tx";
	setAttr -l on -k off -cb on ".ty";
	setAttr -l on -k off -cb on ".tz";
	setAttr -l on -k off -cb on ".rx";
	setAttr -l on -k off -cb on ".ry";
	setAttr -l on -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -l on -k off -cb on ".sx";
	setAttr -l on -k off -cb on ".sy";
	setAttr -l on -k off -cb on ".sz";
createNode nurbsCurve -n "control_C0_axisShape" -p "|guide|control_C0_root";
	rename -uid "6517C09D-4E6F-67EB-A43F-DAB81054CDF5";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0.25 0 0
		;
createNode nurbsCurve -n "control_C0_axis1Shape" -p "|guide|control_C0_root";
	rename -uid "1C2B938E-4B26-0D7C-5D8F-3BB08B0EB91C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0.25 0
		;
createNode nurbsCurve -n "control_C0_axis2Shape" -p "|guide|control_C0_root";
	rename -uid "6D1FF7FE-4CA8-EEB6-2319-89A92F116F07";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".ls" 3;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0.25
		;
createNode transform -n "pCylinder1";
	rename -uid "454EDF2A-4D0A-54B6-7A05-F49AAA053089";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8C322399-41A6-4E39-A758-98A6F3ADFDEA";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "89D9AB07-41DB-492F-DF4F-0DB0EB6E29AC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "rig";
	rename -uid "167397D6-43BB-7C2B-E98F-42907824DA35";
	addAttr -ci true -k true -sn "is_rig" -ln "is_rig" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "rig_name" -ln "rig_name" -dt "string";
	addAttr -ci true -k true -sn "user" -ln "user" -dt "string";
	addAttr -ci true -k true -sn "wip" -ln "wip" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "date" -ln "date" -dt "string";
	addAttr -ci true -k true -sn "maya_version" -ln "maya_version" -dt "string";
	addAttr -ci true -k true -sn "gear_version" -ln "gear_version" -dt "string";
	addAttr -ci true -k true -sn "synoptic" -ln "synoptic" -dt "string";
	addAttr -ci true -k true -sn "comments" -ln "comments" -dt "string";
	addAttr -ci true -k true -sn "ctl_vis" -ln "ctl_vis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "ctl_vis_on_playback" -ln "ctl_vis_on_playback" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "jnt_vis" -ln "jnt_vis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "quickselA" -ln "quickselA" -dt "string";
	addAttr -ci true -k true -sn "quickselB" -ln "quickselB" -dt "string";
	addAttr -ci true -k true -sn "quickselC" -ln "quickselC" -dt "string";
	addAttr -ci true -k true -sn "quickselD" -ln "quickselD" -dt "string";
	addAttr -ci true -k true -sn "quickselE" -ln "quickselE" -dt "string";
	addAttr -ci true -k true -sn "quickselF" -ln "quickselF" -dt "string";
	addAttr -s false -ci true -m -sn "rigGroups" -ln "rigGroups" -at "message";
	addAttr -s false -ci true -m -sn "rigPoses" -ln "rigPoses" -at "message";
	addAttr -s false -ci true -m -sn "rigCtlTags" -ln "rigCtlTags" -at "message";
	addAttr -s false -ci true -m -sn "rigScriptNodes" -ln "rigScriptNodes" -at "message";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".rig_name" -type "string" "rig";
	setAttr -k on ".user" -type "string" "miquel";
	setAttr -k on ".date" -type "string" "2020-09-22 18:24:44.205000";
	setAttr -k on ".maya_version" -type "string" "2018.0";
	setAttr -k on ".gear_version" -type "string" "3.6.0";
	setAttr -k on ".synoptic" -type "string" "";
	setAttr -k on ".comments" -type "string" "";
	setAttr -k on ".ctl_vis";
	setAttr -k on ".ctl_vis_on_playback";
	setAttr -k on ".jnt_vis";
	setAttr -k on ".quickselA" -type "string" "";
	setAttr -k on ".quickselB" -type "string" "";
	setAttr -k on ".quickselC" -type "string" "";
	setAttr -k on ".quickselD" -type "string" "";
	setAttr -k on ".quickselE" -type "string" "";
	setAttr -k on ".quickselF" -type "string" "";
	setAttr -s 4 ".rigGroups";
	setAttr -s 2 ".rigCtlTags";
createNode transform -n "global_C0_ctl" -p "rig";
	rename -uid "35DB1A6A-4D1E-1952-C22F-198281020609";
	addAttr -ci true -sn "isCtl" -ln "isCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "control_C0_control_C0" -ln "control_C0_control_C0" 
		-nn "__________" -min 0 -max 0 -en "control_C0" -at "enum";
	addAttr -ci true -sn "control_C0_ctl" -ln "control_C0_ctl" -dt "string";
	setAttr -k off ".v";
	setAttr ".ro" 2;
	setAttr ".control_C0_ctl" -type "string" "control_C0_ctl,";
createNode nurbsCurve -n "global_C0_ctlShape" -p "global_C0_ctl";
	rename -uid "91E2AB0F-4995-54E1-43EC-B9AE9510C2FF";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 2 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		1 0 1
		1 0 3
		2 0 3
		0 0 5
		-2 0 3
		-1 0 3
		-1 0 1
		-3 0 1
		-3 0 2
		-5 0 0
		-3 0 -2
		-3 0 -1
		-1 0 -1
		-1 0 -3
		-2 0 -3
		0 0 -5
		2 0 -3
		1 0 -3
		1 0 -1
		3 0 -1
		3 0 -2
		5 0 0
		3 0 2
		3 0 1
		1 0 1
		;
createNode transform -n "control_C0_root" -p "global_C0_ctl";
	rename -uid "8D1A8F5A-46B9-BBCE-1E5B-D9B5BF461898";
	addAttr -ci true -k true -sn "componentType" -ln "componentType" -dt "string";
	addAttr -ci true -k true -sn "componentName" -ln "componentName" -dt "string";
	addAttr -ci true -k true -sn "componentVersion" -ln "componentVersion" -dt "string";
	addAttr -ci true -k true -sn "componentAuthor" -ln "componentAuthor" -dt "string";
	addAttr -ci true -k true -sn "componentURL" -ln "componentURL" -dt "string";
	addAttr -ci true -k true -sn "componentEmail" -ln "componentEmail" -dt "string";
	setAttr -k on ".componentType" -type "string" "control_01";
	setAttr -k on ".componentName" -type "string" "control";
	setAttr -k on ".componentVersion" -type "string" "1, 3, 0";
	setAttr -k on ".componentAuthor" -type "string" "Jeremie Passerin, Miquel Campos";
	setAttr -k on ".componentURL" -type "string" "www.jeremiepasserin.com, www.miquel-campos.com";
	setAttr -k on ".componentEmail" -type "string" "";
createNode transform -n "control_C0_ik_cns" -p "|rig|global_C0_ctl|control_C0_root";
	rename -uid "FFA5D2AA-4064-836A-F3F9-4BA0E6B1DA30";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "control_C0_ctl_ghost" -p "control_C0_ik_cns";
	rename -uid "535A887C-4672-A80F-86BA-99AF161D4636";
	addAttr -ci true -sn "isCtl" -ln "isCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uiHost" -ln "uiHost" -dt "string";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -k on ".ro";
createNode nurbsCurve -n "control_C0_ctl_ghostShape" -p "control_C0_ctl_ghost";
	rename -uid "9653FEA0-4AE7-9779-2692-CAA37A526569";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		;
createNode transform -n "setup" -p "rig";
	rename -uid "3EEBE828-446A-B4F7-3767-36AD187A8515";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "jnt_org" -p "rig";
	rename -uid "CB89B254-485B-D2CF-1761-8E9C3F41EC52";
createNode transform -n "control_C0_jnt_org" -p "jnt_org";
	rename -uid "2B262355-4C00-B40A-5F3C-2686280E0695";
createNode joint -n "control_C0_0_jnt" -p "control_C0_jnt_org";
	rename -uid "63EC5900-4ACC-8AE7-F026-BB8A1ED8C3F8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -cb on ".ro";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode transform -n "locator1";
	rename -uid "4738DE2A-4FA6-955E-CFB4-6BAFBCAFAEA0";
	setAttr ".t" -type "double3" 3.0003939388352716 2.7621683553417649 -4.0835265031235046 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "B241D661-471D-34CE-51AE-49A593FC1D03";
	setAttr -k off ".v";
createNode transform -n "control_C0_ctl_npo" -p "locator1";
	rename -uid "A3F1C8E0-4F64-F833-2EBF-B59FB11BD0FC";
createNode transform -n "control_C0_ctl" -p "control_C0_ctl_npo";
	rename -uid "A9300C07-4C86-7976-A4FC-B497FFE0BAB7";
	addAttr -ci true -sn "isCtl" -ln "isCtl" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "uiHost" -ln "uiHost" -dt "string";
	addAttr -ci true -sn "invTx" -ln "invTx" -nn "Invert Mirror TX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTy" -ln "invTy" -nn "Invert Mirror TY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invTz" -ln "invTz" -nn "Invert Mirror TZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRx" -ln "invRx" -nn "Invert Mirror RX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRy" -ln "invRy" -nn "Invert Mirror RY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invRz" -ln "invRz" -nn "Invert Mirror RZ" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSx" -ln "invSx" -nn "Invert Mirror SX" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSy" -ln "invSy" -nn "Invert Mirror SY" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "invSz" -ln "invSz" -nn "Invert Mirror SZ" -min 0 -max 1 -at "bool";
	setAttr -l on -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".t" -type "double3" 0.77308441147712337 0.10848395353300688 -0.41190486453658792 ;
	setAttr -k on ".ro";
	setAttr ".uiHost" -type "string" "global_C0_ctl";
createNode nurbsCurve -n "control_C0_ctlShape" -p "control_C0_ctl";
	rename -uid "A301E0DB-4249-6491-4656-A7AC2351B118";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B1C6DC47-47A4-11F6-4403-D9906F1D28AE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "829D5C5F-4151-81B6-2E76-15B174B4E0E0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "28BB90D0-49DD-930B-4952-8CAFE5DFE984";
createNode displayLayerManager -n "layerManager";
	rename -uid "8F8D2570-4820-446A-B7D8-0E96D8F02EFF";
createNode displayLayer -n "defaultLayer";
	rename -uid "AB8F511B-46B9-680B-8DDB-DBA9E19FC05B";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "31DF2D69-4B8A-7D0C-8B64-569ABA9E9EC6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6E6D9612-4669-7D6C-BD41-7A9AD6E094EF";
	setAttr ".g" yes;
createNode reverse -n "reverse1";
	rename -uid "A30AF332-428E-2CFB-B4B7-2B9DAFB5C748";
createNode polyCylinder -n "polyCylinder1";
	rename -uid "88189178-4BA2-BADC-A566-9396F7F954AF";
	setAttr ".sa" 8;
	setAttr ".cuv" 3;
createNode controller -n "global_C0_ctl_tag";
	rename -uid "4B9BD9E0-4960-B38E-7D18-819EE983F481";
	setAttr ".cwsb" yes;
createNode controller -n "control_C0_ctl_tag";
	rename -uid "8EFE6152-4D4F-ED03-59EE-A283421EF508";
createNode mgear_mulMatrix -n "mgear_mulMatrix1";
	rename -uid "F59A1636-49B0-862F-0162-F8987C27926C";
createNode decomposeMatrix -n "decomposeMatrix1";
	rename -uid "5C43EE76-4D5D-DA22-AAC1-37A6882EA387";
createNode mgear_mulMatrix -n "mgear_mulMatrix2";
	rename -uid "0A3A683E-4488-9B0D-A06F-A2BA4C059545";
createNode decomposeMatrix -n "decomposeMatrix2";
	rename -uid "BFC57BA3-4E49-2D4A-47AC-02B00A09438A";
createNode objectSet -n "rig_sets_grp";
	rename -uid "52DD686A-4A2A-B6BF-8B74-1BB4F7FC8B2A";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode objectSet -n "rig_controllers_grp";
	rename -uid "AAC9AFF5-4504-85DB-5D13-86B60F41E1FF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
createNode objectSet -n "rig_componentsRoots_grp";
	rename -uid "F93AD42E-4D5F-EC5B-B4B3-049D7256901D";
	setAttr ".ihi" 0;
createNode objectSet -n "rig_deformers_grp";
	rename -uid "DCC04C02-437D-CE58-F990-F6977DECE021";
	setAttr ".ihi" 0;
createNode dagPose -n "dagPose1";
	rename -uid "28F4BD25-4A48-DAA4-1FBC-F9A9ADAB8D07";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes no yes yes no;
createNode skinCluster -n "skinCluster1";
	rename -uid "EBD748EA-4587-1940-16F5-EF92B519A927";
	setAttr -s 16 ".wl";
	setAttr ".wl[0:15].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mi" 1;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
createNode tweak -n "tweak1";
	rename -uid "A42D105C-45DA-5168-D58C-20BB68AA3393";
createNode objectSet -n "skinCluster1Set";
	rename -uid "9A498382-45AD-F396-0C6F-3D8732C19C0A";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "9F2D0BD2-44B7-531D-49A3-AB8222A84539";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "AF9AB176-42B1-39EE-CBBB-82B20B8AEA18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "AE529DF8-4434-C7E6-8FD7-75ABEFE6B74C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "BE1EC4DA-472E-0CB2-F372-69A3E9227EBE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "1BAAC9F4-47D2-5FA8-55A6-AAB4BD60B19E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "2110540F-4483-C123-5520-C5ADAE93F04E";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes yes no;
	setAttr ".bp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "836512BB-4813-9F4C-227C-B2B24298FAE6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1336\n            -height 1214\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n"
		+ "            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 0\n                -editorMode \"default\" \n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -connectionMinSegment 0.03\n                -connectionOffset 0.03\n                -connectionRoundness 0.8\n                -connectionTension -100\n"
		+ "                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 0\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 0\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1336\\n    -height 1214\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1336\\n    -height 1214\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold no -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1434FE9C-4C86-412D-8209-66A967039694";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode controller -n "control_C0_ctl_tag1";
	rename -uid "CBAD9A51-4647-C03D-C5CE-A087A79AD113";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "59AA8C95-48DF-AADD-0966-63AFCBC95C43";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -438.48037978129616 -461.90474922694904 ;
	setAttr ".tgi[0].vh" -type "double2" 425.38514220641594 509.52379495378568 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 50;
	setAttr ".tgi[0].ni[0].y" 411.42855834960938;
	setAttr ".tgi[0].ni[0].nvs" 18305;
	setAttr ".tgi[0].ni[1].x" 50;
	setAttr ".tgi[0].ni[1].y" 234.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" -342.01681518554688;
	setAttr ".tgi[0].ni[2].y" 231.84873962402344;
	setAttr ".tgi[0].ni[2].nvs" 18305;
	setAttr ".tgi[0].ni[3].x" 50;
	setAttr ".tgi[0].ni[3].y" -258.57144165039063;
	setAttr ".tgi[0].ni[3].nvs" 18305;
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
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "reverse1.ox" "control_C0_axisShape.v";
connectAttr "reverse1.ox" "control_C0_axis1Shape.v";
connectAttr "reverse1.ox" "control_C0_axis2Shape.v";
connectAttr "skinCluster1GroupId.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pCylinderShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polyCylinder1.out" "pCylinderShape1Orig.i";
connectAttr "global_C0_ctl_tag.msg" "rig.rigCtlTags[0]";
connectAttr "control_C0_ctl_tag.msg" "rig.rigCtlTags[1]";
connectAttr "rig_sets_grp.msg" "rig.rigGroups[0]";
connectAttr "rig_controllers_grp.msg" "rig.rigGroups[1]";
connectAttr "rig_componentsRoots_grp.msg" "rig.rigGroups[2]";
connectAttr "rig_deformers_grp.msg" "rig.rigGroups[3]";
connectAttr "dagPose1.msg" "rig.rigPoses[0]";
connectAttr "rig.ctl_vis" "global_C0_ctl.v" -l on;
connectAttr "rig.ctl_vis_on_playback" "global_C0_ctl.hpb";
connectAttr "control_C0_ctl.t" "control_C0_ctl_ghost.t";
connectAttr "control_C0_ctl.s" "control_C0_ctl_ghost.s";
connectAttr "control_C0_ctl.r" "control_C0_ctl_ghost.r";
connectAttr "control_C0_ctl.isCtl" "control_C0_ctl_ghost.isCtl";
connectAttr "control_C0_ctl.uiHost" "control_C0_ctl_ghost.uiHost";
connectAttr "control_C0_ctl.invTx" "control_C0_ctl_ghost.invTx";
connectAttr "control_C0_ctl.invTy" "control_C0_ctl_ghost.invTy";
connectAttr "control_C0_ctl.invTz" "control_C0_ctl_ghost.invTz";
connectAttr "control_C0_ctl.invRx" "control_C0_ctl_ghost.invRx";
connectAttr "control_C0_ctl.invRy" "control_C0_ctl_ghost.invRy";
connectAttr "control_C0_ctl.invRz" "control_C0_ctl_ghost.invRz";
connectAttr "control_C0_ctl.invSx" "control_C0_ctl_ghost.invSx";
connectAttr "control_C0_ctl.invSy" "control_C0_ctl_ghost.invSy";
connectAttr "control_C0_ctl.invSz" "control_C0_ctl_ghost.invSz";
connectAttr "rig.jnt_vis" "jnt_org.v";
connectAttr "decomposeMatrix1.otx" "control_C0_0_jnt.tx";
connectAttr "decomposeMatrix1.oty" "control_C0_0_jnt.ty";
connectAttr "decomposeMatrix1.otz" "control_C0_0_jnt.tz";
connectAttr "decomposeMatrix2.orx" "control_C0_0_jnt.rx";
connectAttr "decomposeMatrix2.ory" "control_C0_0_jnt.ry";
connectAttr "decomposeMatrix2.orz" "control_C0_0_jnt.rz";
connectAttr "decomposeMatrix1.osx" "control_C0_0_jnt.sx";
connectAttr "decomposeMatrix1.osy" "control_C0_0_jnt.sy";
connectAttr "decomposeMatrix1.osz" "control_C0_0_jnt.sz";
connectAttr "decomposeMatrix1.osh" "control_C0_0_jnt.sh";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|guide|control_C0_root.neutralRotation" "reverse1.ix";
connectAttr "global_C0_ctl.msg" "global_C0_ctl_tag.act";
connectAttr "control_C0_ctl_tag.pare" "global_C0_ctl_tag.child[0]";
connectAttr "control_C0_ctl_ghost.msg" "control_C0_ctl_tag.act";
connectAttr "global_C0_ctl_tag.prep" "control_C0_ctl_tag.prep";
connectAttr "control_C0_ctl_ghost.wm" "mgear_mulMatrix1.mA";
connectAttr "control_C0_0_jnt.pim" "mgear_mulMatrix1.mB";
connectAttr "mgear_mulMatrix1.out" "decomposeMatrix1.imat";
connectAttr "mgear_mulMatrix1.out" "mgear_mulMatrix2.mA";
connectAttr "mgear_mulMatrix2.out" "decomposeMatrix2.imat";
connectAttr "rig_controllers_grp.msg" "rig_sets_grp.dnsm" -na;
connectAttr "rig_componentsRoots_grp.msg" "rig_sets_grp.dnsm" -na;
connectAttr "rig_deformers_grp.msg" "rig_sets_grp.dnsm" -na;
connectAttr "global_C0_ctl.iog" "rig_controllers_grp.dsm" -na;
connectAttr "control_C0_ctl.iog" "rig_controllers_grp.dsm" -na;
connectAttr "|rig|global_C0_ctl|control_C0_root.iog" "rig_componentsRoots_grp.dsm"
		 -na;
connectAttr "control_C0_0_jnt.iog" "rig_deformers_grp.dsm" -na;
connectAttr "rig.msg" "dagPose1.m[0]";
connectAttr "global_C0_ctl.msg" "dagPose1.m[1]";
connectAttr "|rig|global_C0_ctl|control_C0_root.msg" "dagPose1.m[2]";
connectAttr "control_C0_ik_cns.msg" "dagPose1.m[3]";
connectAttr "control_C0_ctl_ghost.msg" "dagPose1.m[4]";
connectAttr "dagPose1.w" "dagPose1.p[0]";
connectAttr "dagPose1.m[0]" "dagPose1.p[1]";
connectAttr "dagPose1.m[1]" "dagPose1.p[2]";
connectAttr "dagPose1.m[2]" "dagPose1.p[3]";
connectAttr "dagPose1.m[3]" "dagPose1.p[4]";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "control_C0_0_jnt.wm" "skinCluster1.ma[0]";
connectAttr "control_C0_0_jnt.liw" "skinCluster1.lw[0]";
connectAttr "control_C0_0_jnt.obcc" "skinCluster1.ifcl[0]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "rig.msg" "bindPose1.m[0]";
connectAttr "jnt_org.msg" "bindPose1.m[1]";
connectAttr "control_C0_jnt_org.msg" "bindPose1.m[2]";
connectAttr "control_C0_0_jnt.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "control_C0_0_jnt.bps" "bindPose1.wm[3]";
connectAttr "control_C0_ctl.msg" "control_C0_ctl_tag1.act";
connectAttr "rig_controllers_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "control_C0_ctl_ghost.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "control_C0_ctl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "control_C0_ctl_tag1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of 01_ghost_control_END.ma
