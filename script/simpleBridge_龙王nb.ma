//Maya ASCII 2018ff09 scene
//Name: simpleBridge_ÁúÍõnb.ma
//Last modified: Wed, Aug 25, 2021 10:37:36 AM
//Codeset: 936
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "mtoa" "3.1.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "51170349-484E-7A73-F72C-02993949B7EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.091048136963916 11.309101024809419 18.687601206633971 ;
	setAttr ".r" -type "double3" -26.738352729557672 398.59999999991339 2.0348505213278744e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9D781EDC-4663-0C14-B67A-BF9EFA17E6AA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 20.482972748997881;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "724E0C20-4C65-4BF3-7C8F-8BA8B059119A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3EB639AC-439E-B433-CCB2-FFBC978B736D";
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
	rename -uid "D5DCB74C-47FF-EC5B-532D-A89796E49066";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.10739856801909198 -4.8687350835322194 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B5559B0D-49E9-6670-3762-5491690FB50B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 22.023285353808646;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0657E9AC-4E8C-6621-24CC-C6B0ABF50F95";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -3.9261567204561385 0.21471169564994519 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D4196AD5-4D92-B6B4-EA49-6CB698FA4817";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 25.704057279236277;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "L_arm_bridge_Parent";
	rename -uid "F83687BA-4C98-3A22-D7AD-A690B8278F1F";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_arm_bridge_ParentShape" -p "L_arm_bridge_Parent";
	rename -uid "AFAD0D4F-495C-FF3B-2ABA-87855366DED5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 31;
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0 -3.5 0
		1.5543122344752192e-15 -5 3.3306690738754706e-16
		4.4408920985006262e-16 -3.5355339050292969 3.5355339050292969
		-1.1102230246251565e-15 1.1102230246251565e-16 5
		0 0 3.5
		-1.1102230246251565e-15 1.1102230246251565e-16 5
		-2.0141816681326294e-15 3.5355339050292969 3.5355339050292969
		-1.5543122344752192e-15 5 -2.2204460492503141e-16
		-4.4408920985006262e-16 3.5355339050292969 -3.5355339050292969
		1.1102230246251565e-15 -3.3306690738754696e-16 -5
		2.0141816681326294e-15 -3.5355339050292969 -3.5355339050292969
		1.5543122344752192e-15 -5 3.3306690738754706e-16
		0 -3.5 0
		;
createNode transform -n "L_arm_bridge_Follow" -p "L_arm_bridge_Parent";
	rename -uid "B2A0AE6D-4CC7-2F09-40BC-E2B691D4F588";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "L_arm_bridge_FollowShape" -p "L_arm_bridge_Follow";
	rename -uid "617AAD10-4B27-2F23-7FAA-33A708FC73B7";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 30;
	setAttr ".ls" 5;
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		-5 0 0
		;
createNode parentConstraint -n "L_arm_bridge_Follow_parentConstraint1" -p "L_arm_bridge_Follow";
	rename -uid "1F1C651F-4BCA-5B81-1458-B2A35AA6BEF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5 0 0 ;
	setAttr ".rst" -type "double3" 5 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "L_arm_bridge_Output" -p "L_arm_bridge_Parent";
	rename -uid "9C279354-4F3E-2AE0-E37C-DC97D979165B";
	addAttr -ci true -k true -sn "up" -ln "up" -at "double";
	addAttr -ci true -k true -sn "down" -ln "down" -at "double";
	addAttr -ci true -k true -sn "inner" -ln "inner" -at "double";
	addAttr -ci true -k true -sn "outer" -ln "outer" -at "double";
	addAttr -ci true -k true -sn "upInner" -ln "upInner" -at "double";
	addAttr -ci true -k true -sn "upOuter" -ln "upOuter" -at "double";
	addAttr -ci true -k true -sn "downInner" -ln "downInner" -at "double";
	addAttr -ci true -k true -sn "downOuter" -ln "downOuter" -at "double";
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
	setAttr -k on ".up";
	setAttr -k on ".down";
	setAttr -k on ".inner";
	setAttr -k on ".outer";
	setAttr -k on ".upInner";
	setAttr -k on ".upOuter";
	setAttr -k on ".downInner";
	setAttr -k on ".downOuter";
createNode pointConstraint -n "L_arm_bridge_Parent_pointConstraint1" -p "L_arm_bridge_Parent";
	rename -uid "19A675AD-4E3C-F13A-F242-5D839D268619";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "L_arm_bridge_Parent_orientConstraint1" -p "L_arm_bridge_Parent";
	rename -uid "F0316B0A-4551-53FA-D461-02A75842E8A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "curve1" -p "L_arm_bridge_Parent";
	rename -uid "68514DFD-46BC-1783-B124-ABA515A0C18A";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	rename -uid "B86DD0AC-434F-438B-5CE4-C6AC4B249A91";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		5 0 0
		4 0 -1
		5 0 0
		4 0 1
		;
createNode transform -n "curve2" -p "L_arm_bridge_Parent";
	rename -uid "A7437BA2-48D6-FF2D-E81B-CEA38D2ED390";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	rename -uid "B4D96AAD-4884-3F48-03D9-9DA49B58A889";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		5 0 0
		;
createNode transform -n "curve3" -p "L_arm_bridge_Parent";
	rename -uid "0AD2B1E5-4A56-49C1-5EA5-F288D0601B61";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	rename -uid "B19EE3CA-4B89-9DF9-1FA5-F6AC6B9B471D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		0 0 0
		0 -5 0
		0 -4 1
		0 -5 0
		0 -4 -1
		;
createNode transform -n "curve4" -p "L_arm_bridge_Parent";
	rename -uid "E0431892-4732-8C62-7E24-C7A396448A32";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	rename -uid "A310B8C3-406E-8803-36F5-CDBB1E673898";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 0
		0 0 0
		;
createNode joint -n "joint1";
	rename -uid "6D15AD46-4491-586D-E52E-FD9E5D87A453";
	setAttr ".t" -type "double3" -7 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 0.65517241379310343;
createNode joint -n "joint2" -p "joint1";
	rename -uid "0E2FDF46-40C6-FC43-1123-ADB86A40DBD2";
	setAttr ".t" -type "double3" 7 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".radi" 0.7068965517241379;
createNode joint -n "joint3" -p "joint2";
	rename -uid "5871893E-43E1-F7F1-9502-D599DF1DE06E";
	setAttr ".t" -type "double3" 6 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.7068965517241379;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "985BD570-463C-CF29-5FBE-B397EB4EDC67";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "93E631D7-44D1-81A3-C4DA-89A271CE45FF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F8322F52-40A0-61D8-0011-548521FA3BF5";
createNode displayLayerManager -n "layerManager";
	rename -uid "0693F45E-497A-F66A-6BF4-AC9FF9129DE4";
	setAttr -s 2 ".dli[1:2]"  1 2;
	setAttr -s 3 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "83D01A09-4395-A05E-DBA6-97BE9AC21FD5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "49CF212D-46FA-72E9-B196-8188741A4A40";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1E238E92-4DEE-C0F2-FBE0-0098C2ACA6B2";
	setAttr ".g" yes;
createNode angleBetween -n "L_arm_angle_angleBetween";
	rename -uid "8640D234-4477-FF02-B231-A889779A63F4";
	setAttr ".v2" -type "double3" 5 0 0 ;
createNode angleBetween -n "L_arm_plane_angleBetween";
	rename -uid "13D7183D-4ABB-44A0-545A-7B8698C3DC55";
	setAttr ".v2" -type "double3" 0 -5 0 ;
createNode condition -n "L_arm_angle_condition";
	rename -uid "6678DEC8-4832-2FBE-E2DF-75A822B0C095";
	addAttr -ci true -sn "xxx" -ln "xxx" -at "double";
	setAttr ".op" 2;
	setAttr -k on ".xxx" 131.33373729097599;
createNode unitConversion -n "unitConversion1";
	rename -uid "B47A2219-4509-460E-20E4-C0B4821A15C2";
	setAttr ".cf" -57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "6DC0F6ED-483F-F8E7-7854-D792A75B7382";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUU -n "L_arm_bridge_Output_up";
	rename -uid "84558BBC-4EAB-4F42-FD9B-9F806594D33D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -180 1 -90 0 90 0 180 1;
createNode multDoubleLinear -n "L_arm_bridge_Output_up_combo_multDoubleLinear";
	rename -uid "34D580BE-4BD9-0A7A-7491-7E9841D5E017";
createNode unitConversion -n "unitConversion3";
	rename -uid "C585232E-482E-BB11-9C9F-7BA97488E36F";
	setAttr ".cf" 57.295779513082323;
createNode animCurveUU -n "L_arm_bridge_Output_down";
	rename -uid "A6593E65-4325-6E75-AACE-9DBBDD9B98DF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -90 0 0 1 90 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_down_combo_multDoubleLinear";
	rename -uid "47B61DCD-4EAE-B8A8-D781-C6A8255DEBF8";
createNode animCurveUU -n "L_arm_bridge_Output_inner";
	rename -uid "881032BA-4AD9-A682-F377-6C9184E70D32";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -180 0 -90 1 0 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_inner_combo_multDoubleLinear";
	rename -uid "8B3B6139-49E8-AC1D-89BF-78ACBCA51838";
createNode animCurveUU -n "L_arm_bridge_Output_outer";
	rename -uid "318CBF03-4439-1106-22BB-738C45196A5F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 90 1 180 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_outer_combo_multDoubleLinear";
	rename -uid "B5812F64-4672-11AB-EFA4-B89BA1FDE5D8";
createNode animCurveUU -n "L_arm_bridge_Output_upInner";
	rename -uid "469D808F-41FE-01A3-ABCB-BE818F14C7C9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -180 0 -135 1 -90 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_upInner_combo_multDoubleLinear";
	rename -uid "192CB7AC-4F48-E864-71FF-DE8F462E198F";
createNode animCurveUU -n "L_arm_bridge_Output_upOuter";
	rename -uid "05B7AAF1-4BF2-E41E-1507-6D8A3524686B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  90 0 135 1 180 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_upOuter_combo_multDoubleLinear";
	rename -uid "2D8E85CB-4C56-E625-1CAA-73BF9168F121";
createNode animCurveUU -n "L_arm_bridge_Output_downInner";
	rename -uid "177FD8D9-4CFE-71CB-A810-B5A3E6321D2A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  -90 0 -45 1 0 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_downInner_combo_multDoubleLinear";
	rename -uid "87117D2A-4845-0E22-93B6-D99F28805E4E";
createNode animCurveUU -n "L_arm_bridge_Output_downOuter";
	rename -uid "AB8A6F5E-4ECF-6302-C9E0-049D4B79A564";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 45 1 90 0;
createNode multDoubleLinear -n "L_arm_bridge_Output_downOuter_combo_multDoubleLinear";
	rename -uid "E3F74FB2-4C37-4FD5-77C4-CCB0CCD128A1";
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C2CC7B40-4B0A-4BF9-68C0-B095E982AA37";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "layer1";
	rename -uid "370075DB-4E29-9C74-A9FF-B783CF494D3B";
	setAttr ".c" 17;
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	rename -uid "E5E274A7-45EF-5E16-5C00-E494770F9596";
	setAttr ".c" 14;
	setAttr ".do" 2;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "10C214DB-4EED-3525-6A0F-9286689DBBD8";
	setAttr -s 2 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 8820.0737245791479 688.04234548123281 ;
	setAttr ".tgi[0].vh" -type "double2" 10032.553835129675 1374.3518420192675 ;
	setAttr -s 24 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 9744.2744140625;
	setAttr ".tgi[0].ni[0].y" 817.65484619140625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 9982.6611328125;
	setAttr ".tgi[0].ni[1].y" 569.0286865234375;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 8888.78515625;
	setAttr ".tgi[0].ni[2].y" 839.1490478515625;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 10016.8603515625;
	setAttr ".tgi[0].ni[3].y" 965.19525146484375;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 8534.056640625;
	setAttr ".tgi[0].ni[4].y" 781.04705810546875;
	setAttr ".tgi[0].ni[4].nvs" 18306;
	setAttr ".tgi[0].ni[5].x" 9620.1181640625;
	setAttr ".tgi[0].ni[5].y" 297.89111328125;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 9621.92578125;
	setAttr ".tgi[0].ni[6].y" 1318.1700439453125;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 10006.748046875;
	setAttr ".tgi[0].ni[7].y" 1093.05908203125;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 9626.982421875;
	setAttr ".tgi[0].ni[8].y" 572.80084228515625;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 8276.1474609375;
	setAttr ".tgi[0].ni[9].y" 1047.982666015625;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" 9206.4736328125;
	setAttr ".tgi[0].ni[10].y" 904.8973388671875;
	setAttr ".tgi[0].ni[10].nvs" 18306;
	setAttr ".tgi[0].ni[11].x" 9967.626953125;
	setAttr ".tgi[0].ni[11].y" 688.45281982421875;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 8926.9462890625;
	setAttr ".tgi[0].ni[12].y" 1276.574462890625;
	setAttr ".tgi[0].ni[12].nvs" 18306;
	setAttr ".tgi[0].ni[13].x" 10005.8876953125;
	setAttr ".tgi[0].ni[13].y" 1200.731201171875;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 9619.234375;
	setAttr ".tgi[0].ni[14].y" 441.63897705078125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 9975.796875;
	setAttr ".tgi[0].ni[15].y" 1308.87255859375;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 8901.3291015625;
	setAttr ".tgi[0].ni[16].y" 613.281982421875;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 9627.30859375;
	setAttr ".tgi[0].ni[17].y" 1090.659423828125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 9970.18359375;
	setAttr ".tgi[0].ni[18].y" 440.80618286132813;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 9621.92578125;
	setAttr ".tgi[0].ni[19].y" 672.2470703125;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 9982.4853515625;
	setAttr ".tgi[0].ni[20].y" 303.55593872070313;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" 9625.962890625;
	setAttr ".tgi[0].ni[21].y" 962.66107177734375;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 9625.8603515625;
	setAttr ".tgi[0].ni[22].y" 1197.65869140625;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" 10590.51953125;
	setAttr ".tgi[0].ni[23].y" 1190.63037109375;
	setAttr ".tgi[0].ni[23].nvs" 18306;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" 290.95876495740612 -120.19818127896819 ;
	setAttr ".tgi[1].vh" -type "double2" 1048.101600862979 308.37323527135595 ;
	setAttr ".tgi[1].ni[0].x" 411.42855834960938;
	setAttr ".tgi[1].ni[0].y" 185.71427917480469;
	setAttr ".tgi[1].ni[0].nvs" 18304;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".tmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av ".hfc";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr -av ".msaa";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -k on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -cb on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "L_arm_bridge_Parent_pointConstraint1.ctx" "L_arm_bridge_Parent.tx";
connectAttr "L_arm_bridge_Parent_pointConstraint1.cty" "L_arm_bridge_Parent.ty";
connectAttr "L_arm_bridge_Parent_pointConstraint1.ctz" "L_arm_bridge_Parent.tz";
connectAttr "L_arm_bridge_Parent_orientConstraint1.crx" "L_arm_bridge_Parent.rx"
		;
connectAttr "L_arm_bridge_Parent_orientConstraint1.cry" "L_arm_bridge_Parent.ry"
		;
connectAttr "L_arm_bridge_Parent_orientConstraint1.crz" "L_arm_bridge_Parent.rz"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.ctx" "L_arm_bridge_Follow.tx"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.cty" "L_arm_bridge_Follow.ty"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.ctz" "L_arm_bridge_Follow.tz"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.crx" "L_arm_bridge_Follow.rx"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.cry" "L_arm_bridge_Follow.ry"
		;
connectAttr "L_arm_bridge_Follow_parentConstraint1.crz" "L_arm_bridge_Follow.rz"
		;
connectAttr "L_arm_bridge_Follow.ro" "L_arm_bridge_Follow_parentConstraint1.cro"
		;
connectAttr "L_arm_bridge_Follow.pim" "L_arm_bridge_Follow_parentConstraint1.cpim"
		;
connectAttr "L_arm_bridge_Follow.rp" "L_arm_bridge_Follow_parentConstraint1.crp"
		;
connectAttr "L_arm_bridge_Follow.rpt" "L_arm_bridge_Follow_parentConstraint1.crt"
		;
connectAttr "joint2.t" "L_arm_bridge_Follow_parentConstraint1.tg[0].tt";
connectAttr "joint2.rp" "L_arm_bridge_Follow_parentConstraint1.tg[0].trp";
connectAttr "joint2.rpt" "L_arm_bridge_Follow_parentConstraint1.tg[0].trt";
connectAttr "joint2.r" "L_arm_bridge_Follow_parentConstraint1.tg[0].tr";
connectAttr "joint2.ro" "L_arm_bridge_Follow_parentConstraint1.tg[0].tro";
connectAttr "joint2.s" "L_arm_bridge_Follow_parentConstraint1.tg[0].ts";
connectAttr "joint2.pm" "L_arm_bridge_Follow_parentConstraint1.tg[0].tpm";
connectAttr "joint2.jo" "L_arm_bridge_Follow_parentConstraint1.tg[0].tjo";
connectAttr "joint2.ssc" "L_arm_bridge_Follow_parentConstraint1.tg[0].tsc";
connectAttr "joint2.is" "L_arm_bridge_Follow_parentConstraint1.tg[0].tis";
connectAttr "L_arm_bridge_Follow_parentConstraint1.w0" "L_arm_bridge_Follow_parentConstraint1.tg[0].tw"
		;
connectAttr "L_arm_bridge_Output_up_combo_multDoubleLinear.o" "L_arm_bridge_Output.up"
		;
connectAttr "L_arm_bridge_Output_down_combo_multDoubleLinear.o" "L_arm_bridge_Output.down"
		;
connectAttr "L_arm_bridge_Output_inner_combo_multDoubleLinear.o" "L_arm_bridge_Output.inner"
		;
connectAttr "L_arm_bridge_Output_outer_combo_multDoubleLinear.o" "L_arm_bridge_Output.outer"
		;
connectAttr "L_arm_bridge_Output_upInner_combo_multDoubleLinear.o" "L_arm_bridge_Output.upInner"
		;
connectAttr "L_arm_bridge_Output_upOuter_combo_multDoubleLinear.o" "L_arm_bridge_Output.upOuter"
		;
connectAttr "L_arm_bridge_Output_downInner_combo_multDoubleLinear.o" "L_arm_bridge_Output.downInner"
		;
connectAttr "L_arm_bridge_Output_downOuter_combo_multDoubleLinear.o" "L_arm_bridge_Output.downOuter"
		;
connectAttr "L_arm_bridge_Parent.pim" "L_arm_bridge_Parent_pointConstraint1.cpim"
		;
connectAttr "L_arm_bridge_Parent.rp" "L_arm_bridge_Parent_pointConstraint1.crp";
connectAttr "L_arm_bridge_Parent.rpt" "L_arm_bridge_Parent_pointConstraint1.crt"
		;
connectAttr "joint2.t" "L_arm_bridge_Parent_pointConstraint1.tg[0].tt";
connectAttr "joint2.rp" "L_arm_bridge_Parent_pointConstraint1.tg[0].trp";
connectAttr "joint2.rpt" "L_arm_bridge_Parent_pointConstraint1.tg[0].trt";
connectAttr "joint2.pm" "L_arm_bridge_Parent_pointConstraint1.tg[0].tpm";
connectAttr "L_arm_bridge_Parent_pointConstraint1.w0" "L_arm_bridge_Parent_pointConstraint1.tg[0].tw"
		;
connectAttr "L_arm_bridge_Parent.ro" "L_arm_bridge_Parent_orientConstraint1.cro"
		;
connectAttr "L_arm_bridge_Parent.pim" "L_arm_bridge_Parent_orientConstraint1.cpim"
		;
connectAttr "joint1.r" "L_arm_bridge_Parent_orientConstraint1.tg[0].tr";
connectAttr "joint1.ro" "L_arm_bridge_Parent_orientConstraint1.tg[0].tro";
connectAttr "joint1.pm" "L_arm_bridge_Parent_orientConstraint1.tg[0].tpm";
connectAttr "joint1.jo" "L_arm_bridge_Parent_orientConstraint1.tg[0].tjo";
connectAttr "L_arm_bridge_Parent_orientConstraint1.w0" "L_arm_bridge_Parent_orientConstraint1.tg[0].tw"
		;
connectAttr "layer1.di" "curve1.do";
connectAttr "layer1.di" "curve2.do";
connectAttr "L_arm_bridge_Follow.t" "curveShape2.cp[1]";
connectAttr "layer2.di" "curve3.do";
connectAttr "layer2.di" "curve4.do";
connectAttr "L_arm_plane_angleBetween.v1" "curveShape4.cp[1]";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "L_arm_bridge_Follow.tx" "L_arm_angle_angleBetween.v1x";
connectAttr "L_arm_bridge_Follow.ty" "L_arm_angle_angleBetween.v1y";
connectAttr "L_arm_bridge_Follow.tz" "L_arm_angle_angleBetween.v1z";
connectAttr "L_arm_bridge_Follow.ty" "L_arm_plane_angleBetween.v1y";
connectAttr "L_arm_bridge_Follow.tz" "L_arm_plane_angleBetween.v1z";
connectAttr "L_arm_bridge_Follow.tz" "L_arm_angle_condition.ft";
connectAttr "unitConversion1.o" "L_arm_angle_condition.ctr";
connectAttr "unitConversion2.o" "L_arm_angle_condition.cfr";
connectAttr "L_arm_plane_angleBetween.a" "unitConversion1.i";
connectAttr "L_arm_plane_angleBetween.a" "unitConversion2.i";
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_up.i";
connectAttr "L_arm_bridge_Output_up.o" "L_arm_bridge_Output_up_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_up_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_angleBetween.a" "unitConversion3.i";
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_down.i";
connectAttr "L_arm_bridge_Output_down.o" "L_arm_bridge_Output_down_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_down_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_inner.i";
connectAttr "L_arm_bridge_Output_inner.o" "L_arm_bridge_Output_inner_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_inner_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_outer.i";
connectAttr "L_arm_bridge_Output_outer.o" "L_arm_bridge_Output_outer_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_outer_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_upInner.i";
connectAttr "L_arm_bridge_Output_upInner.o" "L_arm_bridge_Output_upInner_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_upInner_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_upOuter.i";
connectAttr "L_arm_bridge_Output_upOuter.o" "L_arm_bridge_Output_upOuter_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_upOuter_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_downInner.i";
connectAttr "L_arm_bridge_Output_downInner.o" "L_arm_bridge_Output_downInner_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_downInner_combo_multDoubleLinear.i2"
		;
connectAttr "L_arm_angle_condition.ocr" "L_arm_bridge_Output_downOuter.i";
connectAttr "L_arm_bridge_Output_downOuter.o" "L_arm_bridge_Output_downOuter_combo_multDoubleLinear.i1"
		;
connectAttr "unitConversion3.o" "L_arm_bridge_Output_downOuter_combo_multDoubleLinear.i2"
		;
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[2]" "layer2.id";
connectAttr "unitConversion3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "L_arm_bridge_Output_upInner_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "unitConversion2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "L_arm_bridge_Output_outer_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "L_arm_plane_angleBetween.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "L_arm_bridge_Output_downInner.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "L_arm_bridge_Output_up.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "L_arm_bridge_Output_inner_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "L_arm_bridge_Output_upInner.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "L_arm_bridge_Follow.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "L_arm_angle_condition.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "L_arm_bridge_Output_upOuter_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "L_arm_angle_angleBetween.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "L_arm_bridge_Output_down_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "L_arm_bridge_Output_downOuter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "L_arm_bridge_Output_up_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "unitConversion1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "L_arm_bridge_Output_inner.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "L_arm_bridge_Output_downOuter_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "L_arm_bridge_Output_upOuter.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "L_arm_bridge_Output_downInner_combo_multDoubleLinear.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "L_arm_bridge_Output_outer.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "L_arm_bridge_Output_down.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "L_arm_bridge_Output.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "joint2.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of simpleBridge_ÁúÍõnb.ma
