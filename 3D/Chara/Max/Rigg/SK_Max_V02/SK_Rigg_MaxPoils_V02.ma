//Maya ASCII 2023 scene
//Name: MC_Poils_Skin_SMOOTH_Finale.ma
//Last modified: Wed, Dec 13, 2023 09:47:17 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Education v2009 (Build: 22621)";
fileInfo "UUID" "9CFDB171-439B-2728-F248-A1B6D094273B";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "26079A3B-4529-6C70-5653-5BB54C75065D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.332668863086 58.470988201103637 66.642201553186666 ;
	setAttr ".r" -type "double3" 1050.8616472635301 1493.7999999996675 2.6926211987226371e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C1FECBD4-4BE1-BEF4-7BCB-E6BD8030F9E0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 148.51223691007567;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.0733632116455283e-07 -1.2277843719994523 -8.5768273107507405 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D3610E7C-42E4-4474-03CC-9F8B000FBAB0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "02A4448F-4857-FD0B-72CC-F4A89E29B97C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 82.199380792592748;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "BF13733F-45E9-F354-EBEC-9A99360BA4E1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.4170814943490555 -0.96131282052520106 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BAD8102A-4B08-AA04-4D3B-26AC3DCDC60F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 68.493031285323681;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E1EFBA06-40F0-5652-F0F6-F58262D956DD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -1.9575625292584755 -5.7033625110449044 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BBF654E9-4EB2-72C5-9991-0DA452948808";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 69.44454021441328;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "47CFABB6-47B5-C6B4-27E2-E2B487F28742";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FitSkeleton" -p "Group";
	rename -uid "F14B61FF-4DD8-1555-C9EF-A9B33CA8861A";
	addAttr -is true -ci true -k true -sn "visCylinders" -ln "visCylinders" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "lockCenterJoints" -ln "lockCenterJoints" 
		-min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visGap" -ln "visGap" -smn 0 -smx 1 -at "double";
	addAttr -is true -ci true -k true -sn "drivingSystem_Fingers_R" -ln "drivingSystem_Fingers_R" 
		-min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "drivingSystem_Fingers_L" -ln "drivingSystem_Fingers_L" 
		-min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "fitSkeletonTemplate" -ln "fitSkeletonTemplate" 
		-dt "string";
	addAttr -is true -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 
		3 -en "cylinders:boxes:spheres:bones" -at "enum";
	addAttr -is true -ci true -k true -sn "visSpheres" -ln "visSpheres" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 
		-max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 
		0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -is true -ci true -k true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -is true -ci true -k true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -is true -ci true -k true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -is true -ci true -k true -sn "gameEngine" -ln "gameEngine" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "zUpAxis" -ln "zUpAxis" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "mirTrans" -ln "mirTrans" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -k true -sn "primaryAxis" -ln "primaryAxis" -min 0 -max 
		5 -en "X:Y:Z:-X:-Y:-Z" -at "enum";
	addAttr -is true -ci true -k true -sn "secondaryAxis" -ln "secondaryAxis" -min 0 
		-max 5 -en "X:Y:Z:-X:-Y:-Z" -at "enum";
	addAttr -is true -ci true -k true -sn "worldmatch" -ln "worldmatch" -min 0 -max 
		1 -at "bool";
	addAttr -is true -ci true -k true -sn "preRebuildScript" -ln "preRebuildScript" 
		-dt "string";
	addAttr -is true -ci true -k true -sn "postRebuildScript" -ln "postRebuildScript" 
		-dt "string";
	setAttr -l on ".v" no;
	setAttr -l on ".t";
	setAttr -l on ".r";
	setAttr -k on ".visCylinders" yes;
	setAttr -k on ".lockCenterJoints" yes;
	setAttr -k on ".visGap" 1;
	setAttr -k on ".fitSkeletonTemplate" -type "string" "biped";
	setAttr -k on ".objectsSkin" -type "string" "";
	setAttr -k on ".objectsAll" -type "string" "";
	setAttr -k on ".objectsRightEye" -type "string" "";
	setAttr -k on ".objectsLeftEye" -type "string" "";
	setAttr -k on ".secondaryAxis" 1;
	setAttr -k on ".preRebuildScript" -type "string" "";
	setAttr -k on ".postRebuildScript" -type "string" "";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "3A42F22B-4D78-68C5-D7C7-039AB2B857C1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.576290331951558 1.6885607843691263e-15 -27.576290331951515
		-4.4492926383818661e-15 2.3879855621461714e-15 -38.998763787383915
		-27.576290331951533 1.6885607843691273e-15 -27.576290331951533
		-38.998763787383915 6.9197847322822231e-31 -1.1300866073548792e-14
		-27.576290331951537 -1.6885607843691267e-15 27.576290331951522
		-1.1751088633628205e-14 -2.3879855621461718e-15 38.998763787383929
		27.576290331951515 -1.6885607843691273e-15 27.576290331951533
		38.998763787383915 -1.2825917037544491e-30 2.0946312106436559e-14
		27.576290331951558 1.6885607843691263e-15 -27.576290331951515
		-4.4492926383818661e-15 2.3879855621461714e-15 -38.998763787383915
		-27.576290331951533 1.6885607843691273e-15 -27.576290331951533
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "8BC250A6-4038-AC98-7537-AF95F3A18076";
	addAttr -is true -ci true -k true -sn "fatYabs" -ln "fatYabs" -smn 1 -smx 1 -at "double";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 3.7537357477944666 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".ro" 5;
	setAttr ".jo" -type "double3" -90 81.853378872973877 -90 ;
	setAttr ".pa" -type "double3" -1.7940447748746266e-16 6.8425179703803005e-15 0 ;
	setAttr ".radi" 0.89123485899882415;
	setAttr -k on ".fatYabs" 1;
	setAttr ".fbxID" 5;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Hairs1" -p "Root";
	rename -uid "ECA941E4-4BDD-D8BE-043D-74AC4BB90169";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "partControllers" -ln "partControllers" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 17.183742023644573 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 8.6642611446427864 4.7310078505811577e-15 -1.8932661725304283e-29 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -43.364070010919924 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "0";
	setAttr ".radi" 1.3452722871614304;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Hairs2" -p "Hairs1";
	rename -uid "7F84F679-4416-D740-F310-4BB99FC9E076";
	addAttr -ci true -k true -sn "inbetweenJoints" -ln "inbetweenJoints" -dv 2 -min 
		0 -at "long";
	addAttr -ci true -k true -sn "unTwister" -ln "unTwister" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "partControllers" -ln "partControllers" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 19.056290100849768 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 17.183742023644573 -4.4408920985006262e-15 6.3108872417680944e-30 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -24.829483470752336 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "1";
	setAttr ".radi" 1.5490313140540517;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Hairs3" -p "Hairs2";
	rename -uid "8DA15B97-4C3F-3706-ED14-32A44A85DD6F";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 19.056290100849768 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 19.056290100849775 1.0658141036401503e-14 0 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dl" yes;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "2";
	setAttr ".radi" 1.1112195063451209;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "FF8A21C6-4B8D-6334-B2A0-EBAC17E5DACD";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "BE0D9902-4A1D-D0C3-D69C-5BB463B53F1E";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "C7E2D124-4802-2322-E40E-B38C8CC5999B";
	addAttr -ci true -sn "fkVis" -ln "fkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikVis" -ln "ikVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fkIkVis" -ln "fkIkVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimVis" -ln "aimVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimFKVis" -ln "aimFKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "aimLRVis" -ln "aimLRVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fingerVis" -ln "fingerVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "bendVis" -ln "bendVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "arrowVis" -ln "arrowVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "drvSysVis" -ln "drvSysVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "jointVis" -ln "jointVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "primaryAxis" -ln "primaryAxis" -min 0 -max 5 -en "X:Y:Z:-X:-Y:-Z" 
		-at "enum";
	addAttr -ci true -sn "secondaryAxis" -ln "secondaryAxis" -min 0 -max 5 -en "X:Y:Z:-X:-Y:-Z" 
		-at "enum";
	addAttr -ci true -sn "worldmatch" -ln "worldmatch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirTrans" -ln "mirTrans" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "height" -ln "height" -at "double";
	addAttr -ci true -sn "version" -ln "version" -at "double";
	setAttr ".sech" no;
	setAttr -cb on ".fkVis";
	setAttr -cb on ".ikVis";
	setAttr -cb on ".fkIkVis";
	setAttr -cb on ".aimVis";
	setAttr -cb on ".aimFKVis";
	setAttr -cb on ".aimLRVis";
	setAttr -cb on ".fingerVis";
	setAttr -cb on ".bendVis";
	setAttr -cb on ".arrowVis";
	setAttr -cb on ".drvSysVis";
	setAttr -cb on ".jointVis";
	setAttr ".secondaryAxis" 1;
	setAttr -l on ".height" 33.195198775834356;
	setAttr -l on ".version" 6;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "67D78AC5-47A4-55C2-F35E-5F92B74E2A33";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		27.576290331951558 1.6885607843691263e-15 -27.576290331951515
		-4.4492926383818661e-15 2.3879855621461714e-15 -38.998763787383915
		-27.576290331951533 1.6885607843691273e-15 -27.576290331951533
		-38.998763787383915 6.9197847322822231e-31 -1.1300866073548792e-14
		-27.576290331951537 -1.6885607843691267e-15 27.576290331951522
		-1.1751088633628205e-14 -2.3879855621461718e-15 38.998763787383929
		27.576290331951515 -1.6885607843691273e-15 27.576290331951533
		38.998763787383915 -1.2825917037544491e-30 2.0946312106436559e-14
		27.576290331951558 1.6885607843691263e-15 -27.576290331951515
		-4.4492926383818661e-15 2.3879855621461714e-15 -38.998763787383915
		-27.576290331951533 1.6885607843691273e-15 -27.576290331951533
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "4FDF02F0-4149-AFFA-B837-BAB12A861891";
createNode transform -n "FKFollowRoot" -p "FKSystem";
	rename -uid "243DFBA6-406A-52D6-4F19-C6A1CBE5CB01";
createNode parentConstraint -n "FKFollowRoot_parentConstraint1" -p "FKFollowRoot";
	rename -uid "BDFA0672-4EAF-58C7-1C21-1D91FB1B883B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RootX_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetRoot_M" -p "FKFollowRoot";
	rename -uid "2653F730-4BAC-A737-E50B-8782AE45E886";
	setAttr ".r" -type "double3" 0 89.999999644199633 -8.1466211270261368 ;
	setAttr ".ro" 5;
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "5ACEFC3B-461C-FC24-21B3-A9B3F85F5BF2";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "59B8B4F2-4DA6-A89E-1A98-3B85CB1B4E72";
	setAttr ".sech" no;
	setAttr ".ro" 5;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "C115CF33-403B-4790-8A11-029768981014";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-21.837826662314338 -3.1302579248114784 -22.061033248901367
		3.5986543752884843e-15 1.0659048763933454e-15 -31.19901180267334
		21.837826662314338 3.1302579248114792 -22.061033248901367
		30.883350026962525 4.4268531233218287 -9.7243575157882335e-15
		21.837826662314338 3.1302579248114792 22.061033248901367
		1.0474638411597331e-14 2.051515938032393e-15 31.19901180267334
		-21.837826662314338 -3.1302579248114784 22.061033248901367
		-30.883350026962525 -4.4268531233218269 1.6756986203221041e-14
		-21.837826662314338 -3.1302579248114784 -22.061033248901367
		3.5986543752884843e-15 1.0659048763933454e-15 -31.19901180267334
		21.837826662314338 3.1302579248114792 -22.061033248901367
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "09401ACF-407C-DC3A-B87C-A88F125D2EE9";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKParentConstraintToRoot_M" -p "FKSystem";
	rename -uid "946225E1-4EC1-5063-808E-A9BD2B626F53";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode parentConstraint -n "FKParentConstraintToRoot_M_parentConstraint1" -p "FKParentConstraintToRoot_M";
	rename -uid "3D407125-4F4D-F0F2-E5DF-C790E88A097F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr ".rsrr" -type "double3" -90 81.853378872973877 -90 ;
	setAttr -k on ".w0";
createNode transform -n "FKOffsetHairs1_M" -p "FKParentConstraintToRoot_M";
	rename -uid "E417FD31-41A0-9D67-A334-4CA207FE491C";
	setAttr ".t" -type "double3" 8.6642611446427882 4.508963245656128e-15 -5.3668180211070286e-08 ;
	setAttr ".r" -type "double3" 0 0 -43.364070010919932 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode transform -n "FKExtraHairs1_M" -p "FKOffsetHairs1_M";
	rename -uid "4ED3DA7E-48D3-2AF5-02E5-32BB731F0576";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs1_M" -p "FKExtraHairs1_M";
	rename -uid "E2182BFC-4513-FCA0-A8C1-E68E84E73095";
	addAttr -ci true -k true -sn "w0" -ln "w0" -dv 3.3333333333333335 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "w1" -dv 6.666666666666667 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "w2" -ln "w2" -dv 10 -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode nurbsCurve -n "FKHairs1_MShape" -p "FKHairs1_M";
	rename -uid "4B55CA66-4542-5C99-C736-DBA0FC71BB34";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.0095324071394209 -3.1482188242558045 -11.108938792019252
		1.6557570941023268e-15 1.031062676085104e-15 -15.710411453247072
		-4.0095324029884818 3.1482188209552913 -11.108938786716102
		-5.6703349449517768 4.4522536297821791 3.7498771667452493e-09
		-4.0095324071393854 3.1482188242558129 11.108938792019252
		-1.7723209162898661e-15 3.741144913926028e-15 15.710411453247072
		4.0095324029885102 -3.1482188209552873 11.108938786716102
		5.6703349449518035 -4.4522536297821746 -3.7498736254315065e-09
		4.0095324071394209 -3.1482188242558045 -11.108938792019252
		1.6557570941023268e-15 1.031062676085104e-15 -15.710411453247072
		-4.0095324029884818 3.1482188209552913 -11.108938786716102
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs1_M" -p "FKExtraHairs1_M";
	rename -uid "C1867BDA-4C2E-8540-C613-559CC907D0C0";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 3.3087224502121107e-24 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "AlignIKToHairs1_M" -p "FKXHairs1_M";
	rename -uid "D3D21460-4C0F-7359-D458-48B5E5E0CCCC";
	setAttr ".r" -type "double3" 51.510691137946068 -89.999999644199619 0 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "FKOffsetHairs1Part1_M" -p "FKXHairs1_M";
	rename -uid "D5DE28D9-4677-3C45-8EE1-FB8BC9DBABBA";
createNode transform -n "FKInbetweenHairs1Part1_M" -p "FKOffsetHairs1Part1_M";
	rename -uid "CB122824-4824-F271-04FB-C8A9AE2CF32B";
createNode transform -n "FKExtraHairs1Part1_M" -p "FKInbetweenHairs1Part1_M";
	rename -uid "21DBDD1D-4937-326B-77FB-62A006D8DCD0";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs1Part1_M" -p "FKExtraHairs1Part1_M";
	rename -uid "D6386E6B-4DC8-607C-51C5-FD8C9FF2CCF3";
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHairs1Part1_MShape" -p "FKHairs1Part1_M";
	rename -uid "7EFD0D77-4A21-4F41-B305-C89A1E4FBB79";
	setAttr -l on -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 0.10000000000000001 0.20000000000000001 0.29999999999999999 0.40000000000000002
		 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.90000000000000002
		 1
		11
		3.0549225467197167e-23 -20.931745529174805 -20.931745529174805
		3.7721056568261748e-23 1.734050614179332e-15 -29.601957321166992
		3.0549225467197167e-23 20.931745529174805 -20.931745529174805
		-1.186246095113714e-14 29.601957321166992 -9.2265748874117461e-15
		-4.0794442877784706e-24 20.931745529174805 20.931745529174805
		-1.1251275388843052e-23 1.1611218273487305e-14 29.601957321166992
		-4.0794442877784706e-24 -20.931745529174805 20.931745529174805
		1.186246095113714e-14 -29.601957321166992 1.5899209913580216e-14
		3.0549225467197167e-23 -20.931745529174805 -20.931745529174805
		3.7721056568261748e-23 1.734050614179332e-15 -29.601957321166992
		3.0549225467197167e-23 -20.931745529174805 -20.931745529174805
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs1Part1_M" -p "FKHairs1Part1_M";
	rename -uid "3EA8DCF0-4C15-B704-D144-DE8E8843078C";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetHairs1Part2_M" -p "FKXHairs1Part1_M";
	rename -uid "E21196EF-4CE6-7FB0-C373-2EA64F44611D";
createNode transform -n "FKInbetweenHairs1Part2_M" -p "FKOffsetHairs1Part2_M";
	rename -uid "4DA0A1FB-418F-A9E1-FFDD-6685F59B881E";
createNode transform -n "FKExtraHairs1Part2_M" -p "FKInbetweenHairs1Part2_M";
	rename -uid "8D3C7EF1-4C8F-96D2-C1DB-CE914E00ED04";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 8.8817841970012523e-16 2.6469779601696886e-23 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs1Part2_M" -p "FKExtraHairs1Part2_M";
	rename -uid "004E149A-49F6-7B94-F686-F48241081083";
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHairs1Part2_MShape" -p "FKHairs1Part2_M";
	rename -uid "48B40739-40A2-B8FA-DBD3-0EB2FCE0BE2D";
	setAttr -l on -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 0.10000000000000001 0.20000000000000001 0.29999999999999999 0.40000000000000002
		 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.90000000000000002
		 1
		11
		-1.3234889800848443e-23 -21.665420532226562 -21.665420532226562
		-1.3234889800848443e-23 3.4956662215611606e-15 -30.639532089233398
		-1.3234889800848443e-23 21.665420532226562 -21.665420532226562
		-1.2278249943186489e-14 30.639532089233398 -9.5499746077722797e-15
		-1.3234889800848443e-23 21.665420532226562 21.665420532226562
		-1.3234889800848443e-23 1.0317365282160994e-14 30.639532089233398
		-1.3234889800848443e-23 -21.665420532226562 21.665420532226562
		1.2278249943186489e-14 -30.639532089233398 1.6456489830237765e-14
		-1.3234889800848443e-23 -21.665420532226562 -21.665420532226562
		-1.3234889800848443e-23 3.4956662215611606e-15 -30.639532089233398
		-1.3234889800848443e-23 -21.665420532226562 -21.665420532226562
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs1Part2_M" -p "FKHairs1Part2_M";
	rename -uid "EC3C5A40-49CC-72A8-9841-80B169A3C086";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetHairs2_M" -p "FKXHairs1Part2_M";
	rename -uid "93F34E97-43A5-7AC0-FCA3-DB80A819E767";
	setAttr ".r" -type "double3" 0 0 -24.829482746329298 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "FKExtraHairs2_M" -p "FKOffsetHairs2_M";
	rename -uid "91AAACFF-46B1-EEA7-3825-E6AD0DB77A0E";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs2_M" -p "FKExtraHairs2_M";
	rename -uid "184CB6E0-4120-EF46-6E9E-A98DF89E9B2F";
	addAttr -ci true -k true -sn "w0" -ln "w0" -dv 3.3333333333333335 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "w1" -ln "w1" -dv 6.666666666666667 -min 0 -max 10 
		-at "double";
	addAttr -ci true -k true -sn "w2" -ln "w2" -dv 10 -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr ".smd" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
	setAttr -k on ".w2";
createNode nurbsCurve -n "FKHairs2_MShape" -p "FKHairs2_M";
	rename -uid "7A02091C-4FB1-DC23-9076-98BFEFF8D265";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -4.2596958003972958 -10.079592990875245
		0 3.5803119180461774e-15 -14.254697227478028
		0 4.2596958003972984 -10.079592990875245
		-5.7123175208561272e-15 6.0241196217735986 -4.4430180592157505e-15
		0 4.2596958003972984 10.079592990875245
		0 6.7540305301799302e-15 14.254697227478028
		0 -4.2596958003972958 10.079592990875245
		5.7123175208561272e-15 -6.0241196217735977 7.6561971557117337e-15
		0 -4.2596958003972958 -10.079592990875245
		0 3.5803119180461774e-15 -14.254697227478028
		0 4.2596958003972984 -10.079592990875245
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs2_M" -p "FKExtraHairs2_M";
	rename -uid "A376F234-44F2-1D33-C42E-6583DC172F61";
	setAttr ".t" -type "double3" 0 0 -6.6174575221987049e-24 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -9.4787915988669299e-23 1.1848489498583662e-23 0 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetHairs2Part1_M" -p "FKXHairs2_M";
	rename -uid "2CFD77B6-4C15-D07C-659B-97A8D0980B35";
createNode transform -n "FKInbetweenHairs2Part1_M" -p "FKOffsetHairs2Part1_M";
	rename -uid "A7C394DD-4FEE-E07F-0637-1F82BD481134";
createNode transform -n "FKExtraHairs2Part1_M" -p "FKInbetweenHairs2Part1_M";
	rename -uid "AF29B7B3-43D8-FADD-BDDE-0FB9EB6A03F8";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.3234902422622926e-23 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs2Part1_M" -p "FKExtraHairs2Part1_M";
	rename -uid "A4E16B95-431D-5F41-E369-DC9B9824DDCF";
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHairs2Part1_MShape" -p "FKHairs2Part1_M";
	rename -uid "8FCD394C-4F20-94DA-1A58-CE843E6323E2";
	setAttr -l on -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 0.10000000000000001 0.20000000000000001 0.29999999999999999 0.40000000000000002
		 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.90000000000000002
		 1
		11
		0 -22.39909553527832 -22.39909553527832
		0 7.1667567781469495e-15 -31.677104949951172
		0 22.39909553527832 -22.39909553527832
		-1.2694038935235838e-14 31.677104949951172 -9.8733734810998661e-15
		0 22.39909553527832 22.39909553527832
		0 1.4219463958077896e-14 31.677104949951172
		0 -22.39909553527832 22.39909553527832
		1.2694038935235838e-14 -31.677104949951172 1.7013771440961209e-14
		0 -22.39909553527832 -22.39909553527832
		0 7.1667567781469495e-15 -31.677104949951172
		0 -22.39909553527832 -22.39909553527832
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs2Part1_M" -p "FKHairs2Part1_M";
	rename -uid "A1C0BD15-4921-3DF7-B6AF-4088AE4C88C3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "FKOffsetHairs2Part2_M" -p "FKXHairs2Part1_M";
	rename -uid "1C2551CA-44B5-3E08-51B0-2FA6196EDA1D";
createNode transform -n "FKInbetweenHairs2Part2_M" -p "FKOffsetHairs2Part2_M";
	rename -uid "774D6049-4046-A56E-A732-27B17A7E26C5";
createNode transform -n "FKExtraHairs2Part2_M" -p "FKInbetweenHairs2Part2_M";
	rename -uid "D17BEA9D-4EAA-8014-911F-A8AA36DF1888";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 -1.9852347323047148e-23 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKHairs2Part2_M" -p "FKExtraHairs2Part2_M";
	rename -uid "2EAD5AAE-4A19-EB6F-FEBD-87B5F8B4D8C9";
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKHairs2Part2_MShape" -p "FKHairs2Part2_M";
	rename -uid "1F5EAC72-47EE-B377-CB98-589E05FC410C";
	setAttr -l on -k off ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 16;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		1 10 2 no 3
		11 0 0.10000000000000001 0.20000000000000001 0.29999999999999999 0.40000000000000002
		 0.5 0.59999999999999998 0.69999999999999996 0.80000000000000004 0.90000000000000002
		 1
		11
		0 -22.39909553527832 -22.39909553527832
		0 3.6140430993464485e-15 -31.677104949951172
		0 22.39909553527832 -22.39909553527832
		-1.2694038935235838e-14 31.677104949951172 -9.8733734810998661e-15
		0 22.39909553527832 22.39909553527832
		0 1.0666751126310343e-14 31.677104949951172
		0 -22.39909553527832 22.39909553527832
		1.2694038935235838e-14 -31.677104949951172 1.7013771440961209e-14
		0 -22.39909553527832 -22.39909553527832
		0 3.6140430993464485e-15 -31.677104949951172
		0 -22.39909553527832 -22.39909553527832
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXHairs2Part2_M" -p "FKHairs2Part2_M";
	rename -uid "12D6740E-4586-A5C2-CE36-6492256BD14E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "AlignIKToHairs3_M" -p "FKXHairs2Part2_M";
	rename -uid "C0250260-4171-F807-D34C-91B5DFADAD43";
	setAttr ".t" -type "double3" 6.352096700283262 0 -9.1527346181814112e-16 ;
	setAttr ".r" -type "double3" 76.340173884275359 -89.999999644199661 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode joint -n "FKXHairs3_M" -p "FKXHairs2Part2_M";
	rename -uid "971F3BB2-4A14-8DC8-F4B6-178D90FD7A5A";
	setAttr ".t" -type "double3" 6.352096700283262 0 -9.1527346181814112e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode pointConstraint -n "FKOffsetHairs2Part2_M_pointConstraint1" -p "FKOffsetHairs2Part2_M";
	rename -uid "921167E7-4DAE-8A3A-FAB0-E8BB3BA2E2F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Hairs2Part2_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" -7.1054273576010019e-15 -1.7763568394002505e-15 1.3234877179073959e-23 ;
	setAttr ".rst" -type "double3" 6.352096700283262 5.3290705182007514e-15 -9.1527348167047582e-16 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Hairs2Part2_M" -p "FKXHairs2Part1_M";
	rename -uid "B8496735-448A-A654-9A6D-4B8B26F00C88";
	setAttr ".t" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "FKPS2Hairs2Part2_M" -p "FKPS1Hairs2Part2_M";
	rename -uid "E1D3EE80-4E2B-6EAE-964C-6694717A23D1";
	setAttr ".t" -type "double3" 6.3520967002832691 7.1054273576010019e-15 -9.15273494905353e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode scaleConstraint -n "FKPS1Hairs2Part2_M_scaleConstraint1" -p "FKPS1Hairs2Part2_M";
	rename -uid "641500FD-48F6-63FE-16A3-0FB96B72CFBD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs2Part1_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetHairs2Part1_M_pointConstraint1" -p "FKOffsetHairs2Part1_M";
	rename -uid "FEB6F2CB-4E74-B57D-BD41-8988B8600B64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Hairs2Part1_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" -1.0658141036401503e-14 0 1.3234877179073959e-23 ;
	setAttr ".rst" -type "double3" 6.352096700283262 5.3290705182007514e-15 -9.1527347505303092e-16 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Hairs2Part1_M" -p "FKXHairs2_M";
	rename -uid "AE3BB478-46F4-ED8C-1FCA-E18495997DFA";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 6.6174449004242214e-24 ;
createNode transform -n "FKPS2Hairs2Part1_M" -p "FKPS1Hairs2Part1_M";
	rename -uid "47304CC3-4FFF-AD96-9150-A3A834735CC8";
	setAttr ".t" -type "double3" 6.3520967002832656 7.1054273576010019e-15 -9.15273494905353e-16 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode scaleConstraint -n "FKPS1Hairs2Part1_M_scaleConstraint1" -p "FKPS1Hairs2Part1_M";
	rename -uid "00D2CD18-41CA-C49F-4717-8EA3B38BF1D0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs2_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "InbetweenHairs2_M" -p "FKOffsetHairs2_M";
	rename -uid "F417888E-43CC-D778-F286-D7BB0E30CD38";
	setAttr ".t" -type "double3" 0 1.7763568394002505e-15 1.2584575405413648e-07 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "InbetweenHairs2Part0_M" -p "InbetweenHairs2_M";
	rename -uid "B2986DC7-42E9-7A18-7E7A-82BABEC5DA40";
createNode orientConstraint -n "InbetweenHairs2Part0_M_orientConstraint1" -p "InbetweenHairs2Part0_M";
	rename -uid "3778520C-485F-5CE3-4336-B8A52E32803F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 2.1203697455143801e-15 ;
	setAttr ".rsrr" -type "double3" -1.6944733139712277e-07 2.3208572552982518e-07 4.4276452536356944e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "InbetweenHairs2Part1_M" -p "InbetweenHairs2Part0_M";
	rename -uid "C3B32ECB-4535-FA14-E1BB-85B4E013E75E";
	setAttr ".t" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000002 1 ;
createNode orientConstraint -n "InbetweenHairs2Part1_M_orientConstraint1" -p "InbetweenHairs2Part1_M";
	rename -uid "0B00FDFD-42F9-9AD3-B9A9-9E84F585DBAB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 1.0601848516932086e-15 ;
	setAttr ".rsrr" -type "double3" -1.6944733139712277e-07 2.3208572552982518e-07 4.4276452536356944e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "InbetweenHairs2Part2_M" -p "InbetweenHairs2Part1_M";
	rename -uid "AAB90A3C-4773-5EBB-E375-D382BB1B5A17";
	setAttr ".t" -type "double3" 3.5527136788005009e-15 -1.7763568394002505e-15 0 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1.0000000000000002 ;
createNode orientConstraint -n "InbetweenHairs2Part2_M_orientConstraint1" -p "InbetweenHairs2Part2_M";
	rename -uid "27D5102C-4EE3-676F-5D3B-7488DCBF3121";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".rsrr" -type "double3" -1.6944733139712277e-07 2.3208572552982518e-07 4.4276452536356944e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "FKOffsetHairs2_M_pointConstraint1" -p "FKOffsetHairs2_M";
	rename -uid "DBC4947D-498E-3E30-B409-FFAD43CC2324";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Hairs2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -3.5527136788005009e-15 5.3290705182007514e-15 0 ;
	setAttr ".rst" -type "double3" 5.7279140078815232 -4.4408920985006262e-15 5.6417125760240206e-16 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Hairs2_M" -p "FKXHairs1Part2_M";
	rename -uid "FEAB09BD-47F1-70F3-D006-708B764FFFB9";
createNode transform -n "FKPS2Hairs2_M" -p "FKPS1Hairs2_M";
	rename -uid "EF7C0F84-4B86-42FC-33C2-8DBF19E7A13D";
	setAttr ".t" -type "double3" 5.7279140078815267 -6.2172489379008766e-15 5.6417125760240206e-16 ;
	setAttr ".r" -type "double3" 0 0 -24.829482746329298 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode scaleConstraint -n "FKPS1Hairs2_M_scaleConstraint1" -p "FKPS1Hairs2_M";
	rename -uid "C6D0515B-4257-AD8D-AB89-21B5597A934D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1Part2_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetHairs1Part2_M_pointConstraint1" -p "FKOffsetHairs1Part2_M";
	rename -uid "4CE5E974-44F4-46B3-9F89-1994ADDED393";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Hairs1Part2_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" 0 -1.7763568394002505e-15 -2.6469779601696886e-23 ;
	setAttr ".rst" -type "double3" 5.7279140078815232 -1.7763568394002505e-15 5.6417131054196126e-16 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Hairs1Part2_M" -p "FKXHairs1Part1_M";
	rename -uid "BB4A7BEA-4F81-14A4-D2F2-9DB3D2DB0F18";
createNode transform -n "FKPS2Hairs1Part2_M" -p "FKPS1Hairs1Part2_M";
	rename -uid "5750C407-4714-5D43-C09F-2E911EF5526F";
	setAttr ".t" -type "double3" 5.7279140078815232 0 5.6417133701174086e-16 ;
createNode scaleConstraint -n "FKPS1Hairs1Part2_M_scaleConstraint1" -p "FKPS1Hairs1Part2_M";
	rename -uid "487149BB-4BF4-EAD0-93DD-258D47C2AE0F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1Part1_MW0" -dv 1 -min 0 -at "double";
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
createNode pointConstraint -n "FKOffsetHairs1Part1_M_pointConstraint1" -p "FKOffsetHairs1Part1_M";
	rename -uid "28E1A865-42B0-386D-772C-1C9D84B26797";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKPS2Hairs1Part1_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".o" -type "double3" -1.7763568394002505e-15 -8.8817841970012523e-16 1.9852334701272664e-23 ;
	setAttr ".rst" -type "double3" 5.7279140078815223 -8.8817841970012523e-16 5.6417127745473676e-16 ;
	setAttr -k on ".w0";
createNode transform -n "FKPS1Hairs1Part1_M" -p "FKXHairs1_M";
	rename -uid "75F876A5-4F19-625A-940B-DA9239EF5B9D";
	setAttr ".t" -type "double3" 0 0 -6.6174449004242214e-24 ;
createNode transform -n "FKPS2Hairs1Part1_M" -p "FKPS1Hairs1Part1_M";
	rename -uid "50DCAFA0-428D-D508-D608-F5B7F23F81A5";
	setAttr ".t" -type "double3" 5.7279140078815223 0 5.6417127083729186e-16 ;
createNode scaleConstraint -n "FKPS1Hairs1Part1_M_scaleConstraint1" -p "FKPS1Hairs1Part1_M";
	rename -uid "10444C77-46FB-C42B-955F-928D05B33B15";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "InbetweenHairs1_M" -p "FKOffsetHairs1_M";
	rename -uid "567E99CD-4CD6-CCA4-F47A-95AC9522D780";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 5.3668180211070266e-08 ;
createNode transform -n "InbetweenHairs1Part0_M" -p "InbetweenHairs1_M";
	rename -uid "AE290793-45B7-D897-852E-3182B36007EF";
createNode orientConstraint -n "InbetweenHairs1Part0_M_orientConstraint1" -p "InbetweenHairs1Part0_M";
	rename -uid "C661B301-44F9-10B8-935F-E581E2A10731";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 1.2722218473086281e-14 ;
	setAttr ".rsrr" -type "double3" -1.3103034012169194e-07 2.9823109785150438e-07 1.2492633732245556e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "InbetweenHairs1Part1_M" -p "InbetweenHairs1Part0_M";
	rename -uid "D71E8193-406D-23B7-329F-189C0A93E6DC";
	setAttr ".t" -type "double3" 0 0 -6.6174449004242214e-24 ;
createNode orientConstraint -n "InbetweenHairs1Part1_M_orientConstraint1" -p "InbetweenHairs1Part1_M";
	rename -uid "1EF5BF29-44F9-5D84-7A12-1A908F875196";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 6.361109110159252e-15 ;
	setAttr ".rsrr" -type "double3" -1.3103034012169194e-07 2.9823109785150438e-07 1.2492633732245556e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "InbetweenHairs1Part2_M" -p "InbetweenHairs1Part1_M";
	rename -uid "9795A9C9-4A5B-19E5-56E1-50A14CB8FC80";
	setAttr ".t" -type "double3" 0 0 6.6174449004242214e-24 ;
createNode orientConstraint -n "InbetweenHairs1Part2_M_orientConstraint1" -p "InbetweenHairs1Part2_M";
	rename -uid "C1D3F578-43A5-3B84-7A09-4EB19D65D9B0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKHairs1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "FKOffsetHairs1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".rsrr" -type "double3" -1.3103034012169194e-07 2.9823109785150438e-07 1.2492633732245556e-15 ;
	setAttr ".int" 2;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "ABB797B3-4287-2518-008E-EDB603A32EDD";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "F489F849-4F8A-9F0A-3753-78A5D59FB660";
createNode transform -n "IKParentConstraintHairs1_M" -p "IKJoints";
	rename -uid "D025409E-4518-2232-E75F-708598AAB88F";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr ".r" -type "double3" 8.1466211270261368 89.999999644199661 0 ;
createNode transform -n "IKXOffsetHairs1_M" -p "IKParentConstraintHairs1_M";
	rename -uid "BAA67F2E-4BB3-924A-D6DF-3A8946186FE2";
	setAttr ".t" -type "double3" 8.576827310750792 -1.2153944218631032 0.17398523911573147 ;
	setAttr ".r" -type "double3" -5.0912056365557099 -6.3681975375256288 -51.227280026983415 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1 ;
createNode joint -n "IKXHairs1_M" -p "IKXOffsetHairs1_M";
	rename -uid "D7018AFE-4556-72A7-86A6-66AF414BEA27";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs1_M" -p "IKXHairs1_M";
	rename -uid "4D480E02-4BA8-EB76-5C42-01B100BDFB77";
createNode joint -n "IKXHairs1Part1_M" -p "IKXHairs1_M";
	rename -uid "C9030FEF-4BA3-B25C-3B1E-359CE2F12660";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs1Part1_M" -p "IKXHairs1Part1_M";
	rename -uid "4C21C0F3-42FA-36F9-0FEC-C99B23CF10F6";
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 0 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-15 8.8817841970012523e-16 0 ;
createNode joint -n "IKXHairs1Part2_M" -p "IKXHairs1Part1_M";
	rename -uid "AC870348-4ACF-B69B-003C-A19731670938";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs1Part2_M" -p "IKXHairs1Part2_M";
	rename -uid "5FBF2EF0-4668-F819-68F9-3EBAE30EA6EE";
	setAttr ".rp" -type "double3" 0 0 -2.6469779601696886e-23 ;
	setAttr ".sp" -type "double3" 0 0 -2.6469779601696886e-23 ;
createNode joint -n "IKXHairs2_M" -p "IKXHairs1Part2_M";
	rename -uid "703907E2-427D-599E-8004-8AB306589251";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -24.829482746329276 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs2_M" -p "IKXHairs2_M";
	rename -uid "36F6B1A7-4F48-4F24-3154-668CE3CCF026";
	setAttr ".rp" -type "double3" 0 0 -6.6174449004242214e-24 ;
	setAttr ".sp" -type "double3" 0 0 -6.6174449004242214e-24 ;
createNode joint -n "IKXHairs2Part1_M" -p "IKXHairs2_M";
	rename -uid "D1321FFC-4A23-8BAF-40BC-359E9B97B7B0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs2Part1_M" -p "IKXHairs2Part1_M";
	rename -uid "0AA540DE-46C2-75F9-DFAC-6C9B2BFECDF5";
	setAttr ".rp" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 -1.3234889800848443e-23 ;
	setAttr ".sp" -type "double3" 7.1054273576010019e-15 -1.7763568394002505e-15 -1.3234889800848443e-23 ;
createNode joint -n "IKXHairs2Part2_M" -p "IKXHairs2Part1_M";
	rename -uid "290483AA-42F8-333F-14D9-CFA97703E965";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs2Part2_M" -p "IKXHairs2Part2_M";
	rename -uid "C6DC5829-4CB3-07AC-06C7-F49BD71C2CD1";
	setAttr ".rp" -type "double3" -1.7763568394002505e-14 -1.0658141036401503e-14 4.6322114302969556e-23 ;
	setAttr ".sp" -type "double3" -1.7763568394002505e-14 -1.0658141036401503e-14 4.6322114302969556e-23 ;
createNode joint -n "IKXHairs3_M" -p "IKXHairs2Part2_M";
	rename -uid "4FD65376-4455-1D66-86E3-5F84279D1F23";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKX2Hairs3_M" -p "IKXHairs3_M";
	rename -uid "FFA724BB-4609-3B69-A2DF-5CA8F06042C4";
	setAttr ".rp" -type "double3" 1.4210854715202004e-14 1.5987211554602254e-14 -5.9557004103817993e-23 ;
	setAttr ".sp" -type "double3" 1.4210854715202004e-14 1.5987211554602254e-14 -5.9557004103817993e-23 ;
createNode pointConstraint -n "IKXHairs3_M_pointConstraint1" -p "IKXHairs3_M";
	rename -uid "2980093B-4749-3635-B453-C695821AE148";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs3FollowOffset_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline3LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 6.3520967002832656 -1.0658141036401503e-14 6.2648925273308323e-09 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "IKXHairs3_M_orientConstraint1" -p "IKXHairs3_M";
	rename -uid "B74A2F30-46B7-6981-CBCA-B2B02993CD90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline3LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
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
createNode parentConstraint -n "IKXHairs2Part2_M_parentConstraint1" -p "IKXHairs2Part2_M";
	rename -uid "35D7C238-467C-314A-E0FB-60972C779582";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part2FollowOffset_MW0" 
		-dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs2Part2FollowOffset_MW1" -dv 
		1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.1025735361543872e-06 5.1014916250483781e-07 -7.2442314139164896e-07 ;
	setAttr ".rst" -type "double3" 6.3520967002832478 -1.7763568394002505e-15 1.2014561509603623e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.2442312085574904e-07 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXHairs2Part1_M_parentConstraint1" -p "IKXHairs2Part1_M";
	rename -uid "9AD9A0E8-4EC0-0F62-D07F-3B8959F29325";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part1FollowOffset_MW0" 
		-dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs2Part1FollowOffset_MW1" -dv 
		1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.1025735426044931e-06 5.1014914856437348e-07 -2.3716454726320805e-14 ;
	setAttr ".rst" -type "double3" 6.352096700283262 1.0658141036401503e-14 1.2014561509603636e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.2263882770244617e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXHairs2_M_parentConstraint1" -p "IKXHairs2_M";
	rename -uid "90CFEA7A-4D8B-9E23-8574-EC8A19637D13";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2FollowOffset_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs2FollowOffset_MW1" -dv 1 
		-min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.1025735426044927e-06 5.1014914856437411e-07 -4.2799782815101896e-14 ;
	setAttr ".rst" -type "double3" 5.7279140078815232 -5.3290705182007514e-15 2.4059192329873797e-08 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317578e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXHairs1Part2_M_parentConstraint1" -p "IKXHairs1Part2_M";
	rename -uid "B533DDA3-4FA0-4509-6901-9DB2AF24B187";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part2FollowOffset_MW0" 
		-dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs1Part2FollowOffset_MW1" -dv 
		1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -4.3313864404527066e-06 0 0 ;
	setAttr ".rst" -type "double3" 5.7279140078815214 -4.4408920985006262e-15 2.405919232987393e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXHairs1Part1_M_parentConstraint1" -p "IKXHairs1Part1_M";
	rename -uid "960740DD-4212-5CA5-EBBC-0293935ED953";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part1FollowOffset_MW0" 
		-dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs1Part1FollowOffset_MW1" -dv 
		1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 5.8027093413188972e-06 0 0 ;
	setAttr ".rst" -type "double3" 5.7279140078815214 0 2.4059192329873814e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "IKXHairs1_M_parentConstraint1" -p "IKXHairs1_M";
	rename -uid "1F86EBC9-4549-9744-7973-6F9259D70576";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1FollowOffset_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpHairs1FollowOffset_MW1" -dv 1 
		-min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -2.4241369274319034e-06 0 0 ;
	setAttr ".rst" -type "double3" 8.8817841970012523e-16 2.6645352591003757e-15 -5.6018987187806183e-18 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "IKfake0Spline_M" -p "IKParentConstraintHairs1_M";
	rename -uid "EB7AA3AF-4400-34C7-9EC2-A590DEAC28F4";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 8.5768273107507902 -1.2153944218631012 0.1739852391157331 ;
	setAttr ".r" -type "double3" -1.4787793334710982e-06 7.6806132661000284e-22 6.2113774309426865e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -5.0912053768785617 -6.3681977772379561 -51.227280005494165 ;
createNode joint -n "IKSpHairs1Part1_M" -p "IKfake0Spline_M";
	rename -uid "8A017825-4974-7C84-BC79-9E9D1621C2DF";
	setAttr ".t" -type "double3" 5.7279138565063477 -1.7763568394002505e-15 -2.4059191286623967e-08 ;
	setAttr ".r" -type "double3" 1.9090905782493953e-06 -3.5712390291487365e-08 -0.0013711982195993143 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.9513867036587919e-16 8.8278125961003129e-32 6.3611093629270304e-15 ;
createNode joint -n "IKSpHairs1Part2_M" -p "IKSpHairs1Part1_M";
	rename -uid "AB87ADAC-4BD6-30D6-DDB8-49A2ECC2A643";
	setAttr ".t" -type "double3" 5.7279138565063477 2.6645352591003757e-15 -2.4059191519494328e-08 ;
	setAttr ".r" -type "double3" -1.2184602878199416e-06 -1.9358000317720567e-07 -4.3952371351592765 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 9.5416640443905503e-15 ;
createNode joint -n "IKSpHairs2_M" -p "IKSpHairs1Part2_M";
	rename -uid "ED610220-48E5-C125-71C5-55BACF9796DD";
	setAttr ".t" -type "double3" 5.7279138565063477 -4.4408920985006262e-15 -2.4059192155420619e-08 ;
	setAttr ".r" -type "double3" 8.8002844331521345e-07 -1.9921663102407978e-07 8.0582514002313221 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 6.3611093629270351e-15 ;
createNode joint -n "IKSpHairs2Part1_M" -p "IKSpHairs2_M";
	rename -uid "89849DB3-44D0-B3C3-FC7E-36A06382718F";
	setAttr ".t" -type "double3" 5.764918327331543 -2.667367001714144 -1.2014564389737804e-08 ;
	setAttr ".r" -type "double3" 9.0534490286278032e-07 -3.3355999586806765e-08 -3.6612568672384613 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 6.3611093629270351e-15 ;
createNode joint -n "IKSpHairs2Part2_M" -p "IKSpHairs2Part1_M";
	rename -uid "C720A808-476A-7CCD-E6E4-9A92F3642855";
	setAttr ".t" -type "double3" 5.764918327331543 -2.6673670017141404 -1.2014564037125744e-08 ;
	setAttr ".r" -type "double3" 1.6983654340441003e-07 3.6706875990869246e-07 -0.00038611886069161321 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 6.3611093629270351e-15 ;
createNode joint -n "IKSpHairs3_M" -p "IKSpHairs2Part2_M";
	rename -uid "9F3C5333-4805-BC60-6D6F-35B6589F635A";
	setAttr ".t" -type "double3" 5.76491853957328 -2.6673670017141404 -1.2014563684513207e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 6.3611093629270351e-15 ;
createNode joint -n "IKfake1Spline_M" -p "IKSpHairs2Part2_M";
	rename -uid "5472C56B-4FCD-86B4-2D06-9FA6F94704DA";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 5.764918327331543 -2.6673670017141369 -1.2014563684513181e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.8278125961003172e-32 0 0 ;
createNode ikEffector -n "IKSplineEffector_M" -p "IKSpHairs2Part2_M";
	rename -uid "E4DD2AF2-41AF-ECB5-AF4C-C696145AB51C";
	setAttr -l on ".v" no;
	setAttr ".hd" yes;
createNode transform -n "IKFixedOrientHairs1_M" -p "IKfake0Spline_M";
	rename -uid "D832EE91-47CD-28C8-1DBE-3690C0FC7246";
createNode orientConstraint -n "IKFixedOrientHairs1_M_orientConstraint1" -p "IKFixedOrientHairs1_M";
	rename -uid "796AF1B5-4D53-2AF9-0073-BE853341D727";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKNonFixedOrientHairs1_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline1LocalOrient3_MW1" -dv 1 -min 
		0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.2074182737109484e-06 0 0 ;
	setAttr ".rsrr" -type "double3" -1.2074182737109484e-06 0 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKAcHairs1FollowOffset_M" -p "IKFixedOrientHairs1_M";
	rename -uid "F3EEF392-499D-AFDE-E108-42AE9ACADC34";
	setAttr ".t" -type "double3" 8.8817841970012523e-16 5.3290705182007514e-15 -5.3668180211070286e-08 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "IKSpHairs1FollowOffset_M" -p "IKFixedOrientHairs1_M";
	rename -uid "27812E0D-4735-2507-C4CE-CFBF7411EC2F";
	setAttr ".t" -type "double3" 0 2.6645352591003757e-15 -5.3668180211070273e-08 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000004 0.99999999999999978 ;
createNode transform -n "IKNonFixedOrientHairs1_M" -p "IKfake0Spline_M";
	rename -uid "B5FA3CAF-453B-480D-2F47-C197C7451510";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 0 0 ;
	setAttr ".r" -type "double3" -1.2074182737109484e-06 0 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "IKSpSplineOffset_M" -p "IKJoints";
	rename -uid "0C7BD94C-4C63-B673-89E5-2C8963C504A0";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -5.3668140291536776e-08 -1.2277843719994541 -8.5768273107507387 ;
	setAttr ".r" -type "double3" -90 38.489308862053939 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999978 ;
createNode joint -n "IKSpHairs1_M" -p "IKSpSplineOffset_M";
	rename -uid "19F4BC68-4A19-C790-B077-43BE18D4FB74";
	setAttr ".t" -type "double3" -8.8817841970012523e-16 -8.8817841970012523e-16 5.6018987187806183e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6206067785796796e-07 2.4066180895416364e-07 9.5416640443905503e-15 ;
createNode transform -n "IKSpHairs1Part1FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "29111ACE-4B0B-2C71-3CA7-04BA06DDAB63";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1 ;
createNode pointConstraint -n "IKSpHairs1Part1FollowOffset_M_pointConstraint1" -p
		 "IKSpHairs1Part1FollowOffset_M";
	rename -uid "7F6E31B9-4560-DA53-9239-D9861172281C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 1.5137517550556367e-07 4.4408920985006262e-15 -2.9608988280784239e-08 ;
	setAttr ".rst" -type "double3" 5.7279140078815223 0 5.6417127083729186e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs1Part1FollowOffset_M_orientConstraint1" 
		-p "IKSpHairs1Part1FollowOffset_M";
	rename -uid "56AFF020-4CE6-7FC4-1A2A-699305203095";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 4.3031123755228341e-07 -3.5390034253190615e-11 -0.0013711982195993139 ;
	setAttr ".o" -type "double3" 0 0 0.0013711981989266925 ;
	setAttr ".rsrr" -type "double3" 0 0 3.8825130388958945e-19 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpHairs1Part2FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "221D280A-48A0-9C55-4304-2E970FE55186";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode pointConstraint -n "IKSpHairs1Part2FollowOffset_M_pointConstraint1" -p
		 "IKSpHairs1Part2FollowOffset_M";
	rename -uid "24C3B69C-45AD-BE9F-9DA7-CAAFE6E07BAA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 3.043906460220569e-07 0.00013707999489120937 -5.5469073727289969e-09 ;
	setAttr ".rst" -type "double3" 11.455828015763046 -1.7763568394002505e-15 1.1283426144664776e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs1Part2FollowOffset_M_orientConstraint1" 
		-p "IKSpHairs1Part2FollowOffset_M";
	rename -uid "00DFF69D-49B7-84A0-2C0C-25AB7C911581";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" -1.2184602878199416e-06 -5.9242447492918327e-24 -4.3966083333788832 ;
	setAttr ".o" -type "double3" 0 0 4.3966083333788815 ;
	setAttr ".rsrr" -type "double3" 0 0 1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpHairs2FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "F8342AED-4365-CD9E-DE67-63AB8535C607";
	setAttr ".s" -type "double3" 0.99999999999999944 1 1 ;
createNode pointConstraint -n "IKSpHairs2FollowOffset_M_pointConstraint1" -p "IKSpHairs2FollowOffset_M";
	rename -uid "0C276623-45C8-CF33-13BD-CEA5775AECED";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.016856034150634969 0.43923899465355909 1.8515143643229045e-08 ;
	setAttr ".rst" -type "double3" 17.183742023644566 -2.6645352591003757e-15 1.6925138853037695e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs2FollowOffset_M_orientConstraint1" -p "IKSpHairs2FollowOffset_M";
	rename -uid "72DDB242-4A39-309C-F9AD-6A89D9BA95DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 3.6616430668524411 ;
	setAttr ".o" -type "double3" 0 0 -28.491125813181693 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.829482746329287 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpHairs2Part1FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "AB7BEAC0-4672-F074-898E-558AAD6F5B42";
	setAttr ".s" -type "double3" 0.99999999999999944 1 1 ;
createNode pointConstraint -n "IKSpHairs2Part1FollowOffset_M_pointConstraint1" -p
		 "IKSpHairs2Part1FollowOffset_M";
	rename -uid "55A2AF05-4AA8-E542-653D-E4A789656215";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -0.14172457853341314 0.065621725548233201 3.0532579491748188e-08 ;
	setAttr ".rst" -type "double3" 22.948660563217874 -2.6673670017141466 7.7724033745885728e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs2Part1FollowOffset_M_orientConstraint1" 
		-p "IKSpHairs2Part1FollowOffset_M";
	rename -uid "FC8CD779-4321-2BF1-FA2D-059915D5DB24";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 0 0 0.00038619961398401743 ;
	setAttr ".o" -type "double3" 0 0 -24.829868945943023 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.82948274632929 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpHairs2Part2FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "14F00AA5-40FC-CD0B-F777-89AF92255BFA";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode pointConstraint -n "IKSpHairs2Part2FollowOffset_M_pointConstraint1" -p
		 "IKSpHairs2Part2FollowOffset_M";
	rename -uid "B81BCBD0-495C-5526-FE49-F18E3B4FA115";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -0.1417423454274882 0.06558286731605989 4.2549916271670221e-08 ;
	setAttr ".rst" -type "double3" 28.713579102791169 -5.3347340034282871 -1.3803310450693652e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs2Part2FollowOffset_M_orientConstraint1" 
		-p "IKSpHairs2Part2FollowOffset_M";
	rename -uid "53E20D90-4C0E-2E88-1361-DDBC26FAB992";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 0 0 8.0753289031793644e-08 ;
	setAttr ".o" -type "double3" 0 0 -24.829482746329301 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.829482746329301 ;
	setAttr -k on ".w0";
createNode transform -n "IKSpHairs3FollowOffset_M" -p "IKSpSplineOffset_M";
	rename -uid "3B05B8A5-48F1-A578-168A-EFB439B7330A";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode pointConstraint -n "IKSpHairs3FollowOffset_M_pointConstraint1" -p "IKSpHairs3FollowOffset_M";
	rename -uid "A76675FD-4E85-2617-04C0-AAB558BE87B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" -0.14174234908916361 0.065582859402116611 5.4567252688071382e-08 ;
	setAttr ".rst" -type "double3" 34.478497642364459 -8.002101005142439 -1.0533066192646242e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKSpHairs3FollowOffset_M_orientConstraint1" -p "IKSpHairs3FollowOffset_M";
	rename -uid "3BC0E7E1-4122-9615-653D-609E0EF2BF85";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpHairs3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 0 -24.829482746329301 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.829482746329301 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcSplineOffset_M" -p "IKJoints";
	rename -uid "6F4305D9-41CF-DD17-E215-548E899C2502";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -5.3668140291536782e-08 -1.2277843719994543 -8.5768273107507387 ;
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
createNode joint -n "IKAcHairs1_M" -p "IKAcSplineOffset_M";
	rename -uid "BB1F6EAD-4D96-82E1-A73D-F2B952A4FD95";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs1_M_pointConstraint1" -p "IKAcHairs1_M";
	rename -uid "15EBE881-43D8-413A-EE0F-83A7CBAE9F3D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs1_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 5.3668180211070266e-08 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs1_M_aimConstraint1" -p "IKAcHairs1_M";
	rename -uid "B6F5A4DA-41E4-BE09-8BB4-1EBB64CA6F41";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs1Part1_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -2.8446393944556159e-06 89.999996581168816 0 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs1Part1_M" -p "IKAcSplineOffset_M";
	rename -uid "5769F4BB-446B-6CB7-9C58-20980C0DD5D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs1Part1_M_pointConstraint1" -p "IKAcHairs1Part1_M";
	rename -uid "017B699D-4BA2-9766-52E4-78A88D3A2FD6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs1Part1_MW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 5.727913589506719 0 7.7727370298946816e-08 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs1Part1_M_aimConstraint1" -p "IKAcHairs1Part1_M";
	rename -uid "ACD20EBF-4886-68CA-7D7B-7D8B9DDF69CE";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs1Part2_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" -7.0167095396552477e-15 7.0122545807956432e-07 180 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs1Part2_M" -p "IKAcSplineOffset_M";
	rename -uid "2362D43E-49DC-5EB2-97ED-C0A17A3B0BAE";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs1Part2_M_pointConstraint1" -p "IKAcHairs1Part2_M";
	rename -uid "6014F747-4824-8C42-3FD8-C4ABA74173A8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs1Part2_MW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 11.455828215933654 -0.00013708045747407027 1.0178593776067698e-07 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs1Part2_M_aimConstraint1" -p "IKAcHairs1Part2_M";
	rename -uid "C27D52CF-49CA-58BE-AF36-0486E847A412";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs2_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 1.2074260633629922e-06 5.0907796899533713e-07 179.99931439921841 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs2_M" -p "IKAcSplineOffset_M";
	rename -uid "B95B5430-49C4-5DAA-FB0A-CB870FC8D1D0";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs2_M_pointConstraint1" -p "IKAcHairs2_M";
	rename -uid "BE29FC19-4F0A-CA42-39D7-E59FB1BB2E60";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs2_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 17.166886108750191 -0.43923902213307109 1.2376595420579061e-07 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs2_M_aimConstraint1" -p "IKAcHairs2_M";
	rename -uid "6DBEA6B7-415D-CD00-45B2-DBB1D798506A";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs2Part1_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 3.2283592465801133e-05 4.1294307641535667e-07 178.53432636052702 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs2Part1_M" -p "IKAcSplineOffset_M";
	rename -uid "2ECFEEB4-44F9-E664-0261-9BB1398A5337";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs2Part1_M_pointConstraint1" -p "IKAcHairs2Part1_M";
	rename -uid "D1675F08-4898-53B6-3EAB-69881CEC3032";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs2Part1_MW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 23.090386073922524 -2.732989158197201 1.3815546971644235e-07 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs2Part1_M_aimConstraint1" -p "IKAcHairs2Part1_M";
	rename -uid "6CEEC67C-4BD2-DE79-0548-9A9B2696FCCC";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs2Part2_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 5.7726463956427001e-06 3.4043842562146707e-07 173.24984859953491 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs2Part2_M" -p "IKAcSplineOffset_M";
	rename -uid "D892671D-465F-DF0B-2771-C399BD49302F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs2Part2_M_pointConstraint1" -p "IKAcHairs2Part2_M";
	rename -uid "D5B91DAC-4715-01C7-70D6-86A049B7139B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs2Part2_MW0" -dv 
		1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 28.855321848113235 -5.4003170557934439 1.4761608667645609e-07 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "IKAcHairs2Part2_M_aimConstraint1" -p "IKAcHairs2Part2_M";
	rename -uid "4F3748A8-4520-887A-54F6-57B9D9BBB42F";
	addAttr -dcb 0 -ci true -sn "w0" -ln "IKAcHairs3_MW0" -dv 1 -at "double";
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
	setAttr ".u" -type "double3" 0 0 1 ;
	setAttr ".wu" -type "double3" 0 0 1 ;
	setAttr ".wut" 2;
	setAttr ".rsrr" -type "double3" 3.1055988710685303e-06 2.8810767874452052e-07 169.39963482148821 ;
	setAttr -k on ".w0";
createNode joint -n "IKAcHairs3_M" -p "IKAcSplineOffset_M";
	rename -uid "98804046-44CF-74A4-857B-F0BC5021052B";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode pointConstraint -n "IKAcHairs3_M_pointConstraint1" -p "IKAcHairs3_M";
	rename -uid "43109DB6-4B22-82AE-C9B2-4484FFB39601";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcPociXformHairs3_MW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 34.47849754118937 -8.0021012238098486 1.5039010398268502e-07 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcSplineOffset3_M" -p "IKJoints";
	rename -uid "851C926D-46AD-4BDC-A5EF-BDB9A16B2130";
	setAttr ".it" no;
createNode transform -n "IKAcPociXformHairs1_M" -p "IKAcSplineOffset3_M";
	rename -uid "3D6643CE-4B8D-E6CB-A24A-ECAD00FD2FFC";
createNode transform -n "IKAcPociXformHairs1Part1_M" -p "IKAcSplineOffset3_M";
	rename -uid "4597EB1D-4687-3CF5-0E49-158F1EC66E6B";
createNode transform -n "IKAcPociXformHairs1Part2_M" -p "IKAcSplineOffset3_M";
	rename -uid "EC0DF92E-4744-202D-421E-DDBEBEF0306E";
createNode transform -n "IKAcPociXformHairs2_M" -p "IKAcSplineOffset3_M";
	rename -uid "0C3C183B-4D56-FCC1-F22A-4789836C493F";
createNode transform -n "IKAcPociXformHairs2Part1_M" -p "IKAcSplineOffset3_M";
	rename -uid "1FCA0034-430D-018D-2FE9-C2AC93EF9CB9";
createNode transform -n "IKAcPociXformHairs2Part2_M" -p "IKAcSplineOffset3_M";
	rename -uid "D5740402-4722-76EE-8A0A-3BB78CDECAFC";
createNode transform -n "IKAcPociXformHairs3_M" -p "IKAcSplineOffset3_M";
	rename -uid "5BC40213-4005-A83A-90F9-3BB5E5AB987F";
createNode transform -n "IKAcSplineOffset2_M" -p "IKJoints";
	rename -uid "C2CA639E-49C5-0D60-8750-9D862669CCB2";
	setAttr ".t" -type "double3" -5.3668140291536776e-08 -1.2277843719994541 -8.5768273107507387 ;
	setAttr ".r" -type "double3" -90 38.489308862053939 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "IKAcHairs1Part1FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "695818A8-42E8-DA93-3A67-21B5341AE10D";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs1Part1FollowOffset_M_pointConstraint1" -p
		 "IKAcHairs1Part1FollowOffset_M";
	rename -uid "05C530E6-40E4-18FF-5D72-1F874291073A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" 4.1837480324602438e-07 8.8817841970012523e-16 -5.3668179646899075e-08 ;
	setAttr ".rst" -type "double3" 5.7279140078815214 2.6645352591003757e-15 5.6417123113262246e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs1Part1FollowOffset_M_orientConstraint1" 
		-p "IKAcHairs1Part1FollowOffset_M";
	rename -uid "D239620A-4083-3131-C119-A2A1E2BB155B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 1.9090905782493961e-06 0 -0.0013712024723866586 ;
	setAttr ".o" -type "double3" 1.2074211487846728e-06 0 0.0013712024517341216 ;
	setAttr ".rsrr" -type "double3" 2.4301587771509031e-22 2.8895999912650202e-11 -6.927208626102941e-19 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcHairs1Part2FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "ADD8C820-4BF0-D328-8785-ACA7E30EF764";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000007 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs1Part2FollowOffset_M_pointConstraint1" -p
		 "IKAcHairs1Part2FollowOffset_M";
	rename -uid "630236D0-4D2B-D50C-DCB1-758F58636495";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -2.0017061075350284e-07 0.00013708045747051756 -5.3668179082727705e-08 ;
	setAttr ".rst" -type "double3" 11.455828015763043 8.8817841970012523e-16 1.1283426210839225e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs1Part2FollowOffset_M_orientConstraint1" 
		-p "IKAcHairs1Part2FollowOffset_M";
	rename -uid "947A1C03-4F20-B3F5-F213-2799F525A39F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" -1.218460287819942e-06 0 -4.3966088982920777 ;
	setAttr ".o" -type "double3" 0 0 4.3966088982920732 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcHairs2FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "0ACBAD10-41B5-F9EB-5D2D-2491AC3BAA38";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs2FollowOffset_M_pointConstraint1" -p "IKAcHairs2FollowOffset_M";
	rename -uid "40F92A40-433D-45C6-9994-7585EFFCCF26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0.016855914894378543 0.43923902213306398 -5.3668178518556447e-08 ;
	setAttr ".rst" -type "double3" 17.183742023644566 -1.7763568394002505e-15 1.6925138720688797e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs2FollowOffset_M_orientConstraint1" -p "IKAcHairs2FollowOffset_M";
	rename -uid "ACFC1C52-45B8-3542-5AA2-E7B45B9CAA98";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 -21.167841229223029 ;
	setAttr ".o" -type "double3" 0 0 -3.6616415171062893 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.82948274632929 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcHairs2Part1FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "106017DF-4741-B0D5-B09A-65AC7D299686";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000002 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs2Part1FollowOffset_M_pointConstraint1" -p
		 "IKAcHairs2Part1FollowOffset_M";
	rename -uid "4CFFAC9E-475C-7826-19EB-94A2A8A056CF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -0.14172551070464579 0.065622156483053473 -5.3668179433829955e-08 ;
	setAttr ".rst" -type "double3" 22.948660563217874 -2.6673670017141422 7.7724036392863688e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs2Part1FollowOffset_M_orientConstraint1" 
		-p "IKAcHairs2Part1FollowOffset_M";
	rename -uid "10D6D0E3-4B7B-08AB-FB94-D68EBEA8EBB7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 0 0 -24.829097353797728 ;
	setAttr ".o" -type "double3" 0 0 -0.00038539253156828014 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.829482746329294 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcHairs2Part2FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "7B77E619-4EB0-7848-9BFF-C9BDB171DF31";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000004 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs2Part2FollowOffset_M_pointConstraint1" -p
		 "IKAcHairs2Part2FollowOffset_M";
	rename -uid "21CBC8E2-4396-9B5E-1E55-AABF6BFD2F1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".o" -type "double3" -0.14174274532206255 0.065583052365152383 -5.1113983520687863e-08 ;
	setAttr ".rst" -type "double3" 28.713579102791169 -5.3347340034282844 -1.3803311112438142e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs2Part2FollowOffset_M_orientConstraint1" 
		-p "IKAcHairs2Part2FollowOffset_M";
	rename -uid "F83E179C-4A94-5C5A-D2FF-7A944E0881BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" 0 0 -24.829483470752411 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.82948347075239 ;
	setAttr -k on ".w0";
createNode transform -n "IKAcHairs3FollowOffset_M" -p "IKAcSplineOffset2_M";
	rename -uid "BCCC5F8E-4BE5-19EC-4C44-E4BDAD27BB1C";
	setAttr ".s" -type "double3" 0.99999999999999967 1.0000000000000007 1.0000000000000002 ;
createNode pointConstraint -n "IKAcHairs3FollowOffset_M_pointConstraint1" -p "IKAcHairs3FollowOffset_M";
	rename -uid "7BA261DE-4416-7062-C042-20B0C28A94FF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 1.0117510385043715e-07 2.1866740951281827e-07 -4.2168843299831603e-08 ;
	setAttr ".rst" -type "double3" 34.478497642364474 -8.0021010051424319 -1.0533065861773997e-15 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKAcHairs3FollowOffset_M_orientConstraint1" -p "IKAcHairs3FollowOffset_M";
	rename -uid "9286B6E1-4519-8103-1B33-42869C4F669D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKAcHairs3_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 0 0 -24.82948274632929 ;
	setAttr ".rsrr" -type "double3" 0 0 -24.82948274632929 ;
	setAttr -k on ".w0";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "9BC75BD9-4903-008E-E370-8187980F36AF";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "55C2E25C-451A-5F0D-061D-38BEF7A8D2B7";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "5AE9B715-4B4F-4968-EA9D-AC914D16A2BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode scaleConstraint -n "IKHandleFollowMain_scaleConstraint1" -p "IKHandleFollowMain";
	rename -uid "6A908487-44B3-02F3-CD92-B49B3B0C5D18";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "IKOffsetcvSpline1_M" -p "IKHandleFollowMain";
	rename -uid "DAB86098-4A85-F7D3-8917-2BA0470B5FB8";
createNode transform -n "IKExtracvSpline1_M" -p "IKOffsetcvSpline1_M";
	rename -uid "146BDE59-4FBB-B773-DDA8-E4BFFD6FB216";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpline1_M" -p "IKExtracvSpline1_M";
	rename -uid "32D58A95-4B19-AAEE-02E6-5E909EAF4195";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpline1_MShape" -p "IKcvSpline1_M";
	rename -uid "077C02C6-4BF6-6A4A-6EB6-E0A8853106A2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.2017519871390262 0.16041932059719957
		0 -0.2017519871390262 -0.16041932059719957
		0 0 0
		-1.1789306851279665e-07 16.041932059719962 -20.175198713902621
		1.1789306851279665e-07 -16.041932059719962 20.175198713902621
		0 0 0
		-25.775613035466854 -7.3372940483789828e-08 9.2277772565776379e-08
		25.775613035466854 7.3372940483789828e-08 -9.2277772565776379e-08
		;
createNode transform -n "IKSplineLocator1_M" -p "IKcvSpline1_M";
	rename -uid "ADBDCD19-4D86-578A-D1F1-63A45ED9012B";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineLocator1_MShape" -p "IKSplineLocator1_M";
	rename -uid "3EA6E3D7-4011-5AEC-F03F-7E9AC484564E";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpline1_M_parentConstraint1" -p "IKOffsetcvSpline1_M";
	rename -uid "0ABF11EC-4C4C-56E8-D16E-E0B4C58A7697";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 5.3668180211070286e-08 -4.4833774919783602 
		-3.5648737910488784 ;
	setAttr ".tg[1].tot" -type "double3" 0 10.011283797072647 7.121185598221059 ;
	setAttr ".rst" -type "double3" 3.9919533497418242e-14 -5.7111618639778161 -12.141701101799617 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetcvSpline2_M" -p "IKHandleFollowMain";
	rename -uid "8B8C04AD-4792-63AA-653C-03806BB587F2";
createNode transform -n "IKExtracvSpline2_M" -p "IKOffsetcvSpline2_M";
	rename -uid "9DBD9AB0-48B2-F31A-0413-D6B89D019FED";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpline2_M" -p "IKExtracvSpline2_M";
	rename -uid "43A57AAC-4215-863C-D072-7C9972F8DCF3";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpline2_MShape" -p "IKcvSpline2_M";
	rename -uid "2B75CBE2-45B8-1B2B-3CBA-CCAC925EC9CC";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.20248240088403385 0.15949639515565955
		0 -0.20248240088403385 -0.15949639515565955
		0 0 0
		-1.1789429759916252e-07 15.949639515565959 -20.248240088403385
		1.1789429759916252e-07 -15.949639515565959 20.248240088403385
		0 0 0
		-25.775613035466854 -7.2951572762051442e-08 9.2612810920942987e-08
		25.775613035466854 7.2951572762051442e-08 -9.2612810920942987e-08
		;
createNode transform -n "IKSplineLocator2_M" -p "IKcvSpline2_M";
	rename -uid "9AF4C383-4DE9-E478-C22D-4EA6A2FD1CC5";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineLocator2_MShape" -p "IKSplineLocator2_M";
	rename -uid "D3DABB3E-47ED-1A1E-8054-C5BFF39A25C0";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpline2_M_parentConstraint1" -p "IKOffsetcvSpline2_M";
	rename -uid "F75C4FB8-4AA4-B115-797A-5E8C390B811E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -6.3108872417680944e-30 5.5279063050942856 
		3.5563118071721807 ;
	setAttr ".tg[1].tot" -type "double3" 5.3668180211070286e-08 -8.9667549839567187 
		-7.1297475820977567 ;
	setAttr ".rst" -type "double3" 3.9919533497418236e-14 -10.194539355956177 -15.706574892848495 ;
	setAttr -k on ".w0" 0.63541516137531351;
	setAttr -k on ".w1" 0.36458483862468649;
createNode transform -n "IKOffsetcvSpline3_M" -p "IKHandleFollowMain";
	rename -uid "381B6A0D-4E43-69F4-FCD0-FF8E99518E6D";
createNode transform -n "IKExtracvSpline3_M" -p "IKOffsetcvSpline3_M";
	rename -uid "BD995C53-4B16-26A2-75EE-7494AEAC13AE";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpline3_M" -p "IKExtracvSpline3_M";
	rename -uid "3B5852A7-4107-811A-FD9F-70A7E2AE356C";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpline3_MShape" -p "IKcvSpline3_M";
	rename -uid "400D4BEB-4F08-B3A8-4C78-8EA2A9608C85";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.23872857949155493 0.097195103114083137
		0 -0.23872857949155493 -0.097195103114083137
		0 0 0
		-1.2285295425350035e-07 9.7195103114083139 -23.872857949155495
		1.2285295425350035e-07 -9.7195103114083139 23.872857949155495
		0 0 0
		-25.775613035466861 -4.6325592943785117e-08 1.1378395091738352e-07
		25.775613035466861 4.6325592943785117e-08 -1.1378395091738352e-07
		;
createNode transform -n "IKSplineLocator3_M" -p "IKcvSpline3_M";
	rename -uid "C15F42DF-4DC3-DE29-8BEF-2B86F9E9CF2A";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineLocator3_MShape" -p "IKSplineLocator3_M";
	rename -uid "DFD88312-4962-31BB-C80D-05AB30E7E3E6";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpline3_M_parentConstraint1" -p "IKOffsetcvSpline3_M";
	rename -uid "706021FF-4BD8-5C9E-B5E6-40BE37DD7B4B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 1.0445288131159227 -0.0085619838766959333 ;
	setAttr ".tg[1].tot" -type "double3" 5.3668180211070286e-08 -13.450132475935078 
		-10.694621373146633 ;
	setAttr ".rst" -type "double3" 3.9919533497418242e-14 -14.677916847934538 -19.271448683897372 ;
	setAttr -k on ".w0" 0.9426955029226789;
	setAttr -k on ".w1" 0.057304497077321027;
createNode transform -n "IKOffsetcvSpline4_M" -p "IKHandleFollowMain";
	rename -uid "D5B0FF94-4837-01AE-4EBC-3B97D20B7A8F";
createNode transform -n "IKExtracvSpline4_M" -p "IKOffsetcvSpline4_M";
	rename -uid "DD79EFFD-40DC-7C63-89B9-B58D2D616881";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpline4_M" -p "IKExtracvSpline4_M";
	rename -uid "C3AF34AC-4285-AE88-5726-6DB4DA178001";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpline4_MShape" -p "IKcvSpline4_M";
	rename -uid "4DC49779-4FB4-D69A-0797-9D89FB290A91";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		-1.1446671626321452e-16 0.2504654845808133 0.06087087784081395
		1.1446671626321452e-16 -0.2504654845808133 -0.06087087784081395
		0 0 0
		-1.2990089175308926e-07 6.0870877840813904 -25.046548458081332
		1.2990089175308926e-07 -6.0870877840813904 25.046548458081332
		0 0 0
		-25.775613035466861 -3.0676999831840115e-08 1.2622663750526189e-07
		25.775613035466861 3.0676999831840115e-08 -1.2622663750526189e-07
		;
createNode transform -n "IKSplineLocator4_M" -p "IKcvSpline4_M";
	rename -uid "DA214D05-4E17-B6FF-EB04-D6BA3939C39D";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineLocator4_MShape" -p "IKSplineLocator4_M";
	rename -uid "0A370E8F-4359-135F-15F1-B899E5D97739";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpline4_M_parentConstraint1" -p "IKOffsetcvSpline4_M";
	rename -uid "9E570169-4B0D-DACB-02B6-5C8C79A776EE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline3_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -6.3108872417680944e-30 -5.1278984961840166 
		-1.5086531814902848 ;
	setAttr ".tg[1].tot" -type "double3" 6.5167519228922202e-08 12.344854561700391 3.0001826293516736 ;
	setAttr ".rst" -type "double3" 3.991953350403568e-14 -20.850344157234481 -20.771539881510961 ;
	setAttr -k on ".w0" 0.70385630168156488;
	setAttr -k on ".w1" 0.29614369831843523;
createNode transform -n "IKOffsetcvSpline5_M" -p "IKHandleFollowMain";
	rename -uid "08239A3C-4F1F-AA11-05D1-F98E05169696";
createNode transform -n "IKExtracvSpline5_M" -p "IKOffsetcvSpline5_M";
	rename -uid "0083C813-43D3-318C-9C29-DB9C8E0BAB8E";
	setAttr -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKcvSpline5_M" -p "IKExtracvSpline5_M";
	rename -uid "8FDC9F77-410B-B8CD-C564-10A3DE7FE702";
	setAttr ".sech" no;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".smd" 1;
createNode nurbsCurve -n "IKcvSpline5_MShape" -p "IKcvSpline5_M";
	rename -uid "EA48D9A1-4B52-0FCF-1D1D-D8B866E9FDE9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".cc" -type "nurbsCurve" 
		1 7 0 no 3
		8 0 1 2 3 4 5 6 7
		8
		0 0.25046548458081336 0.060870877840813631
		0 -0.25046548458081336 -0.060870877840813631
		0 0 0
		-1.2990089461475712e-07 6.087087784081362 -25.04654845808134
		1.2990089461475712e-07 -6.087087784081362 25.04654845808134
		0 0 0
		-25.775613035466868 -3.0676989816002428e-08 1.2622664322859771e-07
		25.775613035466868 3.0676989816002428e-08 -1.2622664322859771e-07
		;
createNode transform -n "IKSplineLocator5_M" -p "IKcvSpline5_M";
	rename -uid "7C06DD96-45E7-B00D-DE10-1684BDAC61F3";
	setAttr -l on ".v" no;
createNode locator -n "IKSplineLocator5_MShape" -p "IKSplineLocator5_M";
	rename -uid "181BA81C-478C-D9E4-CCAF-CC8887EB45F0";
	setAttr -k off ".v";
createNode parentConstraint -n "IKOffsetcvSpline5_M_parentConstraint1" -p "IKOffsetcvSpline5_M";
	rename -uid "873A431B-47BB-91B9-614E-11BEA7983D4F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline3_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 6.5167519228922202e-08 6.1724272524004498 1.5000914317380847 ;
	setAttr ".tg[1].tot" -type "double3" 0 -11.300325805483958 -3.0087443791038737 ;
	setAttr ".rst" -type "double3" 3.9919533504035687e-14 -27.022771466534415 -22.271631079124553 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetSpline2_M" -p "IKHandleFollowMain";
	rename -uid "F53BCA0B-4CF6-663C-093A-A8AFEE1504D0";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
createNode transform -n "IKExtraSpline2_M" -p "IKOffsetSpline2_M";
	rename -uid "3DA79A77-4BD0-5735-E380-5DBFF8092C54";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpline2_M" -p "IKExtraSpline2_M";
	rename -uid "438402E2-4FF4-E384-2EEF-A983EC5956C8";
	addAttr -ci true -k true -sn "followEnd" -ln "followEnd" -dv 5 -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".followEnd";
createNode nurbsCurve -n "IKSpline2_MShape" -p "IKSpline2_M";
	rename -uid "CDE98B2D-4910-EEB5-48AF-5EA62388CE0A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		10.906957859161652 -1.6572861165311279 4.0047588648944403
		7.351826305140611e-08 -2.3437565139018814 5.6635843277616482
		-10.906957755191131 -1.657286132329203 4.0047589030697806
		-15.424767655139968 -2.7722388684360494e-08 6.8091137612026718e-08
		-10.906957859161652 1.6572861165311163 -4.0047588648944901
		-7.3518263652021728e-08 2.3437565139018717 -5.6635843277617033
		10.906957755191131 1.657286132329191 -4.0047589030698267
		15.424767655139968 2.7722387222024888e-08 -6.8091154451564355e-08
		10.906957859161652 -1.6572861165311279 4.0047588648944403
		7.351826305140611e-08 -2.3437565139018814 5.6635843277616482
		-10.906957755191131 -1.657286132329203 4.0047589030697806
		;
createNode transform -n "IKSpline2LocalOrient0_M" -p "IKSpline2_M";
	rename -uid "31DF7170-49FF-A887-06B1-A6B104F2797E";
	setAttr ".r" -type "double3" -90.000000273085874 22.153029164860929 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999967 0.99999999999999978 ;
createNode transform -n "IKSpline2LocalOrient1_M" -p "IKSpline2_M";
	rename -uid "286F86DB-4DB8-FAE5-474E-B2B63E274665";
	setAttr ".t" -type "double3" 1.2621774483536189e-29 0 0 ;
	setAttr ".r" -type "double3" -90 38.489308862053917 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "IKSpline2LocalOrient2_M" -p "IKSpline2LocalOrient1_M";
	rename -uid "B5876BAF-4BF9-36B4-1E48-5DA6CCD5279E";
createNode transform -n "IKSpline2LocalOrient3_M" -p "IKOffsetSpline2_M";
	rename -uid "913A1DB1-4172-EBFA-B362-6AB4EF21AC64";
	setAttr ".t" -type "double3" 1.2621774483536189e-29 0 0 ;
	setAttr ".r" -type "double3" -90 38.489308862053917 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999989 ;
createNode parentConstraint -n "IKOffsetSpline2_M_parentConstraint1" -p "IKOffsetSpline2_M";
	rename -uid "B7A85004-4B8F-FB6B-8A30-2E8A91AD7832";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKFollowEndSpline1_MW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKFollowEndSpline3_MW1" -dv 1 -min 
		0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 5.3668180211070392e-08 -14.494661289051004 
		-10.686059389269941 ;
	setAttr ".tg[1].tot" -type "double3" 6.5167519228922175e-08 17.472753057884393 4.5088358108419513 ;
	setAttr ".rst" -type "double3" 3.9919533543740362e-14 -15.722445661050461 -19.26288670002068 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKOffsetConstrainedSpline1_M" -p "IKHandleFollowMain";
	rename -uid "28CE6112-437C-2C75-616D-CC899D5DDEF6";
createNode pointConstraint -n "IKOffsetConstrainedSpline1_M_pointConstraint1" -p
		 "IKOffsetConstrainedSpline1_M";
	rename -uid "F1B5B67B-44BD-9DAB-844E-BDBEEF1308F0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKOffsetConstrainedSpline1_M_orientConstraint1" -p
		 "IKOffsetConstrainedSpline1_M";
	rename -uid "003C14A2-452E-3BA9-4C34-459BBFEB38AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rsrr" -type "double3" -90 81.853378872973877 -90 ;
	setAttr -k on ".w0";
createNode transform -n "IKhybridOffsetSpline1_M" -p "IKOffsetConstrainedSpline1_M";
	rename -uid "5350EFDE-49CC-D284-AE7C-758E9A13A6F6";
	setAttr ".t" -type "double3" 8.6642611446427882 4.5089632456561264e-15 -5.3668180211070273e-08 ;
	setAttr ".r" -type "double3" 0 0 -43.364070010919924 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999978 ;
createNode transform -n "IKOffsetSpline1_M" -p "IKhybridOffsetSpline1_M";
	rename -uid "3C097025-4F34-848E-B84E-28BA6F3F13E5";
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -1.3234889800848443e-23 ;
	setAttr ".r" -type "double3" 51.510691137946047 -90 0 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "IKExtraSpline1_M" -p "IKOffsetSpline1_M";
	rename -uid "D386B28E-4C1F-ED8D-45C5-00A1B3876CD9";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpline1_M" -p "IKExtraSpline1_M";
	rename -uid "9B65028A-4B0F-CBA5-A5BC-18ADADE9D979";
	addAttr -ci true -k true -sn "stiff" -ln "stiff" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "FixedOrient" -ln "FixedOrient" -min 0 -max 10 -at "double";
	setAttr ".sech" no;
	setAttr -k on ".stiff";
	setAttr -k on ".FixedOrient";
createNode nurbsCurve -n "IKSpline1_MShape" -p "IKSpline1_M";
	rename -uid "A92406D3-4ACA-FB9F-1332-D09541715F3E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		13.746994093395813 -7.4470700257148206 2.5503772495751185
		13.746994108297933 -7.4454994784593849 -2.6047424908898855
		13.746994113699357 7.4470700312733573 -2.5503773985904985
		-13.746994093395813 7.4470700257148241 -2.5503772495751185
		-13.746994098797236 -7.4454994840179207 -2.6047423418745055
		-13.746994113699357 -7.4470700312733573 2.5503773985904985
		-13.746994108297933 7.4454994784593822 2.6047424908898855
		13.746994098797236 7.4454994840179243 2.6047423418745055
		13.746994093395813 -7.4470700257148206 2.5503772495751185
		-13.746994113699357 -7.4470700312733573 2.5503773985904985
		-13.746994108297933 7.4454994784593822 2.6047424908898855
		-13.746994093395813 7.4470700257148241 -2.5503772495751185
		-13.690207646105739 -7.4455027278358497 -2.5940948885929682
		13.690207655544887 -7.4455027223002466 -2.594095036992794
		13.746994113699357 7.4470700312733573 -2.5503773985904985
		13.746994098797236 7.4454994840179243 2.6047423418745055
		;
createNode transform -n "IKSpline1LocalOrient0_M" -p "IKSpline1_M";
	rename -uid "89198A2B-4898-DBB3-3BF3-71A7F4DF286F";
	setAttr ".r" -type "double3" -90 38.489308862053939 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "IKSplineLocator0_M" -p "IKSpline1_M";
	rename -uid "DDDCF33F-4AEC-AD5B-7300-3BAE78922E13";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 5.3668180211070286e-08 2.2204460492503131e-16 1.7763568394002505e-15 ;
createNode locator -n "IKSplineLocator0_MShape" -p "IKSplineLocator0_M";
	rename -uid "391EE56F-4BF6-0C55-76B1-F49CF0D991F3";
	setAttr -k off ".v";
createNode transform -n "IKSpline1LocalOrient1_M" -p "IKSpline1_M";
	rename -uid "1B2F9A1E-42C5-18FB-C13F-C691C20B9A57";
	setAttr ".t" -type "double3" -6.6174449004242214e-24 2.2204460492503131e-16 0 ;
	setAttr ".r" -type "double3" -90 38.489308862053939 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 1 0.99999999999999978 ;
createNode transform -n "IKSpline1LocalOrient2_M" -p "IKSpline1LocalOrient1_M";
	rename -uid "4FB928F5-499A-5505-42FB-CABE02B65A16";
createNode transform -n "IKSpline1LocalOrient3_M" -p "IKSpline1LocalOrient2_M";
	rename -uid "4945F052-4DCC-8B65-DB17-CEB94B61FCB6";
	setAttr ".t" -type "double3" -1.7763568394002505e-15 -2.6645352591003757e-15 5.3668180211070306e-08 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "IKhybridFollowSpline1_M" -p "IKhybridOffsetSpline1_M";
	rename -uid "FA69A2BC-4B23-BAD3-F775-E4870167D5C7";
createNode transform -n "IKhybridExtraSpline1_M" -p "IKhybridFollowSpline1_M";
	rename -uid "8B3EF119-4F14-3705-927D-F981A20D2043";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 0 -8.8817841970012523e-16 -6.6174449004242214e-24 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSpline1_M" -p "IKhybridExtraSpline1_M";
	rename -uid "88E82B69-40E7-A23C-BECC-9C95B6F536C8";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSpline1_MShape" -p "IKhybridSpline1_M";
	rename -uid "9A48EE29-4A78-4FBC-353C-0DAD16269F14";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		-7.6420583050703858e-16 12.480430603027344 12.480430603027344
		-1.8338007080589058e-15 12.404966354370117 29.948238372802734
		-1.0807504073463248e-15 3.2162044824548717e-16 17.649993896484375
		-1.8338007080589058e-15 -12.404966354370117 29.948238372802734
		-7.6420598932571619e-16 -12.480430603027344 12.480430603027344
		-7.5958537165888478e-16 -29.948238372802734 12.404966354370117
		-1.2341530700323338e-22 -17.649993896484375 -1.3338042531956256e-15
		7.5958494814241115e-16 -29.948238372802734 -12.404966354370117
		7.6420583050703858e-16 -12.480430603027344 -12.480430603027344
		1.833800496300669e-15 -12.404966354370117 -29.948238372802734
		1.0807504073463248e-15 3.1881811914883512e-15 -17.649993896484375
		1.8338007080589058e-15 12.404966354370117 -29.948238372802734
		7.6420598932571619e-16 12.480430603027344 -12.480430603027344
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKhybridOffsetSpline2_M" -p "IKhybridSpline1_M";
	rename -uid "2A9F803A-4666-622B-E451-928EECDDDB2E";
	setAttr ".t" -type "double3" 17.995991399616976 -0.65678360228442134 5.3668180211070286e-08 ;
	setAttr ".r" -type "double3" 0 0 -16.336279697193028 ;
createNode transform -n "IKhybridExtraSpline2_M" -p "IKhybridOffsetSpline2_M";
	rename -uid "0D4E54AB-4338-8773-6342-539373499C1B";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSpline2_M" -p "IKhybridExtraSpline2_M";
	rename -uid "DCCC61D4-4C28-3F0D-58FF-6EB9BE33ED26";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSpline2_MShape" -p "IKhybridSpline2_M";
	rename -uid "572B554D-4B9C-19C3-C9FF-3ABB3827767F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		-7.6420583050703858e-16 12.480430603027344 12.480430603027344
		-1.8338007080589058e-15 12.404966354370117 29.948238372802734
		-1.0807504073463248e-15 3.2162044824548717e-16 17.649993896484375
		-1.8338007080589058e-15 -12.404966354370117 29.948238372802734
		-7.6420598932571619e-16 -12.480430603027344 12.480430603027344
		-7.5958537165888478e-16 -29.948238372802734 12.404966354370117
		-1.2341530700323338e-22 -17.649993896484375 -1.3338042531956256e-15
		7.5958494814241115e-16 -29.948238372802734 -12.404966354370117
		7.6420583050703858e-16 -12.480430603027344 -12.480430603027344
		1.833800496300669e-15 -12.404966354370117 -29.948238372802734
		1.0807504073463248e-15 3.1881811914883512e-15 -17.649993896484375
		1.8338007080589058e-15 12.404966354370117 -29.948238372802734
		7.6420598932571619e-16 12.480430603027344 -12.480430603027344
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKhybridOffsetSpline3_M" -p "IKhybridSpline2_M";
	rename -uid "AB042964-4C9E-099A-9275-63B0176B9BDB";
	setAttr ".t" -type "double3" 17.883114060302415 -2.4126606261869945 -6.5167519228922189e-08 ;
	setAttr ".r" -type "double3" 0 0 -8.4932030491362838 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
createNode transform -n "IKhybridExtraSpline3_M" -p "IKhybridOffsetSpline3_M";
	rename -uid "A9B00FB3-4520-045D-AD6B-BFB3522636BC";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKhybridSpline3_M" -p "IKhybridExtraSpline3_M";
	rename -uid "6C9B3C8B-45D8-FECB-86A5-F39FD691585F";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "IKhybridSpline3_MShape" -p "IKhybridSpline3_M";
	rename -uid "201EB000-432A-5753-8848-BABD6460E817";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:15]";
	setAttr ".cc" -type "nurbsCurve" 
		3 16 2 no 3
		21 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		19
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		-7.6420583050703858e-16 12.480430603027344 12.480430603027344
		-1.8338007080589058e-15 12.404966354370117 29.948238372802734
		-1.0807504073463248e-15 3.2162044824548717e-16 17.649993896484375
		-1.8338007080589058e-15 -12.404966354370117 29.948238372802734
		-7.6420598932571619e-16 -12.480430603027344 12.480430603027344
		-7.5958537165888478e-16 -29.948238372802734 12.404966354370117
		-1.2341530700323338e-22 -17.649993896484375 -1.3338042531956256e-15
		7.5958494814241115e-16 -29.948238372802734 -12.404966354370117
		7.6420583050703858e-16 -12.480430603027344 -12.480430603027344
		1.833800496300669e-15 -12.404966354370117 -29.948238372802734
		1.0807504073463248e-15 3.1881811914883512e-15 -17.649993896484375
		1.8338007080589058e-15 12.404966354370117 -29.948238372802734
		7.6420598932571619e-16 12.480430603027344 -12.480430603027344
		7.5958531871932558e-16 29.948238372802734 -12.404966354370117
		1.1018041720238494e-22 17.649993896484375 -4.1842118928458929e-15
		-7.5958494814241115e-16 29.948238372802734 12.404966354370117
		

		"gtag" 1
		"tempCluster" 1 "cv[0:15]";
createNode transform -n "IKOffsetSpline3_M" -p "IKhybridSpline3_M";
	rename -uid "B30B17DE-4ABD-1B00-900D-B59162B329D3";
	setAttr ".t" -type "double3" 7.1054273576010019e-15 0 6.6174449004242214e-24 ;
	setAttr ".r" -type "double3" 76.340173884275345 -90 0 ;
	setAttr ".s" -type "double3" 1 0.99999999999999956 1 ;
createNode transform -n "IKExtraSpline3_M" -p "IKOffsetSpline3_M";
	rename -uid "8933D16A-4D20-6700-D95D-D9AAC165E8FF";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "IKSpline3_M" -p "IKExtraSpline3_M";
	rename -uid "7467B399-4D35-F23F-4AE3-6FADCB5BEDF0";
	addAttr -ci true -sn "ikCvVis" -ln "ikCvVis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "ikHybridVis" -ln "ikHybridVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "stiff" -ln "stiff" -dv 5 -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "stretchy" -ln "stretchy" -dv 10 -min 0 -max 10 -at "double";
	addAttr -ci true -sn "flipAxis" -ln "flipAxis" -min 0 -max 1 -en "bend:side" -at "enum";
	addAttr -ci true -k true -sn "follow" -ln "follow" -min 0 -max 10 -at "double";
	addAttr -ci true -k true -sn "volume" -ln "volume" -dv 10 -smn 0 -smx 10 -at "double";
	setAttr ".sech" no;
	setAttr -cb on ".ikCvVis";
	setAttr -cb on ".ikHybridVis" no;
	setAttr -k on ".stiff";
	setAttr -k on ".stretchy";
	setAttr ".flipAxis" 1;
	setAttr -k on ".follow" 10;
	setAttr -k on ".volume";
createNode nurbsCurve -n "IKSpline3_MShape" -p "IKSpline3_M";
	rename -uid "470DEE23-496D-3203-87BB-6FB488008BB9";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		5.1551226070933724 -0.7164866525294421 5.1310514382389458
		5.1551226070933724 -1.7183485877741953 4.8875679142085815
		5.1551226070933724 0.7164866525294421 -5.1310514382389512
		-5.1551226070933724 0.7164866525294421 -5.1310514382389512
		-5.1551226070933724 -1.7183485877741953 4.8875679142085815
		-5.1551226070933724 -0.7164866525294421 5.1310514382389458
		-5.1551226070933724 1.7183485877741953 -4.8875679142085868
		5.1551226070933724 1.7183485877741953 -4.8875679142085868
		5.1551226070933724 -0.7164866525294421 5.1310514382389458
		-5.1551226070933724 -0.7164866525294421 5.1310514382389458
		-5.1551226070933724 1.7183485877741953 -4.8875679142085868
		-5.1551226070933724 0.7164866525294421 -5.1310514382389512
		-5.1338276880732439 -1.716279328669569 4.8880708083511797
		5.1338276880732439 -1.716279328669569 4.8880708083511797
		5.1551226070933724 0.7164866525294421 -5.1310514382389512
		5.1551226070933724 1.7183485877741953 -4.8875679142085868
		;
createNode transform -n "IKSpline3LocalOrient0_M" -p "IKSpline3_M";
	rename -uid "46F5792F-4B82-5F3A-3868-759A491D8571";
	setAttr ".r" -type "double3" -90 13.65982611572465 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999967 ;
createNode transform -n "IKSplineLocator6_M" -p "IKSpline3_M";
	rename -uid "A9565447-4D0F-0D59-A5CB-2F8B4206912C";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 5.3668181264376886e-08 -5.6899509104368917e-08 2.3412449934312463e-07 ;
createNode locator -n "IKSplineLocator6_MShape" -p "IKSplineLocator6_M";
	rename -uid "DAEEF80E-4D4F-4758-9D23-5798B50DDD60";
	setAttr -k off ".v";
createNode transform -n "IKSpline3LocalOrient1_M" -p "IKSpline3_M";
	rename -uid "38225824-4DD1-B426-95AE-82A99D6DB4B2";
	setAttr ".t" -type "double3" 6.6174449004242214e-24 0 0 ;
	setAttr ".r" -type "double3" -90 13.65982611572465 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 0.99999999999999944 ;
createNode transform -n "IKSpline3LocalOrient2_M" -p "IKSpline3LocalOrient1_M";
	rename -uid "ABB453FB-4F2B-E5D6-C2F5-788A9A2789FB";
createNode transform -n "IKSpline3LocalStartOrient_M" -p "IKSpline3_M";
	rename -uid "044819BF-4D57-C6ED-8860-5494E8E950ED";
	setAttr ".r" -type "double3" -90 38.489308862053917 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000004 0.99999999999999967 0.99999999999999978 ;
createNode parentConstraint -n "IKhybridFollowSpline1_M_parentConstraint1" -p "IKhybridFollowSpline1_M";
	rename -uid "F7BB7402-4F8A-2269-2585-D9A2BC783BB6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKhybridFollowSpline1_MStaticW0" 
		-dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKhybridFollowSpline1_MFollowW1" -dv 
		1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 -8.8817841970012523e-16 -1.3234889800848443e-23 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "IKFollowEndSpline_M" -p "IKHandleFollowMain";
	rename -uid "CF6CC8AA-4D54-09B2-EF5E-07A269461BAB";
createNode transform -n "IKFollowEndSpline1_M" -p "IKFollowEndSpline_M";
	rename -uid "F77FD3EB-493F-1156-A3BB-20994711BF20";
createNode parentConstraint -n "IKFollowEndSpline1_M_parentConstraint1" -p "IKFollowEndSpline1_M";
	rename -uid "F0F2673E-4787-3224-6893-5DA5C388E613";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr ".rst" -type "double3" -5.3668140291536789e-08 -1.227784371999455 -8.5768273107507387 ;
	setAttr -k on ".w0";
createNode transform -n "IKFollowEndSpline3_M" -p "IKFollowEndSpline_M";
	rename -uid "393379A6-432E-70E6-674B-9CBFC25FA852";
createNode parentConstraint -n "IKFollowEndSpline3_M_parentConstraint1" -p "IKFollowEndSpline3_M";
	rename -uid "4237030B-4F18-B86D-8CAF-7E8E43151399";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline3_MW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
	setAttr ".rst" -type "double3" -6.5167479309388691e-08 -33.195198718934854 -23.771722510862631 ;
	setAttr -k on ".w0";
createNode transform -n "IKScalerHairs1_M" -p "IKHandleFollowMain";
	rename -uid "218044E1-4666-0AEE-C353-B7AD0BFA9929";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.25 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs1_M_scaleConstraint1" -p "IKScalerHairs1_M";
	rename -uid "BB2372A0-478D-B426-9E1C-12B5AF4ABE03";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerHairs1Part1_M" -p "IKHandleFollowMain";
	rename -uid "5F08E589-4441-CAB9-9255-3FB511A7549B";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.5 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs1Part1_M_scaleConstraint1" -p "IKScalerHairs1Part1_M";
	rename -uid "D6803EA9-49B4-79CB-7145-5FB78468CD74";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0.7407407407407407;
	setAttr -k on ".w1" 0.25925925925925919;
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerHairs1Part2_M" -p "IKHandleFollowMain";
	rename -uid "08D7CDB4-450E-C8F0-DD2A-60B6E63396EC";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.75 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs1Part2_M_scaleConstraint1" -p "IKScalerHairs1Part2_M";
	rename -uid "5A3AC595-450A-2D31-69A8-069415D152C6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0.25925925925925947;
	setAttr -k on ".w1" 0.74074074074074059;
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerHairs2_M" -p "IKHandleFollowMain";
	rename -uid "C827F4FC-4CA7-1ACF-3793-E3AC2CB620D7";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 1 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs2_M_scaleConstraint1" -p "IKScalerHairs2_M";
	rename -uid "D24DFA5C-4806-5AD1-5191-5193B4B98A56";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1";
	setAttr -k on ".w2" 0;
createNode transform -n "IKScalerHairs2Part1_M" -p "IKHandleFollowMain";
	rename -uid "8FB8819D-4205-A7C5-D9DE-B9A6E1ED905D";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.75 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs2Part1_M_scaleConstraint1" -p "IKScalerHairs2Part1_M";
	rename -uid "F12C4D6B-46C9-9D09-372C-66BCC8637CAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1" 0.7407407407407407;
	setAttr -k on ".w2" 0.25925925925925919;
createNode transform -n "IKScalerHairs2Part2_M" -p "IKHandleFollowMain";
	rename -uid "92A0EAA3-42A7-0D34-05CA-D59F132CA219";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.5 -at "double";
	setAttr -k on ".scalerWeight";
createNode scaleConstraint -n "IKScalerHairs2Part2_M_scaleConstraint1" -p "IKScalerHairs2Part2_M";
	rename -uid "19BD1495-4E9B-C6EC-5886-BD8CC5128288";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1" 0.25925925925925947;
	setAttr -k on ".w2" 0.74074074074074059;
createNode transform -n "IKScalerHairs3_M" -p "IKHandleFollowMain";
	rename -uid "A209FDD7-48B2-20F2-26B4-D2837271AEDA";
	addAttr -ci true -k true -sn "scalerWeight" -ln "scalerWeight" -dv 0.25 -at "double";
createNode scaleConstraint -n "IKScalerHairs3_M_scaleConstraint1" -p "IKScalerHairs3_M";
	rename -uid "3319AD93-4B99-62B0-35CC-958AE49CA529";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline1LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKSpline2LocalOrient2_MW1" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w2" -ln "IKSpline3LocalOrient2_MW2" -dv 1 -min 
		0 -at "double";
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
	setAttr -s 3 ".tg";
	setAttr -k on ".w0" 0;
	setAttr -k on ".w1" 0;
	setAttr -k on ".w2";
createNode ikHandle -n "IKSplineHandle_M" -p "IKHandle";
	rename -uid "79C9A396-4285-31C2-0A5F-38AA26B1B711";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" -8.9160817103715358e-08 -33.346960446001226 -23.808605067763285 ;
	setAttr ".r" -type "double3" -90.000000858798103 38.489308942807192 -90.000000119277615 ;
	setAttr ".roc" yes;
	setAttr ".dwut" 4;
	setAttr ".dtvt" 2;
	setAttr ".dtrm" 3.333;
	setAttr ".dtce" yes;
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "74EB1E0F-4423-508C-AF94-15BA77F0A6A6";
createNode transform -n "IKhybridFollowSpline1_MFollowNoScaleOffset" -p "IKFollow";
	rename -uid "5FE97FD3-4D99-56DF-AED7-4FBBC3E1D927";
createNode transform -n "IKhybridFollowSpline1_MFollowNoScale" -p "IKhybridFollowSpline1_MFollowNoScaleOffset";
	rename -uid "9324E3EE-41E5-3CEB-8DE4-66A7E2411644";
createNode pointConstraint -n "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1" 
		-p "IKhybridFollowSpline1_MFollowNoScaleOffset";
	rename -uid "B2A4BAB2-403B-33F2-AD88-33A733197487";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1" 
		-p "IKhybridFollowSpline1_MFollowNoScaleOffset";
	rename -uid "CC629ACB-454B-73CC-23B6-8E89DBB73E2E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rsrr" -type "double3" -90 81.853378872973877 -90 ;
	setAttr -k on ".w0";
createNode transform -n "IKhybridFollowSpline1_MFollowOffset" -p "IKFollow";
	rename -uid "EB7CB074-4736-AB9C-481F-938189BC1549";
	setAttr ".t" -type "double3" -5.3668140291536776e-08 -1.2277843719994543 -8.5768273107507387 ;
	setAttr ".r" -type "double3" -90 38.489308862053953 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "IKhybridFollowSpline1_MFollow" -p "IKhybridFollowSpline1_MFollowOffset";
	rename -uid "A04C07B6-4300-29D1-977E-BA895B417FF6";
createNode parentConstraint -n "IKhybridFollowSpline1_MFollow_parentConstraint1" 
		-p "IKhybridFollowSpline1_MFollow";
	rename -uid "911A45F3-4FE8-D2FE-58FF-33816E4A8FB8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKhybridFollowSpline1_MFollowNoScaleW0" 
		-dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 8.6642611446427882 5.6191862702812829e-15 -5.3668180211070273e-08 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -43.36407001091996 ;
	setAttr ".rst" -type "double3" 0 8.8817841970012523e-16 -6.6174449004242214e-24 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "E03F9DA3-4D2E-B015-CF7B-4EA686C71DA2";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "0FBD068A-4A7C-DD2E-E7ED-82AD219A978E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode scaleConstraint -n "IKStatic_scaleConstraint1" -p "IKStatic";
	rename -uid "6746B978-4448-F690-422D-33887125029D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "IKhybridFollowSpline1_MStaticOffset" -p "IKStatic";
	rename -uid "1C07AC93-4557-8247-1C93-3B96B39B8F67";
	setAttr ".t" -type "double3" -5.3668140291536776e-08 -1.2277843719994543 -8.5768273107507387 ;
	setAttr ".r" -type "double3" -90 38.489308862053953 -90 ;
	setAttr ".s" -type "double3" 1.0000000000000007 0.99999999999999967 0.99999999999999967 ;
createNode transform -n "IKhybridFollowSpline1_MStatic" -p "IKhybridFollowSpline1_MStaticOffset";
	rename -uid "A000FFC7-4A7C-DD7C-9F7D-BCA701996552";
createNode transform -n "IKCurve" -p "IKSystem";
	rename -uid "E200557A-4CA0-F053-497F-0792E3E7785F";
	setAttr ".it" no;
createNode transform -n "IKSplineCurve_M" -p "IKCurve";
	rename -uid "0FFC3494-46C4-6DFC-DB28-F6BBAB12DAA8";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode nurbsCurve -n "IKSplineCurve_MShape" -p "IKSplineCurve_M";
	rename -uid "AA2365BD-476D-F084-1A5B-C18E72F0CBF3";
	setAttr -k off ".v";
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 7 ".cp";
	setAttr ".cc" -type "nurbsCurve" 
		3 4 0 no 3
		9 0 0 0 1 2 3 4 4 4
		7
		-5.3668140291536776e-08 -1.2277843719994523 -8.5768273107507369
		-8.2505176617552888e-08 -5.7111618639778134 -12.141701101799615
		-1.055940840040449e-07 -10.194539355956174 -15.706574892848497
		-1.0881408299234303e-07 -14.677916847934538 -19.271448683897379
		-1.1668721380860396e-07 -20.850344157234474 -20.771539881510964
		-1.4246607840307748e-07 -27.022771466534412 -22.27163107912455
		-1.73388727870672e-07 -33.195198775834363 -23.771722276738135
		;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "D71C3EFB-4BA9-444A-7A0B-A08302B3F537";
createNode transform -n "IKParentConstraintToRoot_M" -p "IKSystem";
	rename -uid "1263A1EA-4673-81D6-A2BD-91B4B7D5AEEB";
createNode parentConstraint -n "IKParentConstraintToRoot_M_parentConstraint1" -p
		 "IKParentConstraintToRoot_M";
	rename -uid "B0244DA4-4F6F-C73B-9A3E-F4A7C7DD152A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr ".rsrr" -type "double3" -90 81.853378872973877 -90 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "77B7D408-4B1A-D4B1-4B12-01A0457AA328";
createNode transform -n "FKIKParentConstraintSpline_M" -p "FKIKSystem";
	rename -uid "F59D5561-4208-1D64-1805-869666759264";
createNode parentConstraint -n "FKIKParentConstraintSpline_M_parentConstraint1" 
		-p "FKIKParentConstraintSpline_M";
	rename -uid "3B36F517-42F2-09E0-CC2F-71A724667F23";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "LegLockConstrainedW0" -dv 1 -min 
		0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr ".rsrr" -type "double3" -90 81.853378872973877 -90 ;
	setAttr -k on ".w0";
createNode transform -n "FKIKSpline_M" -p "FKIKParentConstraintSpline_M";
	rename -uid "E11D9D62-4CA9-CC19-144C-8482902B1BCD";
	addAttr -ci true -k true -sn "FKIKBlend" -ln "FKIKBlend" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "autoVis" -ln "autoVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "FKVis" -ln "FKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "IKVis" -ln "IKVis" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "startJoint" -ln "startJoint" -dt "string";
	addAttr -ci true -sn "middleJoint" -ln "middleJoint" -dt "string";
	addAttr -ci true -sn "endJoint" -ln "endJoint" -dt "string";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr ".t" -type "double3" 10.172579297941271 -1.4245548173670832 17.598681945959875 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 8.1466211270261368 -89.999999348507146 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -k on ".FKIKBlend";
	setAttr -cb on ".autoVis";
	setAttr -k on ".FKVis";
	setAttr -k on ".IKVis";
	setAttr -l on ".startJoint" -type "string" "Hairs1";
	setAttr -l on ".middleJoint" -type "string" "Hairs2";
	setAttr -l on ".endJoint" -type "string" "Hairs3";
createNode nurbsCurve -n "FKIKSpline_MShape" -p "FKIKSpline_M";
	rename -uid "1E50F829-4F25-8006-23E8-33B2E031B29F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 2 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		-2.0746999478141945 12.148064408087315 1.4702387081502263e-15
		-0.29636199605007002 12.148064408087315 1.4702387081502263e-15
		-0.29636199605007002 13.926402359851448 1.8651459424359621e-15
		0.29636194740096439 13.926402359851448 1.8651459424359621e-15
		0.29636194740096439 12.148064408087315 1.4702387081502263e-15
		2.0746998991651 12.148064408087315 1.4702387081502263e-15
		2.0746998991651 11.555340464636281 1.3386275542970349e-15
		0.29636194740096439 11.555340464636281 1.3386275542970349e-15
		0.29636194740096439 9.7770025128721514 9.4372032001129809e-16
		-0.29636199605007002 9.7770025128721514 9.4372032001129809e-16
		-0.29636199605007002 11.555340464636281 1.3386275542970349e-15
		-2.0746999478141945 11.555340464636281 1.3386275542970349e-15
		-2.0746999478141945 12.148064408087315 1.4702387081502263e-15
		;
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "8D4B7F4D-4D3A-7859-A7FB-0A86B0C8714E";
	setAttr -l on ".it" no;
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "33C01B84-4863-1C81-F460-88B3E335838E";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "14B0885E-4552-3A7D-868C-55BF2F3E2E84";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "D649CE5B-49E4-4965-55D0-D2A90195EC0D";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "F2298B5F-448C-9DA6-DB1B-ABA09AB31522";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode scaleConstraint -n "RootFollowMain_scaleConstraint1" -p "RootFollowMain";
	rename -uid "EEF0B1EF-4708-AB93-C1B2-3DA7160A2DC0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "RootOffsetX_M" -p "RootFollowMain";
	rename -uid "B9EC703C-4607-2562-B39A-4CB625F26FF1";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "17C44D3A-410A-2437-57C1-628E59DF3D82";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "785642B4-4FC6-11A6-96FE-F79FF7F15DE2";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "258AA4DC-4EAE-2F05-89EA-A4844543524C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 39 0 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		-9.2018043530763617e-14 0 0
		-7.68780700606513e-07 0 -6.3693469382716241
		-0.61869839998583898 0 -6.3693470798475085
		-0.61869839998583898 0 -7.2664987872576265
		-1.7266130534554263 0 -7.2664987872576265
		0 0 -8.9931069005319575
		1.7266130534554263 0 -7.2664987872576265
		0.61869839998583898 0 -7.2664987872576265
		0.61869839998583898 0 -6.3693470798475085
		7.6878068220290406e-07 0 -6.3693472214233937
		0 0 0
		6.3693449745422868 0 3.2297278756113628e-10
		6.3693458448022353 0 -0.61870137181352891
		7.266502492393446 0 -0.61870137181352891
		7.266502492393446 0 -1.7266084220356497
		8.9931056654866826 0 3.9937417375543827e-15
		7.266502492393446 0 1.7266084220356497
		7.266502492393446 0 0.61870137181352891
		6.3693458448022353 0 0.61870137181352891
		6.3693467150621821 0 -3.2297278306806769e-10
		0 0 0
		-2.3607664313163306e-06 0 6.3693469631301785
		0.61869839998583898 0 6.3693470798475085
		0.61869839998583898 0 7.2664987872576265
		1.7266130534554263 0 7.2664987872576265
		0 0 8.9931069005319575
		-1.7266130534554263 0 7.2664987872576265
		-0.61869839998583898 0 7.2664987872576265
		-0.61869839998583898 0 6.3693470798475085
		2.3607664497199391e-06 0 6.3693471965648385
		0 0 0
		-6.3693444563433195 0 -3.0377726204705244e-11
		-6.3693458448022353 0 0.61870137181352891
		-7.266502492393446 0 0.61870137181352891
		-7.266502492393446 0 1.7266084220356497
		-8.9931056654866826 0 0
		-7.266502492393446 0 -1.7266084220356497
		-7.266502492393446 0 -0.61870137181352891
		-6.3693458448022353 0 -0.61870137181352891
		-6.3693472332611503 0 3.0377726204705244e-11
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "06EE7EE4-449E-E96C-BF49-779FCCFF10E4";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode pointConstraint -n "LegLockConstrained_pointConstraint1" -p "LegLockConstrained";
	rename -uid "C48E5831-4636-B633-24F7-899D36279B30";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "LegLockConstrained_orientConstraint1" -p "LegLockConstrained";
	rename -uid "C1E2BE51-44EA-6E07-52BD-089F37C98D65";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Root_MW0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr ".rsrr" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr -k on ".w0";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "78FE39BA-4385-EAC1-336A-0B965622630F";
createNode transform -n "TwistFollowOffsetSpline2_M" -p "TwistSystem";
	rename -uid "686AF140-404B-9E8B-BF7A-AAAC7697968E";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 -15.722445661050461 -19.26288670002068 ;
	setAttr ".r" -type "double3" -90 38.489308862053917 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "TwistFollowSpline2_M" -p "TwistFollowOffsetSpline2_M";
	rename -uid "D4F0F130-4736-3692-FE25-E39EA64C81A9";
	setAttr -l on ".v" no;
createNode parentConstraint -n "TwistFollowSpline2_M_parentConstraint1" -p "TwistFollowSpline2_M";
	rename -uid "08BE74AB-497C-B970-2613-15888B8AEF8C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 -15.722445661050461 -19.26288670002068 ;
	setAttr ".rsrr" -type "double3" -90 38.489308862053917 -90 ;
	setAttr -k on ".w0";
createNode ikHandle -n "UnTwistIKSpline2_M" -p "TwistFollowSpline2_M";
	rename -uid "6F539752-4470-A07F-275E-E1A41D30EF5E";
	setAttr ".t" -type "double3" 2.7662665646528559 -2.6645352591003757e-15 6.3108872417680944e-30 ;
	setAttr ".r" -type "double3" 51.510691137946083 -90 0 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "UnTwistIKSpline2_M_poleVectorConstraint1" -p "UnTwistIKSpline2_M";
	rename -uid "668DCDD7-42E2-6F02-5549-95890C69F99C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "UnTwistSpline2_MW0" -dv 1 -min 0 
		-at "double";
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
createNode transform -n "TwistFollowParentOffsetSpline2_M" -p "TwistSystem";
	rename -uid "AE9424EC-446C-769B-D57A-33A27ABC0518";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 -15.722445661050461 -19.26288670002068 ;
	setAttr ".r" -type "double3" -90 38.489308862053917 -90 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
createNode transform -n "TwistFollowParentSpline2_M" -p "TwistFollowParentOffsetSpline2_M";
	rename -uid "542E4474-4380-0663-4329-E7BDE187D790";
	setAttr -l on ".v" no;
createNode parentConstraint -n "TwistFollowParentSpline2_M_parentConstraint1" -p "TwistFollowParentSpline2_M";
	rename -uid "5E5FC0B3-4CEE-32A3-B964-85AE1E0358F8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2LocalOrient3_MW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 -15.722445661050461 -19.26288670002068 ;
	setAttr ".rsrr" -type "double3" -90 38.489308862053917 -90 ;
	setAttr -k on ".w0";
createNode joint -n "UnTwistSpline2_M" -p "TwistFollowParentSpline2_M";
	rename -uid "51DA609D-4BF1-60EC-7863-FFB81C375A7A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "UnTwistEndSpline2_M" -p "UnTwistSpline2_M";
	rename -uid "18BF59DB-4942-05DB-2F5E-929191F7DBAF";
	setAttr ".t" -type "double3" 2.766266564652863 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "TwistBalancerSpline2_M" -p "UnTwistSpline2_M";
	rename -uid "A2238761-4984-E030-7DAA-D6AB00CA32B9";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "TwistBalancerSpline2_M_parentConstraint1" -p "TwistBalancerSpline2_M";
	rename -uid "A849189A-4ED6-6911-AAB5-F7A931A23AAF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" 0 8.8817841970012523e-16 0 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "UnTwistSpline2_M_pointConstraint1" -p "UnTwistSpline2_M";
	rename -uid "FC1DEE43-41AC-1C0D-4B22-8BBA2AA57167";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "IKSpline2LocalOrient2_MW0" -dv 1 
		-min 0 -at "double";
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
	setAttr ".rst" -type "double3" -3.5527136788005009e-15 -2.6645352591003757e-15 0 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "UnTwistSpline2_M";
	rename -uid "FA7117B6-4D05-141E-49C5-0895C2FD76A9";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "52A3D868-48A7-180A-7C09-A1A1D3FA09C1";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "8088BD2B-48A0-97AE-F884-24B12FBCBD67";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "701EA942-4185-B762-7498-849CC8D95D96";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode scaleConstraint -n "GlobalFollowMain_scaleConstraint1" -p "GlobalFollowMain";
	rename -uid "9E274E00-4B14-BDF7-96F8-9BA0C1B7B264";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "MainW0" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
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
createNode transform -n "ConstraintSystem" -p "MotionSystem";
	rename -uid "61012809-412A-C428-A31A-91919D62669B";
createNode pointConstraint -n "Hairs3_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "C06A8182-4C86-9567-BF71-1D85E16C5929";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs3_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs3_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668141344843322e-08 -33.195198718934854 -23.771722510862634 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 6.3520967002832656 -3.5527136788005009e-15 1.082212589905192e-07 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs3_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "410B7C24-4F49-EF3B-1729-9AB0308FF1F9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs3_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs3_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668141344843322e-08 -33.195198718934854 -23.771722510862634 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs2Part2_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "529E25FC-4932-048F-6D4A-50A0A14A1D07";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2Part2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668140429569893e-08 -27.022771428601416 -22.271631235207551 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 6.352096700283262 3.5527136788005009e-15 9.6206697838872786e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs2Part2_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "E8C4E3B8-4112-6630-CAEA-B6B21E3FD0AA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2Part2_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2Part2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668140429569893e-08 -27.022771428601416 -22.271631235207551 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs2Part1_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "668D1B57-40F0-DD8E-E355-779BCABEDAF4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2Part1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139514296398e-08 -20.850344138267978 -20.771539959552463 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 6.352096700283262 7.1054273576010019e-15 8.4192136687226425e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs2Part1_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "57FECDB3-46E3-970E-BF8F-82BA309DED98";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2Part1_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2Part1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139514296398e-08 -20.850344138267978 -20.771539959552463 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs2_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "7FA42CE1-4634-96ED-25F4-84A26E5522BC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668138599022864e-08 -14.67791684793454 -19.271448683897368 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 5.7279140078815232 -4.4408920985006262e-15 7.2177575535580064e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs2_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "16559AE9-4E60-6ADD-1C9F-4C862A863EC6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs2_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668138599022864e-08 -14.67791684793454 -19.271448683897368 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000365232211 13.659826115724661 -90.000000111525608 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854067e-14 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs1Part2_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "E68986B8-4375-27B5-4BB1-9DA6A814FD27";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1Part2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139163194161e-08 -10.194539355956177 -15.706574892848494 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 5.7279140078815214 -2.6645352591003757e-15 4.8118383690386725e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs1Part2_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "0E970C82-4073-69F9-3019-97BAE3103D5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1Part2_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1Part2_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139163194161e-08 -10.194539355956177 -15.706574892848494 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs1Part1_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "0AB69E3D-4018-7DB7-46F3-D89D270D623D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1Part1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139727365485e-08 -5.7111618639778143 -12.141701101799615 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 5.7279140078815223 -1.7763568394002505e-15 2.4059191845193346e-08 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs1Part1_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "545AFE32-448A-3FBF-1CF8-95B47FD4D732";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1Part1_MW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1Part1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668139727365485e-08 -5.7111618639778143 -12.141701101799615 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Hairs1_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "3609793B-4CCC-7A99-AAC7-D28FBBF0CC8C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668140291536782e-08 -1.2277843719994543 -8.5768273107507387 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 8.6642611446427882 4.5089632632648571e-15 2.1032167692895693e-24 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "Hairs1_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "3451AFDA-4174-87AE-6898-7AB6479046AB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXHairs1_MW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "IKXHairs1_MW1" -dv 1 -min 0 -at "double";
	setAttr ".ihi" 0;
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" -5.3668140291536782e-08 -1.2277843719994543 -8.5768273107507387 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000000453418423 38.489308862053953 -90.000000307466891 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 -1.5177364390843893e-06 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5177364518066084e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "DA9FA1F8-448E-75CE-A310-0CB1EB72A6A3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "BE83CA1E-4B3B-A88F-540B-FCA4A310305C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.9919533497418248e-14 0 5.3755993932461457e-14 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" -90.000002504479042 81.853378872973877 -90.000002504479042 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 7.5692839846397567e-08 -7.0711148403951654e-07 2.5387583697663414e-06 ;
	setAttr ".rsrr" -type "double3" 7.5692839846397567e-08 -7.0711148403951665e-07 2.5387583697663414e-06 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "A19C5EB9-49F3-E17A-BB2C-9B90DE0CCBA2";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "CE9E2A69-4225-5AC0-6629-C5B0C3889279";
createNode transform -n "Root_M" -p "Group";
	rename -uid "4F15855D-4CDA-B294-B700-F98D698CF1DF";
createNode joint -n "Neck_M" -p "Root_M";
	rename -uid "67327808-4E53-052D-1D16-1381765F09C0";
	addAttr -ci true -sn "fat" -ln "fat" -dv 3.7537357477944666 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".ro" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000002504478161 81.853376334215497 -90.000002504478161 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -6.1942015960880781e-09 -0.14170675969971328 -0.98990867975556607 0
		 -4.411056381270485e-10 0.98990867975556596 -0.14170675969971328 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 3.9919533497418248e-14 0 5.3755993932461457e-14 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs1_M" -p "Neck_M";
	rename -uid "ED783703-474D-C3E0-ABB2-3FB98DD06ABE";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.183742023644573 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -43.364068493183481 ;
	setAttr ".bps" -type "matrix" -4.2003408654384434e-09 -0.78272430169330398 -0.62236859459546123 0
		 -4.5738216199470861e-09 0.62236859459546123 -0.78272430169330409 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -1.0733632050260708e-07 -1.2277843719994519 -8.5768273107507405 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs1Part1_M" -p "Hairs1_M";
	rename -uid "B2935147-4E98-CAE9-97CB-E79BFCE517FA";
	addAttr -ci true -sn "fat" -ln "fat" -dv 17.807924716046305 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.2003408654384434e-09 -0.78272430169330398 -0.62236859459546123 0
		 -4.5738216199470861e-09 0.62236859459546123 -0.78272430169330409 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -1.3139551001867828e-07 -5.7111618639778126 -12.141701101799622 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs1Part2_M" -p "Hairs1Part1_M";
	rename -uid "8E0260C5-471F-29F5-1941-7BB82728086D";
	addAttr -ci true -sn "fat" -ln "fat" -dv 18.432107408448037 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.2003408654384434e-09 -0.78272430169330398 -0.62236859459546123 0
		 -4.5738216199470861e-09 0.62236859459546123 -0.78272430169330409 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -1.5545469953474943e-07 -10.194539355956175 -15.706574892848497 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs2_M" -p "Hairs1Part2_M";
	rename -uid "7E64010A-4356-7DD7-D851-14AFDDF8D777";
	addAttr -ci true -sn "fat" -ln "fat" -dv 19.056290100849768 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -24.829482746329287 ;
	setAttr ".bps" -type "matrix" -1.8914324881710446e-09 -0.97171494414721171 -0.23615687015410092 0
		 -5.914828039736966e-09 0.23615687015410097 -0.97171494414721193 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -1.7951388905082068e-07 -14.67791684793454 -19.271448683897376 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs2Part1_M" -p "Hairs2_M";
	rename -uid "65E301F2-4C99-EC5A-B044-C79CCE68F251";
	addAttr -ci true -sn "fat" -ln "fat" -dv 19.056290100849768 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.8914324881710446e-09 -0.97171494414721171 -0.23615687015410092 0
		 -5.914828039736966e-09 0.23615687015410097 -0.97171494414721193 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -1.9152845023242019e-07 -20.850344138267978 -20.77153995955247 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs2Part2_M" -p "Hairs2Part1_M";
	rename -uid "1CB768BF-493D-281A-0C62-9A9613CE1B6E";
	addAttr -ci true -sn "fat" -ln "fat" -dv 19.056290100849768 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.8914324881710446e-09 -0.97171494414721171 -0.23615687015410092 0
		 -5.914828039736966e-09 0.23615687015410097 -0.97171494414721193 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -2.0354301141401978e-07 -27.022771428601413 -22.271631235207561 1;
	setAttr ".liw" yes;
createNode joint -n "Hairs3_M" -p "Hairs2Part2_M";
	rename -uid "8DB68BC4-442E-AAD6-B104-088027ECBF76";
	addAttr -ci true -sn "fat" -ln "fat" -dv 19.056290100849768 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.8914324881710446e-09 -0.97171494414721171 -0.23615687015410092 0
		 -5.914828039736966e-09 0.23615687015410097 -0.97171494414721193 0 1 -4.4110591568280465e-10 -6.1942015960880781e-09 0
		 -2.1555757259561923e-07 -33.195198718934854 -23.771722510862649 1;
	setAttr ".liw" yes;
createNode transform -n "Geometry" -p "Group";
	rename -uid "6BA53B16-4567-046F-5EC6-C4800CB97AFF";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "8D1F894F-4A73-C10B-7BC4-4C9F6FE5E43F";
createNode transform -n "Scarf" -p "geo";
	rename -uid "7C63809D-4F37-E448-4CCD-D3A33339B857";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 9.5367431640625e-07 -14.847977521324907 -4.839802448312807 ;
	setAttr ".sp" -type "double3" 9.5367431640625e-07 -14.847977521324907 -4.839802448312807 ;
createNode mesh -n "ScarfShape" -p "Scarf";
	rename -uid "FADE310B-4E05-0583-7E97-FD94F4C15421";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "ScarfShapeOrig" -p "Scarf";
	rename -uid "8A9CD176-4059-0DC4-0EA0-2B946D24AF55";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 718 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224;
	setAttr ".pt[166:331]" 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224;
	setAttr ".pt[332:497]" 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224;
	setAttr ".pt[498:663]" 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224;
	setAttr ".pt[664:717]" 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 
		0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 
		4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 
		-169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224 0 -169.38467 4.3181224;
	setAttr -s 718 ".vt";
	setAttr ".vt[0:165]"  -4.23889828 158.51283264 7.24614096 -0.92942536 147.26985168 7.32298613
		 -5.62973785 171.33755493 -11.82833767 -9.37842846 170.64718628 -12.38167381 -1.30084503 168.95132446 -6.087131977
		 -6.072700977 169.71325684 -18.19854736 -3.3327558 164.59463501 1.11851847 -1.95846772 164.22767639 1.33675301
		 -2.039636612 164.99711609 -0.30219972 -3.80315351 165.38894653 -0.098179482 -7.2552495 161.51394653 4.651999
		 -8.60645485 160.60810852 4.841506 -6.79204226 157.48803711 7.19552517 -2.84601092 154.90316772 8.93166828
		 1.4227998e-06 155.059112549 9.10057163 3.699857e-06 158.01625061 7.9862442 -4.99969006 154.37731934 8.66005421
		 -3.44042754 160.89498901 6.048195839 -6.2074995 162.57244873 4.13459396 3.8430881e-06 160.2858429 6.78425074
		 -1.28525901 148.49411011 6.68898344 5.3095963e-08 148.55247498 6.58747625 -5.9393788e-08 146.75170898 7.51315784
		 -1.24078012 146.80448914 7.55857849 -2.28499699 148.19610596 7.0055451393 -10.044625282 170.23347473 -7.20871592
		 -8.3138361 170.60102844 -7.11783266 -7.090215683 170.94143677 -6.51539898 -4.4158411 171.80334473 -9.70941067
		 -4.38406992 170.95269775 -15.71471024 -7.35962677 170.085540771 -16.4418602 -8.80457401 168.55003357 -18.30772781
		 -10.63295555 168.71060181 -16.34493446 -11.8166914 168.65156555 -14.64775467 -11.38731766 170.13708496 -10.7095356
		 -11.35124111 169.73373413 -6.76283789 -1.77861631 168.17330933 -5.22396183 -1.8644025e-08 167.82685852 -5.21923161
		 -2.0251941e-08 168.90808105 -6.18836546 -1.870664 169.79238892 -6.4780159 -3.21841073 169.062332153 -5.31361341
		 -3.2115619e-08 170.061477661 -6.91043758 -3.71909308 170.21051025 -18.14170074 -3.66031003 168.7646637 -20.29468155
		 -6.55458403 168.49252319 -19.68353081 -3.79787827 166.64479065 -22.47067833 -6.9183073 166.31900024 -21.74359131
		 -9.35618782 166.14813232 -20.58652306 -7.041251659 163.58795166 -23.73968506 -9.4942503 163.13397217 -22.79657745
		 -11.1412487 162.67779541 -21.75005913 -11.075558662 165.9397583 -19.26483345 -12.093083382 162.2089386 -20.82389832
		 -12.06866169 165.60224915 -18.10207176 -12.62595654 161.79368591 -20.099309921 -12.59856606 165.22627258 -17.26971436
		 -12.42356396 168.44351196 -13.553936 -12.14782715 169.71044922 -9.81341743 -12.91708946 164.87388611 -16.68664551
		 -12.72589111 168.14710999 -12.90067387 -12.45779896 169.27557373 -9.30897522 -12.33566093 168.69958496 -6.083564281
		 -12.05224514 169.21183777 -6.32829046 -12.77038479 167.77224731 -12.50456524 -12.41698742 168.79335022 -9.074442863
		 -12.21301842 168.13735962 -6.046691895 -12.12178612 166.22439575 -3.44778252 -12.31864357 166.83166504 -3.29947615
		 -11.89807415 168.19046021 -9.089500427 -11.62491989 167.46482849 -6.25164318 -11.53987408 165.5546875 -3.79677582
		 -11.52264118 162.80813599 -1.71819818 -12.054376602 163.43386841 -1.25476933 -10.55654335 166.62921143 -6.81261253
		 -10.54751205 164.77963257 -4.45648813 -10.60563183 162.12948608 -2.43458724 -10.3368187 159.48492432 -0.21924633
		 -11.23636532 160.020019531 0.50752461 -9.10066986 163.75476074 -5.69038057 -9.19667816 161.28330994 -3.63016653
		 -8.8654747 158.90261841 -1.28127623 -8.1654501 156.63575745 1.46226883 -9.57181358 157.020370483 2.50085545
		 -7.03650856 160.22680664 -5.37092638 -6.72396994 158.25727844 -2.7264986 -6.14661503 156.27529907 0.12578629
		 -5.39369059 154.14195251 2.61804891 -7.20510435 154.22935486 3.78541756 -3.65937209 157.93978882 -3.87577605
		 -3.34964299 156.068603516 -1.12866914 -2.92549968 154.1638031 1.509547 -2.40920186 152.24822998 3.75703764
		 -4.43733692 152.036010742 4.55677557 3.2249392e-08 156.084976196 -1.52041984 4.1883879e-08 154.2444458 1.079921126
		 2.6495516e-07 152.37184143 3.4060266 3.4974371e-07 150.43113708 5.25541592 -1.83325505 150.32351685 5.47649527
		 -3.36831784 150.055664063 6.0067739487 -3.034450769 147.76403809 7.45090818 -4.52060366 149.75088501 6.65175152
		 -5.95516872 151.87481689 5.4575491 -5.31610012 149.52696228 7.28748369 -6.99530649 151.8036499 6.26281452
		 -8.4541502 154.38322449 4.7412076 -7.52623987 151.90568542 6.88699722 -9.14166546 154.64726257 5.43990421
		 -10.41001415 157.44497681 3.23979449 -9.39456844 154.99819946 5.92188835 -10.79523277 157.901474 3.74340081
		 -11.70710468 160.54840088 1.0039316416 -10.91305256 158.33946228 4.094706535 -11.86044884 161.055053711 1.34137082
		 -12.24226475 164.026748657 -0.9627679 -11.73483372 161.56488037 1.58679819 -12.10196686 164.61199951 -0.783629
		 -12.10150051 167.38381958 -3.30479455 -11.63456726 165.20724487 -0.66573328 -11.51337051 167.92379761 -3.40363955
		 -10.89046478 165.79524231 -0.58053941 -10.60817242 168.46086121 -3.49541569 -9.98141289 166.35270691 -0.5129537
		 -9.48822117 168.91110229 -3.44073725 -9.083421707 166.84301758 -0.49398056 -8.51724434 169.26728821 -3.27111578
		 -8.26560116 167.19984436 -0.59302431 -7.73550797 169.45887756 -3.19185376 -6.33736992 171.10144043 -6.078911304
		 -7.037927628 169.46882629 -3.22083211 -5.75049829 171.055877686 -5.81563759 -3.40178943 171.93560791 -8.080579758
		 -3.8174603 171.96620178 -8.74055576 1.0777777e-08 172.35272217 -8.98658752 1.855874e-09 172.33938599 -9.76191235
		 5.0425473e-09 172.16717529 -10.90244484 -4.5889131e-08 171.84533691 -12.91789055
		 2.7723097e-09 171.35824585 -15.61594391 5.1768705e-08 170.43045044 -18.098379135
		 2.4864244e-08 168.86859131 -20.42215919 3.5151611e-08 166.75186157 -22.67103386 6.2859876e-08 164.23497009 -24.66571999
		 -3.84897161 164.048095703 -24.41628838 -3.8740438e-09 161.38195801 -26.1879158 -3.79249072 161.13696289 -25.91702271
		 -6.97464609 160.59501648 -25.30543709 -3.6668179 158.039230347 -26.93556786 -6.74029398 157.4312439 -26.36269569
		 -9.065489769 156.70515442 -25.68299866 -9.39727879 159.95536804 -24.53253746 -10.63386631 156.010406494 -24.99815559
		 -11.01295948 159.32583618 -23.70487785 -11.59837532 155.43563843 -24.36987114 -11.97986221 158.7809906 -22.94893456
		 -12.1283741 155.0083770752 -23.77602005 -12.52720833 158.35682678 -22.29308128 -12.32387447 154.70619202 -23.14829063
		 -12.78767204 158.035415649 -21.67698669 -12.93782425 161.45062256 -19.50779343 -12.79763126 157.7789917 -21.048669815
		 -13.018878937 161.15228271 -18.96011734 -13.03967762 164.53962708 -16.22718811 -12.62407589 160.88703918 -18.43151855
		 -12.68054581 164.18237305 -15.83960342 -12.3460083 167.2906189 -12.30119896 -11.54846191 163.70597839 -15.60106659
		 -11.22874451 166.53590393 -12.42316914;
	setAttr ".vt[166:331]" -10.79762363 167.36523438 -9.45970345 -9.4670887 165.25161743 -13.097720146
		 -9.16335106 166.12336731 -10.42463303 -9.018814087 165.49386597 -7.96892071 -6.89924002 164.32197571 -11.87819386
		 -6.86284304 163.9105072 -9.71522999 -6.98093796 162.39341736 -7.55390072 -3.75296497 162.81710815 -10.59318829
		 -3.78521538 161.62666321 -8.58030319 -3.79986787 159.8414917 -6.39747381 -1.0900318e-08 161.60411072 -8.78080845
		 -6.1595089e-09 159.86724854 -6.59338856 3.6688665e-08 157.94570923 -4.14330244 -2.3767988e-09 162.63098145 -10.73060703
		 -3.76806331 163.21432495 -12.50477028 2.0847475e-08 163.017822266 -12.58602333 -3.82887125 162.89764404 -14.29720116
		 1.0792256e-08 162.78771973 -14.3354845 -3.89848685 161.88839722 -15.90805149 3.01747e-08 161.92456055 -15.92033672
		 -3.93391323 160.23243713 -17.35769463 2.4095105e-08 160.41836548 -17.33145332 -3.87886524 158.064804077 -18.64077187
		 -1.1956784e-09 158.34008789 -18.56798935 -3.73465347 155.59632874 -19.71554375 -9.5625744e-08 155.88777161 -19.57076836
		 -3.47663093 152.94184875 -20.58303642 -1.028581e-09 153.24920654 -20.37207603 -3.084066629 150.17662048 -21.32001114
		 -4.0336978e-08 150.46289063 -21.10088921 -2.58543921 147.31425476 -22.052175522 2.0719826e-08 147.54090881 -21.86402321
		 -1.96681416 144.3299408 -22.9544754 2.5694247e-08 144.51048279 -22.80121422 -1.26876199 141.37088013 -24.2482357
		 9.3949506e-09 141.54714966 -24.094825745 -0.59531158 138.82585144 -25.83690834 6.5789063e-09 139.4193573 -25.39222145
		 -6.2511947e-11 137.57830811 -26.75146103 -1.12401605 138.43251038 -26.1678772 -1.1862484e-09 137.18345642 -27.079071045
		 -1.50686264 138.16238403 -26.42919159 -5.7590839e-09 136.9909668 -27.26216125 -1.80815554 137.95571899 -26.67728996
		 8.5033225e-09 136.84243774 -27.441679 -2.045805931 137.8137207 -26.9420948 1.2332017e-08 136.73974609 -27.65317535
		 -2.20320439 137.78039551 -27.24467468 -6.3895156e-09 136.72067261 -27.89825058 -2.21836042 137.90292358 -27.52038002
		 -3.0369822e-08 136.81613159 -28.104105 -2.083057404 138.15435791 -27.67516518 -7.0191803e-09 137.045669556 -28.20881653
		 -1.89973509 138.44903564 -27.78173447 -1.7240156e-08 137.34230042 -28.23860741 -1.68856847 138.76089478 -27.86797523
		 5.0501519e-08 137.62870789 -28.24040794 -1.42913365 139.13087463 -27.94027138 5.8668018e-08 137.93249512 -28.23453903
		 -1.084751248 139.58326721 -27.99467278 1.529642e-08 138.29469299 -28.21994209 -0.58682728 140.19799805 -28.0094013214
		 4.4265072e-09 138.86947632 -28.17094421 -3.0472596e-09 140.94570923 -27.9678154 -1.3024869 142.60469055 -27.84825897
		 -1.2835389e-08 142.90242004 -27.90048599 -2.018715858 145.47087097 -27.78977776 -1.9437942e-09 145.76008606 -27.88237762
		 -2.61746311 148.54269409 -27.79092216 -2.3749353e-08 148.87380981 -27.93049431 -3.096214294 151.68188477 -27.72975731
		 -4.4556714e-08 152.020111084 -27.93801689 -3.44642186 154.86219788 -27.49839211 -3.9186979e-08 155.18281555 -27.75305367
		 1.9101005e-08 158.32015991 -27.20236778 -5.60705566 150.95755005 -27.27023697 -6.29761696 154.18521118 -26.96634674
		 -7.41977024 150.13694763 -26.77765846 -8.4272747 153.39613342 -26.37282181 -8.6707859 149.37561035 -26.34570694
		 -9.88804245 152.6557312 -25.81929398 -9.5265398 148.741745 -25.95632935 -10.82529449 152.043884277 -25.31605339
		 -10.060679436 148.26733398 -25.54109573 -11.33726788 151.59643555 -24.79670525 -10.27442455 147.9730835 -24.96572685
		 -11.5174551 151.30210876 -24.18388939 -10.18435478 147.87107849 -24.29600334 -11.49028587 151.13891602 -23.52098846
		 -12.30580425 154.49443054 -22.48475266 -11.091677666 151.16508484 -22.8722477 -11.92662048 154.40963745 -21.82468224
		 -12.38906002 157.60025024 -20.41872406 -10.90579033 154.51293945 -21.20365715 -11.32150173 157.54212952 -19.83421135
		 -11.51307678 160.65162659 -17.97337151 -9.55119133 157.59280396 -19.32507133 -9.67393589 160.39942932 -17.64923859
		 -9.67568874 162.99624634 -15.63542271 -7.14408302 160.17904663 -17.46337509 -7.12402296 162.23747253 -15.81211853
		 -7.02562952 163.69219971 -13.95188713 -7.070943832 157.74987793 -18.91160011 -9.2189455 154.77867126 -20.61917686
		 -6.83684301 155.16313171 -20.099132538 -8.56820965 151.85983276 -21.64006615 -6.37562275 152.40455627 -21.051305771
		 -7.52014112 148.91355896 -22.44180107 -5.64271975 149.56752014 -21.82802963 -6.12591028 146.034240723 -23.10679436
		 -4.66227484 146.70678711 -22.53681755 -4.5499177 143.23776245 -23.83440781 -3.49466205 143.82034302 -23.36174393
		 -2.97686481 140.54919434 -24.96315956 -2.25845122 140.97241211 -24.58899689 -5.31584835 142.76060486 -24.29825401
		 -3.52623415 140.20593262 -25.31733704 -5.88453913 142.43161011 -24.77910042 -3.94638252 139.97331238 -25.6866703
		 -6.23237705 142.29222107 -25.32894135 -4.21435213 139.89595032 -26.12159538 -6.3260498 142.36195374 -25.92314148
		 -4.2721343 140.0046234131 -26.57858849 -6.17524767 142.61442566 -26.44991112 -4.12712526 140.25920105 -26.96320343
		 -5.79824924 143.020935059 -26.8361969 -3.83764791 140.59992981 -27.23045158 -5.25571537 143.53773499 -27.10077095
		 -3.45161915 141.0013580322 -27.42421532 -4.54688978 144.14871216 -27.34042931 -2.96060705 141.48234558 -27.5851593
		 -3.53910971 144.83215332 -27.57536507 -2.28937817 142.041549683 -27.73127556 -4.67121506 147.82461548 -27.44916916
		 -6.082654953 147.03793335 -27.081228256 -7.05535841 146.32022095 -26.75900841 -7.7609477 145.71557617 -26.44361305
		 -8.24218178 145.25090027 -26.06498909 -8.4262228 144.97868347 -25.49746704 -8.29609966 144.92138672 -24.8338356
		 -7.87234592 145.087753296 -24.22286415 -9.71537209 148.0040283203 -23.65830421 -7.14934063 145.4760437 -23.66816521
		 -8.83494949 148.36949158 -23.057723999 -10.11562347 151.4251709 -22.25788307 -2.99780726 171.608078 -7.51672029
		 -1.0251892e-08 172.040115356 -8.2990551 -2.49653125 170.85705566 -6.98059177 -2.8468673e-08 171.23472595 -7.60535192
		 -4.34550381 170.070709229 -5.45284843 -5.14817762 170.75578308 -5.61697102 -6.29801655 169.26997375 -3.31245804
		 -5.3449316 168.76077271 -3.46629 -5.64838505 167.139328 -1.47741568 -4.14829493 166.60183716 -1.84145784
		 -3.98182559 167.92420959 -3.66093826 -6.69086456 167.37672424 -1.11760581 -6.19998693 165.46458435 0.89773762
		 -5.15644407 165.5622406 0.3575474 -7.50525713 167.37638855 -0.81534576 -7.046947956 165.17979431 1.37927985
		 -5.42321062 163.36074829 3.47442555 -4.70439196 163.92651367 2.70868826 -7.84049082 164.7300415 1.7499944
		 -8.74254036 164.097686768 1.97838616 -9.73463154 163.41149902 2.039342403;
	setAttr ".vt[332:497]" -10.64856625 162.75035095 1.96475983 -9.72282982 159.90022278 4.78906107
		 -8.17423344 156.78305054 7.049581528 -11.32865047 162.12950134 1.79809248 -10.44499493 159.29954529 4.61288071
		 -8.96765232 156.20274353 6.83592606 -7.13342667 153.1860199 8.18428802 -6.34936666 153.74560547 8.41761494
		 -10.81316471 158.78721619 4.37204552 -9.33520508 155.73703003 6.56992292 -7.51322365 152.75297546 7.92650604
		 -5.57924175 150.16456604 8.7188921 -5.21462297 150.56947327 8.9357338 -9.44458294 155.35348511 6.27227211
		 -7.65141106 152.42604065 7.64378548 -5.74586201 149.87585449 8.48521519 -3.8223269 147.60493469 8.95192432
		 -3.66417003 147.87983704 9.13085747 -7.66256046 152.15228271 7.32160282 -5.79146957 149.6638031 8.20972157
		 -3.88820815 147.4161377 8.7320385 -1.94118667 145.49285889 9.0094127655 -1.89918244 145.68057251 9.22438431
		 -5.72316933 149.50001526 7.82895374 -3.85154271 147.31147766 8.39207649 -1.930287 145.43257141 8.6653204
		 2.9765673e-05 144.50973511 8.70230007 -2.0763415e-05 144.53948975 9.098457336 -3.56845593 147.42263794 7.93357182
		 -1.8000685 145.60536194 8.27443027 9.7639031e-06 144.77877808 8.34305859 -1.53868103 146.10678101 7.91102648
		 1.6979286e-06 145.42970276 8.025455475 -2.5346209e-05 144.75473022 9.41187191 -9.5350379e-06 145.11157227 9.56113911
		 -1.80540586 145.97817993 9.37226391 3.6431663e-06 145.5401001 9.64891434 -1.64552248 146.36654663 9.52051258
		 -3.37863159 148.2565155 9.3148632 -1.39851451 146.8241272 9.66138458 -2.90742922 148.7305603 9.49492168
		 -4.55579376 151.085891724 9.14626694 -2.18482399 149.25112915 9.67837429 -3.4887569 151.6446228 9.37387753
		 -1.18249702 149.70187378 9.84379578 -1.93058264 152.095855713 9.59675694 -2.6065013e-06 149.90132141 9.91621971
		 -1.5461935e-06 152.26548767 9.7047081 -0.51828116 147.87236023 9.87478638 -7.131477e-07 148.37190247 9.92455864
		 -1.4709803e-08 147.047195435 9.83679581 -1.029145002 147.33877563 9.77882195 3.5450816e-07 146.54093933 9.78534317
		 2.569235e-06 146.016784668 9.72227192 -2.53213358 162.88677979 3.99483371 -2.16662836 163.57440186 2.75157881
		 -3.95769644 164.34721375 1.84365439 -2.94020319 162.08241272 5.066234112 9.0933622e-07 161.61836243 5.68053246
		 -1.1255632e-07 162.51109314 4.47199345 -1.4502312e-07 163.29257202 3.066682816 1.1394132e-08 164.042114258 1.44424558
		 -1.3473754e-08 164.7999115 -0.34038287 -6.5199721e-09 165.62290955 -2.20733142 -2.19064426 165.94558716 -2.10108399
		 -5.6033417e-11 166.6413269 -3.87528634 -2.14555812 167.054046631 -3.80288076 4.238904 158.5128479 7.24612331
		 0.92942548 147.26985168 7.32298946 5.62973785 171.33755493 -11.82833767 9.37843132 170.64717102 -12.38167477
		 1.30084491 168.9513092 -6.0871315 6.072700977 169.71325684 -18.19854546 3.332757 164.59463501 1.11851799
		 1.9584676 164.22767639 1.33675289 2.039636612 164.99711609 -0.30219981 3.80315375 165.38894653 -0.09817946
		 7.25525618 161.51394653 4.65198231 8.60645866 160.60810852 4.84149837 6.79204702 157.48803711 7.19551849
		 2.84601092 154.90316772 8.931633 4.99969244 154.37731934 8.66004372 3.44043016 160.89501953 6.048164845
		 6.20751047 162.57246399 4.13458252 1.2852596 148.49411011 6.68898249 1.24078059 146.80447388 7.55857468
		 2.2849977 148.19610596 7.0055437088 10.04462719 170.23347473 -7.20871735 8.31383705 170.60102844 -7.11783314
		 7.090215683 170.94143677 -6.51539898 4.4158411 171.80337524 -9.70941162 4.3840704 170.95269775 -15.71470928
		 7.35962629 170.08555603 -16.4418602 8.80457306 168.55003357 -18.30772781 10.63295364 168.71060181 -16.34493446
		 11.8166914 168.65156555 -14.64775658 11.38731861 170.13708496 -10.70953751 11.35124207 169.73373413 -6.76283836
		 1.77861631 168.17330933 -5.22396183 1.870664 169.79238892 -6.47801447 3.21841049 169.062332153 -5.31361294
		 3.71909356 170.21051025 -18.14170074 3.66031027 168.7646637 -20.29468155 6.55458403 168.49252319 -19.6835289
		 3.79787803 166.64479065 -22.47067451 6.9183073 166.31900024 -21.74359131 9.35618782 166.14813232 -20.58652115
		 7.041252136 163.58795166 -23.73968315 9.49425125 163.13398743 -22.79657555 11.1412487 162.67779541 -21.75005531
		 11.075558662 165.9397583 -19.26482773 12.093081474 162.2089386 -20.82389832 12.068663597 165.60224915 -18.10207176
		 12.62595654 161.79368591 -20.099313736 12.59856606 165.22627258 -17.26971436 12.42356396 168.44351196 -13.55393982
		 12.14783096 169.71044922 -9.8134222 12.91708946 164.87387085 -16.68664551 12.72589493 168.14710999 -12.90067577
		 12.45780087 169.27555847 -9.30897808 12.33566093 168.69958496 -6.083566666 12.052247047 169.21183777 -6.32829332
		 12.77038574 167.77224731 -12.50456524 12.41698837 168.79333496 -9.074443817 12.21302032 168.13735962 -6.046693325
		 12.12178516 166.22439575 -3.44778347 12.31865025 166.83166504 -3.29947662 11.89807415 168.19046021 -9.089501381
		 11.6249218 167.46482849 -6.25164366 11.53987598 165.5546875 -3.79677749 11.52264023 162.80813599 -1.7181977
		 12.054374695 163.43386841 -1.2547698 10.55654144 166.62921143 -6.81261206 10.54751301 164.77963257 -4.45648956
		 10.60563183 162.12948608 -2.43458843 10.3368187 159.48492432 -0.21924745 11.23636627 160.020019531 0.50752401
		 9.10066986 163.75476074 -5.6903801 9.19667721 161.28330994 -3.63016582 8.86547661 158.90261841 -1.28127563
		 8.16545296 156.63574219 1.46226394 9.57181454 157.020370483 2.50085497 7.036508083 160.22680664 -5.37092638
		 6.72396994 158.25727844 -2.72649693 6.14661551 156.27529907 0.12578566 5.39369249 154.14193726 2.61804152
		 7.20510149 154.22937012 3.78542161 3.65937185 157.93978882 -3.8757751 3.34964299 156.068603516 -1.12866783
		 2.92550015 154.1638031 1.50954604 2.40920234 152.24819946 3.75703287 4.43733692 152.035995483 4.55677557
		 1.83325624 150.32351685 5.47648954 3.36831903 150.055648804 6.0067682266 3.034448862 147.76403809 7.45091391
		 4.52060413 149.75088501 6.6517477 5.95516634 151.87481689 5.45755243 5.31610346 149.52696228 7.28748226
		 6.99531078 151.80361938 6.26280928 8.45414925 154.38322449 4.74120617 7.52624512 151.90567017 6.88699818
		 9.14166451 154.64726257 5.43990183 10.41001797 157.44497681 3.23979664 9.39456844 154.99819946 5.92188644
		 10.79522419 157.90148926 3.74340081 11.7071085 160.54840088 1.0039317608;
	setAttr ".vt[498:663]" 10.91305161 158.33946228 4.094705582 11.86044693 161.055053711 1.34137022
		 12.24226284 164.026748657 -0.96276814 11.73483276 161.56488037 1.58679831 12.10196686 164.61199951 -0.78362882
		 12.1014986 167.38381958 -3.30479598 11.63456726 165.20724487 -0.66573304 11.51337337 167.92379761 -3.40364051
		 10.89046574 165.79524231 -0.58053982 10.60817337 168.46086121 -3.49541569 9.98141479 166.35270691 -0.51295525
		 9.48822117 168.91110229 -3.44073772 9.083423615 166.84301758 -0.49398378 8.51724625 169.26728821 -3.27111697
		 8.26560307 167.19984436 -0.59302735 7.73550844 169.45887756 -3.19185376 6.33736992 171.10144043 -6.078911304
		 7.037928104 169.46882629 -3.22083282 5.75049829 171.055862427 -5.81563759 3.40178895 171.93560791 -8.080580711
		 3.81746054 171.96620178 -8.74055576 3.84897137 164.048095703 -24.41628456 3.79249096 161.13694763 -25.91702271
		 6.97464514 160.59501648 -25.30543137 3.6668179 158.039230347 -26.93556976 6.74029446 157.4312439 -26.36269379
		 9.065490723 156.70515442 -25.68299866 9.39728069 159.95536804 -24.53253746 10.63386631 156.010406494 -24.99815559
		 11.012958527 159.32583618 -23.70487595 11.59837532 155.43563843 -24.36987305 11.97986031 158.7809906 -22.94893646
		 12.12837315 155.0083770752 -23.77602005 12.52720928 158.35682678 -22.29308128 12.32387447 154.70619202 -23.14829063
		 12.787673 158.035415649 -21.67698669 12.93782425 161.45062256 -19.50779724 12.79763222 157.7789917 -21.048671722
		 13.01887989 161.15228271 -18.96011734 13.039679527 164.53962708 -16.22718811 12.62407684 160.88703918 -18.43152046
		 12.68054676 164.18237305 -15.83960438 12.3460083 167.2906189 -12.30119896 11.54846287 163.70597839 -15.60106659
		 11.22874451 166.53590393 -12.42317009 10.79762363 167.36523438 -9.45970345 9.46708775 165.25161743 -13.0977211
		 9.16335011 166.12336731 -10.42463303 9.01881218 165.49386597 -7.96892071 6.89924002 164.32197571 -11.87819195
		 6.86284256 163.9105072 -9.71522999 6.980937 162.39341736 -7.55390024 3.75296497 162.8170929 -10.59318829
		 3.78521538 161.62666321 -8.58030319 3.79986787 159.8414917 -6.39747381 3.76806307 163.21432495 -12.50477028
		 3.82887125 162.89764404 -14.2972002 3.89848661 161.88839722 -15.90804958 3.93391323 160.23246765 -17.35769272
		 3.878865 158.064804077 -18.64077187 3.73465347 155.59632874 -19.71554375 3.47663045 152.94184875 -20.58303261
		 3.084066391 150.17662048 -21.32001305 2.58543897 147.31425476 -22.052173615 1.96681428 144.3299408 -22.9544754
		 1.26876211 141.37088013 -24.2482338 0.59531158 138.82585144 -25.83691025 1.12401581 138.43251038 -26.1678772
		 1.50686264 138.16238403 -26.42919159 1.80815601 137.95571899 -26.67728615 2.045805931 137.8137207 -26.9420929
		 2.20320415 137.78039551 -27.24467468 2.21836042 137.90292358 -27.52038002 2.083056927 138.15435791 -27.67516708
		 1.89973593 138.44903564 -27.78173447 1.68856907 138.76089478 -27.86797333 1.42913473 139.13087463 -27.94027138
		 1.084751248 139.58326721 -27.99467278 0.58682722 140.19799805 -28.0094013214 1.3024869 142.60469055 -27.84825897
		 2.018715858 145.47087097 -27.78977966 2.61746311 148.54269409 -27.79092026 3.096214294 151.68188477 -27.72976112
		 3.44642186 154.86219788 -27.49839211 5.60705423 150.95755005 -27.27024269 6.29761696 154.18521118 -26.96634865
		 7.41976881 150.13694763 -26.77766037 8.4272747 153.39613342 -26.37282181 8.6707859 149.37561035 -26.34570885
		 9.8880434 152.6557312 -25.81929207 9.5265398 148.741745 -25.95632935 10.8252964 152.043884277 -25.31605148
		 10.060677528 148.26733398 -25.54109573 11.33726883 151.59643555 -24.79670715 10.2744236 147.9730835 -24.96572685
		 11.51745319 151.30210876 -24.18388748 10.18435478 147.87107849 -24.29600334 11.49028587 151.13891602 -23.52098846
		 12.30580521 154.49443054 -22.48475266 11.091676712 151.16508484 -22.8722496 11.92662048 154.40963745 -21.82468414
		 12.38906193 157.60025024 -20.41872406 10.90579033 154.51293945 -21.20366096 11.32150173 157.54212952 -19.83421135
		 11.51307678 160.65162659 -17.97337151 9.55119038 157.59280396 -19.32507324 9.67393398 160.39942932 -17.64923859
		 9.6756897 162.99624634 -15.63542366 7.14408445 160.17904663 -17.463377 7.12402344 162.23747253 -15.81211758
		 7.025629044 163.69219971 -13.95188618 7.070943832 157.74987793 -18.91160011 9.21894646 154.77867126 -20.61918449
		 6.83684301 155.16313171 -20.099132538 8.56820965 151.85983276 -21.64006615 6.3756218 152.40455627 -21.051305771
		 7.5201416 148.91355896 -22.44180107 5.64272022 149.56752014 -21.82802963 6.12591076 146.034240723 -23.10679054
		 4.66227484 146.70678711 -22.53681946 4.5499177 143.23776245 -23.83440781 3.49466252 143.82034302 -23.36174011
		 2.97686529 140.54919434 -24.96316147 2.25845122 140.97241211 -24.58899498 5.3158493 142.76060486 -24.29825401
		 3.52623439 140.20593262 -25.31733513 5.8845396 142.43161011 -24.77910423 3.94638276 139.97331238 -25.6866703
		 6.23237705 142.29222107 -25.32894135 4.21435213 139.89595032 -26.12159729 6.3260498 142.36195374 -25.92314148
		 4.2721343 140.0046234131 -26.57858658 6.17524862 142.61442566 -26.44990921 4.12712526 140.25920105 -26.96320343
		 5.79824877 143.020935059 -26.8361969 3.83764768 140.59991455 -27.23044586 5.25571537 143.53773499 -27.10077095
		 3.45161819 141.0013580322 -27.42421722 4.54689026 144.14871216 -27.3404274 2.96060729 141.48234558 -27.5851593
		 3.53910971 144.83215332 -27.57536697 2.28937817 142.041549683 -27.73127556 4.67121553 147.82461548 -27.44917107
		 6.08265543 147.03793335 -27.081228256 7.05535984 146.32022095 -26.75900841 7.7609477 145.71557617 -26.44361305
		 8.24218082 145.25090027 -26.06498909 8.4262228 144.97868347 -25.49746704 8.29609871 144.92138672 -24.83383369
		 7.87234592 145.087753296 -24.22286224 9.71537209 148.0040283203 -23.65830421 7.14934015 145.4760437 -23.66816521
		 8.83494854 148.36949158 -23.057727814 10.11562443 151.4251709 -22.25788307 2.99780726 171.608078 -7.51672029
		 2.49653125 170.85705566 -6.98059177 4.34550333 170.070709229 -5.45284843 5.14817762 170.75578308 -5.61697149
		 6.29801607 169.26997375 -3.31245828 5.34493113 168.76077271 -3.46629024 5.64838505 167.13934326 -1.4774158
		 4.14829493 166.60183716 -1.84145784 3.98182535 167.92420959 -3.66093802 6.69086504 167.37672424 -1.11760664
		 6.19998789 165.46461487 0.89773589 5.15644407 165.5622406 0.35754696;
	setAttr ".vt[664:717]" 7.50525856 167.37638855 -0.81534773 7.04695034 165.17979431 1.3792752
		 5.42321587 163.36074829 3.47441363 4.70439339 163.92651367 2.70868373 7.84049416 164.7300415 1.74998665
		 8.74254513 164.097686768 1.97837865 9.7346344 163.41149902 2.039340258 10.64856911 162.75036621 1.96476042
		 9.72283554 159.90022278 4.78906345 8.17424011 156.7830658 7.049588203 11.32865143 162.12950134 1.79809368
		 10.44499111 159.29954529 4.61287975 8.96765709 156.20274353 6.83592796 7.13343 153.1860199 8.18428993
		 6.34936762 153.74560547 8.41761398 10.81316757 158.78721619 4.3720479 9.33520317 155.73703003 6.56992149
		 7.51322269 152.75297546 7.92650318 5.57924175 150.16456604 8.71889782 5.21462059 150.56947327 8.93573284
		 9.44458389 155.35348511 6.27227116 7.65141678 152.42604065 7.64379311 5.74586105 149.87585449 8.48521805
		 3.82233071 147.60493469 8.95192623 3.66416955 147.87985229 9.13085842 7.66256046 152.15228271 7.32160282
		 5.79146814 149.6638031 8.20972157 3.88821411 147.4161377 8.73203659 1.94116497 145.4928894 9.0094032288
		 1.89920235 145.68055725 9.22439671 5.72317505 149.50001526 7.82895184 3.85154271 147.31147766 8.39207363
		 1.93029118 145.43255615 8.66533089 3.56846309 147.42262268 7.93356228 1.80006444 145.60534668 8.27442646
		 1.53868306 146.10678101 7.91102362 1.80540621 145.97817993 9.37226295 1.64552259 146.36654663 9.52049732
		 3.37863064 148.2565155 9.31485653 1.39851701 146.8241272 9.66139793 2.90743113 148.7305603 9.49492741
		 4.55579472 151.085891724 9.14626694 2.18482256 149.25112915 9.67837334 3.48875666 151.6446228 9.37386799
		 1.18249202 149.70187378 9.84377766 1.93057883 152.095855713 9.59672928 0.51827973 147.87236023 9.87478542
		 1.029144406 147.33877563 9.77882671 2.53213429 162.88677979 3.99482727 2.16662836 163.57440186 2.75157738
		 3.95769715 164.347229 1.84365332 2.94020796 162.08241272 5.066231251 2.19064426 165.94558716 -2.10108423
		 2.14555836 167.054046631 -3.80288053;
	setAttr -s 1433 ".ed";
	setAttr ".ed[0:165]"  6 7 1 7 8 1 8 9 1 9 6 1 0 10 1 10 11 1 11 12 1 12 0 1
		 0 13 1 13 14 1 14 15 1 15 0 1 12 16 1 16 13 1 0 17 1 17 18 1 18 10 1 15 19 1 19 17 1
		 1 20 1 20 21 1 21 22 1 22 1 1 1 23 1 23 24 1 24 20 1 2 3 1 3 25 1 25 26 1 26 2 1
		 26 27 1 27 28 1 28 2 1 2 29 1 29 30 1 30 3 1 30 31 1 31 32 1 32 3 1 32 33 1 33 34 1
		 34 3 1 34 35 1 35 25 1 4 36 1 36 37 1 37 38 1 38 4 1 4 39 1 39 40 1 40 36 1 38 41 1
		 41 39 1 5 42 1 42 43 1 43 44 1 44 5 1 5 30 1 29 42 1 44 31 1 43 45 1 45 46 1 46 44 1
		 46 47 1 47 31 1 46 48 1 48 49 1 49 47 1 49 50 1 50 51 1 51 47 1 51 32 1 50 52 1 52 53 1
		 53 51 1 53 33 1 52 54 1 54 55 1 55 53 1 55 56 1 56 33 1 56 57 1 57 34 1 55 58 1 58 59 1
		 59 56 1 59 60 1 60 57 1 60 61 1 61 62 1 62 57 1 59 63 1 63 64 1 64 60 1 64 65 1 65 61 1
		 65 66 1 66 67 1 67 61 1 64 68 1 68 69 1 69 65 1 69 70 1 70 66 1 70 71 1 71 72 1 72 66 1
		 69 73 1 73 74 1 74 70 1 74 75 1 75 71 1 75 76 1 76 77 1 77 71 1 74 78 1 78 79 1 79 75 1
		 79 80 1 80 76 1 80 81 1 81 82 1 82 76 1 79 83 1 83 84 1 84 80 1 84 85 1 85 81 1 85 86 1
		 86 87 1 87 81 1 84 88 1 88 89 1 89 85 1 89 90 1 90 86 1 90 91 1 91 92 1 92 86 1 89 93 1
		 93 94 1 94 90 1 94 95 1 95 91 1 95 96 1 96 97 1 97 91 1 97 20 1 24 98 1 98 97 1 98 92 1
		 96 21 1 24 99 1 99 100 1 100 98 1 100 101 1 101 92 1 100 102 1 102 103 1 103 101 1
		 103 104 1 104 87 1 87 101 1 103 105 1 105 106 1 106 104 1;
	setAttr ".ed[166:331]" 106 107 1 107 82 1 82 104 1 106 108 1 108 109 1 109 107 1
		 109 110 1 110 77 1 77 107 1 109 111 1 111 112 1 112 110 1 112 113 1 113 72 1 72 110 1
		 112 114 1 114 115 1 115 113 1 115 116 1 116 67 1 67 113 1 115 117 1 117 118 1 118 116 1
		 118 35 1 35 62 1 62 116 1 117 119 1 119 120 1 120 118 1 120 25 1 119 121 1 121 122 1
		 122 120 1 122 26 1 121 123 1 123 124 1 124 122 1 124 27 1 123 125 1 125 126 1 126 124 1
		 126 127 1 127 27 1 126 128 1 128 129 1 129 127 1 129 130 1 130 131 1 131 127 1 131 28 1
		 130 132 1 132 133 1 133 131 1 133 134 1 134 28 1 134 135 1 135 2 1 135 136 1 136 29 1
		 136 137 1 137 42 1 137 138 1 138 43 1 138 139 1 139 45 1 139 140 1 140 141 1 141 45 1
		 140 142 1 142 143 1 143 141 1 143 144 1 144 48 1 48 141 1 143 145 1 145 146 1 146 144 1
		 146 147 1 147 148 1 148 144 1 148 49 1 147 149 1 149 150 1 150 148 1 150 50 1 149 151 1
		 151 152 1 152 150 1 152 52 1 151 153 1 153 154 1 154 152 1 154 54 1 153 155 1 155 156 1
		 156 154 1 156 157 1 157 54 1 157 58 1 156 158 1 158 159 1 159 157 1 159 160 1 160 58 1
		 160 63 1 159 161 1 161 162 1 162 160 1 162 163 1 163 63 1 163 68 1 162 164 1 164 165 1
		 165 163 1 165 166 1 166 68 1 166 73 1 165 167 1 167 168 1 168 166 1 168 169 1 169 73 1
		 169 78 1 168 170 1 170 171 1 171 169 1 171 172 1 172 78 1 172 83 1 171 173 1 173 174 1
		 174 172 1 174 175 1 175 83 1 175 88 1 174 176 1 176 177 1 177 175 1 177 178 1 178 88 1
		 178 93 1 173 179 1 179 176 1 173 180 1 180 181 1 181 179 1 180 182 1 182 183 1 183 181 1
		 182 184 1 184 185 1 185 183 1 184 186 1 186 187 1 187 185 1 186 188 1 188 189 1 189 187 1
		 188 190 1 190 191 1 191 189 1 190 192 1 192 193 1 193 191 1 192 194 1;
	setAttr ".ed[332:497]" 194 195 1 195 193 1 194 196 1 196 197 1 197 195 1 196 198 1
		 198 199 1 199 197 1 198 200 1 200 201 1 201 199 1 200 202 1 202 203 1 203 201 1 202 204 1
		 204 564 1 564 203 1 202 205 1 205 206 1 206 204 1 205 207 1 207 208 1 208 206 1 207 209 1
		 209 210 1 210 208 1 209 211 1 211 212 1 212 210 1 211 213 1 213 214 1 214 212 1 213 215 1
		 215 216 1 216 214 1 215 217 1 217 218 1 218 216 1 217 219 1 219 220 1 220 218 1 219 221 1
		 221 222 1 222 220 1 221 223 1 223 224 1 224 222 1 223 225 1 225 226 1 226 224 1 225 227 1
		 227 228 1 228 226 1 227 229 1 229 576 1 576 228 1 227 230 1 230 231 1 231 229 1 230 232 1
		 232 233 1 233 231 1 232 234 1 234 235 1 235 233 1 234 236 1 236 237 1 237 235 1 236 238 1
		 238 239 1 239 237 1 238 145 1 145 240 1 240 239 1 142 240 1 236 241 1 241 242 1 242 238 1
		 242 146 1 241 243 1 243 244 1 244 242 1 244 147 1 243 245 1 245 246 1 246 244 1 246 149 1
		 245 247 1 247 248 1 248 246 1 248 151 1 247 249 1 249 250 1 250 248 1 250 153 1 249 251 1
		 251 252 1 252 250 1 252 155 1 251 253 1 253 254 1 254 252 1 254 255 1 255 155 1 255 158 1
		 254 256 1 256 257 1 257 255 1 257 258 1 258 158 1 258 161 1 257 259 1 259 260 1 260 258 1
		 260 261 1 261 161 1 261 164 1 260 262 1 262 263 1 263 261 1 263 264 1 264 164 1 264 167 1
		 263 265 1 265 266 1 266 264 1 266 267 1 267 167 1 267 170 1 266 184 1 182 267 1 180 170 1
		 265 186 1 262 268 1 268 265 1 268 188 1 262 269 1 269 270 1 270 268 1 270 190 1 269 271 1
		 271 272 1 272 270 1 272 192 1 271 273 1 273 274 1 274 272 1 274 194 1 273 275 1 275 276 1
		 276 274 1 276 196 1 275 277 1 277 278 1 278 276 1 278 198 1 277 279 1 279 280 1 280 278 1
		 280 200 1 279 207 1 205 280 1 277 281 1 281 282 1 282 279 1 282 209 1;
	setAttr ".ed[498:663]" 281 283 1 283 284 1 284 282 1 284 211 1 283 285 1 285 286 1
		 286 284 1 286 213 1 285 287 1 287 288 1 288 286 1 288 215 1 287 289 1 289 290 1 290 288 1
		 290 217 1 289 291 1 291 292 1 292 290 1 292 219 1 291 293 1 293 294 1 294 292 1 294 221 1
		 293 295 1 295 296 1 296 294 1 296 223 1 295 297 1 297 298 1 298 296 1 298 225 1 297 232 1
		 230 298 1 297 299 1 299 234 1 295 300 1 300 299 1 300 243 1 241 299 1 293 301 1 301 300 1
		 301 245 1 291 302 1 302 301 1 302 247 1 289 303 1 303 302 1 303 249 1 287 304 1 304 303 1
		 304 251 1 285 305 1 305 304 1 305 253 1 283 306 1 306 305 1 306 307 1 307 253 1 307 256 1
		 306 308 1 308 309 1 309 307 1 309 310 1 310 256 1 310 259 1 309 273 1 271 310 1 269 259 1
		 308 275 1 281 308 1 130 311 1 311 312 1 312 132 1 311 313 1 313 314 1 314 312 1 313 39 1
		 41 314 1 313 315 1 315 40 1 311 316 1 316 315 1 316 317 1 317 318 1 318 315 1 129 316 1
		 128 317 1 318 319 1 319 320 1 320 321 1 321 318 1 321 40 1 317 322 1 322 319 1 322 323 1
		 323 324 1 324 319 1 128 325 1 325 322 1 325 326 1 326 323 1 326 327 1 327 328 1 328 323 1
		 325 125 1 125 329 1 329 326 1 329 18 1 18 327 1 123 330 1 330 329 1 330 10 1 121 331 1
		 331 330 1 331 11 1 119 332 1 332 331 1 332 333 1 333 11 1 333 334 1 334 12 1 332 335 1
		 335 336 1 336 333 1 336 337 1 337 334 1 337 338 1 338 339 1 339 334 1 336 340 1 340 341 1
		 341 337 1 341 342 1 342 338 1 342 343 1 343 344 1 344 338 1 341 345 1 345 346 1 346 342 1
		 346 347 1 347 343 1 347 348 1 348 349 1 349 343 1 346 350 1 350 351 1 351 347 1 351 352 1
		 352 348 1 352 353 1 353 354 1 354 348 1 351 355 1 355 356 1 356 352 1 356 357 1 357 353 1
		 357 358 1 358 359 1 359 353 1 356 360 1 360 361 1 361 357 1 361 362 1;
	setAttr ".ed[664:829]" 362 358 1 361 363 1 363 364 1 364 362 1 360 99 1 99 363 1
		 23 363 1 355 102 1 102 360 1 359 365 1 365 354 1 365 366 1 366 367 1 367 354 1 366 368 1
		 368 369 1 369 367 1 369 370 1 370 349 1 349 367 1 369 371 1 371 372 1 372 370 1 372 373 1
		 373 344 1 344 370 1 372 374 1 374 375 1 375 373 1 375 16 1 16 339 1 339 373 1 374 376 1
		 376 377 1 377 375 1 377 13 1 376 378 1 378 379 1 379 377 1 379 14 1 376 380 1 380 381 1
		 381 378 1 380 382 1 382 710 1 710 381 1 380 383 1 383 384 1 384 382 1 383 371 1 371 385 1
		 385 384 1 368 385 1 374 383 1 350 105 1 105 355 1 345 108 1 108 350 1 340 111 1 111 345 1
		 335 114 1 114 340 1 117 335 1 328 386 1 386 387 1 387 388 1 388 328 1 388 324 1 327 389 1
		 389 386 1 389 390 1 390 391 1 391 386 1 17 389 1 19 390 1 391 392 1 392 387 1 392 393 1
		 393 7 1 7 387 1 393 394 1 394 8 1 394 395 1 395 396 1 396 8 1 395 397 1 397 398 1
		 398 396 1 398 321 1 320 396 1 320 9 1 397 37 1 36 398 1 6 388 1 9 324 1 23 22 1 22 364 1
		 405 408 1 408 407 1 407 406 1 406 405 1 399 411 1 411 410 1 410 409 1 409 399 1 399 15 1
		 14 412 1 412 399 1 412 413 1 413 411 1 409 415 1 415 414 1 414 399 1 414 19 1 400 22 1
		 21 416 1 416 400 1 416 418 1 418 417 1 417 400 1 401 420 1 420 419 1 419 402 1 402 401 1
		 401 422 1 422 421 1 421 420 1 402 424 1 424 423 1 423 401 1 402 426 1 426 425 1 425 424 1
		 402 428 1 428 427 1 427 426 1 419 429 1 429 428 1 403 38 1 37 430 1 430 403 1 430 432 1
		 432 431 1 431 403 1 431 41 1 404 435 1 435 434 1 434 433 1 433 404 1 433 423 1 424 404 1
		 425 435 1 435 437 1 437 436 1 436 434 1 425 438 1 438 437 1 438 440 1 440 439 1 439 437 1
		 438 442 1 442 441 1 441 440 1 426 442 1 442 444 1 444 443 1;
	setAttr ".ed[830:995]" 443 441 1 427 444 1 444 446 1 446 445 1 445 443 1 427 447 1
		 447 446 1 428 448 1 448 447 1 447 450 1 450 449 1 449 446 1 448 451 1 451 450 1 448 453 1
		 453 452 1 452 451 1 451 455 1 455 454 1 454 450 1 452 456 1 456 455 1 452 458 1 458 457 1
		 457 456 1 456 460 1 460 459 1 459 455 1 457 461 1 461 460 1 457 463 1 463 462 1 462 461 1
		 461 465 1 465 464 1 464 460 1 462 466 1 466 465 1 462 468 1 468 467 1 467 466 1 466 470 1
		 470 469 1 469 465 1 467 471 1 471 470 1 467 473 1 473 472 1 472 471 1 471 475 1 475 474 1
		 474 470 1 472 476 1 476 475 1 472 478 1 478 477 1 477 476 1 476 480 1 480 479 1 479 475 1
		 477 481 1 481 480 1 477 483 1 483 482 1 482 481 1 481 94 1 93 480 1 482 95 1 482 484 1
		 484 96 1 484 485 1 485 418 1 416 484 1 483 485 1 485 487 1 487 486 1 486 418 1 483 488 1
		 488 487 1 488 490 1 490 489 1 489 487 1 488 478 1 478 491 1 491 490 1 491 493 1 493 492 1
		 492 490 1 491 473 1 473 494 1 494 493 1 494 496 1 496 495 1 495 493 1 494 468 1 468 497 1
		 497 496 1 497 499 1 499 498 1 498 496 1 497 463 1 463 500 1 500 499 1 500 502 1 502 501 1
		 501 499 1 500 458 1 458 503 1 503 502 1 503 505 1 505 504 1 504 502 1 503 453 1 453 429 1
		 429 505 1 505 507 1 507 506 1 506 504 1 419 507 1 507 509 1 509 508 1 508 506 1 420 509 1
		 509 511 1 511 510 1 510 508 1 421 511 1 511 513 1 513 512 1 512 510 1 421 514 1 514 513 1
		 514 516 1 516 515 1 515 513 1 514 518 1 518 517 1 517 516 1 422 518 1 518 133 1 132 517 1
		 422 134 1 401 135 1 423 136 1 433 137 1 434 138 1 436 139 1 436 519 1 519 140 1 519 520 1
		 520 142 1 519 439 1 439 521 1 521 520 1 521 523 1 523 522 1 522 520 1 521 525 1 525 524 1
		 524 523 1 440 525 1 525 527 1 527 526 1 526 524 1 441 527 1 527 529 1;
	setAttr ".ed[996:1161]" 529 528 1 528 526 1 443 529 1 529 531 1 531 530 1 530 528 1
		 445 531 1 531 533 1 533 532 1 532 530 1 445 534 1 534 533 1 449 534 1 534 536 1 536 535 1
		 535 533 1 449 537 1 537 536 1 454 537 1 537 539 1 539 538 1 538 536 1 454 540 1 540 539 1
		 459 540 1 540 542 1 542 541 1 541 539 1 459 543 1 543 542 1 464 543 1 543 545 1 545 544 1
		 544 542 1 464 546 1 546 545 1 469 546 1 546 548 1 548 547 1 547 545 1 469 549 1 549 548 1
		 474 549 1 549 551 1 551 550 1 550 548 1 474 552 1 552 551 1 479 552 1 552 177 1 176 551 1
		 479 178 1 179 550 1 181 553 1 553 550 1 183 554 1 554 553 1 185 555 1 555 554 1 187 556 1
		 556 555 1 189 557 1 557 556 1 191 558 1 558 557 1 193 559 1 559 558 1 195 560 1 560 559 1
		 197 561 1 561 560 1 199 562 1 562 561 1 201 563 1 563 562 1 564 563 1 206 565 1 565 564 1
		 208 566 1 566 565 1 210 567 1 567 566 1 212 568 1 568 567 1 214 569 1 569 568 1 216 570 1
		 570 569 1 218 571 1 571 570 1 220 572 1 572 571 1 222 573 1 573 572 1 224 574 1 574 573 1
		 226 575 1 575 574 1 576 575 1 231 577 1 577 576 1 233 578 1 578 577 1 235 579 1 579 578 1
		 237 580 1 580 579 1 239 581 1 581 580 1 240 522 1 522 581 1 581 583 1 583 582 1 582 580 1
		 523 583 1 583 585 1 585 584 1 584 582 1 524 585 1 585 587 1 587 586 1 586 584 1 526 587 1
		 587 589 1 589 588 1 588 586 1 528 589 1 589 591 1 591 590 1 590 588 1 530 591 1 591 593 1
		 593 592 1 592 590 1 532 593 1 593 595 1 595 594 1 594 592 1 532 596 1 596 595 1 535 596 1
		 596 598 1 598 597 1 597 595 1 535 599 1 599 598 1 538 599 1 599 601 1 601 600 1 600 598 1
		 538 602 1 602 601 1 541 602 1 602 604 1 604 603 1 603 601 1 541 605 1 605 604 1 544 605 1
		 605 607 1 607 606 1 606 604 1 544 608 1 608 607 1 547 608 1 608 554 1;
	setAttr ".ed[1162:1327]" 555 607 1 547 553 1 556 606 1 606 609 1 609 603 1 557 609 1
		 609 611 1 611 610 1 610 603 1 558 611 1 611 613 1 613 612 1 612 610 1 559 613 1 613 615 1
		 615 614 1 614 612 1 560 615 1 615 617 1 617 616 1 616 614 1 561 617 1 617 619 1 619 618 1
		 618 616 1 562 619 1 619 621 1 621 620 1 620 618 1 563 621 1 621 565 1 566 620 1 620 623 1
		 623 622 1 622 618 1 567 623 1 623 625 1 625 624 1 624 622 1 568 625 1 625 627 1 627 626 1
		 626 624 1 569 627 1 627 629 1 629 628 1 628 626 1 570 629 1 629 631 1 631 630 1 630 628 1
		 571 631 1 631 633 1 633 632 1 632 630 1 572 633 1 633 635 1 635 634 1 634 632 1 573 635 1
		 635 637 1 637 636 1 636 634 1 574 637 1 637 639 1 639 638 1 638 636 1 575 639 1 639 577 1
		 578 638 1 579 640 1 640 638 1 640 641 1 641 636 1 640 582 1 584 641 1 641 642 1 642 634 1
		 586 642 1 642 643 1 643 632 1 588 643 1 643 644 1 644 630 1 590 644 1 644 645 1 645 628 1
		 592 645 1 645 646 1 646 626 1 594 646 1 646 647 1 647 624 1 594 648 1 648 647 1 597 648 1
		 648 650 1 650 649 1 649 647 1 597 651 1 651 650 1 600 651 1 651 612 1 614 650 1 600 610 1
		 616 649 1 649 622 1 312 652 1 652 517 1 314 653 1 653 652 1 431 653 1 432 654 1 654 653 1
		 654 655 1 655 652 1 654 657 1 657 656 1 656 655 1 655 516 1 656 515 1 657 660 1 660 659 1
		 659 658 1 658 657 1 432 660 1 658 661 1 661 656 1 658 663 1 663 662 1 662 661 1 661 664 1
		 664 515 1 662 665 1 665 664 1 662 667 1 667 666 1 666 665 1 665 668 1 668 512 1 512 664 1
		 666 415 1 415 668 1 668 669 1 669 510 1 409 669 1 669 670 1 670 508 1 410 670 1 670 671 1
		 671 506 1 410 672 1 672 671 1 411 673 1 673 672 1 672 675 1 675 674 1 674 671 1 673 676 1
		 676 675 1 673 678 1 678 677 1 677 676 1 676 680 1 680 679 1 679 675 1;
	setAttr ".ed[1328:1432]" 677 681 1 681 680 1 677 683 1 683 682 1 682 681 1 681 685 1
		 685 684 1 684 680 1 682 686 1 686 685 1 682 688 1 688 687 1 687 686 1 686 690 1 690 689 1
		 689 685 1 687 691 1 691 690 1 687 693 1 693 692 1 692 691 1 691 695 1 695 694 1 694 690 1
		 692 696 1 696 695 1 692 359 1 358 696 1 696 698 1 698 697 1 697 695 1 362 698 1 364 699 1
		 699 698 1 699 486 1 486 697 1 699 417 1 697 489 1 489 694 1 693 365 1 693 700 1 700 366 1
		 700 701 1 701 368 1 700 688 1 688 702 1 702 701 1 702 704 1 704 703 1 703 701 1 702 683 1
		 683 705 1 705 704 1 705 707 1 707 706 1 706 704 1 705 678 1 678 413 1 413 707 1 707 709 1
		 709 708 1 708 706 1 412 709 1 709 379 1 378 708 1 710 708 1 384 711 1 711 710 1 385 703 1
		 703 711 1 711 706 1 694 492 1 492 689 1 689 495 1 495 684 1 684 498 1 498 679 1 679 501 1
		 501 674 1 674 504 1 667 714 1 714 713 1 713 712 1 712 667 1 663 714 1 712 715 1 715 666 1
		 712 391 1 390 715 1 715 414 1 713 392 1 713 406 1 406 393 1 407 394 1 407 716 1 716 395 1
		 716 717 1 717 397 1 716 659 1 660 717 1 408 659 1 717 430 1 714 405 1 663 408 1 22 417 1;
	setAttr -s 718 ".n";
	setAttr ".n[0:165]" -type "float3"  0.17231525 0.86224377 0.47628054 0.10772322
		 0.89945686 0.42352453 0.16484211 0.88670135 0.43195805 0.2552174 0.83145541 0.49350372
		 -0.16206665 0.44293541 0.88178378 -0.2282581 0.56428337 0.79339933 -0.30560392 0.5342477
		 0.78815335 -0.22486857 0.41120696 0.88337022 -0.12440808 0.30152524 0.9453069 5.9396707e-06
		 0.28631365 0.95813596 1.1733789e-06 0.40516394 0.91424406 -0.21573104 0.23166363
		 0.94857371 -0.14595097 0.55374235 0.81979734 -0.16863495 0.64341307 0.74671406 1.4027448e-06
		 0.53911346 0.84223318 -0.051970039 -0.45808017 -0.88739038 -0.071525574 -0.53152925
		 -0.84401464 -3.1621909e-07 -0.52300125 -0.85233194 -1.3868355e-06 -0.41339311 -0.91055268
		 -0.066177748 -0.42238793 -0.90399611 -0.15730432 -0.50734305 -0.84726524 -0.17102462
		 0.98194039 -0.080892816 -0.26644379 0.9541797 -0.1361938 -0.24749056 0.94822413 0.19904624
		 -0.26425889 0.95209867 0.15386805 -0.32161981 0.93281132 0.16255386 -0.2135765 0.97419614
		 -0.072986186 -0.14284144 0.96596211 -0.2156698 -0.30294079 0.89892286 -0.31648791
		 -0.39156154 0.7538901 -0.52756923 -0.47615239 0.77613157 -0.41339895 -0.65026361
		 0.67282212 -0.35279971 -0.40170875 0.91015834 -0.101202 -0.34143904 0.90115064 0.26710838
		 0.1682155 0.60958195 0.77466983 0.24827464 0.69806272 0.67161608 0 0.71422261 0.69991863
		 3.393209e-06 0.60347509 0.79738188 0.23861228 0.53092718 0.81313008 0.38737121 0.6076867
		 0.69329679 -3.2655831e-07 0.52015257 0.85407335 -0.25138429 0.84249794 -0.47644851
		 -0.09804555 0.89185458 -0.4415682 -0.11507919 0.76776952 -0.63030684 -0.27375832
		 0.72649175 -0.63029051 -0.14052975 0.65466851 -0.74273849 -0.30004358 0.62544709
		 -0.72027057 -0.44822019 0.60357839 -0.65938741 -0.312617 0.50406516 -0.80510181 -0.46713713
		 0.47734216 -0.74426299 -0.63840878 0.42483258 -0.6418345 -0.62111425 0.55135739 -0.5569759
		 -0.78165823 0.35447073 -0.51318705 -0.780123 0.45006305 -0.43457031 -0.87303126 0.2819151
		 -0.39791998 -0.87046844 0.35849139 -0.33729607 -0.80685997 0.52651912 -0.26787046
		 -0.66181403 0.74828255 -0.045557283 -0.93924516 0.25568044 -0.22901109 -0.94612581
		 0.30057141 -0.12042757 -0.95232987 0.30360049 0.029909477 -0.98095238 0.17095247
		 0.092236809 -0.60096079 0.75127095 0.27283341 -0.93891722 -0.25365123 0.23258436
		 -0.8923533 -0.43968949 0.10187622 -0.86379105 -0.47392356 -0.17105988 -0.85424834
		 -0.38486579 -0.34948257 -0.99943393 0.013696916 0.030727012 -0.64489031 -0.75787604
		 0.098693565 -0.71361464 -0.64515829 -0.27299243 -0.7407825 -0.47686598 -0.47311747
		 -0.76951438 -0.41781676 -0.48298734 -0.88843995 -0.32168952 -0.32739937 -0.69377291
		 -0.6533668 -0.30297032 -0.73093987 -0.47178647 -0.4930968 -0.72439831 -0.44808725
		 -0.52389395 -0.64358938 -0.59513062 -0.48126113 -0.75669116 -0.52148843 -0.39429471
		 -0.73669666 -0.469935 -0.48625007 -0.69303286 -0.50292885 -0.51649594 -0.5656451
		 -0.66293335 -0.49047425 -0.49775344 -0.71271014 -0.49425274 -0.59750807 -0.66136032
		 -0.45341659 -0.46949872 -0.68267828 -0.55992973 -0.3902407 -0.77636701 -0.49494085
		 -0.36562505 -0.77924395 -0.50901586 -0.32310739 -0.74296355 -0.58617979 -0.44980124
		 -0.68737262 -0.57026112 -0.15678497 -0.80928057 -0.56611258 -0.1725124 -0.8174054
		 -0.54962516 -0.15325755 -0.79255044 -0.59023374 -0.11941812 -0.72957212 -0.67339724
		 -0.2532154 -0.68882006 -0.6792708 1.1316986e-07 -0.81591541 -0.57817131 -9.8105204e-08
		 -0.79857385 -0.60189682 -5.3440826e-06 -0.73840618 -0.67435622 -1.199114e-06 -0.64002341
		 -0.76835537 -0.10123093 -0.63100541 -0.76914525 -0.206864 -0.6058526 -0.76821214
		 -0.28031638 -0.5103277 -0.81301188 -0.32577699 -0.58978277 -0.73893547 -0.38023087
		 -0.64940971 -0.65855259 -0.48227042 -0.61510783 -0.62374485 -0.52614027 -0.63598579
		 -0.56453389 -0.57133263 -0.64664209 -0.50540382 -0.74205905 -0.61577761 -0.26488921
		 -0.75408435 -0.58680487 -0.2949861 -0.7457577 -0.58440417 -0.31987059 -0.89123011
		 -0.44990656 0.057384435 -0.89687139 -0.43656257 -0.070956841 -0.90176851 -0.38417026
		 -0.19805752 -0.95065367 -0.19213781 0.24359944 -0.98455113 -0.10653778 0.13895601
		 -0.99806035 -0.053227451 0.032285426 -0.85505408 0.22452533 0.46740866 -0.83755755
		 0.31967631 0.44306257 -0.69538146 0.55614191 0.45513821 -0.60804498 0.51953131 0.60030705
		 -0.45651716 0.72439158 0.51657426 -0.47980657 0.60811263 0.63244343 -0.37688851 0.79116857
		 0.48167136 -0.40924355 0.65316921 0.63709474 -0.36408401 0.8224389 0.43707794 -0.30716628
		 0.68462038 0.66101724 -0.32381016 0.82856095 0.45676443 -0.10345069 0.71972698 0.68650639
		 -0.13142505 0.82908553 0.54345614 -0.22023459 0.93783116 0.26827124 0.15314072 0.76951623
		 0.6199941 0.063028358 0.87010515 0.48881945 -0.044529717 0.95036829 0.30792406 -0.17526144
		 0.98408872 0.029202199 2.8094524e-08 0.97970837 0.20042826 0 0.99534297 -0.096396938
		 -3.4305897e-06 0.98796773 -0.1546603 0 0.98559088 -0.16914684 2.865638e-08 0.96466798
		 -0.26346853 0 0.88793999 -0.45995936 0 0.77916485 -0.62681907 3.7036557e-07 0.67538506
		 -0.73746526 4.145534e-07 0.54788119 -0.83655614 -0.15821159 0.52364433 -0.83711749
		 7.9290828e-07 0.39414626 -0.91904771 -0.15805152 0.37771401 -0.91233319 -0.29479668
		 0.36230069 -0.88421327 -0.15049469 0.23378342 -0.96057099 -0.27075198 0.2145686 -0.9384315
		 -0.38713974 0.1955492 -0.90104568 -0.43740636 0.34389189 -0.83091158 -0.5213728 0.17671089
		 -0.83483154 -0.59604216 0.3145465 -0.73877889 -0.68032825 0.13641995 -0.72009939
		 -0.74303126 0.26700887 -0.61368626 -0.86744899 0.031204306 -0.4965466 -0.87467974
		 0.17976779 -0.45013207 -0.97655666 -0.11693636 -0.18072914 -0.97892499 0.020561367
		 -0.20318253 -0.95750362 0.15797459 -0.24131058 -0.94921368 -0.22048728 0.22445199
		 -0.96631855 -0.17146109 0.19191031 -0.97736353 -0.12775999 0.16863558 -0.58690453
		 -0.47973666 0.65222371 -0.56640571 -0.55693907 0.60745651 -0.56781149 -0.67721683
		 0.46793962 -0.30267939 -0.64618844 0.70058954 -0.40171596 -0.76427048 0.50449467;
	setAttr ".n[166:331]" -type "float3"  -0.57501739 -0.81397808 0.082429901 -0.34871498
		 -0.78809971 0.50724423 -0.57808727 -0.81112438 0.088838637 -0.70898807 -0.63440096
		 -0.30801192 -0.45463905 -0.88842732 0.063247845 -0.55664843 -0.75475079 -0.34712216
		 -0.55083102 -0.62558395 -0.55247617 -0.22265048 -0.90340531 -0.36645001 -0.19048198
		 -0.79974872 -0.56931412 -0.14549181 -0.78060377 -0.60785681 0 -0.83153164 -0.55547738
		 0 -0.7851122 -0.61935353 7.7887194e-08 -0.80170006 -0.59772652 -1.9056333e-06 -0.93739742
		 -0.34826145 -0.18744525 -0.9821189 -0.017512776 0 -0.9990561 -0.043438464 -0.099294789
		 -0.92588192 0.36453143 -3.8801087e-08 -0.95022583 0.31156203 -0.023117576 -0.75353384
		 0.65700251 -1.5174392e-07 -0.78435844 0.62030786 0.004454189 -0.58144021 0.81357694
		 2.1095366e-06 -0.5941385 0.80436277 -0.0054556536 -0.45350349 0.8912378 0 -0.44309601
		 0.89647418 -0.034348812 -0.35665426 0.93360478 0 -0.33402255 0.94256508 -0.063269824
		 -0.29027185 0.95485032 -5.2801835e-07 -0.27146447 0.96244848 -0.081975028 -0.26387757
		 0.96106642 2.9917646e-07 -0.25287032 0.96750015 -0.087069556 -0.28360689 0.9549796
		 -3.5467687e-07 -0.27466694 0.96153945 -0.077851243 -0.36067167 0.92943805 0 -0.34881154
		 0.93719292 -0.070492245 -0.47649777 0.8763451 -6.6989389e-07 -0.45356646 0.89122248
		 -0.070229448 -0.56576055 0.82157338 1.3491958e-06 -0.5391531 0.84220779 1.2776991e-06
		 -0.60321671 0.79757732 0.070229165 -0.56576079 0.82157326 -0.096184067 -0.58606577
		 0.80453438 0 -0.65615577 0.75462544 -0.14355746 -0.61900079 0.77215886 0 -0.72846001
		 0.68508834 -0.22616538 -0.67852259 0.69889653 -5.7018912e-07 -0.84132087 0.54053605
		 -0.38222536 -0.77373236 0.50521481 -1.2012391e-07 -0.96622825 0.25768778 -0.58728331
		 -0.80779612 0.05063355 0 -0.98595411 -0.1670163 -0.60135746 -0.51245087 -0.61299533
		 0 -0.69087327 -0.72297591 -0.41342562 -0.18541788 -0.89145917 -4.435615e-07 -0.24766229
		 -0.96884644 -0.32324541 -0.089243025 -0.94209772 0 -0.054104749 -0.99853528 -0.26665616
		 -0.039858494 -0.96296716 5.6476921e-07 0.0068931119 -0.99997622 -0.21008919 0.0036314407
		 -0.9776755 0 0.030715693 -0.99952817 -0.13792308 0.044769142 -0.98943061 0 0.067716241
		 -0.99770463 -0.058014654 0.065826841 -0.9961431 0 0.10994787 -0.99393737 0 0.040240433
		 -0.99919003 0.058014654 0.065826841 -0.9961431 -0.080991566 0.019512931 -0.99652374
		 0 0.017743589 -0.99984258 -0.084078625 -0.0089979637 -0.99641848 -4.7241036e-07 -0.0050252853
		 -0.99998736 -0.10074696 -0.0078636901 -0.99488103 3.6433624e-07 -0.0088876756 -0.99996048
		 -0.12375258 0.029680455 -0.99186915 -6.1578254e-07 0.028113861 -0.9996047 -0.14038931
		 0.11031669 -0.98393142 0 0.11598077 -0.99325144 -2.5216923e-07 0.24479489 -0.96957487
		 -0.22099055 0.017512465 -0.9751187 -0.24526452 0.092354834 -0.96504712 -0.28895137
		 0.00011125762 -0.95734376 -0.3318105 0.073601246 -0.94047046 -0.35235447 -0.018757466
		 -0.9356786 -0.42898598 0.056183703 -0.90156221 -0.46046886 -0.0652363 -0.88527548
		 -0.58249336 0.01233223 -0.81274188 -0.69878095 -0.20378621 -0.68569404 -0.81746733
		 -0.10232939 -0.56681198 -0.89440811 -0.39281049 -0.21385525 -0.95124346 -0.23590802
		 -0.1987039 -0.79965246 -0.48543808 0.35342014 -0.89864355 -0.35739693 0.25437605
		 -0.93782425 -0.2671589 0.2216118 -0.57265168 -0.40217295 0.71437168 -0.62011623 -0.38552156
		 0.68324882 -0.61655158 -0.41641146 0.66818082 -0.32581496 -0.4030799 0.85520244 -0.31926003
		 -0.46585074 0.82526124 -0.29784733 -0.54785377 0.78175646 -0.1650406 -0.47118449
		 0.86645645 -0.1555499 -0.55948669 0.81411231 -0.18727855 -0.66778511 0.72040945 -0.058223836
		 -0.56780505 0.82110131 -0.1012541 -0.70159602 0.70534432 -0.2554056 -0.84819746 0.4640356
		 -0.067454636 -0.46734136 0.88149983 -0.18140465 -0.39480165 0.90067977 -0.094828695
		 -0.38055936 0.91988158 -0.2054272 -0.34420022 0.91614729 -0.12758663 -0.31754547
		 0.93962044 -0.23021729 -0.32725614 0.91646242 -0.15526283 -0.29268125 0.94352061
		 -0.24004753 -0.34797668 0.90625018 -0.16598791 -0.31170854 0.93556708 -0.21004246
		 -0.41947654 0.88313168 -0.1464055 -0.38715109 0.91031832 -0.16276035 -0.52475888
		 0.83554602 -0.11899397 -0.49933201 0.85820043 -0.30406168 -0.46859238 0.82943815
		 -0.24736691 -0.56891835 0.78430957 -0.4764083 -0.55975747 0.67801672 -0.43356457
		 -0.65184253 0.62219214 -0.69804734 -0.64607757 0.30872911 -0.67810905 -0.70028836
		 0.22307929 -0.77229756 -0.59900725 -0.21153449 -0.75063616 -0.57476205 -0.32587421
		 -0.63444257 -0.40449703 -0.65868413 -0.59855521 -0.3514204 -0.71988565 -0.4296287
		 -0.19383773 -0.88195586 -0.4187347 -0.17267621 -0.89154035 -0.30375585 -0.087149844
		 -0.94875568 -0.30663231 -0.076603927 -0.94874048 -0.23518938 -0.044096373 -0.97094876
		 -0.23193757 -0.027876483 -0.97233117 -0.16490522 -0.019814627 -0.98611039 -0.15952794
		 0.0042666555 -0.98718417 -0.19371749 -0.016536344 -0.98091799 -0.25847968 -0.033274882
		 -0.96544343 -0.31264573 -0.060285755 -0.94795477 -0.41122729 -0.1292206 -0.90232706
		 -0.63603842 -0.32462308 -0.70005357 -0.81852984 -0.5449695 -0.18170621 -0.72631449
		 -0.5821715 0.36543629 -0.49629694 -0.48588982 0.71944451 -0.51527768 -0.43682286
		 0.73734301 -0.33154452 -0.39727667 0.85571575 -0.32842496 -0.36978945 0.86913335
		 -0.32277641 -0.37151843 0.870511 0.13938409 0.76198035 0.63242239 0 0.77728528 0.6291483
		 0.22802198 0.58626229 0.77736896 0 0.57445341 0.81853729 0.4133369 0.59456187 0.68967295
		 0.32290614 0.69648933 0.64080745 0.3745198 0.67519599 0.63548827 0.46198496 0.63472092
		 0.6194346 0.38410312 0.71742707 0.58117402 0.36063656 0.76838696 0.5286991 0.42577738
		 0.68055129 0.59629148 0.3157388 0.70756775 0.63218421 0.17236429 0.77438426 0.60878533
		 0.25153801 0.8000862 0.54460144 0.14358084 0.7236858 0.6750285 0.022642156 0.73532027
		 0.6773414 -0.037591841 0.74411285 0.66699541 0.088964619 0.81482351 0.57284194 -0.16890301
		 0.66661566 0.7260133;
	setAttr ".n[332:497]" -type "float3"  -0.30818322 0.60400641 0.73498255 -0.40712827
		 0.568721 0.71470481 -0.5189423 0.51716572 0.68061626 -0.43273163 0.47401106 0.76684862
		 -0.34123853 0.33152637 0.8795718 -0.66855758 0.41610005 0.61635339 -0.62288094 0.34760168
		 0.7008512 -0.52300644 0.20062295 0.82838076 -0.42609814 0.052767701 0.90313673 -0.29780689
		 0.15737143 0.94156533 -0.83473593 0.11647757 0.53819042 -0.74878335 -0.019220738
		 0.66253608 -0.62421662 -0.12322465 0.77147216 -0.49142921 -0.17743073 0.85265213
		 -0.34675318 -0.049299631 0.93665987 -0.88739014 -0.26163733 0.37958488 -0.79121578
		 -0.32497326 0.51804441 -0.67678505 -0.36388043 0.63996327 -0.5516361 -0.37448528
		 0.74529082 -0.40055865 -0.22235709 0.88888139 -0.84954357 -0.48968109 0.19618401
		 -0.78923392 -0.54426306 0.28440735 -0.72061509 -0.5979144 0.35101599 -0.57694262
		 -0.73424107 0.35780907 -0.43483356 -0.4580211 0.77532989 -0.70770878 -0.65379006
		 -0.2677812 -0.67413497 -0.68528748 -0.27554148 -0.5604133 -0.79580545 -0.22941369
		 -2.9473549e-06 -0.95331365 -0.30198202 8.2318693e-06 -0.94524354 0.32636589 -0.45670643
		 -0.57937348 -0.6750893 -0.35882211 -0.59561783 -0.71866965 -3.3652343e-06 -0.5926165
		 -0.80548477 -0.17462727 -0.44338709 -0.8791548 -8.56969e-07 -0.38773671 -0.92177016
		 -5.0640065e-06 -0.62884295 0.77753234 2.5285033e-07 -0.28894833 0.95734471 -0.31489104
		 -0.27563083 0.90822423 4.5647025e-06 -0.17525069 0.98452383 -0.2548807 -0.20069255
		 0.94591665 -0.30744612 -0.12992424 0.94265401 -0.19899867 -0.13184489 0.97109032
		 -0.24256158 -0.062684059 0.96810877 -0.26198548 0.027421681 0.96468216 -0.18957238
		 -0.01596098 0.98173702 -0.19989358 0.084157445 0.97619677 -0.11599706 0.026573002
		 0.99289405 -0.11732562 0.13501348 0.98387301 7.6495053e-06 0.056375008 0.99840969
		 7.0748379e-06 0.15619799 0.98772579 -0.095486969 -0.045155704 0.99440593 9.1984515e-07
		 -0.020416938 0.99979156 9.179679e-07 -0.06702733 0.99775112 0.095488578 -0.045149453
		 0.9944061 -0.1456376 -0.078480743 0.9862203 -2.3024895e-06 -0.11046373 0.99388015
		 -4.7296917e-06 -0.13506535 0.99083668 0.043872938 0.83296746 0.55157989 0.091339305
		 0.88103044 0.46415782 0.16517894 0.85028458 0.49973196 -0.045165788 0.72696495 0.68518758
		 3.37373e-07 0.72053313 0.69342047 6.8559388e-07 0.84207451 0.53936124 1.4896912e-07
		 0.89239645 0.45125219 1.2313383e-08 0.91449881 0.40458864 8.7073015e-09 0.91769814
		 0.39727846 2.514073e-08 0.88688123 0.46199754 0.24109063 0.83991754 0.48622406 -3.2810465e-08
		 0.80701506 0.59053087 0.27760378 0.76440126 0.58191651 -0.17232035 0.86224556 0.47627544
		 -0.25521737 0.83145535 0.49350387 -0.16484211 0.88670141 0.43195802 -0.10772309 0.89945686
		 0.42352468 0.16206729 0.44293407 0.88178432 0.22486404 0.41120917 0.88337034 0.3055993
		 0.53424978 0.78815371 0.22826006 0.56428218 0.79339963 0.12440976 0.30152249 0.94530755
		 0.21572316 0.23166774 0.94857448 0.1686361 0.64341253 0.74671423 0.14595142 0.55374175
		 0.81979769 0.051961564 -0.45807573 -0.88739318 0.07152459 -0.53153092 -0.84401369
		 0.15730661 -0.50734442 -0.84726399 0.066175073 -0.42238516 -0.9039976 0.17102821
		 0.98193944 -0.080896594 0.26425883 0.95209867 0.15386811 0.24749081 0.94822443 0.19904466
		 0.26644468 0.95417964 -0.13619281 0.21357651 0.97419614 -0.0729862 0.32162106 0.93281031
		 0.16255699 0.30294177 0.89892304 -0.31648645 0.14283958 0.96596253 -0.21566929 0.47615147
		 0.77613235 -0.41339856 0.39156252 0.75388873 -0.52757043 0.40170458 0.91016012 -0.10120252
		 0.65026283 0.67282265 -0.35280013 0.34143928 0.90115058 0.26710823 -0.16821583 0.60958153
		 0.77467012 -0.24827561 0.6980648 0.67161357 -0.38737115 0.60768652 0.69329691 -0.23861378
		 0.53092462 0.81313127 0.25138226 0.84249675 -0.47645164 0.27375832 0.72649187 -0.63029033
		 0.11507939 0.76776922 -0.6303072 0.098045692 0.89185458 -0.44156814 0.30004334 0.62544715
		 -0.72027063 0.14052977 0.65466821 -0.74273884 0.44822055 0.60357922 -0.6593864 0.46713743
		 0.47734234 -0.74426264 0.31261545 0.5040648 -0.80510265 0.62111378 0.55135751 -0.55697626
		 0.63841039 0.42483205 -0.64183325 0.78012246 0.45006335 -0.43457103 0.78165722 0.35447127
		 -0.51318824 0.87047046 0.35848892 -0.33729351 0.87303036 0.28191614 -0.39792123 0.80685914
		 0.52651989 -0.26787156 0.6618194 0.74827778 -0.045556668 0.94612575 0.3005715 -0.12042791
		 0.93924469 0.25568107 -0.22901221 0.95233184 0.30359411 0.029910643 0.60096127 0.75127053
		 0.27283365 0.98095256 0.17095226 0.092235483 0.89235032 -0.43969554 0.1018762 0.93891627
		 -0.25365376 0.2325854 0.86379164 -0.47392309 -0.17105806 0.99943393 0.013697626 0.030728018
		 0.85424715 -0.38486755 -0.34948358 0.71361369 -0.64515907 -0.27299318 0.6448862 -0.75787961
		 0.098692976 0.74078298 -0.47686589 -0.47311679 0.88844007 -0.32168898 -0.32739955
		 0.76951492 -0.41781652 -0.48298672 0.73093939 -0.47178656 -0.49309739 0.69377238
		 -0.65336716 -0.30297074 0.72439831 -0.44808736 -0.52389389 0.7566905 -0.52148867
		 -0.39429572 0.64358938 -0.59513062 -0.48126116 0.69303274 -0.50292879 -0.51649618
		 0.73669636 -0.46993521 -0.48625034 0.56564534 -0.66293192 -0.49047586 0.59751135
		 -0.66135913 -0.45341405 0.49775276 -0.71271157 -0.49425134 0.39024055 -0.77636701
		 -0.49494097 0.46949884 -0.68267822 -0.55992967 0.36562318 -0.77924293 -0.50901878
		 0.44980368 -0.68737423 -0.57025725 0.32311085 -0.74296224 -0.58617961 0.17251237
		 -0.81740534 -0.54962534 0.15678509 -0.80928063 -0.56611246 0.15325564 -0.79254782
		 -0.5902378 0.25322151 -0.6888209 -0.6792677 0.11941591 -0.72957158 -0.6733982 0.101226
		 -0.63100845 -0.76914346 0.20686387 -0.60585392 -0.76821113 0.3257806 -0.58978432
		 -0.73893261 0.28030953 -0.51032388 -0.81301665 0.38022807 -0.64940709 -0.65855682
		 0.5261355 -0.63598502 -0.56453919 0.48226941 -0.61510837 -0.62374508 0.57132977 -0.64664018
		 -0.50540954 0.75408453 -0.58680397 -0.29498741 0.74206722 -0.61577463 -0.26487324
		 0.74576271 -0.58440095 -0.31986478;
	setAttr ".n[498:663]" -type "float3"  0.89687228 -0.43656114 -0.070954137 0.89123058
		 -0.44990599 0.05738166 0.9017691 -0.3841702 -0.19805492 0.98455101 -0.1065349 0.13895907
		 0.95065451 -0.1921467 0.24358906 0.99806029 -0.05322903 0.032285299 0.83755845 0.31967553
		 0.44306141 0.85505557 0.22452384 0.46740669 0.69537961 0.55614328 0.45513937 0.45651826
		 0.7243911 0.51657391 0.6080451 0.51953125 0.60030693 0.37688816 0.79116869 0.48167148
		 0.47980693 0.60811347 0.63244236 0.36408392 0.8224389 0.43707797 0.40924293 0.65316945
		 0.63709491 0.32381034 0.82856089 0.45676446 0.30716562 0.6846202 0.66101772 0.1314251
		 0.82908547 0.54345632 0.10345092 0.71972644 0.68650693 0.22022684 0.9378314 0.26827681
		 -0.063028507 0.87010509 0.48881954 -0.15314075 0.76951724 0.61999285 0.17525372 0.98408973
		 0.029215805 0.044531532 0.95036787 0.30792516 0.1582118 0.52364367 -0.83711785 0.15805233
		 0.37771469 -0.91233277 0.29479569 0.36230084 -0.88421357 0.27075246 0.21456961 -0.93843114
		 0.15049501 0.23378393 -0.96057081 0.43740568 0.34389156 -0.83091205 0.38713941 0.19554919
		 -0.90104586 0.59604245 0.31454673 -0.73877853 0.5213725 0.17671111 -0.83483166 0.74303055
		 0.26700959 -0.6136868 0.68032843 0.13641983 -0.72009921 0.87467927 0.17976792 -0.45013297
		 0.86744928 0.031204196 -0.49654606 0.97892493 0.020561408 -0.20318282 0.97655642
		 -0.11693627 -0.18073051 0.95750362 0.15797493 -0.24131039 0.96631879 -0.17146066
		 0.19190942 0.94921392 -0.220487 0.22445144 0.97736329 -0.12776072 0.16863631 0.56640548
		 -0.55693924 0.60745662 0.58690435 -0.47973663 0.65222394 0.56781101 -0.67721707 0.46793979
		 0.4017157 -0.7642706 0.50449479 0.30267936 -0.64618838 0.7005896 0.57501727 -0.81397814
		 0.082430057 0.57808727 -0.81112438 0.088838726 0.34871513 -0.78809965 0.50724423
		 0.70898825 -0.63440078 -0.30801192 0.55665004 -0.75474977 -0.34712172 0.45463908
		 -0.88842726 0.063247859 0.55083102 -0.62558395 -0.55247617 0.19048187 -0.79975009
		 -0.56931221 0.2226505 -0.90340531 -0.36645001 0.14549181 -0.78060383 -0.60785675
		 0.18744566 -0.98211879 -0.017516816 0.09929473 -0.92588186 0.36453161 0.02311771
		 -0.75353748 0.6569984 -0.0044539836 -0.58144051 0.81357676 0.0054558781 -0.45350143
		 0.89123887 0.034348894 -0.35665363 0.93360502 0.063269787 -0.29027215 0.95485026
		 0.081974961 -0.26387784 0.96106637 0.087069988 -0.28360668 0.9549796 0.077850275
		 -0.36067152 0.92943823 0.070491478 -0.47649789 0.8763451 0.096182719 -0.58606559
		 0.80453467 0.1435551 -0.61899942 0.77216035 0.22616403 -0.67852211 0.69889736 0.38222712
		 -0.77373308 0.50521237 0.58728337 -0.80779606 0.050633404 0.601358 -0.51245189 -0.61299396
		 0.41342589 -0.18541826 -0.89145899 0.3232435 -0.089239225 -0.94209874 0.26665595
		 -0.03985874 -0.96296722 0.21009049 0.0036303115 -0.9776752 0.13792297 0.044769209
		 -0.98943061 0.080991447 0.019512603 -0.9965238 0.0840782 -0.0089975493 -0.99641854
		 0.1007465 -0.0078639146 -0.99488103 0.12375158 0.029680293 -0.99186927 0.14038906
		 0.11031701 -0.98393142 0.24526478 0.092355832 -0.96504694 0.220991 0.017512359 -0.97511858
		 0.33181128 0.073601156 -0.94047016 0.2889522 0.00011094833 -0.95734352 0.42898634
		 0.056183819 -0.90156204 0.352355 -0.018757435 -0.93567842 0.58249211 0.012332594
		 -0.81274277 0.46046996 -0.065236807 -0.88527483 0.81746835 -0.10233023 -0.56681037
		 0.69878107 -0.2037867 -0.6856938 0.95124358 -0.2359084 -0.19870304 0.89440811 -0.3928099
		 -0.21385643 0.89864349 -0.35739705 0.25437608 0.7996527 -0.48543811 0.35341963 0.93782413
		 -0.26715904 0.22161205 0.62011486 -0.38552213 0.68324977 0.57265198 -0.4021728 0.71437156
		 0.61655188 -0.41641143 0.66818058 0.3192592 -0.46585119 0.82526129 0.32581353 -0.40307981
		 0.85520303 0.29784754 -0.54785377 0.7817564 0.15554962 -0.55948681 0.81411231 0.16504046
		 -0.47118536 0.86645603 0.18727866 -0.66778505 0.72040951 0.10125449 -0.70159626 0.70534408
		 0.05822112 -0.56780523 0.82110137 0.25540581 -0.84819746 0.46403554 0.067454971 -0.46734113
		 0.88149995 0.09482991 -0.38055947 0.9198814 0.18140551 -0.39480141 0.90067965 0.12758729
		 -0.31754556 0.93962032 0.20542747 -0.34419921 0.91614765 0.15526237 -0.2926814 0.94352067
		 0.23021847 -0.32725596 0.91646218 0.16598767 -0.31170791 0.93556738 0.24004705 -0.34797651
		 0.90625036 0.14640576 -0.38715065 0.91031849 0.21004324 -0.41947764 0.88313097 0.1189952
		 -0.49933285 0.85819978 0.16276033 -0.52475888 0.83554602 0.24736632 -0.56891769 0.78431028
		 0.30406314 -0.46859282 0.82943738 0.43356642 -0.65184271 0.62219071 0.47640842 -0.55975771
		 0.67801648 0.67810893 -0.70028836 0.22307955 0.69804704 -0.64607763 0.30872974 0.7506361
		 -0.57476175 -0.32587484 0.7722975 -0.59900737 -0.21153422 0.59855652 -0.35142168
		 -0.71988392 0.63444251 -0.40449682 -0.65868431 0.4187355 -0.17267689 -0.89153981
		 0.42962906 -0.19383849 -0.8819555 0.30663466 -0.076606184 -0.94873953 0.30375528
		 -0.087149225 -0.94875592 0.23193695 -0.027875671 -0.97233135 0.23519008 -0.044096798
		 -0.97094858 0.15952775 0.0042663915 -0.98718423 0.16490625 -0.019815397 -0.98611015
		 0.19371681 -0.016536674 -0.98091811 0.25847992 -0.033275533 -0.96544337 0.31264564
		 -0.060286004 -0.94795477 0.41122767 -0.12922093 -0.90232682 0.63603848 -0.32462302
		 -0.70005357 0.81852996 -0.54496944 -0.18170592 0.72631466 -0.5821715 0.36543581 0.49629629
		 -0.48588991 0.71944493 0.51527661 -0.43682203 0.73734421 0.32842496 -0.36978954 0.86913335
		 0.33154544 -0.39727649 0.85571551 0.322777 -0.37151861 0.87051076 -0.1393839 0.76198047
		 0.63242221 -0.22802179 0.58626264 0.77736878 -0.41333669 0.59456211 0.68967289 -0.32290146
		 0.69649303 0.64080584 -0.46198532 0.63472205 0.61943316 -0.37451947 0.67519611 0.63548833
		 -0.42577738 0.68055129 0.59629154 -0.36063954 0.76838607 0.52869838 -0.38410291 0.71742707
		 0.58117408 -0.31573221 0.70757169 0.63218307 -0.25154611 0.80008626 0.54459763;
	setAttr ".n[664:717]" -type "float3"  -0.17236324 0.77438384 0.60878617 -0.14357993
		 0.72368556 0.67502892 -0.022629771 0.73531675 0.67734569 -0.088962756 0.81481874
		 0.57284909 0.037589774 0.74411428 0.66699398 0.16890427 0.66661584 0.72601289 0.30818102
		 0.60400647 0.73498344 0.40712261 0.56872314 0.71470636 0.518942 0.51716638 0.68061602
		 0.43273127 0.47401199 0.76684827 0.34123582 0.3315275 0.87957239 0.62288189 0.34760126
		 0.70085055 0.66856164 0.41609675 0.61635125 0.52301329 0.20061837 0.82837754 0.29780236
		 0.15737292 0.94156653 0.42609885 0.052766122 0.90313649 0.74878508 -0.019223969 0.662534
		 0.83473486 0.11647885 0.53819174 0.62421405 -0.12322063 0.7714749 0.34674975 -0.049298625
		 0.93666124 0.49142677 -0.17742816 0.8526541 0.791215 -0.32497182 0.5180465 0.88739043
		 -0.26163566 0.37958533 0.67678714 -0.3638843 0.63995886 0.40055084 -0.22235063 0.88888651
		 0.55163383 -0.37447634 0.74529696 0.78923386 -0.54426074 0.28441197 0.84954357 -0.48967871
		 0.19618997 0.72061187 -0.59792101 0.35101137 0.43484971 -0.45805648 0.77529997 0.5769406
		 -0.73424935 0.35779518 0.67414039 -0.68528801 -0.27552691 0.70770901 -0.65379161
		 -0.267777 0.56042993 -0.79581028 -0.22935638 0.35881975 -0.59561902 -0.71866983 0.45670426
		 -0.57937074 -0.67509317 0.17462905 -0.44338682 -0.87915462 0.31486648 -0.27559629
		 0.90824324 0.25489083 -0.20070265 0.94591177 0.30744871 -0.12992971 0.9426524 0.24256572
		 -0.062684141 0.9681077 0.19900849 -0.13185753 0.97108662 0.26198307 0.027424783 0.9646827
		 0.19988555 0.084163748 0.97619784 0.18956329 -0.015952362 0.98173892 0.11732853 0.13501558
		 0.98387235 0.11599895 0.026578689 0.99289364 0.14562963 -0.078473784 0.98622203 -0.16517837
		 0.85028428 0.49973264 -0.091341928 0.88102955 0.46415907 -0.043872304 0.83296734
		 0.55158007 0.045166213 0.72696632 0.68518609 -0.24109063 0.83991754 0.48622409 -0.27760383
		 0.76440126 0.58191651;
	setAttr -s 717 -ch 2866 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		f 4 4 5 6 7
		f 4 8 9 10 11
		f 4 -8 12 13 -9
		f 4 14 15 16 -5
		f 4 -12 17 18 -15
		f 4 19 20 21 22
		f 4 23 24 25 -20
		f 4 26 27 28 29
		f 4 -30 30 31 32
		f 4 33 34 35 -27
		f 4 -36 36 37 38
		f 4 -39 39 40 41
		f 4 -42 42 43 -28
		f 4 44 45 46 47
		f 4 48 49 50 -45
		f 4 -48 51 52 -49
		f 4 53 54 55 56
		f 4 57 -35 58 -54
		f 4 -57 59 -37 -58
		f 4 -56 60 61 62
		f 4 -63 63 64 -60
		f 4 -64 65 66 67
		f 4 -68 68 69 70
		f 4 -71 71 -38 -65
		f 4 -70 72 73 74
		f 4 -75 75 -40 -72
		f 4 -74 76 77 78
		f 4 -79 79 80 -76
		f 4 81 82 -41 -81
		f 4 -80 83 84 85
		f 4 -86 86 87 -82
		f 4 88 89 90 -88
		f 4 -87 91 92 93
		f 4 -94 94 95 -89
		f 4 96 97 98 -96
		f 4 -95 99 100 101
		f 4 -102 102 103 -97
		f 4 104 105 106 -104
		f 4 -103 107 108 109
		f 4 -110 110 111 -105
		f 4 112 113 114 -112
		f 4 -111 115 116 117
		f 4 -118 118 119 -113
		f 4 120 121 122 -120
		f 4 -119 123 124 125
		f 4 -126 126 127 -121
		f 4 128 129 130 -128
		f 4 -127 131 132 133
		f 4 -134 134 135 -129
		f 4 136 137 138 -136
		f 4 -135 139 140 141
		f 4 -142 142 143 -137
		f 4 144 145 146 -144
		f 4 147 -26 148 149
		f 4 -150 150 -138 -147
		f 4 -146 151 -21 -148
		f 4 -149 152 153 154
		f 4 -155 155 156 -151
		f 4 -156 157 158 159
		f 4 -160 160 161 162
		f 4 -163 -130 -139 -157
		f 4 -161 163 164 165
		f 4 -166 166 167 168
		f 4 -169 -122 -131 -162
		f 4 -167 169 170 171
		f 4 -172 172 173 174
		f 4 -175 -114 -123 -168
		f 4 -173 175 176 177
		f 4 -178 178 179 180
		f 4 -181 -106 -115 -174
		f 4 -179 181 182 183
		f 4 -184 184 185 186
		f 4 -187 -98 -107 -180
		f 4 -185 187 188 189
		f 4 -190 190 191 192
		f 4 -193 -90 -99 -186
		f 4 -189 193 194 195
		f 4 -196 196 -44 -191
		f 4 -195 197 198 199
		f 4 -200 200 -29 -197
		f 4 -199 201 202 203
		f 4 -204 204 -31 -201
		f 4 -203 205 206 207
		f 4 -208 208 209 -205
		f 4 -209 210 211 212
		f 4 -213 213 214 215
		f 4 -216 216 -32 -210
		f 4 -215 217 218 219
		f 4 -220 220 221 -217
		f 4 222 223 -33 -222
		f 4 224 225 -34 -224
		f 4 226 227 -59 -226
		f 4 228 229 -55 -228
		f 4 230 231 -61 -230
		f 4 232 233 234 -232
		f 4 -234 235 236 237
		f 4 -238 238 239 240
		f 4 -241 -66 -62 -235
		f 4 -239 241 242 243
		f 4 -244 244 245 246
		f 4 -247 247 -67 -240
		f 4 -246 248 249 250
		f 4 -251 251 -69 -248
		f 4 -250 252 253 254
		f 4 -255 255 -73 -252
		f 4 -254 256 257 258
		f 4 -259 259 -77 -256
		f 4 -258 260 261 262
		f 4 -263 263 264 -260
		f 4 265 -84 -78 -265
		f 4 -264 266 267 268
		f 4 -269 269 270 -266
		f 4 271 -92 -85 -271
		f 4 -270 272 273 274
		f 4 -275 275 276 -272
		f 4 277 -100 -93 -277
		f 4 -276 278 279 280
		f 4 -281 281 282 -278
		f 4 283 -108 -101 -283
		f 4 -282 284 285 286
		f 4 -287 287 288 -284
		f 4 289 -116 -109 -289
		f 4 -288 290 291 292
		f 4 -293 293 294 -290
		f 4 295 -124 -117 -295
		f 4 -294 296 297 298
		f 4 -299 299 300 -296
		f 4 301 -132 -125 -301
		f 4 -300 302 303 304
		f 4 -305 305 306 -302
		f 4 307 -140 -133 -307
		f 4 -303 -298 308 309
		f 4 -309 310 311 312
		f 4 -312 313 314 315
		f 4 -315 316 317 318
		f 4 -318 319 320 321
		f 4 -321 322 323 324
		f 4 -324 325 326 327
		f 4 -327 328 329 330
		f 4 -330 331 332 333
		f 4 -333 334 335 336
		f 4 -336 337 338 339
		f 4 -339 340 341 342
		f 4 -342 343 344 345
		f 4 -345 346 347 348
		f 4 -347 349 350 351
		f 4 -351 352 353 354
		f 4 -354 355 356 357
		f 4 -357 358 359 360
		f 4 -360 361 362 363
		f 4 -363 364 365 366
		f 4 -366 367 368 369
		f 4 -369 370 371 372
		f 4 -372 373 374 375
		f 4 -375 376 377 378
		f 4 -378 379 380 381
		f 4 -381 382 383 384
		f 4 -384 385 386 387
		f 4 -386 388 389 390
		f 4 -390 391 392 393
		f 4 -393 394 395 396
		f 4 -396 397 398 399
		f 4 -399 400 401 402
		f 4 -402 403 404 405
		f 4 -405 -242 -237 406
		f 4 -401 407 408 409
		f 4 -410 410 -243 -404
		f 4 -409 411 412 413
		f 4 -414 414 -245 -411
		f 4 -413 415 416 417
		f 4 -418 418 -249 -415
		f 4 -417 419 420 421
		f 4 -422 422 -253 -419
		f 4 -421 423 424 425
		f 4 -426 426 -257 -423
		f 4 -425 427 428 429
		f 4 -430 430 -261 -427
		f 4 -429 431 432 433
		f 4 -434 434 435 -431
		f 4 436 -267 -262 -436
		f 4 -435 437 438 439
		f 4 -440 440 441 -437
		f 4 442 -273 -268 -442
		f 4 -441 443 444 445
		f 4 -446 446 447 -443
		f 4 448 -279 -274 -448
		f 4 -447 449 450 451
		f 4 -452 452 453 -449
		f 4 454 -285 -280 -454
		f 4 -453 455 456 457
		f 4 -458 458 459 -455
		f 4 460 -291 -286 -460
		f 4 -459 461 -317 462
		f 4 -463 -314 463 -461
		f 4 -457 464 -320 -462
		f 4 -456 -451 465 466
		f 4 -467 467 -323 -465
		f 4 -466 468 469 470
		f 4 -471 471 -326 -468
		f 4 -470 472 473 474
		f 4 -475 475 -329 -472
		f 4 -474 476 477 478
		f 4 -479 479 -332 -476
		f 4 -478 480 481 482
		f 4 -483 483 -335 -480
		f 4 -482 484 485 486
		f 4 -487 487 -338 -484
		f 4 -486 488 489 490
		f 4 -491 491 -341 -488
		f 4 -490 492 -353 493
		f 4 -494 -350 -344 -492
		f 4 -489 494 495 496
		f 4 -497 497 -356 -493
		f 4 -496 498 499 500
		f 4 -501 501 -359 -498
		f 4 -500 502 503 504
		f 4 -505 505 -362 -502
		f 4 -504 506 507 508
		f 4 -509 509 -365 -506
		f 4 -508 510 511 512
		f 4 -513 513 -368 -510
		f 4 -512 514 515 516
		f 4 -517 517 -371 -514
		f 4 -516 518 519 520
		f 4 -521 521 -374 -518
		f 4 -520 522 523 524
		f 4 -525 525 -377 -522
		f 4 -524 526 527 528
		f 4 -529 529 -380 -526
		f 4 -528 530 -392 531
		f 4 -532 -389 -383 -530
		f 4 532 533 -395 -531
		f 4 -527 534 535 -533
		f 4 536 -412 537 -536
		f 4 -535 -523 538 539
		f 4 -540 540 -416 -537
		f 4 -539 -519 541 542
		f 4 -543 543 -420 -541
		f 4 -542 -515 544 545
		f 4 -546 546 -424 -544
		f 4 -545 -511 547 548
		f 4 -549 549 -428 -547
		f 4 -548 -507 550 551
		f 4 -552 552 -432 -550
		f 4 -551 -503 553 554
		f 4 -555 555 556 -553
		f 4 557 -438 -433 -557
		f 4 -556 558 559 560
		f 4 -561 561 562 -558
		f 4 563 -444 -439 -563
		f 4 -562 564 -477 565
		f 4 -566 -473 566 -564
		f 4 -560 567 -481 -565
		f 4 -559 -554 -499 568
		f 4 -569 -495 -485 -568
		f 4 -538 -408 -398 -534
		f 4 -469 -450 -445 -567
		f 4 -311 -297 -292 -464
		f 4 -218 569 570 571
		f 4 -571 572 573 574
		f 4 -574 575 -53 576
		f 4 577 578 -50 -576
		f 4 -573 579 580 -578
		f 4 581 582 583 -581
		f 4 -580 -570 -214 584
		f 4 -585 -212 585 -582
		f 4 586 587 588 589
		f 4 -590 590 -579 -584
		f 4 -583 591 592 -587
		f 4 593 594 595 -593
		f 4 -592 -586 596 597
		f 4 -598 598 599 -594
		f 4 600 601 602 -600
		f 4 -599 603 604 605
		f 4 -606 606 607 -601
		f 4 -605 -206 608 609
		f 4 -610 610 -17 -607
		f 4 -609 -202 611 612
		f 4 -613 613 -6 -611
		f 4 -612 -198 614 615
		f 4 -616 616 617 -614
		f 4 618 619 -7 -618
		f 4 -617 620 621 622
		f 4 -623 623 624 -619
		f 4 625 626 627 -625
		f 4 -624 628 629 630
		f 4 -631 631 632 -626
		f 4 633 634 635 -633
		f 4 -632 636 637 638
		f 4 -639 639 640 -634
		f 4 641 642 643 -641
		f 4 -640 644 645 646
		f 4 -647 647 648 -642
		f 4 649 650 651 -649
		f 4 -648 652 653 654
		f 4 -655 655 656 -650
		f 4 657 658 659 -657
		f 4 -656 660 661 662
		f 4 -663 663 664 -658
		f 4 -664 665 666 667
		f 4 -666 -662 668 669
		f 4 -670 -153 -25 670
		f 4 -661 -654 671 672
		f 4 -673 -158 -154 -669
		f 4 673 674 -651 -660
		f 4 675 676 677 -675
		f 4 -677 678 679 680
		f 4 -681 681 682 683
		f 4 -684 -643 -652 -678
		f 4 -682 684 685 686
		f 4 -687 687 688 689
		f 4 -690 -635 -644 -683
		f 4 -688 690 691 692
		f 4 -693 693 694 695
		f 4 -696 -627 -636 -689
		f 4 -692 696 697 698
		f 4 -699 699 -14 -694
		f 4 -698 700 701 702
		f 4 -703 703 -10 -700
		f 4 -701 704 705 706
		f 4 -706 707 708 709
		f 4 -708 710 711 712
		f 4 -712 713 714 715
		f 4 -715 -685 -680 716
		f 4 -711 -705 -697 717
		f 4 -718 -691 -686 -714
		f 4 -653 -646 718 719
		f 4 -720 -164 -159 -672
		f 4 -645 -638 720 721
		f 4 -722 -170 -165 -719
		f 4 -637 -630 722 723
		f 4 -724 -176 -171 -721
		f 4 -629 -622 724 725
		f 4 -726 -182 -177 -723
		f 4 -695 -13 -620 -628
		f 4 -621 -615 -194 726
		f 4 -727 -188 -183 -725
		f 4 727 728 729 730
		f 4 -731 731 -595 -603
		f 4 -602 732 733 -728
		f 4 734 735 736 -734
		f 4 -733 -608 -16 737
		f 4 -738 -19 738 -735
		f 4 739 740 -729 -737
		f 4 741 742 743 -741
		f 4 744 745 -2 -743
		f 4 746 747 748 -746
		f 4 -748 749 750 751
		f 4 -752 752 -589 753
		f 4 -754 754 -3 -749
		f 4 -751 755 -46 756
		f 4 -757 -51 -591 -753
		f 4 -730 -744 -1 757
		f 4 -758 -4 758 -732
		f 4 -597 -211 -207 -604
		f 4 -759 -755 -588 -596
		f 4 -192 -43 -83 -91
		f 4 -667 -671 759 760
		f 3 -24 -23 -760
		f 4 761 762 763 764
		f 4 765 766 767 768
		f 4 769 -11 770 771
		f 4 -772 772 773 -766
		f 4 -769 774 775 776
		f 4 -777 777 -18 -770
		f 4 778 -22 779 780
		f 4 -781 781 782 783
		f 4 784 785 786 787
		f 4 788 789 790 -785
		f 4 -788 791 792 793
		f 4 794 795 796 -792
		f 4 797 798 799 -795
		f 4 -787 800 801 -798
		f 4 802 -47 803 804
		f 4 -805 805 806 807
		f 4 -808 808 -52 -803
		f 4 809 810 811 812
		f 4 -813 813 -793 814
		f 4 -815 -797 815 -810
		f 4 816 817 818 -811
		f 4 -816 819 820 -817
		f 4 821 822 823 -821
		f 4 824 825 826 -822
		f 4 -820 -796 827 -825
		f 4 828 829 830 -826
		f 4 -828 -800 831 -829
		f 4 832 833 834 -830
		f 4 -832 835 836 -833
		f 4 -836 -799 837 838
		f 4 839 840 841 -837
		f 4 -839 842 843 -840
		f 4 -843 844 845 846
		f 4 847 848 849 -844
		f 4 -847 850 851 -848
		f 4 -851 852 853 854
		f 4 855 856 857 -852
		f 4 -855 858 859 -856
		f 4 -859 860 861 862
		f 4 863 864 865 -860
		f 4 -863 866 867 -864
		f 4 -867 868 869 870
		f 4 871 872 873 -868
		f 4 -871 874 875 -872
		f 4 -875 876 877 878
		f 4 879 880 881 -876
		f 4 -879 882 883 -880
		f 4 -883 884 885 886
		f 4 887 888 889 -884
		f 4 -887 890 891 -888
		f 4 -891 892 893 894
		f 4 895 -141 896 -892
		f 4 -895 897 -143 -896
		f 4 -898 898 899 -145
		f 4 900 901 -782 902
		f 4 -899 -894 903 -901
		f 4 -903 -780 -152 -900
		f 4 904 905 906 -902
		f 4 -904 907 908 -905
		f 4 909 910 911 -909
		f 4 912 913 914 -910
		f 4 -908 -893 -886 -913
		f 4 915 916 917 -915
		f 4 918 919 920 -916
		f 4 -914 -885 -878 -919
		f 4 921 922 923 -921
		f 4 924 925 926 -922
		f 4 -920 -877 -870 -925
		f 4 927 928 929 -927
		f 4 930 931 932 -928
		f 4 -926 -869 -862 -931
		f 4 933 934 935 -933
		f 4 936 937 938 -934
		f 4 -932 -861 -854 -937
		f 4 939 940 941 -939
		f 4 942 943 944 -940
		f 4 -938 -853 -846 -943
		f 4 945 946 947 -941
		f 4 -945 -801 948 -946
		f 4 949 950 951 -947
		f 4 -949 -786 952 -950
		f 4 953 954 955 -951
		f 4 -953 -791 956 -954
		f 4 957 958 959 -955
		f 4 -957 960 961 -958
		f 4 962 963 964 -962
		f 4 965 966 967 -963
		f 4 -961 -790 968 -966
		f 4 969 -219 970 -967
		f 4 -969 971 -221 -970
		f 4 -972 -789 972 -223
		f 4 -973 -794 973 -225
		f 4 -974 -814 974 -227
		f 4 -975 -812 975 -229
		f 4 -976 -819 976 -231
		f 4 -977 977 978 -233
		f 4 979 980 -236 -979
		f 4 981 982 983 -980
		f 4 -978 -818 -824 -982
		f 4 984 985 986 -984
		f 4 987 988 989 -985
		f 4 -983 -823 990 -988
		f 4 991 992 993 -989
		f 4 -991 -827 994 -992
		f 4 995 996 997 -993
		f 4 -995 -831 998 -996
		f 4 999 1000 1001 -997
		f 4 -999 -835 1002 -1000
		f 4 1003 1004 1005 -1001
		f 4 -1003 1006 1007 -1004
		f 4 -1007 -834 -842 1008
		f 4 1009 1010 1011 -1008
		f 4 -1009 1012 1013 -1010
		f 4 -1013 -841 -850 1014
		f 4 1015 1016 1017 -1014
		f 4 -1015 1018 1019 -1016
		f 4 -1019 -849 -858 1020
		f 4 1021 1022 1023 -1020
		f 4 -1021 1024 1025 -1022
		f 4 -1025 -857 -866 1026
		f 4 1027 1028 1029 -1026
		f 4 -1027 1030 1031 -1028
		f 4 -1031 -865 -874 1032
		f 4 1033 1034 1035 -1032
		f 4 -1033 1036 1037 -1034
		f 4 -1037 -873 -882 1038
		f 4 1039 1040 1041 -1038
		f 4 -1039 1042 1043 -1040
		f 4 -1043 -881 -890 1044
		f 4 1045 -304 1046 -1044
		f 4 -1045 1047 -306 -1046
		f 4 -1048 -889 -897 -308
		f 4 -310 1048 -1041 -1047
		f 4 -313 1049 1050 -1049
		f 4 -316 1051 1052 -1050
		f 4 -319 1053 1054 -1052
		f 4 -322 1055 1056 -1054
		f 4 -325 1057 1058 -1056
		f 4 -328 1059 1060 -1058
		f 4 -331 1061 1062 -1060;
	setAttr ".fc[500:716]"
		f 4 -334 1063 1064 -1062
		f 4 -337 1065 1066 -1064
		f 4 -340 1067 1068 -1066
		f 4 -343 1069 1070 -1068
		f 4 -346 -349 1071 -1070
		f 4 -352 1072 1073 -348
		f 4 -355 1074 1075 -1073
		f 4 -358 1076 1077 -1075
		f 4 -361 1078 1079 -1077
		f 4 -364 1080 1081 -1079
		f 4 -367 1082 1083 -1081
		f 4 -370 1084 1085 -1083
		f 4 -373 1086 1087 -1085
		f 4 -376 1088 1089 -1087
		f 4 -379 1090 1091 -1089
		f 4 -382 1092 1093 -1091
		f 4 -385 -388 1094 -1093
		f 4 -391 1095 1096 -387
		f 4 -394 1097 1098 -1096
		f 4 -397 1099 1100 -1098
		f 4 -400 1101 1102 -1100
		f 4 -403 1103 1104 -1102
		f 4 -406 1105 1106 -1104
		f 4 -407 -981 -987 -1106
		f 4 1107 1108 1109 -1105
		f 4 -1107 -986 1110 -1108
		f 4 1111 1112 1113 -1109
		f 4 -1111 -990 1114 -1112
		f 4 1115 1116 1117 -1113
		f 4 -1115 -994 1118 -1116
		f 4 1119 1120 1121 -1117
		f 4 -1119 -998 1122 -1120
		f 4 1123 1124 1125 -1121
		f 4 -1123 -1002 1126 -1124
		f 4 1127 1128 1129 -1125
		f 4 -1127 -1006 1130 -1128
		f 4 1131 1132 1133 -1129
		f 4 -1131 1134 1135 -1132
		f 4 -1135 -1005 -1012 1136
		f 4 1137 1138 1139 -1136
		f 4 -1137 1140 1141 -1138
		f 4 -1141 -1011 -1018 1142
		f 4 1143 1144 1145 -1142
		f 4 -1143 1146 1147 -1144
		f 4 -1147 -1017 -1024 1148
		f 4 1149 1150 1151 -1148
		f 4 -1149 1152 1153 -1150
		f 4 -1153 -1023 -1030 1154
		f 4 1155 1156 1157 -1154
		f 4 -1155 1158 1159 -1156
		f 4 -1159 -1029 -1036 1160
		f 4 1161 -1055 1162 -1160
		f 4 -1161 1163 -1053 -1162
		f 4 -1163 -1057 1164 -1157
		f 4 1165 1166 -1151 -1158
		f 4 -1165 -1059 1167 -1166
		f 4 1168 1169 1170 -1167
		f 4 -1168 -1061 1171 -1169
		f 4 1172 1173 1174 -1170
		f 4 -1172 -1063 1175 -1173
		f 4 1176 1177 1178 -1174
		f 4 -1176 -1065 1179 -1177
		f 4 1180 1181 1182 -1178
		f 4 -1180 -1067 1183 -1181
		f 4 1184 1185 1186 -1182
		f 4 -1184 -1069 1187 -1185
		f 4 1188 1189 1190 -1186
		f 4 -1188 -1071 1191 -1189
		f 4 1192 -1076 1193 -1190
		f 4 -1192 -1072 -1074 -1193
		f 4 1194 1195 1196 -1191
		f 4 -1194 -1078 1197 -1195
		f 4 1198 1199 1200 -1196
		f 4 -1198 -1080 1201 -1199
		f 4 1202 1203 1204 -1200
		f 4 -1202 -1082 1205 -1203
		f 4 1206 1207 1208 -1204
		f 4 -1206 -1084 1209 -1207
		f 4 1210 1211 1212 -1208
		f 4 -1210 -1086 1213 -1211
		f 4 1214 1215 1216 -1212
		f 4 -1214 -1088 1217 -1215
		f 4 1218 1219 1220 -1216
		f 4 -1218 -1090 1221 -1219
		f 4 1222 1223 1224 -1220
		f 4 -1222 -1092 1225 -1223
		f 4 1226 1227 1228 -1224
		f 4 -1226 -1094 1229 -1227
		f 4 1230 -1099 1231 -1228
		f 4 -1230 -1095 -1097 -1231
		f 4 -1232 -1101 1232 1233
		f 4 -1234 1234 1235 -1229
		f 4 -1235 1236 -1114 1237
		f 4 1238 1239 -1225 -1236
		f 4 -1238 -1118 1240 -1239
		f 4 1241 1242 -1221 -1240
		f 4 -1241 -1122 1243 -1242
		f 4 1244 1245 -1217 -1243
		f 4 -1244 -1126 1246 -1245
		f 4 1247 1248 -1213 -1246
		f 4 -1247 -1130 1249 -1248
		f 4 1250 1251 -1209 -1249
		f 4 -1250 -1134 1252 -1251
		f 4 1253 1254 -1205 -1252
		f 4 -1253 1255 1256 -1254
		f 4 -1256 -1133 -1140 1257
		f 4 1258 1259 1260 -1257
		f 4 -1258 1261 1262 -1259
		f 4 -1262 -1139 -1146 1263
		f 4 1264 -1179 1265 -1263
		f 4 -1264 1266 -1175 -1265
		f 4 -1266 -1183 1267 -1260
		f 4 1268 -1201 -1255 -1261
		f 4 -1268 -1187 -1197 -1269
		f 4 -1233 -1103 -1110 -1237
		f 4 -1267 -1145 -1152 -1171
		f 4 -1164 -1035 -1042 -1051
		f 4 -572 1269 1270 -971
		f 4 -575 1271 1272 -1270
		f 4 -577 -809 1273 -1272
		f 4 -1274 -807 1274 1275
		f 4 -1276 1276 1277 -1273
		f 4 -1277 1278 1279 1280
		f 4 1281 -968 -1271 -1278
		f 4 -1281 1282 -964 -1282
		f 4 1283 1284 1285 1286
		f 4 -1279 -1275 1287 -1284
		f 4 -1287 1288 1289 -1280
		f 4 -1289 1290 1291 1292
		f 4 1293 1294 -1283 -1290
		f 4 -1293 1295 1296 -1294
		f 4 -1296 1297 1298 1299
		f 4 1300 1301 1302 -1297
		f 4 -1300 1303 1304 -1301
		f 4 1305 1306 -960 -1302
		f 4 -1305 -775 1307 -1306
		f 4 1308 1309 -956 -1307
		f 4 -1308 -768 1310 -1309
		f 4 1311 1312 -952 -1310
		f 4 -1311 1313 1314 -1312
		f 4 -1314 -767 1315 1316
		f 4 1317 1318 1319 -1315
		f 4 -1317 1320 1321 -1318
		f 4 -1321 1322 1323 1324
		f 4 1325 1326 1327 -1322
		f 4 -1325 1328 1329 -1326
		f 4 -1329 1330 1331 1332
		f 4 1333 1334 1335 -1330
		f 4 -1333 1336 1337 -1334
		f 4 -1337 1338 1339 1340
		f 4 1341 1342 1343 -1338
		f 4 -1341 1344 1345 -1342
		f 4 -1345 1346 1347 1348
		f 4 1349 1350 1351 -1346
		f 4 -1349 1352 1353 -1350
		f 4 -1353 1354 -659 1355
		f 4 1356 1357 1358 -1354
		f 4 -1356 -665 1359 -1357
		f 4 -668 1360 1361 -1360
		f 4 1362 1363 -1358 -1362
		f 4 1364 -783 -907 -1363
		f 4 1365 1366 -1351 -1359
		f 4 -1364 -906 -912 -1366
		f 4 -1355 -1348 1367 -674
		f 4 -1368 1368 1369 -676
		f 4 1370 1371 -679 -1370
		f 4 1372 1373 1374 -1371
		f 4 -1369 -1347 -1340 -1373
		f 4 1375 1376 1377 -1375
		f 4 1378 1379 1380 -1376
		f 4 -1374 -1339 -1332 -1379
		f 4 1381 1382 1383 -1381
		f 4 1384 1385 1386 -1382
		f 4 -1380 -1331 -1324 -1385
		f 4 1387 1388 1389 -1383
		f 4 -1387 -773 1390 -1388
		f 4 1391 -702 1392 -1389
		f 4 -1391 -771 -704 -1392
		f 4 -707 -710 1393 -1393
		f 4 -713 1394 1395 -709
		f 4 -716 1396 1397 -1395
		f 4 -717 -1372 -1378 -1397
		f 4 1398 -1390 -1394 -1396
		f 4 -1398 -1377 -1384 -1399
		f 4 1399 1400 -1343 -1352
		f 4 -1367 -911 -918 -1400
		f 4 1401 1402 -1335 -1344
		f 4 -1401 -917 -924 -1402
		f 4 1403 1404 -1327 -1336
		f 4 -1403 -923 -930 -1404
		f 4 1405 1406 -1319 -1328
		f 4 -1405 -929 -936 -1406
		f 4 -1323 -1316 -774 -1386
		f 4 1407 -948 -1313 -1320
		f 4 -1407 -935 -942 -1408
		f 4 1408 1409 1410 1411
		f 4 -1298 -1292 1412 -1409
		f 4 -1412 1413 1414 -1299
		f 4 -1414 1415 -736 1416
		f 4 1417 -776 -1304 -1415
		f 4 -1417 -739 -778 -1418
		f 4 -1416 -1411 1418 -740
		f 4 -1419 1419 1420 -742
		f 4 -1421 -764 1421 -745
		f 4 -1422 1422 1423 -747
		f 4 1424 1425 -750 -1424
		f 4 1426 -1285 1427 -1425
		f 4 -1423 -763 1428 -1427
		f 4 1429 -804 -756 -1426
		f 4 -1428 -1288 -806 -1430
		f 4 1430 -765 -1420 -1410
		f 4 -1413 1431 -762 -1431
		f 4 -1303 -959 -965 -1295
		f 4 -1291 -1286 -1429 -1432
		f 4 -845 -838 -802 -944
		f 4 -761 1432 -1365 -1361
		f 3 -779 -784 -1433;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AED8AA38-478E-F22C-4D94-EB9963921663";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2208AC30-469D-AC45-E309-5FB53AC440F1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CD4954E6-45A8-B8E5-E507-BE9330F91CE7";
createNode displayLayerManager -n "layerManager";
	rename -uid "7E595A33-4E5A-EE14-B647-58A8DC58D7DF";
createNode displayLayer -n "defaultLayer";
	rename -uid "66990AAA-4CEB-C197-9F27-FA92F0F80945";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5D1FDB8D-475F-8483-963C-5FBA4597CB05";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4AF04CC8-4C84-1388-E559-C6A31BEB2295";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "CFC1FFAA-4A94-AEDC-13A2-1F948026EB3E";
	setAttr ".version" -type "string" "5.3.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "98B28C55-4F28-356E-CBC7-769978B11A00";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D56B1983-4F9A-0DE6-AA12-9AB603C07737";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "082C15E0-483A-C365-F67F-ACA7278F2C38";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode phong -n "Scarf_ncl1_2";
	rename -uid "E70C791F-44AF-B93F-C2FC-C48D295C6877";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "ScarfSG";
	rename -uid "A08CC547-4DB3-AC73-ECC7-ACB2C7426112";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "13806450-486F-5669-824F-61844A451A4E";
createNode phong -n "Merged_PM3D_Sphere3D2_ncl1_1";
	rename -uid "F399B559-4DD0-18AD-15A7-09B644CC621C";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "CorpsSG";
	rename -uid "12253F79-45AD-5767-9022-72BA6B1D06D0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "BEF72609-446C-2FB1-497F-A9B7769D880E";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8BF67C4A-4446-7639-9730-EF82F83704AF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1260\n            -height 725\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1260\\n    -height 725\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1260\\n    -height 725\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "144BD786-4D0C-0413-4717-3181A8F82E3E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "F32AEF38-4D99-BEF7-ADA2-9DA387A12B3C";
createNode ikSplineSolver -n "ikSplineSolver";
	rename -uid "0B8725CA-4CBE-467F-1B51-6FB9F0EB36B7";
createNode multiplyDivide -n "RootFat";
	rename -uid "75607DA0-42A6-1EA6-EC24-748BE046B86B";
createNode multiplyDivide -n "Hairs1Fat";
	rename -uid "44B853A5-4EA7-2C08-AEA1-E1B79CFC01AD";
createNode multiplyDivide -n "Hairs2Fat";
	rename -uid "F46BDD59-4385-BACC-BB22-E9ADF1AAB839";
createNode multiplyDivide -n "Hairs3Fat";
	rename -uid "CC311673-452A-F936-C0DD-38B924E090CA";
createNode objectSet -n "ControlSet";
	rename -uid "8E4037DB-41DF-B0BD-25C4-D3A6CE45561F";
	setAttr ".ihi" 0;
	setAttr -s 32 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "6174C8F6-49B9-FAB7-23EE-0298B0CB8AC6";
	setAttr ".ihi" 0;
	setAttr -s 7 ".dsm";
createNode objectSet -n "AllSet";
	rename -uid "49835C38-4D75-F0A5-1501-5F889C5D7018";
	setAttr ".ihi" 0;
	setAttr -s 383 ".dsm";
	setAttr -s 92 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "B49267FF-431D-D87E-28C3-C8830F3CD0DC";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "136B24DA-4ACE-C385-23A8-1996050A74E1";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW0Hairs2_MUnitConversion";
	rename -uid "43061E69-4846-73EC-5CCB-79A708628E8C";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW0Hairs2_MReverse";
	rename -uid "D8756D80-47EA-9DA3-4325-50956DA75E6E";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW1Hairs2_MUnitConversion";
	rename -uid "204E792A-40B0-D723-194E-92A908805CAE";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW1Hairs2_MReverse";
	rename -uid "090A902D-4057-ED98-1CCE-BD9349FFA179";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW2Hairs2_MUnitConversion";
	rename -uid "81AB4DA2-4BC3-3027-E0FC-4BAE1EDAE8B9";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW2Hairs2_MReverse";
	rename -uid "46ABB861-4A5D-D039-7612-BCB83F729DE9";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW0Hairs1_MUnitConversion";
	rename -uid "2F277B4D-4F0D-1A30-1B5C-9189F7BA0E1B";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW0Hairs1_MReverse";
	rename -uid "FCD4139B-424A-7418-BD99-66A99FA580C2";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW1Hairs1_MUnitConversion";
	rename -uid "FEDD8D6D-45E8-3EC4-B42C-459927692FB9";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW1Hairs1_MReverse";
	rename -uid "7CD84239-461D-6A03-053E-45B61011ECF0";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKW2Hairs1_MUnitConversion";
	rename -uid "E0BFB64F-4FFF-FD23-34BD-BDB79E365E15";
	setAttr ".cf" 0.1;
createNode reverse -n "FKW2Hairs1_MReverse";
	rename -uid "4BDB90D1-4D0D-30B5-7AB2-2EB6CD09A1E0";
	setAttr ".ihi" 0;
createNode setRange -n "IKStiffSpline1SetRange_M";
	rename -uid "020997FF-4DB0-F235-5BFE-4AA5D44B0F9F";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.68202209 0.31797791 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKStiffSpline3SetRange_M";
	rename -uid "E850BF95-418D-00B5-4289-42BFBD77FD84";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.64800739 0.35199261 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode curveInfo -n "IKCurveInfoSpline_M";
	rename -uid "A8863414-4CD1-80E4-9DDD-F5BE34DFDC5F";
createNode multiplyDivide -n "IKCurveInfoNormalizeSpline_M";
	rename -uid "74A10CEC-437C-640A-3126-E29C70BAC5BC";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 36.108265 1 1 ;
createNode multiplyDivide -n "IKCurveInfoAllMultiplySpline_M";
	rename -uid "4DBFC9DB-4327-BFC7-A02E-A2A73948E52D";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode unitConversion -n "stretchySplineUnitConversion_M";
	rename -uid "3E5D4305-4659-C463-E500-CE992A2F68A3";
	setAttr ".cf" 0.1;
createNode reverse -n "stretchySplineReverse_M";
	rename -uid "6DB0C103-498D-C914-D49A-96B57C835011";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "stretchySplineMultiplyDivide0_M";
	rename -uid "5DF868D3-46B4-B051-3186-05B5D88C63A3";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7649183 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo0_M";
	rename -uid "017A5CB4-4602-25C7-14E4-CC9CE14E204F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.76491853957328 5.764918327331543;
createNode multiplyDivide -n "stretchySplineMultiplyDivide1_M";
	rename -uid "FF093D14-4BF8-AE86-ABD8-A1ADA6EC2A69";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7649183 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo1_M";
	rename -uid "572D64E7-4211-ACF1-E574-2C904390DE40";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.7649185395733156 5.764918327331543;
createNode multiplyDivide -n "stretchySplineMultiplyDivide2_M";
	rename -uid "C627FBC1-4B97-57C4-CEF2-48A5D5169F58";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7649183 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo2_M";
	rename -uid "52E0B375-49CD-2126-53E7-F6ADA00293AF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.7649185395733014 5.764918327331543;
createNode multiplyDivide -n "stretchySplineMultiplyDivide3_M";
	rename -uid "98B9493D-4E32-1E96-8557-44AF8FF71AD2";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7279139 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo3_M";
	rename -uid "60C207C8-4485-5B0C-757E-68AE8BAFF0C1";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.7279140078815232 5.7279138565063477;
createNode multiplyDivide -n "stretchySplineMultiplyDivide4_M";
	rename -uid "4BBBB327-4D18-0F87-23F7-8C806DBBA528";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7279139 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo4_M";
	rename -uid "6D2A7329-4093-F9D2-FB5E-ED9F294C519E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.7279140078815196 5.7279138565063477;
createNode multiplyDivide -n "stretchySplineMultiplyDivide5_M";
	rename -uid "967548FB-4897-0DE7-E42F-6C95A1D81D34";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 5.7279139 0 0 ;
createNode blendTwoAttr -n "stretchySplineBlendTwo5_M";
	rename -uid "47BAD94E-4284-6D02-2739-78B055C9C22C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  5.7279140078815294 5.7279138565063477;
createNode ramp -n "IKSplineRamp_M";
	rename -uid "FD6014F4-4B1E-E3C8-063B-A183C03D50C2";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.5;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[3].ep" 1;
	setAttr ".cel[3].ec" -type "float3" 0 0 0 ;
createNode unitConversion -n "unitConversion1";
	rename -uid "A4294BC4-4A46-4B19-0BB4-B2B5E341998D";
	setAttr ".cf" 57.295779513082323;
createNode setRange -n "IKSplineFlipUpAxisSetRange_M";
	rename -uid "A0765815-41E1-3FCD-E3C8-95AB29365819";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 3 0 0 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode setRange -n "IKSplineFlipAxisSetRange_M";
	rename -uid "5A3EF849-4955-165E-A7D1-94A7DE7D796B";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 0 0 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode setRange -n "IKSpline3_MSetRangeFollow";
	rename -uid "C9BE3071-47DB-1E18-03B3-96B78232C6ED";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode unitConversion -n "IKFollowEndSpline2_MUnitConversion";
	rename -uid "24CBE875-458F-C1BE-B763-6E8B773159FE";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFollowEndSpline2_MReverse";
	rename -uid "A623EFCC-47E1-E68C-547F-E886068E0BAE";
	setAttr ".ihi" 0;
createNode pointOnCurveInfo -n "IKAcPociHairs1_M";
	rename -uid "FE0A8520-4490-C8E2-8CD5-D395990FB114";
createNode pointOnCurveInfo -n "IKAcPociHairs1Part1_M";
	rename -uid "F6776B71-4E8B-CA5B-7298-AE9C803A9AA2";
	setAttr ".pr" 0.40668893874762274;
createNode pointOnCurveInfo -n "IKAcPociHairs1Part2_M";
	rename -uid "A855E0DC-4F82-FDF3-2C78-46A95203BDB2";
	setAttr ".pr" 1.0675587081563054;
createNode pointOnCurveInfo -n "IKAcPociHairs2_M";
	rename -uid "9A7C83CF-4203-DBE9-95E4-D2A15794699D";
	setAttr ".pr" 1.9959933989968983;
createNode pointOnCurveInfo -n "IKAcPociHairs2Part1_M";
	rename -uid "B727E92F-45DB-66A9-DFF8-7CB981D9790C";
	setAttr ".pr" 2.9525575122185312;
createNode pointOnCurveInfo -n "IKAcPociHairs2Part2_M";
	rename -uid "591501F8-48EF-13A3-7E35-7D9B2916EB00";
	setAttr ".pr" 3.6056111202364538;
createNode pointOnCurveInfo -n "IKAcPociHairs3_M";
	rename -uid "3E4CFCD9-46DA-DAB1-026B-149C40AD1E01";
	setAttr ".pr" 4;
createNode unitConversion -n "IKFixedOrientSpline1_MUnitConversion";
	rename -uid "4F9D95EE-4472-29FB-6CD6-3A8B2E909D52";
	setAttr ".cf" 0.1;
createNode reverse -n "IKFixedOrientSpline1_MReverse";
	rename -uid "E1A782CF-4FA5-22B7-9BEC-C381F059D5CE";
	setAttr ".ihi" 0;
createNode unitConversion -n "FKIKBlendSplineUnitConversion_M";
	rename -uid "3A2EAE7F-442D-66C7-791D-A4BD95FA170D";
	setAttr ".cf" 0.1;
createNode reverse -n "FKIKBlendSplineReverse_M";
	rename -uid "7A2A1EE3-418D-4F73-8C98-20A0F7C9411C";
	setAttr ".ihi" 0;
createNode condition -n "FKIKBlendSplineCondition_M";
	rename -uid "A0AEF518-461A-A509-98D4-B18E07F01131";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendSplinesetRange_M";
	rename -uid "8AADD1E5-4845-8E25-855E-6CBA7B7F7AE6";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode plusMinusAverage -n "FKIKBlendSplineHybridVisPMA_M";
	rename -uid "F548BDA7-46A2-E224-CAFE-33A9DD8C167B";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr -s 3 ".i1[2]"  -0.5;
	setAttr -s 2 ".i1";
createNode unitConversion -n "FKIKBlendSplineConditionUnitConversion_M";
	rename -uid "6685EDC7-402C-FBA6-79A4-9DA8109B82AC";
	setAttr ".cf" 0.1;
createNode blendColors -n "ScaleBlendHairs3_M";
	rename -uid "B92442B1-4EF8-459E-BAE5-5489A0E385BC";
	setAttr ".ihi" 0;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendHairs2Part2_M";
	rename -uid "54BC8C6E-4AD2-09EE-2F96-A6AB54B48FA9";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHairs2Part1_M";
	rename -uid "3B845629-4F4C-6E8A-452D-EF9C17C956CE";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHairs2_M";
	rename -uid "0680F3BC-4761-1AF9-6DE1-BFAD53CA596F";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHairs1Part2_M";
	rename -uid "76281D11-497E-0DD3-9056-DAA0D7DCBDA2";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHairs1Part1_M";
	rename -uid "DE35B617-4EB2-E706-80A4-9584BCBDAC18";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHairs1_M";
	rename -uid "3C8E47B0-4371-09A0-F881-518C6E3FA0A7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs1MultiplyDivide_M";
	rename -uid "D9EBD4FD-4475-7A1F-8D5A-BFAF5F59567D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs1Part1MultiplyDivide_M";
	rename -uid "367354F5-4628-77CD-4053-608784D00D47";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs1Part2MultiplyDivide_M";
	rename -uid "2BA234E5-4224-EE4C-24E6-02A14FA4E058";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs2MultiplyDivide_M";
	rename -uid "B8EA20BC-4EC9-97CC-E059-D18D8241DE51";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs2Part1MultiplyDivide_M";
	rename -uid "62B78490-40B2-1D2A-B6FD-338D7BC64E8C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs2Part2MultiplyDivide_M";
	rename -uid "C0BCA434-4537-822D-E0A3-0ABB177D3F18";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleHairs3MultiplyDivide_M";
	rename -uid "4C3B11BB-425D-6DFA-EB72-D78FA09579DB";
createNode unitConversion -n "volumeSplineUnitConversion_M";
	rename -uid "14D53425-4877-8251-E090-B3805873652D";
	setAttr ".cf" 0.1;
createNode multiplyDivide -n "multWithStretchySpline_M";
	rename -uid "5E04BD63-4246-E80B-A5FA-2AAB8AC3D19C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverSpline_M";
	rename -uid "4244FE91-4B41-B680-B4B2-338B530A3F70";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowSpline_M";
	rename -uid "6549D883-4ABF-B1CB-BBF3-7AAA064326F0";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendSplineBlendTwo_M";
	rename -uid "10DDD52C-4671-FD0E-F853-DE8F89D36F42";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs2Part2_M";
	rename -uid "E1BB64F6-4358-D039-808C-C78E629AB735";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs2Part2_M";
	rename -uid "E035D039-49D4-521F-E592-E1AE50E4417F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs2Part2_M";
	rename -uid "CF50E49A-4A67-2785-F5C4-89B2D4BA5264";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs2Part1_M";
	rename -uid "15D0C4DD-4B39-2A8E-61F9-D892F92E7CEE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs2Part1_M";
	rename -uid "40268081-4C3B-2190-711D-A7B543DA5AB6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs2Part1_M";
	rename -uid "D5CF7FE8-4560-5681-9C0B-168DEEC1A519";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs2_M";
	rename -uid "8E3E5F67-47FF-A731-EC90-1DA87E277E87";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs2_M";
	rename -uid "D508BFAD-455B-057E-2187-15A4D7075CA2";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs2_M";
	rename -uid "F5BA338C-400D-B6D0-DCEF-79B033ABAA95";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs1Part2_M";
	rename -uid "74026DF8-4FCF-2324-56CF-269E119634D5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs1Part2_M";
	rename -uid "1F288B17-4B59-13D9-53AB-078D0FCCCAB9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs1Part2_M";
	rename -uid "2D7A6B8A-4D67-9388-A84C-DEB3A58329E3";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs1Part1_M";
	rename -uid "3EC96C8E-4A42-E496-0C22-968558A88839";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs1Part1_M";
	rename -uid "5A33BE99-4468-0B5C-C83F-8AB57975D809";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs1Part1_M";
	rename -uid "E2FAF239-4384-F0BF-F6E9-6EAD178ACD6D";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerAHairs1_M";
	rename -uid "48CED7CE-4BCE-E55E-247E-71980E14FA2C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBHairs1_M";
	rename -uid "13337772-449F-1923-A046-2E968055CCCD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerHairs1_M";
	rename -uid "472C0AF5-4B39-3EAB-098E-56B62355FB15";
	setAttr ".ihi" 0;
createNode dagPose -n "buildPose";
	rename -uid "AFC630A2-4BF4-EAA8-AEF6-5BA8825AC729";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr ".udAttr" -type "string" (
		"xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpline1_M;setAttr IKSpline1_M.stiff 5;setAttr IKSpline1_M.FixedOrient 0;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpline1_M;xform -os -t 0 0 0 IKcvSpline3_M;xform -os -t 0 0 0 IKcvSpline2_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpline2_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpline3_M;xform -os -t 0 0 0 IKcvSpline1_M;xform -os -t 0 0 0 IKcvSpline5_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpline5_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtracvSpline4_M;xform -os -t 0 0 0 IKcvSpline4_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpline1_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpline2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpline2_M;setAttr IKSpline2_M.followEnd 5;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHairs1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHairs1_M;setAttr FKHairs1_M.w0 3.333333333;setAttr FKHairs1_M.w1 6.666666667;setAttr FKHairs1_M.w2 10;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;setAttr FKIKSpline_M.FKIKBlend 0;setAttr FKIKSpline_M.FKVis 1;setAttr FKIKSpline_M.IKVis 1;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHairs2_M;setAttr FKHairs2_M.w0 3.333333333;setAttr FKHairs2_M.w1 6.666666667;setAttr FKHairs2_M.w2 10;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHairs2_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpline3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpline3_M;setAttr IKSpline3_M.stiff 5;setAttr IKSpline3_M.stretchy 10;setAttr IKSpline3_M.follow 10;setAttr IKSpline3_M.volume 10;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpline1_M;xform -os -t 0 -0 -0 -ro 0 0 0 IKhybridExtraSpline1_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSpline3_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSpline2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpline2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpline3_M;");
createNode skinCluster -n "skinCluster1";
	rename -uid "C5910366-492D-878E-345A-528AE5D2B782";
	setAttr ".skm" 2;
	setAttr -s 718 ".wl";
	setAttr ".wl[0:239].w"
		1 0 1
		1 0 1
		2 0 0.49608427286148071 1 0.50391572713851929
		2 0 0.35486972332000732 1 0.64513027667999268
		2 0 0.99939355661626905 1 0.00060644338373094797
		3 0 0.10400879383087158 1 0.80654135346412659 2 0.089449852705001831
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
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.70374178886413574 1 0.29625821113586426
		2 0 0.75469483435153961 1 0.24530516564846039
		2 0 0.85177843272686005 1 0.14822156727313995
		2 0 0.72907748818397522 1 0.27092251181602478
		3 0 0.22156929969787598 1 0.75119204632937908 2 0.027238653972744942
		3 0 0.1602439284324646 1 0.78564466163516045 2 0.054111409932374954
		3 0 0.080619633197784424 1 0.73432910442352295 2 0.18505126237869263
		3 0 0.13924521207809448 1 0.74864634126424789 2 0.11210844665765762
		3 0 0.15462768077850342 1 0.72919465601444244 2 0.11617766320705414
		2 0 0.37095522880554199 1 0.62904477119445801
		2 0 0.70610499382019043 1 0.29389500617980957
		2 0 0.99981302980449982 1 0.00018697019550018013
		2 0 0.99987541724112816 1 0.00012458275887183845
		2 0 0.99937523464905098 1 0.00062476535094901919
		2 0 0.9978329052682966 1 0.0021670947317034006
		2 0 0.99942609248682857 1 0.0005739075131714344
		2 0 0.99721524911001325 1 0.0027847508899867535
		3 0 0.11824476718902588 1 0.80636216700077057 2 0.075393065810203552
		3 0 0.059981644153594971 1 0.74635507166385651 2 0.19366328418254852
		3 0 0.05986785888671875 1 0.72886848449707031 2 0.21126365661621094
		3 0 0.012485206127166748 1 0.52569630742073059 2 0.46181848645210266
		3 0 0.023401975631713867 1 0.51012372970581055 2 0.46647429466247559
		3 0 0.012544929981231689 1 0.51945054531097412 2 0.46800452470779419
		3 1 0.24210357666015625 2 0.67033730447292328 3 0.087559118866920471
		3 1 0.24717885255813599 2 0.66415156424045563 3 0.088669583201408386
		3 1 0.24009537696838379 2 0.67856518179178238 3 0.081339441239833832
		3 0 0.026691019535064697 1 0.50390812754631042 2 0.46940085291862488
		3 1 0.24735993146896362 2 0.67654567211866379 3 0.076094396412372589
		3 0 0.028631448745727536 1 0.50459569692611694 2 0.46677285432815552
		3 1 0.25162959098815918 2 0.67403509467840195 3 0.074335314333438873
		3 0 0.0074425339698791504 1 0.52808040380477905 2 0.4644770622253418
		3 0 0.1559109091758728 1 0.72429244965314865 2 0.11979664117097855
		2 0 0.37739825248718262 1 0.62260174751281738
		3 0 0.016927838325500488 1 0.52075093984603882 2 0.46232122182846069
		3 0 0.16007089614868164 1 0.71263697743415833 2 0.12729212641716003
		2 0 0.38176488876342773 1 0.61823511123657227
		2 0 0.70703426003456116 1 0.29296573996543884
		2 0 0.70523911714553833 1 0.29476088285446167
		3 0 0.16987437009811401 1 0.70543000847101212 2 0.12469562143087387
		2 0 0.38863539695739746 1 0.61136460304260254
		2 0 0.71452340483665466 1 0.28547659516334534
		2 0 0.8872067928314209 1 0.1127932071685791
		2 0 0.88659682124853134 1 0.11340317875146866
		2 0 0.39847522974014282 1 0.60152477025985718
		2 0 0.72160235047340393 1 0.27839764952659607
		2 0 0.89246532320976257 1 0.10753467679023743
		1 0 1
		1 0 1
		2 0 0.71590059995651245 1 0.28409940004348755
		2 0 0.90106754004955292 1 0.098932459950447083
		1 0 1
		1 0 1
		1 0 1
		2 0 0.89797893911600113 1 0.10202106088399887
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
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		2 0 0.89289300888776779 1 0.10710699111223221
		1 0 1
		2 0 0.90492517501115799 1 0.09507482498884201
		1 0 1
		2 0 0.90822312235832214 1 0.091776877641677856
		1 0 1
		2 0 0.92452901601791382 1 0.075470983982086182
		1 0 1
		2 0 0.95220697671175003 1 0.047793023288249969
		1 0 1
		2 0 0.97560541704297066 1 0.024394582957029343
		2 0 0.92385853826999664 1 0.076141461730003357
		2 0 0.98946826718747616 1 0.010531732812523842
		2 0 0.96567122638225555 1 0.034328773617744446
		2 0 0.94022969529032707 1 0.059770304709672928
		2 0 0.86696828901767731 1 0.13303171098232269
		2 0 0.93371854722499847 1 0.066281452775001526
		2 0 0.85059797763824463 1 0.14940202236175537
		2 0 0.69173890352249146 1 0.30826109647750854
		2 0 0.45362681150436401 1 0.54637318849563599
		3 0 0.21080696582794189 1 0.76702588051557541 2 0.022167153656482697
		3 0 0.12277752161026001 1 0.80978276580572128 2 0.067439712584018707
		3 0 0.060450494289398193 1 0.76289257407188416 2 0.17665693163871765
		3 0 0.0064238905906677246 1 0.52846607565879822 2 0.46511003375053406
		3 1 0.23463129997253418 2 0.67301056534051895 3 0.092358134686946869
		3 1 0.23332178592681885 2 0.68829682469367981 3 0.078381389379501343
		4 1 0.015015645981081068 2 0.59678548574447632 3 0.27599598597599456 
		4 0.11220288229844808
		4 1 0.014640327350221961 2 0.60204464197158813 3 0.27137158241400022 
		4 0.11194344826418967
		4 1 0.02690091336758875 2 0.57633680105209351 3 0.27169477632696615 
		4 0.12506750925335156
		3 2 0.24148848652839661 3 0.41898877827616671 4 0.33952273519543669
		3 2 0.23477929830551147 3 0.41765260159296719 4 0.34756810010152128
		3 2 0.24827933311462402 3 0.40164200911470299 4 0.35007865777067304
		4 1 0.029554195952449826 2 0.61390286684036255 3 0.2359025148723943 
		4 0.12064042233479333
		3 2 0.25956827402114868 3 0.39017596219429646 4 0.35025576378455486
		4 1 0.0010250528635894411 2 0.66724342107772827 3 0.21104767688738535 
		4 0.12068384917129694
		3 2 0.24784502387046814 3 0.3967607202528694 4 0.35539425587666246
		4 1 0.026660691062460353 2 0.65581786632537842 3 0.19643802346398512 
		4 0.12108341914817614
		3 2 0.24026517570018768 3 0.40082843780519534 4 0.35890638649461704
		4 1 0.028387521891974334 2 0.65785777568817139 3 0.19252657308384352 
		4 0.12122812933601079
		3 2 0.23038563132286072 3 0.40808716622073998 4 0.36152720245639935
		4 1 0.034567734755936892 2 0.61851787567138672 3 0.20632020948754212 
		4 0.14059418008513425
		3 1 0.25989735126495361 2 0.657947838306427 3 0.082154810428619385
		4 1 0.018100987536067717 2 0.64562129974365234 3 0.19430568415115293 
		4 0.141972028569127
		3 1 0.25406414270401001 2 0.67015594989061356 3 0.075779907405376434
		3 0 0.041968703269958496 1 0.49298495054244995 2 0.46504634618759155
		3 1 0.25079172849655151 2 0.67550666630268097 3 0.073701605200767517
		3 0 0.01135408878326416 1 0.51745948195457458 2 0.47118642926216125
		3 0 0.17258214950561523 1 0.71632079780101776 2 0.111097052693367
		3 0 0.019428431987762451 1 0.51032283902168274 2 0.47024872899055481
		3 0 0.17636358737945557 1 0.70520378649234772 2 0.11843262612819672
		2 0 0.39042031764984131 1 0.60957968235015869
		3 0 0.16227465867996216 1 0.70794540643692017 2 0.12977993488311768
		2 0 0.37170565128326416 1 0.62829434871673584
		2 0 0.69728350639343262 1 0.30271649360656738
		2 0 0.36630892753601074 1 0.63369107246398926
		2 0 0.68656560778617859 1 0.31343439221382141
		2 0 0.93073634803295135 1 0.069263651967048645
		2 0 0.70586934685707092 1 0.29413065314292908
		2 0 0.92581995576620102 1 0.074180044233798981
		1 0 1
		2 0 0.92862194031476974 1 0.071378059685230255
		1 0 1
		1 0 1
		2 0 0.72347715497016907 1 0.27652284502983093
		2 0 0.36319833993911743 1 0.63680166006088257
		2 0 0.39152359962463379 1 0.60847640037536621
		3 0 0.16236859560012817 1 0.70276233553886414 2 0.13486906886100769
		3 0 0.16933304071426392 1 0.69444181025028229 2 0.1362251490354538
		3 0 0.030898928642272949 1 0.49790191650390625 2 0.4711991548538208
		3 0 0.020531892776489258 1 0.51190140843391418 2 0.46756669878959656
		3 1 0.25767272710800171 2 0.66832590103149414 3 0.07400137186050415
		3 1 0.26454734802246094 2 0.66208004206418991 3 0.073372609913349152
		4 1 0.0051510585964022835 2 0.68601977825164795 3 0.18177293237566566 
		4 0.12705623077628411
		4 1 0.031878303182239422 2 0.6485745906829834 3 0.19271189401324382 
		4 0.12683521212153334
		3 2 0.21490739285945892 3 0.42196007656520096 4 0.36313253057534012
		3 2 0.23353633284568787 3 0.41871583033340043 4 0.34774783682091176
		3 3 0.26938432455062866 4 0.58009184896945953 5 0.1505238264799118
		3 3 0.26753067970275879 4 0.60193909704685211 5 0.1305302232503891
		3 3 0.016164064407348633 4 0.53225919604301453 5 0.45157673954963684
		3 3 0.017397165298461914 4 0.53145641088485718 5 0.45114642381668091
		3 4 0.23483055830001831 5 0.61995829641819 6 0.14521114528179169
		3 4 0.23247212171554565 5 0.63273932039737701 6 0.13478855788707733
		3 4 0.027815043926239014 5 0.51096650958061218 6 0.4612184464931488
		3 4 0.0093291997909545898 5 0.53776556253433228 6 0.45290523767471313
		2 5 0.25984036922454834 6 0.74015963077545166
		2 5 0.25547337532043457 6 0.74452662467956543
		2 5 0.00034034252166748047 6 0.99965965747833252
		2 5 0.0012739896774291992 6 0.9987260103225708
		2 5 3.4451484680175781e-05 6 0.99996554851531982
		2 5 0.0006949305534362793 6 0.99930506944656372
		2 5 2.6345252990722656e-05 6 0.99997365474700928
		2 5 0.00073927640914916992 6 0.99926072359085083
		2 5 5.4538249969482422e-05 6 0.99994546175003052
		2 5 0.0007572174072265625 6 0.99924278259277344
		2 5 5.6862831115722656e-05 6 0.99994313716888428
		2 5 0.0015149712562561035 6 0.9984850287437439
		2 5 8.96453857421875e-05 6 0.99991035461425781
		2 5 0.0015317797660827637 6 0.99846822023391724
		2 5 4.8875808715820312e-05 6 0.99995112419128418
		2 5 0.0025406479835510254 6 0.99745935201644897
		2 5 8.487701416015625e-05 6 0.99991512298583984
		2 5 0.002582848072052002 6 0.997417151927948
		2 5 8.4638595581054688e-05 6 0.99991536140441895
		2 5 0.00070154666900634766 6 0.99929845333099365
		2 5 3.0696392059326172e-05 6 0.99996930360794067
		2 5 0.00066643953323364258 6 0.99933356046676636
		2 5 2.9623508453369141e-05 6 0.99997037649154663
		2 5 0.00066930055618286133 6 0.99933069944381714
		2 5 3.9637088775634766e-05 6 0.99996036291122437
		2 5 0.00069797039031982422 6 0.99930202960968018
		2 5 3.9637088775634766e-05 6 0.99996036291122437
		2 5 0.00071585178375244141 6 0.99928414821624756
		2 5 3.6776065826416016e-05 6 0.99996322393417358
		2 5 0.00081145763397216797 6 0.99918854236602783
		2 5 0.24853187799453735 6 0.75146812200546265
		2 5 0.25585955381393433 6 0.74414044618606567
		3 4 0.0035516023635864258 5 0.53805407881736755 6 0.45839431881904602
		3 4 0.022851765155792236 5 0.52437508106231689 6 0.45277315378189087
		3 4 0.20116269588470459 5 0.6884286031126976 6 0.11040870100259781
		3 4 0.19754207134246826 5 0.69218285381793976 6 0.11027507483959198
		3 3 0.012553393840789795 4 0.53338819742202759 5 0.45405840873718262
		3 3 0.0098041296005249023 4 0.53387746214866638 5 0.45631840825080872
		3 3 0.26065313816070557 4 0.63018176704645157 5 0.10916509479284286
		2 3 0.26262670755386353 4 0.63473676890134811;
	setAttr ".wl[239:513].w"
		1 5 0.10263652354478836
		3 2 0.24272347986698151 3 0.41464262203390201 4 0.34263389809911654
		3 3 0.016689121723175049 4 0.52954241633415222 5 0.45376846194267273
		3 3 0.26455360651016235 4 0.61469265073537827 5 0.12075374275445938
		3 3 0.025685528293251991 4 0.51469027064740658 5 0.45962420105934143
		3 3 0.26206099987030029 4 0.61155423521995544 5 0.12638476490974426
		3 3 0.074333950877189636 4 0.46118812263011932 5 0.46447792649269104
		3 3 0.25718420743942261 4 0.60741370916366577 5 0.13540208339691162
		3 3 0.051033969968557358 4 0.485426876693964 5 0.46353915333747864
		3 3 0.24921298027038574 4 0.60820950567722321 5 0.14257751405239105
		3 3 0.042249131947755814 4 0.49664328619837761 5 0.46110758185386658
		3 3 0.24609553813934326 4 0.6042921394109726 5 0.14961232244968414
		3 3 0.034163840115070343 4 0.49447982758283615 5 0.47135633230209351
		3 3 0.27136552333831787 4 0.5794219970703125 5 0.14921247959136963
		3 3 0.032560858875513077 4 0.49305152520537376 5 0.47438761591911316
		3 3 0.27163815498352051 4 0.56141757965087891 5 0.16694426536560059
		3 2 0.22992527484893799 3 0.40355019476187237 4 0.36652453038918964
		3 3 0.27173203229904175 4 0.5581631064414978 5 0.17010486125946045
		3 2 0.21575082838535309 3 0.40990987820793295 4 0.37433929340671396
		4 1 0.0085970973009275291 2 0.65537720918655396 3 0.18929038426089848 
		4 0.14673530925162007
		3 2 0.19677026569843292 3 0.41887627728080196 4 0.38435345702076518
		4 1 0.023785088856743124 2 0.61853533983230591 3 0.19749422427099331 
		4 0.16018534703995763
		3 1 0.25816500186920166 2 0.66699110716581345 3 0.074843890964984894
		4 1 0.033372688202665202 2 0.6225089430809021 3 0.18934138687708463 
		4 0.15477698183934807
		3 1 0.26349824666976929 2 0.65602248907089233 3 0.080479264259338379
		3 0 0.0095477104187011719 1 0.52139496803283691 2 0.46905732154846191
		3 1 0.26291781663894653 2 0.65486220270395279 3 0.082219980657100677
		3 0 0.019697189331054688 1 0.51126226782798767 2 0.46904054284095764
		3 0 0.16631239652633667 1 0.69605559110641479 2 0.13763201236724854
		4 1 0.022338787178730907 2 0.66605991125106812 3 0.17794228520579422 
		4 0.13365901636440677
		3 2 0.20853212475776672 3 0.43207574107615826 4 0.35939213416607502
		3 2 0.23191182315349579 3 0.40583252702739897 4 0.36225564981910524
		3 3 0.27195733785629272 4 0.5620255321264267 5 0.16601713001728058
		3 3 0.27178466320037842 4 0.5639285147190094 5 0.16428682208061218
		3 3 0.030568480491638184 4 0.50188085436820984 5 0.46755066514015198
		3 3 0.023646771907806396 4 0.5188661515712738 5 0.4574870765209198
		3 4 0.24846261739730835 5 0.57379262149333954 6 0.17774476110935211
		3 4 0.24818712472915649 5 0.58776159584522247 6 0.16405127942562103
		3 4 0.029768526554107666 5 0.50591546297073364 6 0.46431601047515869
		3 4 0.0019397735595703125 5 0.53519591689109802 6 0.46286430954933167
		2 5 0.26128172874450684 6 0.73871827125549316
		2 5 0.26126271486282349 6 0.73873728513717651
		3 4 0.0265694260597229 5 0.50722432136535645 6 0.46620625257492065
		2 5 0.26224058866500854 6 0.73775941133499146
		3 4 0.026797890663146973 5 0.50208458304405212 6 0.4711175262928009
		2 5 0.26131504774093628 6 0.73868495225906372
		3 4 0.00035572052001953125 5 0.52432656288146973 6 0.47531771659851074
		2 5 0.2599981427192688 6 0.7400018572807312
		3 4 0.0056066513061523438 5 0.52410289645195007 6 0.47029045224189758
		2 5 0.25959783792495728 6 0.74040216207504272
		3 4 0.018612265586853027 5 0.51496922969818115 6 0.46641850471496582
		2 5 0.25711917877197266 6 0.74288082122802734
		3 4 0.016436159610748291 5 0.51451128721237183 6 0.46905255317687988
		2 5 0.2550089955329895 6 0.7449910044670105
		3 4 0.021718382835388184 5 0.50956854224205017 6 0.46871307492256165
		2 5 0.25441962480545044 6 0.74558037519454956
		3 4 0.021118044853210449 5 0.5120415985584259 6 0.46684035658836365
		2 5 0.25387156009674072 6 0.74612843990325928
		3 4 0.022063791751861572 5 0.51552200317382812 6 0.4624142050743103
		2 5 0.25216507911682129 6 0.74783492088317871
		3 4 0.20423775911331177 5 0.66791397333145142 6 0.12784826755523682
		3 4 0.19716042280197144 5 0.6581156849861145 6 0.14472389221191406
		3 4 0.18794625997543335 5 0.65900428593158722 6 0.15304945409297943
		3 4 0.17561882734298706 5 0.64845068752765656 6 0.17593048512935638
		3 4 0.22954386472702026 5 0.5764939934015274 6 0.19396214187145233
		3 4 0.24365335702896118 5 0.55852808058261871 6 0.1978185623884201
		3 4 0.24343723058700562 5 0.55958639085292816 6 0.19697637856006622
		3 4 0.24146270751953125 5 0.57025653123855591 6 0.18828076124191284
		3 3 0.023518383502960205 4 0.50212439894676208 5 0.47435721755027771
		3 4 0.24510884284973145 5 0.57520414888858795 6 0.1796870082616806
		3 3 0.021312296390533447 4 0.50868630409240723 5 0.47000139951705933
		3 3 0.27120542526245117 4 0.56080785393714905 5 0.16798672080039978
		2 0 0.97575111128389835 1 0.024248888716101646
		2 0 0.97333043441176414 1 0.026669565588235855
		2 0 0.99177347868680954 1 0.0082265213131904602
		2 0 0.99061622563749552 1 0.0093837743625044823
		2 0 0.99656344414688647 1 0.0034365558531135321
		2 0 0.98738546390086412 1 0.012614536099135876
		2 0 0.99620304559357464 1 0.0037969544064253569
		2 0 0.99918980349320918 1 0.00081019650679081678
		1 0 1
		1 0 1
		2 0 0.99988592982117552 1 0.0001140701788244769
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
		2 0 0.99999503472554352 1 4.9652744564809836e-06
		2 0 0.99998432305073948 1 1.5676949260523543e-05
		1 0 1
		1 0 1
		2 0 0.50322377681732178 1 0.49677622318267822
		2 0 0.36124193668365479 1 0.63875806331634521
		2 0 0.99943349795648828 1 0.00056650204351171851
		3 0 0.11182862520217896 1 0.80199016630649567 2 0.086181208491325378
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
		2 0 0.75731335580348969 1 0.24268664419651031
		2 0 0.79705685377120972 1 0.20294314622879028
		2 0 0.88216440379619598 1 0.11783559620380402
		2 0 0.74013486504554749 1 0.25986513495445251
		3 0 0.209278404712677 1 0.75618347898125648 2 0.034538116306066513
		3 0 0.17034149169921875 1 0.75792596489191055 2 0.071732543408870697
		3 0 0.098436653614044189 1 0.70602881908416748 2 0.19553452730178833
		3 0 0.15463387966156006 1 0.65943995118141174 2 0.1859261691570282
		3 0 0.18074971437454224 1 0.65271323919296265 2 0.16653704643249512
		2 0 0.42133474349975586 1 0.57866525650024414
		2 0 0.77772167325019836 1 0.22227832674980164
		2 0 0.9998061766527826 1 0.00019382334721740335
		2 0 0.99799278937280178 1 0.0020072106271982193
		2 0 0.99916516424855217 1 0.00083483575144782662
		3 0 0.12108176946640015 1 0.80890284478664398 2 0.070015385746955872
		3 0 0.063260912895202637 1 0.77447828650474548 2 0.16226080060005188
		3 0 0.070735275745391846 1 0.75327657163143158 2 0.17598815262317657
		3 0 0.012268602848052979 1 0.52179822325706482 2 0.4659331738948822
		3 0 0.020426273345947266 1 0.51417744159698486 2 0.46539628505706787
		3 0 0.022618353366851807 1 0.50738650560379028 2 0.46999514102935791
		3 1 0.24010968208312988 2 0.63586516678333282 3 0.12402515113353729
		3 1 0.2552192211151123 2 0.62628369033336639 3 0.1184970885515213
		3 1 0.26240968704223633 2 0.62303949892520905 3 0.11455081403255463
		3 0 0.0099085569381713867 1 0.52376297116279602 2 0.46632847189903259
		3 1 0.26487433910369873 2 0.62283080816268921 3 0.11229485273361206
		3 0 0.014720976352691652 1 0.51802107691764832 2 0.46725794672966003
		3 1 0.26516437530517578 2 0.62452533096075058 3 0.11031029373407364
		3 0 0.040625631809234619 1 0.48844441771507263 2 0.47092995047569275
		3 0 0.20490920543670654 1 0.64363639056682587 2 0.15145440399646759
		2 0 0.44480133056640625 1 0.55519866943359375
		3 0 0.024519860744476318 1 0.50267791748046875 2 0.47280222177505493
		3 0 0.20607227087020874 1 0.63607724010944366 2 0.1578504890203476
		2 0 0.45493066310882568 1 0.54506933689117432
		2 0 0.76896853744983673 1 0.23103146255016327
		2 0 0.76824918389320374 1 0.23175081610679626
		3 0 0.2064170241355896 1 0.63515888154506683 2 0.15842409431934357
		2 0 0.45293498039245605 1 0.54706501960754395
		2 0 0.76558296382427216 1 0.23441703617572784
		2 0 0.96235110983252525 1 0.037648890167474747
		2 0 0.95315834134817123 1 0.046841658651828766
		2 0 0.44356328248977661 1 0.55643671751022339
		2 0 0.76440365612506866 1 0.23559634387493134
		2 0 0.96098680049180984 1 0.039013199508190155
		1 0 1
		1 0 1
		2 0 0.7423442006111145 1 0.2576557993888855
		2 0 0.95000111684203148 1 0.049998883157968521
		1 0 1
		1 0 1
		1 0 1
		2 0 0.92706656455993652 1 0.072933435440063477
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
		1 0 1
		1 0 1
		1 0 1
		2 0 0.95260867103934288 1 0.04739132896065712
		1 0 1
		2 0 0.96713852137327194 1 0.032861478626728058
		1 0 1
		2 0 0.9645794965326786 1 0.035420503467321396
		1 0 1
		2 0 0.97264713048934937 1 0.027352869510650635
		1 0 1
		2 0 0.98369167931377888 1 0.016308320686221123
		1 0 1
		1 0 0.99257479421794415;
	setAttr ".wl[513:717].w"
		1 1 0.0074252057820558548
		2 0 0.94102566689252853 1 0.058974333107471466
		2 0 0.99716985621489584 1 0.0028301437851041555
		2 0 0.9740942120552063 1 0.025905787944793701
		2 0 0.94563552737236023 1 0.054364472627639771
		2 0 0.87573067843914032 1 0.12426932156085968
		3 1 0.24107003211975098 2 0.64268341660499573 3 0.1162465512752533
		4 1 0.033717766245905383 2 0.56623733043670654 3 0.28350544076985945 
		4 0.11653946254752864
		4 1 0.028087208946293782 2 0.55777883529663086 3 0.2826716985932739 
		4 0.13146225716380144
		3 2 0.22838272154331207 3 0.41264315446926719 4 0.35897412398742068
		3 2 0.22806401550769806 3 0.42920669355952473 4 0.34272929093277721
		3 2 0.2290806919336319 3 0.41269967916868494 4 0.35821962889768316
		4 1 0.016729380101394874 2 0.57319939136505127 3 0.25512025245941911 
		4 0.15495097607413477
		3 2 0.22923088073730469 3 0.40301599433348867 4 0.3677531249292067
		4 1 0.019986308529117546 2 0.60788792371749878 3 0.22456918314747737 
		4 0.14755658460590632
		3 2 0.24104149639606476 3 0.39761239888890848 4 0.36134610471502671
		4 1 0.020972352640063523 2 0.59077227115631104 3 0.23156684572236294 
		4 0.15668853048126255
		3 2 0.24225901067256927 3 0.39948644501547875 4 0.35825454431195197
		4 1 0.018148178257860321 2 0.59275788068771362 3 0.2276191047982378 
		4 0.16147483625618828
		3 2 0.23571918904781342 3 0.39305208475026648 4 0.37122872620192005
		4 1 0.047735906469443139 2 0.56019020080566406 3 0.21894551459422654 
		4 0.17312837813066628
		3 1 0.27268052101135254 2 0.61620387434959412 3 0.11111560463905334
		4 1 0.038738996016728977 2 0.5805283784866333 3 0.20664883395457237 
		4 0.17408379154206535
		3 1 0.27311867475509644 2 0.61599665135145187 3 0.11088467389345169
		3 0 0.019359290599822998 1 0.50711312890052795 2 0.47352758049964905
		3 1 0.27314025163650513 2 0.61923815310001373 3 0.10762159526348114
		3 0 0.031229496002197266 1 0.49608030915260315 2 0.47269019484519958
		3 0 0.20708173513412476 1 0.63853903114795685 2 0.1543792337179184
		3 0 0.0084346532821655273 1 0.52198982238769531 2 0.46957552433013916
		3 0 0.19735383987426758 1 0.65702596306800842 2 0.145620197057724
		2 0 0.42727601528167725 1 0.57272398471832275
		3 0 0.18859893083572388 1 0.66844120621681213 2 0.14295986294746399
		2 0 0.41575497388839722 1 0.58424502611160278
		2 0 0.71840605139732361 1 0.28159394860267639
		2 0 0.40770834684371948 1 0.59229165315628052
		2 0 0.70296394824981689 1 0.29703605175018311
		2 0 0.91114241629838943 1 0.088857583701610565
		2 0 0.70953962206840515 1 0.29046037793159485
		2 0 0.92016603797674179 1 0.079833962023258209
		1 0 1
		2 0 0.40401560068130493 1 0.59598439931869507
		3 0 0.17732721567153931 1 0.67328490316867828 2 0.14938788115978241
		3 0 0.02306288480758667 1 0.50755041837692261 2 0.46938669681549072
		3 1 0.25228744745254517 2 0.66174619644880295 3 0.085966356098651886
		4 1 0.013173780278120826 2 0.64872312545776367 3 0.20457047430040823 
		4 0.13353261996370727
		3 2 0.23472081124782562 3 0.41505601374600654 4 0.35022317500616784
		3 3 0.25213515758514404 4 0.62215666472911835 5 0.12570817768573761
		3 3 0.032764077186584473 4 0.5128980278968811 5 0.45433789491653442
		3 4 0.23030078411102295 5 0.6389230489730835 6 0.13077616691589355
		3 4 0.020766794681549072 5 0.52816098928451538 6 0.45107221603393555
		2 5 0.25061953067779541 6 0.74938046932220459
		2 5 0.00090968608856201172 6 0.99909031391143799
		2 5 0.00047159194946289062 6 0.99952840805053711
		2 5 0.00050526857376098633 6 0.99949473142623901
		2 5 0.00051820278167724609 6 0.99948179721832275
		2 5 0.00051802396774291992 6 0.99948197603225708
		2 5 0.00057005882263183594 6 0.99942994117736816
		2 5 0.0011071562767028809 6 0.99889284372329712
		2 5 0.0010541677474975586 6 0.99894583225250244
		2 5 0.00061798095703125 6 0.99938201904296875
		2 5 0.00061768293380737305 6 0.99938231706619263
		2 5 0.0010515451431274414 6 0.99894845485687256
		2 5 0.001037895679473877 6 0.99896210432052612
		2 5 0.00061547756195068359 6 0.99938452243804932
		2 5 0.26382625102996826 6 0.73617374897003174
		3 4 0.022148370742797852 5 0.52201858162879944 6 0.45583304762840271
		3 4 0.20976406335830688 5 0.69038636237382889 6 0.099849574267864227
		3 3 0.029914617538452148 4 0.51572930812835693 5 0.45435607433319092
		3 3 0.26664084196090698 4 0.61851290613412857 5 0.11484625190496445
		3 3 0.027899086475372314 4 0.51946792006492615 5 0.45263299345970154
		3 3 0.27134221792221069 4 0.61397183686494827 5 0.11468594521284103
		3 3 0.033774971961975098 4 0.50704678893089294 5 0.45917823910713196
		3 3 0.27418309450149536 4 0.59387923777103424 5 0.1319376677274704
		3 3 0.022948801517486572 4 0.51698201894760132 5 0.46006917953491211
		3 3 0.27482706308364868 4 0.57094402611255646 5 0.15422891080379486
		3 3 0.0061922669410705566 4 0.53758272528648376 5 0.45622500777244568
		3 3 0.27524536848068237 4 0.56682519614696503 5 0.1579294353723526
		3 3 0.035366475582122803 4 0.50682178139686584 5 0.45781174302101135
		3 3 0.27597934007644653 4 0.55079072713851929 5 0.17322993278503418
		3 3 0.0056601166725158691 4 0.53842592239379883 5 0.4559139609336853
		3 3 0.27923530340194702 4 0.54182116687297821 5 0.17894352972507477
		3 3 0.037252128124237061 4 0.50597110390663147 5 0.45677676796913147
		3 3 0.26872038841247559 4 0.55569040775299072 5 0.17558920383453369
		3 2 0.23560225963592529 3 0.39170654921786996 4 0.37269119114620475
		3 3 0.25824218988418579 4 0.57518896460533142 5 0.16656884551048279
		3 2 0.246129110455513 3 0.39659695270056394 4 0.35727393684392311
		4 1 0.031820064144165848 2 0.62640619277954102 3 0.18950399664275061 
		4 0.15226974643354255
		3 2 0.24500209093093872 3 0.42612977253475232 4 0.32886813653430896
		4 1 0.046425674402160229 2 0.58254468441009521 3 0.21561729430422094 
		4 0.15541234688352359
		3 1 0.2743842601776123 2 0.62479712069034576 3 0.10081861913204193
		4 1 0.024215142500657153 2 0.62131470441818237 3 0.20752671058031283 
		4 0.14694344250084768
		3 1 0.26304322481155396 2 0.63937506079673767 3 0.097581714391708374
		3 0 0.010731041431427002 1 0.52540680766105652 2 0.46386215090751648
		3 1 0.24820882081985474 2 0.65550936758518219 3 0.096281811594963074
		3 0 0.015495002269744873 1 0.51894208788871765 2 0.46556290984153748
		3 0 0.18611437082290649 1 0.65781453251838684 2 0.15607109665870667
		4 1 0.0048447009401801529 2 0.65341734886169434 3 0.20590312542339237 
		4 0.13583482477473313
		3 2 0.25339144468307495 3 0.39612956755763529 4 0.35047898775928976
		3 2 0.25103366374969482 3 0.40137501737090531 4 0.34759131887939981
		3 3 0.24633973836898804 4 0.62027445435523987 5 0.13338580727577209
		3 3 0.24717819690704346 4 0.62622012197971344 5 0.1266016811132431
		3 3 0.0092039704322814941 4 0.53785678744316101 5 0.4529392421245575
		3 3 0.034096896648406982 4 0.51552027463912964 5 0.45038282871246338
		3 4 0.23631399869918823 5 0.61364381015300751 6 0.15004219114780426
		3 4 0.23713093996047974 5 0.6243797242641449 6 0.13848933577537537
		3 4 0.0030587911605834961 5 0.53979453444480896 6 0.45714667439460754
		3 4 0.0014829635620117188 5 0.54852613806724548 6 0.4499908983707428
		2 5 0.25395435094833374 6 0.74604564905166626
		2 5 0.25249361991882324 6 0.74750638008117676
		3 4 0.00067627429962158203 5 0.53901711106300354 6 0.46030661463737488
		2 5 0.25484544038772583 6 0.74515455961227417
		3 4 0.012155711650848389 5 0.52088534832000732 6 0.46695894002914429
		2 5 0.26095312833786011 6 0.73904687166213989
		3 4 0.01287233829498291 5 0.51695331931114197 6 0.47017434239387512
		2 5 0.26322370767593384 6 0.73677629232406616
		3 4 0.033640027046203613 5 0.49962988495826721 6 0.46673008799552917
		2 5 0.26528865098953247 6 0.73471134901046753
		3 4 0.029214203357696533 5 0.50520497560501099 6 0.46558082103729248
		2 5 0.26621609926223755 6 0.73378390073776245
		3 4 0.032808423042297363 5 0.50269344449043274 6 0.4644981324672699
		2 5 0.2664528489112854 6 0.7335471510887146
		3 4 0.020235955715179443 5 0.51544332504272461 6 0.46432071924209595
		2 5 0.26630222797393799 6 0.73369777202606201
		3 4 0.012424170970916748 5 0.52140569686889648 6 0.46617013216018677
		2 5 0.26564407348632812 6 0.73435592651367188
		3 4 0.0026044249534606934 5 0.5312441885471344 6 0.46615138649940491
		2 5 0.26496285200119019 6 0.73503714799880981
		3 4 0.23130905628204346 5 0.65430300682783127 6 0.11438793689012527
		3 4 0.24400991201400757 5 0.63851349800825119 6 0.11747658997774124
		3 4 0.24998241662979126 5 0.62923447787761688 6 0.12078310549259186
		3 4 0.24967408180236816 5 0.60953307151794434 6 0.1407928466796875
		3 4 0.24648171663284302 5 0.6082204282283783 6 0.14529785513877869
		3 4 0.24127477407455444 5 0.59309622645378113 6 0.16562899947166443
		3 4 0.23606157302856445 5 0.59340925514698029 6 0.17052917182445526
		3 4 0.23434644937515259 5 0.59753052890300751 6 0.1681230217218399
		3 3 0.027911365032196045 4 0.51884284615516663 5 0.45324578881263733
		3 4 0.24129080772399902 5 0.59877683222293854 6 0.15993236005306244
		3 3 0.011830568313598633 4 0.53774192929267883 5 0.45042750239372253
		3 3 0.24661725759506226 4 0.61422726511955261 5 0.13915547728538513
		2 0 0.97821955569088459 1 0.02178044430911541
		2 0 0.99261744832620025 1 0.0073825516737997532
		2 0 0.99678388051688671 1 0.0032161194831132889
		2 0 0.98985226545482874 1 0.010147734545171261
		2 0 0.99914999160682783 1 0.00085000839317217469
		2 0 0.99988565492094494 1 0.00011434507905505598
		1 0 1
		1 0 1
		2 0 0.99997420522413449 1 2.5794775865506381e-05
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
		2 0 0.99999378863776656 1 6.2113622334436513e-06;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" -6.1942016141191538e-09 -4.4110566248249852e-10 1 0
		 -0.14170675969971328 0.98990867975556607 -4.4110593723735065e-10 0 -0.98990867975556596 -0.14170675969971328 -6.1942015747876264e-09 0
		 5.3213525229900773e-14 7.6175877322152922e-15 -3.9919533164442786e-14 1;
	setAttr ".pm[1]" -type "matrix" -4.2003408618239081e-09 -4.5738216500343391e-09 1 0
		 -0.78272430169330409 0.62236859459546123 -4.4110593723735039e-10 0 -0.62236859459546123 -0.78272430169330398 -6.1942015747876264e-09 0
		 -6.2989646246831308 -5.9491567334838615 5.3668140291537126e-08 1;
	setAttr ".pm[2]" -type "matrix" -4.2003408618239081e-09 -4.5738216500343391e-09 1 0
		 -0.78272430169330409 0.62236859459546123 -4.4110593723735039e-10 0 -0.62236859459546123 -0.78272430169330398 -6.1942015747876264e-09 0
		 -12.026878632564657 -5.9491567334838642 5.3668138526586261e-08 1;
	setAttr ".pm[3]" -type "matrix" -4.2003408618239081e-09 -4.5738216500343391e-09 1 0
		 -0.78272430169330409 0.62236859459546123 -4.4110593723735039e-10 0 -0.62236859459546123 -0.78272430169330398 -6.1942015747876264e-09 0
		 -17.75479264044618 -5.949156733483858 5.3668136761635362e-08 1;
	setAttr ".pm[4]" -type "matrix" -1.8914324722564188e-09 -5.9148280655251884e-09 1 0
		 -0.97171494414721216 0.23615687015410097 -4.411059372373507e-10 0 -0.23615687015410103 -0.97171494414721193 -6.1942015747876264e-09 0
		 -18.813836154612709 -15.260063778318832 5.3668134996684582e-08 1;
	setAttr ".pm[5]" -type "matrix" -1.8914324722564188e-09 -5.9148280655251884e-09 1 0
		 -0.97171494414721216 0.23615687015410097 -4.411059372373507e-10 0 -0.23615687015410103 -0.97171494414721193 -6.1942015747876264e-09 0
		 -25.165932854895978 -15.260063778318838 5.3668134111364177e-08 1;
	setAttr ".pm[6]" -type "matrix" -1.8914324722564188e-09 -5.9148280655251884e-09 1 0
		 -0.97171494414721216 0.23615687015410097 -4.411059372373507e-10 0 -0.23615687015410103 -0.97171494414721193 -6.1942015747876264e-09 0
		 -31.518029555179236 -15.260063778318843 5.3668133226043905e-08 1;
	setAttr ".pm[7]" -type "matrix" -1.8914324722564188e-09 -5.9148280655251884e-09 1 0
		 -0.97171494414721216 0.23615687015410097 -4.411059372373507e-10 0 -0.23615687015410103 -0.97171494414721193 -6.1942015747876264e-09 0
		 -37.870126255462502 -15.260063778318845 5.3668132340723513e-08 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  4 4 4 4 4 4 4 4;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode groupId -n "groupId1";
	rename -uid "81E37E1A-4122-8C8C-1FE7-5A8EBA3231FF";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "FFEC7CCA-4160-F1CC-B22F-239F71340C5A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:716]";
createNode dagPose -n "bindPose1";
	rename -uid "48438C61-45C9-DC7E-D65E-C98982C969DE";
	setAttr -s 10 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.3210892755043966e-09 -1.2341423575152896e-08
		 4.4309692464986319e-08 5 3.9919533497418248e-14 0 5.3755993932461457e-14 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.050227797392026652 0.70532061607913188 -0.050227797392026652 0.70532061168807814 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 -2.6489498039516945e-08 0 8.6642611446427882
		 6.5073647075901357e-15 -5.3668180211070293e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.36945539885280537 0.92924846422176799 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7279140078815258 8.8817841970012523e-16
		 1.7649508657860915e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.7279140078815232 -5.3290705182007514e-15
		 1.7649508922558711e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 -5.5511151231257827e-17 0 5.7279140078815267
		 -2.6645352591003757e-15 1.7649508194639772e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.21498660367050201 0.97661699772337696 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.352096700283262 8.8817841970012523e-15
		 8.8532038495230141e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.3520967002832585 3.5527136788005009e-15
		 8.8532027245573811e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.3520967002832656 0 8.8532039818719121e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 10 ".m";
	setAttr -s 10 ".p";
	setAttr -s 10 ".g[0:9]" yes yes no no no no no no no no;
	setAttr ".bp" yes;
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
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 7 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "Root.s" "Hairs1.is";
connectAttr "Hairs1Fat.oy" "Hairs1.fatFrontAbs";
connectAttr "Hairs1Fat.oz" "Hairs1.fatWidthAbs";
connectAttr "Hairs1.s" "Hairs2.is";
connectAttr "Hairs2Fat.oy" "Hairs2.fatFrontAbs";
connectAttr "Hairs2Fat.oz" "Hairs2.fatWidthAbs";
connectAttr "Hairs2.s" "Hairs3.is";
connectAttr "Hairs3Fat.oy" "Hairs3.fatFrontAbs";
connectAttr "Hairs3Fat.oz" "Hairs3.fatWidthAbs";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MainScaleMultiplyDivide.o" "FKSystem.s";
connectAttr "Main.fkVis" "FKSystem.v";
connectAttr "FKFollowRoot_parentConstraint1.ctx" "FKFollowRoot.tx";
connectAttr "FKFollowRoot_parentConstraint1.cty" "FKFollowRoot.ty";
connectAttr "FKFollowRoot_parentConstraint1.ctz" "FKFollowRoot.tz";
connectAttr "FKFollowRoot_parentConstraint1.crx" "FKFollowRoot.rx";
connectAttr "FKFollowRoot_parentConstraint1.cry" "FKFollowRoot.ry";
connectAttr "FKFollowRoot_parentConstraint1.crz" "FKFollowRoot.rz";
connectAttr "FKFollowRoot.ro" "FKFollowRoot_parentConstraint1.cro";
connectAttr "FKFollowRoot.pim" "FKFollowRoot_parentConstraint1.cpim";
connectAttr "FKFollowRoot.rp" "FKFollowRoot_parentConstraint1.crp";
connectAttr "FKFollowRoot.rpt" "FKFollowRoot_parentConstraint1.crt";
connectAttr "RootX_M.t" "FKFollowRoot_parentConstraint1.tg[0].tt";
connectAttr "RootX_M.rp" "FKFollowRoot_parentConstraint1.tg[0].trp";
connectAttr "RootX_M.rpt" "FKFollowRoot_parentConstraint1.tg[0].trt";
connectAttr "RootX_M.r" "FKFollowRoot_parentConstraint1.tg[0].tr";
connectAttr "RootX_M.ro" "FKFollowRoot_parentConstraint1.tg[0].tro";
connectAttr "RootX_M.s" "FKFollowRoot_parentConstraint1.tg[0].ts";
connectAttr "RootX_M.pm" "FKFollowRoot_parentConstraint1.tg[0].tpm";
connectAttr "FKFollowRoot_parentConstraint1.w0" "FKFollowRoot_parentConstraint1.tg[0].tw"
		;
connectAttr "FKRoot_M.s" "FKXRoot_M.is";
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctx" "FKParentConstraintToRoot_M.tx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cty" "FKParentConstraintToRoot_M.ty"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.ctz" "FKParentConstraintToRoot_M.tz"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crx" "FKParentConstraintToRoot_M.rx"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.cry" "FKParentConstraintToRoot_M.ry"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.crz" "FKParentConstraintToRoot_M.rz"
		;
connectAttr "FKParentConstraintToRoot_M.ro" "FKParentConstraintToRoot_M_parentConstraint1.cro"
		;
connectAttr "FKParentConstraintToRoot_M.pim" "FKParentConstraintToRoot_M_parentConstraint1.cpim"
		;
connectAttr "FKParentConstraintToRoot_M.rp" "FKParentConstraintToRoot_M_parentConstraint1.crp"
		;
connectAttr "FKParentConstraintToRoot_M.rpt" "FKParentConstraintToRoot_M_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.w0" "FKParentConstraintToRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSplineCondition_M.ocg" "FKOffsetHairs1_M.v";
connectAttr "InbetweenHairs1Part0_M.r" "FKXHairs1_M.r";
connectAttr "FKOffsetHairs1Part1_M_pointConstraint1.ctx" "FKOffsetHairs1Part1_M.tx"
		;
connectAttr "FKOffsetHairs1Part1_M_pointConstraint1.cty" "FKOffsetHairs1Part1_M.ty"
		;
connectAttr "FKOffsetHairs1Part1_M_pointConstraint1.ctz" "FKOffsetHairs1Part1_M.tz"
		;
connectAttr "InbetweenHairs1Part1_M.r" "FKInbetweenHairs1Part1_M.r";
connectAttr "FKHairs1_M.sx" "FKHairs1Part1_M.sx";
connectAttr "FKHairs1_M.sy" "FKHairs1Part1_M.sy";
connectAttr "FKHairs1_M.sz" "FKHairs1Part1_M.sz";
connectAttr "FKHairs1Part1_M.s" "FKXHairs1Part1_M.is";
connectAttr "FKOffsetHairs1Part2_M_pointConstraint1.ctx" "FKOffsetHairs1Part2_M.tx"
		;
connectAttr "FKOffsetHairs1Part2_M_pointConstraint1.cty" "FKOffsetHairs1Part2_M.ty"
		;
connectAttr "FKOffsetHairs1Part2_M_pointConstraint1.ctz" "FKOffsetHairs1Part2_M.tz"
		;
connectAttr "InbetweenHairs1Part2_M.r" "FKInbetweenHairs1Part2_M.r";
connectAttr "FKHairs1_M.sx" "FKHairs1Part2_M.sx";
connectAttr "FKHairs1_M.sy" "FKHairs1Part2_M.sy";
connectAttr "FKHairs1_M.sz" "FKHairs1Part2_M.sz";
connectAttr "FKHairs1Part2_M.s" "FKXHairs1Part2_M.is";
connectAttr "FKOffsetHairs2_M_pointConstraint1.ctx" "FKOffsetHairs2_M.tx";
connectAttr "FKOffsetHairs2_M_pointConstraint1.cty" "FKOffsetHairs2_M.ty";
connectAttr "FKOffsetHairs2_M_pointConstraint1.ctz" "FKOffsetHairs2_M.tz";
connectAttr "InbetweenHairs2Part0_M.r" "FKXHairs2_M.r";
connectAttr "FKOffsetHairs2Part1_M_pointConstraint1.ctx" "FKOffsetHairs2Part1_M.tx"
		;
connectAttr "FKOffsetHairs2Part1_M_pointConstraint1.cty" "FKOffsetHairs2Part1_M.ty"
		;
connectAttr "FKOffsetHairs2Part1_M_pointConstraint1.ctz" "FKOffsetHairs2Part1_M.tz"
		;
connectAttr "InbetweenHairs2Part1_M.r" "FKInbetweenHairs2Part1_M.r";
connectAttr "FKHairs2_M.sx" "FKHairs2Part1_M.sx";
connectAttr "FKHairs2_M.sy" "FKHairs2Part1_M.sy";
connectAttr "FKHairs2_M.sz" "FKHairs2Part1_M.sz";
connectAttr "FKHairs2Part1_M.s" "FKXHairs2Part1_M.is";
connectAttr "FKOffsetHairs2Part2_M_pointConstraint1.ctx" "FKOffsetHairs2Part2_M.tx"
		;
connectAttr "FKOffsetHairs2Part2_M_pointConstraint1.cty" "FKOffsetHairs2Part2_M.ty"
		;
connectAttr "FKOffsetHairs2Part2_M_pointConstraint1.ctz" "FKOffsetHairs2Part2_M.tz"
		;
connectAttr "InbetweenHairs2Part2_M.r" "FKInbetweenHairs2Part2_M.r";
connectAttr "FKHairs2_M.sx" "FKHairs2Part2_M.sx";
connectAttr "FKHairs2_M.sy" "FKHairs2Part2_M.sy";
connectAttr "FKHairs2_M.sz" "FKHairs2Part2_M.sz";
connectAttr "FKHairs2Part2_M.s" "FKXHairs2Part2_M.is";
connectAttr "FKXHairs2Part2_M.s" "FKXHairs3_M.is";
connectAttr "FKOffsetHairs2Part2_M.pim" "FKOffsetHairs2Part2_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetHairs2Part2_M.rp" "FKOffsetHairs2Part2_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetHairs2Part2_M.rpt" "FKOffsetHairs2Part2_M_pointConstraint1.crt"
		;
connectAttr "FKPS2Hairs2Part2_M.t" "FKOffsetHairs2Part2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2Hairs2Part2_M.rp" "FKOffsetHairs2Part2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2Hairs2Part2_M.rpt" "FKOffsetHairs2Part2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2Hairs2Part2_M.pm" "FKOffsetHairs2Part2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetHairs2Part2_M_pointConstraint1.w0" "FKOffsetHairs2Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Hairs2Part2_M_scaleConstraint1.csx" "FKPS1Hairs2Part2_M.sx";
connectAttr "FKPS1Hairs2Part2_M_scaleConstraint1.csy" "FKPS1Hairs2Part2_M.sy";
connectAttr "FKPS1Hairs2Part2_M_scaleConstraint1.csz" "FKPS1Hairs2Part2_M.sz";
connectAttr "FKPS1Hairs2Part2_M.pim" "FKPS1Hairs2Part2_M_scaleConstraint1.cpim";
connectAttr "FKHairs2Part1_M.s" "FKPS1Hairs2Part2_M_scaleConstraint1.tg[0].ts";
connectAttr "FKHairs2Part1_M.pm" "FKPS1Hairs2Part2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "FKPS1Hairs2Part2_M_scaleConstraint1.w0" "FKPS1Hairs2Part2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs2Part1_M.pim" "FKOffsetHairs2Part1_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetHairs2Part1_M.rp" "FKOffsetHairs2Part1_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetHairs2Part1_M.rpt" "FKOffsetHairs2Part1_M_pointConstraint1.crt"
		;
connectAttr "FKPS2Hairs2Part1_M.t" "FKOffsetHairs2Part1_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2Hairs2Part1_M.rp" "FKOffsetHairs2Part1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2Hairs2Part1_M.rpt" "FKOffsetHairs2Part1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2Hairs2Part1_M.pm" "FKOffsetHairs2Part1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetHairs2Part1_M_pointConstraint1.w0" "FKOffsetHairs2Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Hairs2Part1_M_scaleConstraint1.csx" "FKPS1Hairs2Part1_M.sx";
connectAttr "FKPS1Hairs2Part1_M_scaleConstraint1.csy" "FKPS1Hairs2Part1_M.sy";
connectAttr "FKPS1Hairs2Part1_M_scaleConstraint1.csz" "FKPS1Hairs2Part1_M.sz";
connectAttr "FKPS1Hairs2Part1_M.pim" "FKPS1Hairs2Part1_M_scaleConstraint1.cpim";
connectAttr "FKHairs2_M.s" "FKPS1Hairs2Part1_M_scaleConstraint1.tg[0].ts";
connectAttr "FKHairs2_M.pm" "FKPS1Hairs2Part1_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Hairs2Part1_M_scaleConstraint1.w0" "FKPS1Hairs2Part1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.crx" "InbetweenHairs2Part0_M.rx"
		;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.cry" "InbetweenHairs2Part0_M.ry"
		;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.crz" "InbetweenHairs2Part0_M.rz"
		;
connectAttr "InbetweenHairs2Part0_M.ro" "InbetweenHairs2Part0_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs2Part0_M.pim" "InbetweenHairs2Part0_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs2_M.r" "InbetweenHairs2Part0_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs2_M.ro" "InbetweenHairs2Part0_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs2_M.pm" "InbetweenHairs2Part0_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.w0" "InbetweenHairs2Part0_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs2_M.r" "InbetweenHairs2Part0_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs2_M.ro" "InbetweenHairs2Part0_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs2_M.pm" "InbetweenHairs2Part0_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.w1" "InbetweenHairs2Part0_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW0Hairs2_MUnitConversion.o" "InbetweenHairs2Part0_M_orientConstraint1.w0"
		;
connectAttr "FKW0Hairs2_MReverse.ox" "InbetweenHairs2Part0_M_orientConstraint1.w1"
		;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.crx" "InbetweenHairs2Part1_M.rx"
		;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.cry" "InbetweenHairs2Part1_M.ry"
		;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.crz" "InbetweenHairs2Part1_M.rz"
		;
connectAttr "InbetweenHairs2Part1_M.ro" "InbetweenHairs2Part1_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs2Part1_M.pim" "InbetweenHairs2Part1_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs2_M.r" "InbetweenHairs2Part1_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs2_M.ro" "InbetweenHairs2Part1_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs2_M.pm" "InbetweenHairs2Part1_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.w0" "InbetweenHairs2Part1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs2_M.r" "InbetweenHairs2Part1_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs2_M.ro" "InbetweenHairs2Part1_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs2_M.pm" "InbetweenHairs2Part1_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.w1" "InbetweenHairs2Part1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW1Hairs2_MUnitConversion.o" "InbetweenHairs2Part1_M_orientConstraint1.w0"
		;
connectAttr "FKW1Hairs2_MReverse.ox" "InbetweenHairs2Part1_M_orientConstraint1.w1"
		;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.crx" "InbetweenHairs2Part2_M.rx"
		;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.cry" "InbetweenHairs2Part2_M.ry"
		;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.crz" "InbetweenHairs2Part2_M.rz"
		;
connectAttr "InbetweenHairs2Part2_M.ro" "InbetweenHairs2Part2_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs2Part2_M.pim" "InbetweenHairs2Part2_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs2_M.r" "InbetweenHairs2Part2_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs2_M.ro" "InbetweenHairs2Part2_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs2_M.pm" "InbetweenHairs2Part2_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.w0" "InbetweenHairs2Part2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs2_M.r" "InbetweenHairs2Part2_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs2_M.ro" "InbetweenHairs2Part2_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs2_M.pm" "InbetweenHairs2Part2_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.w1" "InbetweenHairs2Part2_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW2Hairs2_MUnitConversion.o" "InbetweenHairs2Part2_M_orientConstraint1.w0"
		;
connectAttr "FKW2Hairs2_MReverse.ox" "InbetweenHairs2Part2_M_orientConstraint1.w1"
		;
connectAttr "FKOffsetHairs2_M.pim" "FKOffsetHairs2_M_pointConstraint1.cpim";
connectAttr "FKOffsetHairs2_M.rp" "FKOffsetHairs2_M_pointConstraint1.crp";
connectAttr "FKOffsetHairs2_M.rpt" "FKOffsetHairs2_M_pointConstraint1.crt";
connectAttr "FKPS2Hairs2_M.t" "FKOffsetHairs2_M_pointConstraint1.tg[0].tt";
connectAttr "FKPS2Hairs2_M.rp" "FKOffsetHairs2_M_pointConstraint1.tg[0].trp";
connectAttr "FKPS2Hairs2_M.rpt" "FKOffsetHairs2_M_pointConstraint1.tg[0].trt";
connectAttr "FKPS2Hairs2_M.pm" "FKOffsetHairs2_M_pointConstraint1.tg[0].tpm";
connectAttr "FKOffsetHairs2_M_pointConstraint1.w0" "FKOffsetHairs2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Hairs2_M_scaleConstraint1.csx" "FKPS1Hairs2_M.sx";
connectAttr "FKPS1Hairs2_M_scaleConstraint1.csy" "FKPS1Hairs2_M.sy";
connectAttr "FKPS1Hairs2_M_scaleConstraint1.csz" "FKPS1Hairs2_M.sz";
connectAttr "FKPS1Hairs2_M.pim" "FKPS1Hairs2_M_scaleConstraint1.cpim";
connectAttr "FKHairs1Part2_M.s" "FKPS1Hairs2_M_scaleConstraint1.tg[0].ts";
connectAttr "FKHairs1Part2_M.pm" "FKPS1Hairs2_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Hairs2_M_scaleConstraint1.w0" "FKPS1Hairs2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs1Part2_M.pim" "FKOffsetHairs1Part2_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetHairs1Part2_M.rp" "FKOffsetHairs1Part2_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetHairs1Part2_M.rpt" "FKOffsetHairs1Part2_M_pointConstraint1.crt"
		;
connectAttr "FKPS2Hairs1Part2_M.t" "FKOffsetHairs1Part2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2Hairs1Part2_M.rp" "FKOffsetHairs1Part2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2Hairs1Part2_M.rpt" "FKOffsetHairs1Part2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2Hairs1Part2_M.pm" "FKOffsetHairs1Part2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetHairs1Part2_M_pointConstraint1.w0" "FKOffsetHairs1Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Hairs1Part2_M_scaleConstraint1.csx" "FKPS1Hairs1Part2_M.sx";
connectAttr "FKPS1Hairs1Part2_M_scaleConstraint1.csy" "FKPS1Hairs1Part2_M.sy";
connectAttr "FKPS1Hairs1Part2_M_scaleConstraint1.csz" "FKPS1Hairs1Part2_M.sz";
connectAttr "FKPS1Hairs1Part2_M.pim" "FKPS1Hairs1Part2_M_scaleConstraint1.cpim";
connectAttr "FKHairs1Part1_M.s" "FKPS1Hairs1Part2_M_scaleConstraint1.tg[0].ts";
connectAttr "FKHairs1Part1_M.pm" "FKPS1Hairs1Part2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "FKPS1Hairs1Part2_M_scaleConstraint1.w0" "FKPS1Hairs1Part2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs1Part1_M.pim" "FKOffsetHairs1Part1_M_pointConstraint1.cpim"
		;
connectAttr "FKOffsetHairs1Part1_M.rp" "FKOffsetHairs1Part1_M_pointConstraint1.crp"
		;
connectAttr "FKOffsetHairs1Part1_M.rpt" "FKOffsetHairs1Part1_M_pointConstraint1.crt"
		;
connectAttr "FKPS2Hairs1Part1_M.t" "FKOffsetHairs1Part1_M_pointConstraint1.tg[0].tt"
		;
connectAttr "FKPS2Hairs1Part1_M.rp" "FKOffsetHairs1Part1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "FKPS2Hairs1Part1_M.rpt" "FKOffsetHairs1Part1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "FKPS2Hairs1Part1_M.pm" "FKOffsetHairs1Part1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "FKOffsetHairs1Part1_M_pointConstraint1.w0" "FKOffsetHairs1Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "FKPS1Hairs1Part1_M_scaleConstraint1.csx" "FKPS1Hairs1Part1_M.sx";
connectAttr "FKPS1Hairs1Part1_M_scaleConstraint1.csy" "FKPS1Hairs1Part1_M.sy";
connectAttr "FKPS1Hairs1Part1_M_scaleConstraint1.csz" "FKPS1Hairs1Part1_M.sz";
connectAttr "FKPS1Hairs1Part1_M.pim" "FKPS1Hairs1Part1_M_scaleConstraint1.cpim";
connectAttr "FKHairs1_M.s" "FKPS1Hairs1Part1_M_scaleConstraint1.tg[0].ts";
connectAttr "FKHairs1_M.pm" "FKPS1Hairs1Part1_M_scaleConstraint1.tg[0].tpm";
connectAttr "FKPS1Hairs1Part1_M_scaleConstraint1.w0" "FKPS1Hairs1Part1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.crx" "InbetweenHairs1Part0_M.rx"
		;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.cry" "InbetweenHairs1Part0_M.ry"
		;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.crz" "InbetweenHairs1Part0_M.rz"
		;
connectAttr "InbetweenHairs1Part0_M.ro" "InbetweenHairs1Part0_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs1Part0_M.pim" "InbetweenHairs1Part0_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs1_M.r" "InbetweenHairs1Part0_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs1_M.ro" "InbetweenHairs1Part0_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs1_M.pm" "InbetweenHairs1Part0_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.w0" "InbetweenHairs1Part0_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs1_M.r" "InbetweenHairs1Part0_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs1_M.ro" "InbetweenHairs1Part0_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs1_M.pm" "InbetweenHairs1Part0_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.w1" "InbetweenHairs1Part0_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW0Hairs1_MUnitConversion.o" "InbetweenHairs1Part0_M_orientConstraint1.w0"
		;
connectAttr "FKW0Hairs1_MReverse.ox" "InbetweenHairs1Part0_M_orientConstraint1.w1"
		;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.crx" "InbetweenHairs1Part1_M.rx"
		;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.cry" "InbetweenHairs1Part1_M.ry"
		;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.crz" "InbetweenHairs1Part1_M.rz"
		;
connectAttr "InbetweenHairs1Part1_M.ro" "InbetweenHairs1Part1_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs1Part1_M.pim" "InbetweenHairs1Part1_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs1_M.r" "InbetweenHairs1Part1_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs1_M.ro" "InbetweenHairs1Part1_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs1_M.pm" "InbetweenHairs1Part1_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.w0" "InbetweenHairs1Part1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs1_M.r" "InbetweenHairs1Part1_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs1_M.ro" "InbetweenHairs1Part1_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs1_M.pm" "InbetweenHairs1Part1_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.w1" "InbetweenHairs1Part1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW1Hairs1_MUnitConversion.o" "InbetweenHairs1Part1_M_orientConstraint1.w0"
		;
connectAttr "FKW1Hairs1_MReverse.ox" "InbetweenHairs1Part1_M_orientConstraint1.w1"
		;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.crx" "InbetweenHairs1Part2_M.rx"
		;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.cry" "InbetweenHairs1Part2_M.ry"
		;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.crz" "InbetweenHairs1Part2_M.rz"
		;
connectAttr "InbetweenHairs1Part2_M.ro" "InbetweenHairs1Part2_M_orientConstraint1.cro"
		;
connectAttr "InbetweenHairs1Part2_M.pim" "InbetweenHairs1Part2_M_orientConstraint1.cpim"
		;
connectAttr "FKHairs1_M.r" "InbetweenHairs1Part2_M_orientConstraint1.tg[0].tr";
connectAttr "FKHairs1_M.ro" "InbetweenHairs1Part2_M_orientConstraint1.tg[0].tro"
		;
connectAttr "FKHairs1_M.pm" "InbetweenHairs1Part2_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.w0" "InbetweenHairs1Part2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKOffsetHairs1_M.r" "InbetweenHairs1Part2_M_orientConstraint1.tg[1].tr"
		;
connectAttr "FKOffsetHairs1_M.ro" "InbetweenHairs1Part2_M_orientConstraint1.tg[1].tro"
		;
connectAttr "FKOffsetHairs1_M.pm" "InbetweenHairs1Part2_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.w1" "InbetweenHairs1Part2_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKW2Hairs1_MUnitConversion.o" "InbetweenHairs1Part2_M_orientConstraint1.w0"
		;
connectAttr "FKW2Hairs1_MReverse.ox" "InbetweenHairs1Part2_M_orientConstraint1.w1"
		;
connectAttr "MainScaleMultiplyDivide.o" "IKSystem.s";
connectAttr "Main.ikVis" "IKSystem.v";
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKParentConstraintHairs1_M.v";
connectAttr "IKXHairs1_M_parentConstraint1.ctx" "IKXHairs1_M.tx";
connectAttr "IKXHairs1_M_parentConstraint1.cty" "IKXHairs1_M.ty";
connectAttr "IKXHairs1_M_parentConstraint1.ctz" "IKXHairs1_M.tz";
connectAttr "IKXHairs1_M_parentConstraint1.crx" "IKXHairs1_M.rx";
connectAttr "IKXHairs1_M_parentConstraint1.cry" "IKXHairs1_M.ry";
connectAttr "IKXHairs1_M_parentConstraint1.crz" "IKXHairs1_M.rz";
connectAttr "IKXHairs1_M.s" "IKXHairs1Part1_M.is";
connectAttr "IKXHairs1Part1_M_parentConstraint1.crx" "IKXHairs1Part1_M.rx";
connectAttr "IKXHairs1Part1_M_parentConstraint1.cry" "IKXHairs1Part1_M.ry";
connectAttr "IKXHairs1Part1_M_parentConstraint1.crz" "IKXHairs1Part1_M.rz";
connectAttr "IKXHairs1Part1_M_parentConstraint1.ctx" "IKXHairs1Part1_M.tx";
connectAttr "IKXHairs1Part1_M_parentConstraint1.cty" "IKXHairs1Part1_M.ty";
connectAttr "IKXHairs1Part1_M_parentConstraint1.ctz" "IKXHairs1Part1_M.tz";
connectAttr "IKXHairs1Part1_M.s" "IKXHairs1Part2_M.is";
connectAttr "IKXHairs1Part2_M_parentConstraint1.crx" "IKXHairs1Part2_M.rx";
connectAttr "IKXHairs1Part2_M_parentConstraint1.cry" "IKXHairs1Part2_M.ry";
connectAttr "IKXHairs1Part2_M_parentConstraint1.crz" "IKXHairs1Part2_M.rz";
connectAttr "IKXHairs1Part2_M_parentConstraint1.ctx" "IKXHairs1Part2_M.tx";
connectAttr "IKXHairs1Part2_M_parentConstraint1.cty" "IKXHairs1Part2_M.ty";
connectAttr "IKXHairs1Part2_M_parentConstraint1.ctz" "IKXHairs1Part2_M.tz";
connectAttr "IKXHairs1Part2_M.s" "IKXHairs2_M.is";
connectAttr "IKXHairs2_M_parentConstraint1.crx" "IKXHairs2_M.rx";
connectAttr "IKXHairs2_M_parentConstraint1.cry" "IKXHairs2_M.ry";
connectAttr "IKXHairs2_M_parentConstraint1.crz" "IKXHairs2_M.rz";
connectAttr "IKXHairs2_M_parentConstraint1.ctx" "IKXHairs2_M.tx";
connectAttr "IKXHairs2_M_parentConstraint1.cty" "IKXHairs2_M.ty";
connectAttr "IKXHairs2_M_parentConstraint1.ctz" "IKXHairs2_M.tz";
connectAttr "IKXHairs2_M.s" "IKXHairs2Part1_M.is";
connectAttr "IKXHairs2Part1_M_parentConstraint1.crx" "IKXHairs2Part1_M.rx";
connectAttr "IKXHairs2Part1_M_parentConstraint1.cry" "IKXHairs2Part1_M.ry";
connectAttr "IKXHairs2Part1_M_parentConstraint1.crz" "IKXHairs2Part1_M.rz";
connectAttr "IKXHairs2Part1_M_parentConstraint1.ctx" "IKXHairs2Part1_M.tx";
connectAttr "IKXHairs2Part1_M_parentConstraint1.cty" "IKXHairs2Part1_M.ty";
connectAttr "IKXHairs2Part1_M_parentConstraint1.ctz" "IKXHairs2Part1_M.tz";
connectAttr "IKXHairs2Part1_M.s" "IKXHairs2Part2_M.is";
connectAttr "IKXHairs2Part2_M_parentConstraint1.crx" "IKXHairs2Part2_M.rx";
connectAttr "IKXHairs2Part2_M_parentConstraint1.cry" "IKXHairs2Part2_M.ry";
connectAttr "IKXHairs2Part2_M_parentConstraint1.crz" "IKXHairs2Part2_M.rz";
connectAttr "IKXHairs2Part2_M_parentConstraint1.ctx" "IKXHairs2Part2_M.tx";
connectAttr "IKXHairs2Part2_M_parentConstraint1.cty" "IKXHairs2Part2_M.ty";
connectAttr "IKXHairs2Part2_M_parentConstraint1.ctz" "IKXHairs2Part2_M.tz";
connectAttr "IKXHairs2Part2_M.s" "IKXHairs3_M.is";
connectAttr "IKXHairs3_M_orientConstraint1.crx" "IKXHairs3_M.rx";
connectAttr "IKXHairs3_M_orientConstraint1.cry" "IKXHairs3_M.ry";
connectAttr "IKXHairs3_M_orientConstraint1.crz" "IKXHairs3_M.rz";
connectAttr "IKXHairs3_M_pointConstraint1.ctx" "IKXHairs3_M.tx";
connectAttr "IKXHairs3_M_pointConstraint1.cty" "IKXHairs3_M.ty";
connectAttr "IKXHairs3_M_pointConstraint1.ctz" "IKXHairs3_M.tz";
connectAttr "IKXHairs3_M.pim" "IKXHairs3_M_pointConstraint1.cpim";
connectAttr "IKXHairs3_M.rp" "IKXHairs3_M_pointConstraint1.crp";
connectAttr "IKXHairs3_M.rpt" "IKXHairs3_M_pointConstraint1.crt";
connectAttr "IKSpHairs3FollowOffset_M.t" "IKXHairs3_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs3FollowOffset_M.rp" "IKXHairs3_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs3FollowOffset_M.rpt" "IKXHairs3_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs3FollowOffset_M.pm" "IKXHairs3_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs3_M_pointConstraint1.w0" "IKXHairs3_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.t" "IKXHairs3_M_pointConstraint1.tg[1].tt";
connectAttr "IKSpline3LocalOrient2_M.rp" "IKXHairs3_M_pointConstraint1.tg[1].trp"
		;
connectAttr "IKSpline3LocalOrient2_M.rpt" "IKXHairs3_M_pointConstraint1.tg[1].trt"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKXHairs3_M_pointConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs3_M_pointConstraint1.w1" "IKXHairs3_M_pointConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs3_M_pointConstraint1.w0";
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs3_M_pointConstraint1.w1"
		;
connectAttr "IKXHairs3_M.ro" "IKXHairs3_M_orientConstraint1.cro";
connectAttr "IKXHairs3_M.pim" "IKXHairs3_M_orientConstraint1.cpim";
connectAttr "IKXHairs3_M.jo" "IKXHairs3_M_orientConstraint1.cjo";
connectAttr "IKXHairs3_M.is" "IKXHairs3_M_orientConstraint1.is";
connectAttr "IKSpline3LocalOrient2_M.r" "IKXHairs3_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpline3LocalOrient2_M.ro" "IKXHairs3_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKXHairs3_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs3_M_orientConstraint1.w0" "IKXHairs3_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2Part2_M.ro" "IKXHairs2Part2_M_parentConstraint1.cro";
connectAttr "IKXHairs2Part2_M.pim" "IKXHairs2Part2_M_parentConstraint1.cpim";
connectAttr "IKXHairs2Part2_M.rp" "IKXHairs2Part2_M_parentConstraint1.crp";
connectAttr "IKXHairs2Part2_M.rpt" "IKXHairs2Part2_M_parentConstraint1.crt";
connectAttr "IKXHairs2Part2_M.jo" "IKXHairs2Part2_M_parentConstraint1.cjo";
connectAttr "IKAcHairs2Part2FollowOffset_M.t" "IKXHairs2Part2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.rp" "IKXHairs2Part2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.rpt" "IKXHairs2Part2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.r" "IKXHairs2Part2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.ro" "IKXHairs2Part2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.s" "IKXHairs2Part2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.pm" "IKXHairs2Part2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs2Part2_M_parentConstraint1.w0" "IKXHairs2Part2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.t" "IKXHairs2Part2_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.rp" "IKXHairs2Part2_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.rpt" "IKXHairs2Part2_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.r" "IKXHairs2Part2_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.ro" "IKXHairs2Part2_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.s" "IKXHairs2Part2_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.pm" "IKXHairs2Part2_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs2Part2_M_parentConstraint1.w1" "IKXHairs2Part2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs2Part2_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs2Part2_M_parentConstraint1.w1"
		;
connectAttr "IKXHairs2Part1_M.ro" "IKXHairs2Part1_M_parentConstraint1.cro";
connectAttr "IKXHairs2Part1_M.pim" "IKXHairs2Part1_M_parentConstraint1.cpim";
connectAttr "IKXHairs2Part1_M.rp" "IKXHairs2Part1_M_parentConstraint1.crp";
connectAttr "IKXHairs2Part1_M.rpt" "IKXHairs2Part1_M_parentConstraint1.crt";
connectAttr "IKXHairs2Part1_M.jo" "IKXHairs2Part1_M_parentConstraint1.cjo";
connectAttr "IKAcHairs2Part1FollowOffset_M.t" "IKXHairs2Part1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.rp" "IKXHairs2Part1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.rpt" "IKXHairs2Part1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.r" "IKXHairs2Part1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.ro" "IKXHairs2Part1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.s" "IKXHairs2Part1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.pm" "IKXHairs2Part1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs2Part1_M_parentConstraint1.w0" "IKXHairs2Part1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.t" "IKXHairs2Part1_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.rp" "IKXHairs2Part1_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.rpt" "IKXHairs2Part1_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.r" "IKXHairs2Part1_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.ro" "IKXHairs2Part1_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.s" "IKXHairs2Part1_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.pm" "IKXHairs2Part1_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs2Part1_M_parentConstraint1.w1" "IKXHairs2Part1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs2Part1_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs2Part1_M_parentConstraint1.w1"
		;
connectAttr "IKXHairs2_M.ro" "IKXHairs2_M_parentConstraint1.cro";
connectAttr "IKXHairs2_M.pim" "IKXHairs2_M_parentConstraint1.cpim";
connectAttr "IKXHairs2_M.rp" "IKXHairs2_M_parentConstraint1.crp";
connectAttr "IKXHairs2_M.rpt" "IKXHairs2_M_parentConstraint1.crt";
connectAttr "IKXHairs2_M.jo" "IKXHairs2_M_parentConstraint1.cjo";
connectAttr "IKAcHairs2FollowOffset_M.t" "IKXHairs2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2FollowOffset_M.rp" "IKXHairs2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2FollowOffset_M.rpt" "IKXHairs2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2FollowOffset_M.r" "IKXHairs2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2FollowOffset_M.ro" "IKXHairs2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2FollowOffset_M.s" "IKXHairs2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs2FollowOffset_M.pm" "IKXHairs2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs2_M_parentConstraint1.w0" "IKXHairs2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2FollowOffset_M.t" "IKXHairs2_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs2FollowOffset_M.rp" "IKXHairs2_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs2FollowOffset_M.rpt" "IKXHairs2_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs2FollowOffset_M.r" "IKXHairs2_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs2FollowOffset_M.ro" "IKXHairs2_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs2FollowOffset_M.s" "IKXHairs2_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs2FollowOffset_M.pm" "IKXHairs2_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs2_M_parentConstraint1.w1" "IKXHairs2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs2_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs2_M_parentConstraint1.w1";
connectAttr "IKXHairs1Part2_M.ro" "IKXHairs1Part2_M_parentConstraint1.cro";
connectAttr "IKXHairs1Part2_M.pim" "IKXHairs1Part2_M_parentConstraint1.cpim";
connectAttr "IKXHairs1Part2_M.rp" "IKXHairs1Part2_M_parentConstraint1.crp";
connectAttr "IKXHairs1Part2_M.rpt" "IKXHairs1Part2_M_parentConstraint1.crt";
connectAttr "IKXHairs1Part2_M.jo" "IKXHairs1Part2_M_parentConstraint1.cjo";
connectAttr "IKAcHairs1Part2FollowOffset_M.t" "IKXHairs1Part2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.rp" "IKXHairs1Part2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.rpt" "IKXHairs1Part2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.r" "IKXHairs1Part2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.ro" "IKXHairs1Part2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.s" "IKXHairs1Part2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.pm" "IKXHairs1Part2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs1Part2_M_parentConstraint1.w0" "IKXHairs1Part2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.t" "IKXHairs1Part2_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.rp" "IKXHairs1Part2_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.rpt" "IKXHairs1Part2_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.r" "IKXHairs1Part2_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.ro" "IKXHairs1Part2_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.s" "IKXHairs1Part2_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.pm" "IKXHairs1Part2_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs1Part2_M_parentConstraint1.w1" "IKXHairs1Part2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs1Part2_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs1Part2_M_parentConstraint1.w1"
		;
connectAttr "IKXHairs1Part1_M.ro" "IKXHairs1Part1_M_parentConstraint1.cro";
connectAttr "IKXHairs1Part1_M.pim" "IKXHairs1Part1_M_parentConstraint1.cpim";
connectAttr "IKXHairs1Part1_M.rp" "IKXHairs1Part1_M_parentConstraint1.crp";
connectAttr "IKXHairs1Part1_M.rpt" "IKXHairs1Part1_M_parentConstraint1.crt";
connectAttr "IKXHairs1Part1_M.jo" "IKXHairs1Part1_M_parentConstraint1.cjo";
connectAttr "IKAcHairs1Part1FollowOffset_M.t" "IKXHairs1Part1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.rp" "IKXHairs1Part1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.rpt" "IKXHairs1Part1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.r" "IKXHairs1Part1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.ro" "IKXHairs1Part1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.s" "IKXHairs1Part1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.pm" "IKXHairs1Part1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs1Part1_M_parentConstraint1.w0" "IKXHairs1Part1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.t" "IKXHairs1Part1_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.rp" "IKXHairs1Part1_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.rpt" "IKXHairs1Part1_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.r" "IKXHairs1Part1_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.ro" "IKXHairs1Part1_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.s" "IKXHairs1Part1_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.pm" "IKXHairs1Part1_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs1Part1_M_parentConstraint1.w1" "IKXHairs1Part1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs1Part1_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs1Part1_M_parentConstraint1.w1"
		;
connectAttr "IKXHairs1_M.ro" "IKXHairs1_M_parentConstraint1.cro";
connectAttr "IKXHairs1_M.pim" "IKXHairs1_M_parentConstraint1.cpim";
connectAttr "IKXHairs1_M.rp" "IKXHairs1_M_parentConstraint1.crp";
connectAttr "IKXHairs1_M.rpt" "IKXHairs1_M_parentConstraint1.crt";
connectAttr "IKXHairs1_M.jo" "IKXHairs1_M_parentConstraint1.cjo";
connectAttr "IKAcHairs1FollowOffset_M.t" "IKXHairs1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs1FollowOffset_M.rp" "IKXHairs1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs1FollowOffset_M.rpt" "IKXHairs1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1FollowOffset_M.r" "IKXHairs1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs1FollowOffset_M.ro" "IKXHairs1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs1FollowOffset_M.s" "IKXHairs1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKAcHairs1FollowOffset_M.pm" "IKXHairs1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKXHairs1_M_parentConstraint1.w0" "IKXHairs1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1FollowOffset_M.t" "IKXHairs1_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKSpHairs1FollowOffset_M.rp" "IKXHairs1_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKSpHairs1FollowOffset_M.rpt" "IKXHairs1_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKSpHairs1FollowOffset_M.r" "IKXHairs1_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKSpHairs1FollowOffset_M.ro" "IKXHairs1_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKSpHairs1FollowOffset_M.s" "IKXHairs1_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKSpHairs1FollowOffset_M.pm" "IKXHairs1_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKXHairs1_M_parentConstraint1.w1" "IKXHairs1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "stretchySplineUnitConversion_M.o" "IKXHairs1_M_parentConstraint1.w0"
		;
connectAttr "stretchySplineReverse_M.ox" "IKXHairs1_M_parentConstraint1.w1";
connectAttr "IKfake0Spline_M.s" "IKSpHairs1Part1_M.is";
connectAttr "stretchySplineBlendTwo5_M.o" "IKSpHairs1Part1_M.tx";
connectAttr "IKSpHairs1Part1_M.s" "IKSpHairs1Part2_M.is";
connectAttr "stretchySplineBlendTwo4_M.o" "IKSpHairs1Part2_M.tx";
connectAttr "IKSpHairs1Part2_M.s" "IKSpHairs2_M.is";
connectAttr "stretchySplineBlendTwo3_M.o" "IKSpHairs2_M.tx";
connectAttr "IKSpHairs2_M.s" "IKSpHairs2Part1_M.is";
connectAttr "stretchySplineBlendTwo2_M.o" "IKSpHairs2Part1_M.tx";
connectAttr "IKSpHairs2Part1_M.s" "IKSpHairs2Part2_M.is";
connectAttr "stretchySplineBlendTwo1_M.o" "IKSpHairs2Part2_M.tx";
connectAttr "IKSpHairs2Part2_M.s" "IKSpHairs3_M.is";
connectAttr "IKSpHairs2Part2_M.s" "IKfake1Spline_M.is";
connectAttr "stretchySplineBlendTwo0_M.o" "IKfake1Spline_M.tx";
connectAttr "IKfake1Spline_M.tx" "IKSplineEffector_M.tx";
connectAttr "IKfake1Spline_M.ty" "IKSplineEffector_M.ty";
connectAttr "IKfake1Spline_M.tz" "IKSplineEffector_M.tz";
connectAttr "IKfake1Spline_M.opm" "IKSplineEffector_M.opm";
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.crx" "IKFixedOrientHairs1_M.rx"
		;
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.cry" "IKFixedOrientHairs1_M.ry"
		;
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.crz" "IKFixedOrientHairs1_M.rz"
		;
connectAttr "IKFixedOrientHairs1_M.ro" "IKFixedOrientHairs1_M_orientConstraint1.cro"
		;
connectAttr "IKFixedOrientHairs1_M.pim" "IKFixedOrientHairs1_M_orientConstraint1.cpim"
		;
connectAttr "IKNonFixedOrientHairs1_M.r" "IKFixedOrientHairs1_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKNonFixedOrientHairs1_M.ro" "IKFixedOrientHairs1_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKNonFixedOrientHairs1_M.pm" "IKFixedOrientHairs1_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.w0" "IKFixedOrientHairs1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpline1LocalOrient3_M.r" "IKFixedOrientHairs1_M_orientConstraint1.tg[1].tr"
		;
connectAttr "IKSpline1LocalOrient3_M.ro" "IKFixedOrientHairs1_M_orientConstraint1.tg[1].tro"
		;
connectAttr "IKSpline1LocalOrient3_M.pm" "IKFixedOrientHairs1_M_orientConstraint1.tg[1].tpm"
		;
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.w1" "IKFixedOrientHairs1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "IKFixedOrientSpline1_MReverse.ox" "IKFixedOrientHairs1_M_orientConstraint1.w0"
		;
connectAttr "IKFixedOrientSpline1_MUnitConversion.o" "IKFixedOrientHairs1_M_orientConstraint1.w1"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_pointConstraint1.ctx" "IKSpHairs1Part1FollowOffset_M.tx"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_pointConstraint1.cty" "IKSpHairs1Part1FollowOffset_M.ty"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_pointConstraint1.ctz" "IKSpHairs1Part1FollowOffset_M.tz"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_orientConstraint1.crx" "IKSpHairs1Part1FollowOffset_M.rx"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_orientConstraint1.cry" "IKSpHairs1Part1FollowOffset_M.ry"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_orientConstraint1.crz" "IKSpHairs1Part1FollowOffset_M.rz"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.pim" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.rp" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.rpt" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs1Part1_M.t" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs1Part1_M.rp" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs1Part1_M.rpt" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs1Part1_M.pm" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_pointConstraint1.w0" "IKSpHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.ro" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.pim" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs1Part1_M.r" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs1Part1_M.ro" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs1Part1_M.pm" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs1Part1_M.jo" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_orientConstraint1.w0" "IKSpHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_pointConstraint1.ctx" "IKSpHairs1Part2FollowOffset_M.tx"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_pointConstraint1.cty" "IKSpHairs1Part2FollowOffset_M.ty"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_pointConstraint1.ctz" "IKSpHairs1Part2FollowOffset_M.tz"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_orientConstraint1.crx" "IKSpHairs1Part2FollowOffset_M.rx"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_orientConstraint1.cry" "IKSpHairs1Part2FollowOffset_M.ry"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_orientConstraint1.crz" "IKSpHairs1Part2FollowOffset_M.rz"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.pim" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.rp" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.rpt" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs1Part2_M.t" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs1Part2_M.rp" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs1Part2_M.rpt" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs1Part2_M.pm" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_pointConstraint1.w0" "IKSpHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.ro" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.pim" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs1Part2_M.r" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs1Part2_M.ro" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs1Part2_M.pm" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs1Part2_M.jo" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_orientConstraint1.w0" "IKSpHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2FollowOffset_M_pointConstraint1.ctx" "IKSpHairs2FollowOffset_M.tx"
		;
connectAttr "IKSpHairs2FollowOffset_M_pointConstraint1.cty" "IKSpHairs2FollowOffset_M.ty"
		;
connectAttr "IKSpHairs2FollowOffset_M_pointConstraint1.ctz" "IKSpHairs2FollowOffset_M.tz"
		;
connectAttr "IKSpHairs2FollowOffset_M_orientConstraint1.crx" "IKSpHairs2FollowOffset_M.rx"
		;
connectAttr "IKSpHairs2FollowOffset_M_orientConstraint1.cry" "IKSpHairs2FollowOffset_M.ry"
		;
connectAttr "IKSpHairs2FollowOffset_M_orientConstraint1.crz" "IKSpHairs2FollowOffset_M.rz"
		;
connectAttr "IKSpHairs2FollowOffset_M.pim" "IKSpHairs2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs2FollowOffset_M.rp" "IKSpHairs2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs2FollowOffset_M.rpt" "IKSpHairs2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs2_M.t" "IKSpHairs2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs2_M.rp" "IKSpHairs2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs2_M.rpt" "IKSpHairs2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs2_M.pm" "IKSpHairs2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2FollowOffset_M_pointConstraint1.w0" "IKSpHairs2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2FollowOffset_M.ro" "IKSpHairs2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs2FollowOffset_M.pim" "IKSpHairs2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs2_M.r" "IKSpHairs2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs2_M.ro" "IKSpHairs2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs2_M.pm" "IKSpHairs2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2_M.jo" "IKSpHairs2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs2FollowOffset_M_orientConstraint1.w0" "IKSpHairs2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_pointConstraint1.ctx" "IKSpHairs2Part1FollowOffset_M.tx"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_pointConstraint1.cty" "IKSpHairs2Part1FollowOffset_M.ty"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_pointConstraint1.ctz" "IKSpHairs2Part1FollowOffset_M.tz"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_orientConstraint1.crx" "IKSpHairs2Part1FollowOffset_M.rx"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_orientConstraint1.cry" "IKSpHairs2Part1FollowOffset_M.ry"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_orientConstraint1.crz" "IKSpHairs2Part1FollowOffset_M.rz"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.pim" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.rp" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.rpt" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs2Part1_M.t" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs2Part1_M.rp" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs2Part1_M.rpt" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs2Part1_M.pm" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_pointConstraint1.w0" "IKSpHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.ro" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.pim" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs2Part1_M.r" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs2Part1_M.ro" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs2Part1_M.pm" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2Part1_M.jo" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_orientConstraint1.w0" "IKSpHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_pointConstraint1.ctx" "IKSpHairs2Part2FollowOffset_M.tx"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_pointConstraint1.cty" "IKSpHairs2Part2FollowOffset_M.ty"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_pointConstraint1.ctz" "IKSpHairs2Part2FollowOffset_M.tz"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_orientConstraint1.crx" "IKSpHairs2Part2FollowOffset_M.rx"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_orientConstraint1.cry" "IKSpHairs2Part2FollowOffset_M.ry"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_orientConstraint1.crz" "IKSpHairs2Part2FollowOffset_M.rz"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.pim" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.rp" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.rpt" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs2Part2_M.t" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs2Part2_M.rp" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs2Part2_M.rpt" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs2Part2_M.pm" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_pointConstraint1.w0" "IKSpHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.ro" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.pim" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs2Part2_M.r" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs2Part2_M.ro" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs2Part2_M.pm" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs2Part2_M.jo" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_orientConstraint1.w0" "IKSpHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs3FollowOffset_M_pointConstraint1.ctx" "IKSpHairs3FollowOffset_M.tx"
		;
connectAttr "IKSpHairs3FollowOffset_M_pointConstraint1.cty" "IKSpHairs3FollowOffset_M.ty"
		;
connectAttr "IKSpHairs3FollowOffset_M_pointConstraint1.ctz" "IKSpHairs3FollowOffset_M.tz"
		;
connectAttr "IKSpHairs3FollowOffset_M_orientConstraint1.crx" "IKSpHairs3FollowOffset_M.rx"
		;
connectAttr "IKSpHairs3FollowOffset_M_orientConstraint1.cry" "IKSpHairs3FollowOffset_M.ry"
		;
connectAttr "IKSpHairs3FollowOffset_M_orientConstraint1.crz" "IKSpHairs3FollowOffset_M.rz"
		;
connectAttr "IKSpHairs3FollowOffset_M.pim" "IKSpHairs3FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKSpHairs3FollowOffset_M.rp" "IKSpHairs3FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKSpHairs3FollowOffset_M.rpt" "IKSpHairs3FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKSpHairs3_M.t" "IKSpHairs3FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpHairs3_M.rp" "IKSpHairs3FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpHairs3_M.rpt" "IKSpHairs3FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpHairs3_M.pm" "IKSpHairs3FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs3FollowOffset_M_pointConstraint1.w0" "IKSpHairs3FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKSpHairs3FollowOffset_M.ro" "IKSpHairs3FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKSpHairs3FollowOffset_M.pim" "IKSpHairs3FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKSpHairs3_M.r" "IKSpHairs3FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKSpHairs3_M.ro" "IKSpHairs3FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKSpHairs3_M.pm" "IKSpHairs3FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKSpHairs3_M.jo" "IKSpHairs3FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKSpHairs3FollowOffset_M_orientConstraint1.w0" "IKSpHairs3FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1_M_pointConstraint1.ctx" "IKAcHairs1_M.tx";
connectAttr "IKAcHairs1_M_pointConstraint1.cty" "IKAcHairs1_M.ty";
connectAttr "IKAcHairs1_M_pointConstraint1.ctz" "IKAcHairs1_M.tz";
connectAttr "IKAcHairs1_M_aimConstraint1.crx" "IKAcHairs1_M.rx";
connectAttr "IKAcHairs1_M_aimConstraint1.cry" "IKAcHairs1_M.ry";
connectAttr "IKAcHairs1_M_aimConstraint1.crz" "IKAcHairs1_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1_M.sz";
connectAttr "IKAcHairs1_M.pim" "IKAcHairs1_M_pointConstraint1.cpim";
connectAttr "IKAcHairs1_M.rp" "IKAcHairs1_M_pointConstraint1.crp";
connectAttr "IKAcHairs1_M.rpt" "IKAcHairs1_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs1_M.t" "IKAcHairs1_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformHairs1_M.rp" "IKAcHairs1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs1_M.rpt" "IKAcHairs1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs1_M.pm" "IKAcHairs1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1_M_pointConstraint1.w0" "IKAcHairs1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1_M.pim" "IKAcHairs1_M_aimConstraint1.cpim";
connectAttr "IKAcHairs1_M.t" "IKAcHairs1_M_aimConstraint1.ct";
connectAttr "IKAcHairs1_M.rp" "IKAcHairs1_M_aimConstraint1.crp";
connectAttr "IKAcHairs1_M.rpt" "IKAcHairs1_M_aimConstraint1.crt";
connectAttr "IKAcHairs1_M.ro" "IKAcHairs1_M_aimConstraint1.cro";
connectAttr "IKAcHairs1_M.jo" "IKAcHairs1_M_aimConstraint1.cjo";
connectAttr "IKAcHairs1_M.is" "IKAcHairs1_M_aimConstraint1.is";
connectAttr "IKAcHairs1Part1_M.t" "IKAcHairs1_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs1Part1_M.rp" "IKAcHairs1_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs1Part1_M.rpt" "IKAcHairs1_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcHairs1Part1_M.pm" "IKAcHairs1_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs1_M_aimConstraint1.w0" "IKAcHairs1_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKfake0Spline_M.wm" "IKAcHairs1_M_aimConstraint1.wum";
connectAttr "IKSpHairs1_M.rx" "IKAcHairs1_M_aimConstraint1.ox";
connectAttr "IKAcHairs1Part1_M_pointConstraint1.ctx" "IKAcHairs1Part1_M.tx";
connectAttr "IKAcHairs1Part1_M_pointConstraint1.cty" "IKAcHairs1Part1_M.ty";
connectAttr "IKAcHairs1Part1_M_pointConstraint1.ctz" "IKAcHairs1Part1_M.tz";
connectAttr "IKAcHairs1Part1_M_aimConstraint1.crx" "IKAcHairs1Part1_M.rx";
connectAttr "IKAcHairs1Part1_M_aimConstraint1.cry" "IKAcHairs1Part1_M.ry";
connectAttr "IKAcHairs1Part1_M_aimConstraint1.crz" "IKAcHairs1Part1_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part1_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part1_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part1_M.sz";
connectAttr "IKAcHairs1Part1_M.pim" "IKAcHairs1Part1_M_pointConstraint1.cpim";
connectAttr "IKAcHairs1Part1_M.rp" "IKAcHairs1Part1_M_pointConstraint1.crp";
connectAttr "IKAcHairs1Part1_M.rpt" "IKAcHairs1Part1_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs1Part1_M.t" "IKAcHairs1Part1_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcPociXformHairs1Part1_M.rp" "IKAcHairs1Part1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs1Part1_M.rpt" "IKAcHairs1Part1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs1Part1_M.pm" "IKAcHairs1Part1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part1_M_pointConstraint1.w0" "IKAcHairs1Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part1_M.pim" "IKAcHairs1Part1_M_aimConstraint1.cpim";
connectAttr "IKAcHairs1Part1_M.t" "IKAcHairs1Part1_M_aimConstraint1.ct";
connectAttr "IKAcHairs1Part1_M.rp" "IKAcHairs1Part1_M_aimConstraint1.crp";
connectAttr "IKAcHairs1Part1_M.rpt" "IKAcHairs1Part1_M_aimConstraint1.crt";
connectAttr "IKAcHairs1Part1_M.ro" "IKAcHairs1Part1_M_aimConstraint1.cro";
connectAttr "IKAcHairs1Part1_M.jo" "IKAcHairs1Part1_M_aimConstraint1.cjo";
connectAttr "IKAcHairs1Part1_M.is" "IKAcHairs1Part1_M_aimConstraint1.is";
connectAttr "IKAcHairs1Part2_M.t" "IKAcHairs1Part1_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs1Part2_M.rp" "IKAcHairs1Part1_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs1Part2_M.rpt" "IKAcHairs1Part1_M_aimConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1Part2_M.pm" "IKAcHairs1Part1_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs1Part1_M_aimConstraint1.w0" "IKAcHairs1Part1_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1_M.wm" "IKAcHairs1Part1_M_aimConstraint1.wum";
connectAttr "IKSpHairs1Part1_M.rx" "IKAcHairs1Part1_M_aimConstraint1.ox";
connectAttr "IKAcHairs1Part2_M_pointConstraint1.ctx" "IKAcHairs1Part2_M.tx";
connectAttr "IKAcHairs1Part2_M_pointConstraint1.cty" "IKAcHairs1Part2_M.ty";
connectAttr "IKAcHairs1Part2_M_pointConstraint1.ctz" "IKAcHairs1Part2_M.tz";
connectAttr "IKAcHairs1Part2_M_aimConstraint1.crx" "IKAcHairs1Part2_M.rx";
connectAttr "IKAcHairs1Part2_M_aimConstraint1.cry" "IKAcHairs1Part2_M.ry";
connectAttr "IKAcHairs1Part2_M_aimConstraint1.crz" "IKAcHairs1Part2_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part2_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part2_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs1Part2_M.sz";
connectAttr "IKAcHairs1Part2_M.pim" "IKAcHairs1Part2_M_pointConstraint1.cpim";
connectAttr "IKAcHairs1Part2_M.rp" "IKAcHairs1Part2_M_pointConstraint1.crp";
connectAttr "IKAcHairs1Part2_M.rpt" "IKAcHairs1Part2_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs1Part2_M.t" "IKAcHairs1Part2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcPociXformHairs1Part2_M.rp" "IKAcHairs1Part2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs1Part2_M.rpt" "IKAcHairs1Part2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs1Part2_M.pm" "IKAcHairs1Part2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part2_M_pointConstraint1.w0" "IKAcHairs1Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part2_M.pim" "IKAcHairs1Part2_M_aimConstraint1.cpim";
connectAttr "IKAcHairs1Part2_M.t" "IKAcHairs1Part2_M_aimConstraint1.ct";
connectAttr "IKAcHairs1Part2_M.rp" "IKAcHairs1Part2_M_aimConstraint1.crp";
connectAttr "IKAcHairs1Part2_M.rpt" "IKAcHairs1Part2_M_aimConstraint1.crt";
connectAttr "IKAcHairs1Part2_M.ro" "IKAcHairs1Part2_M_aimConstraint1.cro";
connectAttr "IKAcHairs1Part2_M.jo" "IKAcHairs1Part2_M_aimConstraint1.cjo";
connectAttr "IKAcHairs1Part2_M.is" "IKAcHairs1Part2_M_aimConstraint1.is";
connectAttr "IKAcHairs2_M.t" "IKAcHairs1Part2_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs2_M.rp" "IKAcHairs1Part2_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs2_M.rpt" "IKAcHairs1Part2_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcHairs2_M.pm" "IKAcHairs1Part2_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs1Part2_M_aimConstraint1.w0" "IKAcHairs1Part2_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part1_M.wm" "IKAcHairs1Part2_M_aimConstraint1.wum";
connectAttr "IKSpHairs1Part2_M.rx" "IKAcHairs1Part2_M_aimConstraint1.ox";
connectAttr "IKAcHairs2_M_pointConstraint1.ctx" "IKAcHairs2_M.tx";
connectAttr "IKAcHairs2_M_pointConstraint1.cty" "IKAcHairs2_M.ty";
connectAttr "IKAcHairs2_M_pointConstraint1.ctz" "IKAcHairs2_M.tz";
connectAttr "IKAcHairs2_M_aimConstraint1.crx" "IKAcHairs2_M.rx";
connectAttr "IKAcHairs2_M_aimConstraint1.cry" "IKAcHairs2_M.ry";
connectAttr "IKAcHairs2_M_aimConstraint1.crz" "IKAcHairs2_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2_M.sz";
connectAttr "IKAcHairs2_M.pim" "IKAcHairs2_M_pointConstraint1.cpim";
connectAttr "IKAcHairs2_M.rp" "IKAcHairs2_M_pointConstraint1.crp";
connectAttr "IKAcHairs2_M.rpt" "IKAcHairs2_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs2_M.t" "IKAcHairs2_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformHairs2_M.rp" "IKAcHairs2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs2_M.rpt" "IKAcHairs2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs2_M.pm" "IKAcHairs2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2_M_pointConstraint1.w0" "IKAcHairs2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2_M.pim" "IKAcHairs2_M_aimConstraint1.cpim";
connectAttr "IKAcHairs2_M.t" "IKAcHairs2_M_aimConstraint1.ct";
connectAttr "IKAcHairs2_M.rp" "IKAcHairs2_M_aimConstraint1.crp";
connectAttr "IKAcHairs2_M.rpt" "IKAcHairs2_M_aimConstraint1.crt";
connectAttr "IKAcHairs2_M.ro" "IKAcHairs2_M_aimConstraint1.cro";
connectAttr "IKAcHairs2_M.jo" "IKAcHairs2_M_aimConstraint1.cjo";
connectAttr "IKAcHairs2_M.is" "IKAcHairs2_M_aimConstraint1.is";
connectAttr "IKAcHairs2Part1_M.t" "IKAcHairs2_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs2Part1_M.rp" "IKAcHairs2_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs2Part1_M.rpt" "IKAcHairs2_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcHairs2Part1_M.pm" "IKAcHairs2_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs2_M_aimConstraint1.w0" "IKAcHairs2_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part2_M.wm" "IKAcHairs2_M_aimConstraint1.wum";
connectAttr "IKSpHairs2_M.rx" "IKAcHairs2_M_aimConstraint1.ox";
connectAttr "IKAcHairs2Part1_M_pointConstraint1.ctx" "IKAcHairs2Part1_M.tx";
connectAttr "IKAcHairs2Part1_M_pointConstraint1.cty" "IKAcHairs2Part1_M.ty";
connectAttr "IKAcHairs2Part1_M_pointConstraint1.ctz" "IKAcHairs2Part1_M.tz";
connectAttr "IKAcHairs2Part1_M_aimConstraint1.crx" "IKAcHairs2Part1_M.rx";
connectAttr "IKAcHairs2Part1_M_aimConstraint1.cry" "IKAcHairs2Part1_M.ry";
connectAttr "IKAcHairs2Part1_M_aimConstraint1.crz" "IKAcHairs2Part1_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part1_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part1_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part1_M.sz";
connectAttr "IKAcHairs2Part1_M.pim" "IKAcHairs2Part1_M_pointConstraint1.cpim";
connectAttr "IKAcHairs2Part1_M.rp" "IKAcHairs2Part1_M_pointConstraint1.crp";
connectAttr "IKAcHairs2Part1_M.rpt" "IKAcHairs2Part1_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs2Part1_M.t" "IKAcHairs2Part1_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcPociXformHairs2Part1_M.rp" "IKAcHairs2Part1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs2Part1_M.rpt" "IKAcHairs2Part1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs2Part1_M.pm" "IKAcHairs2Part1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part1_M_pointConstraint1.w0" "IKAcHairs2Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part1_M.pim" "IKAcHairs2Part1_M_aimConstraint1.cpim";
connectAttr "IKAcHairs2Part1_M.t" "IKAcHairs2Part1_M_aimConstraint1.ct";
connectAttr "IKAcHairs2Part1_M.rp" "IKAcHairs2Part1_M_aimConstraint1.crp";
connectAttr "IKAcHairs2Part1_M.rpt" "IKAcHairs2Part1_M_aimConstraint1.crt";
connectAttr "IKAcHairs2Part1_M.ro" "IKAcHairs2Part1_M_aimConstraint1.cro";
connectAttr "IKAcHairs2Part1_M.jo" "IKAcHairs2Part1_M_aimConstraint1.cjo";
connectAttr "IKAcHairs2Part1_M.is" "IKAcHairs2Part1_M_aimConstraint1.is";
connectAttr "IKAcHairs2Part2_M.t" "IKAcHairs2Part1_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs2Part2_M.rp" "IKAcHairs2Part1_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs2Part2_M.rpt" "IKAcHairs2Part1_M_aimConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2Part2_M.pm" "IKAcHairs2Part1_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs2Part1_M_aimConstraint1.w0" "IKAcHairs2Part1_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2_M.wm" "IKAcHairs2Part1_M_aimConstraint1.wum";
connectAttr "IKSpHairs2Part1_M.rx" "IKAcHairs2Part1_M_aimConstraint1.ox";
connectAttr "IKAcHairs2Part2_M_pointConstraint1.ctx" "IKAcHairs2Part2_M.tx";
connectAttr "IKAcHairs2Part2_M_pointConstraint1.cty" "IKAcHairs2Part2_M.ty";
connectAttr "IKAcHairs2Part2_M_pointConstraint1.ctz" "IKAcHairs2Part2_M.tz";
connectAttr "IKAcHairs2Part2_M_aimConstraint1.crx" "IKAcHairs2Part2_M.rx";
connectAttr "IKAcHairs2Part2_M_aimConstraint1.cry" "IKAcHairs2Part2_M.ry";
connectAttr "IKAcHairs2Part2_M_aimConstraint1.crz" "IKAcHairs2Part2_M.rz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part2_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part2_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs2Part2_M.sz";
connectAttr "IKAcHairs2Part2_M.pim" "IKAcHairs2Part2_M_pointConstraint1.cpim";
connectAttr "IKAcHairs2Part2_M.rp" "IKAcHairs2Part2_M_pointConstraint1.crp";
connectAttr "IKAcHairs2Part2_M.rpt" "IKAcHairs2Part2_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs2Part2_M.t" "IKAcHairs2Part2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcPociXformHairs2Part2_M.rp" "IKAcHairs2Part2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs2Part2_M.rpt" "IKAcHairs2Part2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs2Part2_M.pm" "IKAcHairs2Part2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part2_M_pointConstraint1.w0" "IKAcHairs2Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part2_M.pim" "IKAcHairs2Part2_M_aimConstraint1.cpim";
connectAttr "IKAcHairs2Part2_M.t" "IKAcHairs2Part2_M_aimConstraint1.ct";
connectAttr "IKAcHairs2Part2_M.rp" "IKAcHairs2Part2_M_aimConstraint1.crp";
connectAttr "IKAcHairs2Part2_M.rpt" "IKAcHairs2Part2_M_aimConstraint1.crt";
connectAttr "IKAcHairs2Part2_M.ro" "IKAcHairs2Part2_M_aimConstraint1.cro";
connectAttr "IKAcHairs2Part2_M.jo" "IKAcHairs2Part2_M_aimConstraint1.cjo";
connectAttr "IKAcHairs2Part2_M.is" "IKAcHairs2Part2_M_aimConstraint1.is";
connectAttr "IKAcHairs3_M.t" "IKAcHairs2Part2_M_aimConstraint1.tg[0].tt";
connectAttr "IKAcHairs3_M.rp" "IKAcHairs2Part2_M_aimConstraint1.tg[0].trp";
connectAttr "IKAcHairs3_M.rpt" "IKAcHairs2Part2_M_aimConstraint1.tg[0].trt";
connectAttr "IKAcHairs3_M.pm" "IKAcHairs2Part2_M_aimConstraint1.tg[0].tpm";
connectAttr "IKAcHairs2Part2_M_aimConstraint1.w0" "IKAcHairs2Part2_M_aimConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part1_M.wm" "IKAcHairs2Part2_M_aimConstraint1.wum";
connectAttr "IKSpHairs2Part2_M.rx" "IKAcHairs2Part2_M_aimConstraint1.ox";
connectAttr "IKAcHairs3_M_pointConstraint1.ctx" "IKAcHairs3_M.tx";
connectAttr "IKAcHairs3_M_pointConstraint1.cty" "IKAcHairs3_M.ty";
connectAttr "IKAcHairs3_M_pointConstraint1.ctz" "IKAcHairs3_M.tz";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs3_M.sx";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs3_M.sy";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKAcHairs3_M.sz";
connectAttr "IKAcHairs3_M.pim" "IKAcHairs3_M_pointConstraint1.cpim";
connectAttr "IKAcHairs3_M.rp" "IKAcHairs3_M_pointConstraint1.crp";
connectAttr "IKAcHairs3_M.rpt" "IKAcHairs3_M_pointConstraint1.crt";
connectAttr "IKAcPociXformHairs3_M.t" "IKAcHairs3_M_pointConstraint1.tg[0].tt";
connectAttr "IKAcPociXformHairs3_M.rp" "IKAcHairs3_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcPociXformHairs3_M.rpt" "IKAcHairs3_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcPociXformHairs3_M.pm" "IKAcHairs3_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs3_M_pointConstraint1.w0" "IKAcHairs3_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcPociHairs1_M.p" "IKAcPociXformHairs1_M.t";
connectAttr "IKAcPociHairs1Part1_M.p" "IKAcPociXformHairs1Part1_M.t";
connectAttr "IKAcPociHairs1Part2_M.p" "IKAcPociXformHairs1Part2_M.t";
connectAttr "IKAcPociHairs2_M.p" "IKAcPociXformHairs2_M.t";
connectAttr "IKAcPociHairs2Part1_M.p" "IKAcPociXformHairs2Part1_M.t";
connectAttr "IKAcPociHairs2Part2_M.p" "IKAcPociXformHairs2Part2_M.t";
connectAttr "IKAcPociHairs3_M.p" "IKAcPociXformHairs3_M.t";
connectAttr "IKAcHairs1Part1FollowOffset_M_pointConstraint1.ctx" "IKAcHairs1Part1FollowOffset_M.tx"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_pointConstraint1.cty" "IKAcHairs1Part1FollowOffset_M.ty"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_pointConstraint1.ctz" "IKAcHairs1Part1FollowOffset_M.tz"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_orientConstraint1.crx" "IKAcHairs1Part1FollowOffset_M.rx"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_orientConstraint1.cry" "IKAcHairs1Part1FollowOffset_M.ry"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_orientConstraint1.crz" "IKAcHairs1Part1FollowOffset_M.rz"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.pim" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.rp" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.rpt" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs1Part1_M.t" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs1Part1_M.rp" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs1Part1_M.rpt" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1Part1_M.pm" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_pointConstraint1.w0" "IKAcHairs1Part1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.ro" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.pim" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs1Part1_M.r" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs1Part1_M.ro" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs1Part1_M.pm" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part1_M.jo" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_orientConstraint1.w0" "IKAcHairs1Part1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_pointConstraint1.ctx" "IKAcHairs1Part2FollowOffset_M.tx"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_pointConstraint1.cty" "IKAcHairs1Part2FollowOffset_M.ty"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_pointConstraint1.ctz" "IKAcHairs1Part2FollowOffset_M.tz"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_orientConstraint1.crx" "IKAcHairs1Part2FollowOffset_M.rx"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_orientConstraint1.cry" "IKAcHairs1Part2FollowOffset_M.ry"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_orientConstraint1.crz" "IKAcHairs1Part2FollowOffset_M.rz"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.pim" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.rp" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.rpt" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs1Part2_M.t" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs1Part2_M.rp" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs1Part2_M.rpt" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs1Part2_M.pm" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_pointConstraint1.w0" "IKAcHairs1Part2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.ro" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.pim" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs1Part2_M.r" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs1Part2_M.ro" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs1Part2_M.pm" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs1Part2_M.jo" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_orientConstraint1.w0" "IKAcHairs1Part2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2FollowOffset_M_pointConstraint1.ctx" "IKAcHairs2FollowOffset_M.tx"
		;
connectAttr "IKAcHairs2FollowOffset_M_pointConstraint1.cty" "IKAcHairs2FollowOffset_M.ty"
		;
connectAttr "IKAcHairs2FollowOffset_M_pointConstraint1.ctz" "IKAcHairs2FollowOffset_M.tz"
		;
connectAttr "IKAcHairs2FollowOffset_M_orientConstraint1.crx" "IKAcHairs2FollowOffset_M.rx"
		;
connectAttr "IKAcHairs2FollowOffset_M_orientConstraint1.cry" "IKAcHairs2FollowOffset_M.ry"
		;
connectAttr "IKAcHairs2FollowOffset_M_orientConstraint1.crz" "IKAcHairs2FollowOffset_M.rz"
		;
connectAttr "IKAcHairs2FollowOffset_M.pim" "IKAcHairs2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs2FollowOffset_M.rp" "IKAcHairs2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs2FollowOffset_M.rpt" "IKAcHairs2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs2_M.t" "IKAcHairs2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2_M.rp" "IKAcHairs2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2_M.rpt" "IKAcHairs2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2_M.pm" "IKAcHairs2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2FollowOffset_M_pointConstraint1.w0" "IKAcHairs2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2FollowOffset_M.ro" "IKAcHairs2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs2FollowOffset_M.pim" "IKAcHairs2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs2_M.r" "IKAcHairs2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2_M.ro" "IKAcHairs2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2_M.pm" "IKAcHairs2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2_M.jo" "IKAcHairs2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs2FollowOffset_M_orientConstraint1.w0" "IKAcHairs2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_pointConstraint1.ctx" "IKAcHairs2Part1FollowOffset_M.tx"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_pointConstraint1.cty" "IKAcHairs2Part1FollowOffset_M.ty"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_pointConstraint1.ctz" "IKAcHairs2Part1FollowOffset_M.tz"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_orientConstraint1.crx" "IKAcHairs2Part1FollowOffset_M.rx"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_orientConstraint1.cry" "IKAcHairs2Part1FollowOffset_M.ry"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_orientConstraint1.crz" "IKAcHairs2Part1FollowOffset_M.rz"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.pim" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.rp" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.rpt" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs2Part1_M.t" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2Part1_M.rp" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2Part1_M.rpt" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2Part1_M.pm" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_pointConstraint1.w0" "IKAcHairs2Part1FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.ro" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.pim" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs2Part1_M.r" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2Part1_M.ro" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2Part1_M.pm" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part1_M.jo" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_orientConstraint1.w0" "IKAcHairs2Part1FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_pointConstraint1.ctx" "IKAcHairs2Part2FollowOffset_M.tx"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_pointConstraint1.cty" "IKAcHairs2Part2FollowOffset_M.ty"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_pointConstraint1.ctz" "IKAcHairs2Part2FollowOffset_M.tz"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_orientConstraint1.crx" "IKAcHairs2Part2FollowOffset_M.rx"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_orientConstraint1.cry" "IKAcHairs2Part2FollowOffset_M.ry"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_orientConstraint1.crz" "IKAcHairs2Part2FollowOffset_M.rz"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.pim" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.rp" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.rpt" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs2Part2_M.t" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs2Part2_M.rp" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs2Part2_M.rpt" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs2Part2_M.pm" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_pointConstraint1.w0" "IKAcHairs2Part2FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.ro" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.pim" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs2Part2_M.r" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs2Part2_M.ro" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs2Part2_M.pm" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs2Part2_M.jo" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_orientConstraint1.w0" "IKAcHairs2Part2FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs3FollowOffset_M_pointConstraint1.ctx" "IKAcHairs3FollowOffset_M.tx"
		;
connectAttr "IKAcHairs3FollowOffset_M_pointConstraint1.cty" "IKAcHairs3FollowOffset_M.ty"
		;
connectAttr "IKAcHairs3FollowOffset_M_pointConstraint1.ctz" "IKAcHairs3FollowOffset_M.tz"
		;
connectAttr "IKAcHairs3FollowOffset_M_orientConstraint1.crx" "IKAcHairs3FollowOffset_M.rx"
		;
connectAttr "IKAcHairs3FollowOffset_M_orientConstraint1.cry" "IKAcHairs3FollowOffset_M.ry"
		;
connectAttr "IKAcHairs3FollowOffset_M_orientConstraint1.crz" "IKAcHairs3FollowOffset_M.rz"
		;
connectAttr "IKAcHairs3FollowOffset_M.pim" "IKAcHairs3FollowOffset_M_pointConstraint1.cpim"
		;
connectAttr "IKAcHairs3FollowOffset_M.rp" "IKAcHairs3FollowOffset_M_pointConstraint1.crp"
		;
connectAttr "IKAcHairs3FollowOffset_M.rpt" "IKAcHairs3FollowOffset_M_pointConstraint1.crt"
		;
connectAttr "IKAcHairs3_M.t" "IKAcHairs3FollowOffset_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKAcHairs3_M.rp" "IKAcHairs3FollowOffset_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKAcHairs3_M.rpt" "IKAcHairs3FollowOffset_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKAcHairs3_M.pm" "IKAcHairs3FollowOffset_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs3FollowOffset_M_pointConstraint1.w0" "IKAcHairs3FollowOffset_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKAcHairs3FollowOffset_M.ro" "IKAcHairs3FollowOffset_M_orientConstraint1.cro"
		;
connectAttr "IKAcHairs3FollowOffset_M.pim" "IKAcHairs3FollowOffset_M_orientConstraint1.cpim"
		;
connectAttr "IKAcHairs3_M.r" "IKAcHairs3FollowOffset_M_orientConstraint1.tg[0].tr"
		;
connectAttr "IKAcHairs3_M.ro" "IKAcHairs3FollowOffset_M_orientConstraint1.tg[0].tro"
		;
connectAttr "IKAcHairs3_M.pm" "IKAcHairs3FollowOffset_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKAcHairs3_M.jo" "IKAcHairs3FollowOffset_M_orientConstraint1.tg[0].tjo"
		;
connectAttr "IKAcHairs3FollowOffset_M_orientConstraint1.w0" "IKAcHairs3FollowOffset_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKHandleFollowMain_parentConstraint1.ctx" "IKHandleFollowMain.tx";
connectAttr "IKHandleFollowMain_parentConstraint1.cty" "IKHandleFollowMain.ty";
connectAttr "IKHandleFollowMain_parentConstraint1.ctz" "IKHandleFollowMain.tz";
connectAttr "IKHandleFollowMain_parentConstraint1.crx" "IKHandleFollowMain.rx";
connectAttr "IKHandleFollowMain_parentConstraint1.cry" "IKHandleFollowMain.ry";
connectAttr "IKHandleFollowMain_parentConstraint1.crz" "IKHandleFollowMain.rz";
connectAttr "IKHandleFollowMain_scaleConstraint1.csx" "IKHandleFollowMain.sx";
connectAttr "IKHandleFollowMain_scaleConstraint1.csy" "IKHandleFollowMain.sy";
connectAttr "IKHandleFollowMain_scaleConstraint1.csz" "IKHandleFollowMain.sz";
connectAttr "IKHandleFollowMain.ro" "IKHandleFollowMain_parentConstraint1.cro";
connectAttr "IKHandleFollowMain.pim" "IKHandleFollowMain_parentConstraint1.cpim"
		;
connectAttr "IKHandleFollowMain.rp" "IKHandleFollowMain_parentConstraint1.crp";
connectAttr "IKHandleFollowMain.rpt" "IKHandleFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "IKHandleFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "IKHandleFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "IKHandleFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "IKHandleFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "IKHandleFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "IKHandleFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKHandleFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "IKHandleFollowMain_parentConstraint1.w0" "IKHandleFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "IKHandleFollowMain.pim" "IKHandleFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "IKHandleFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKHandleFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "IKHandleFollowMain_scaleConstraint1.w0" "IKHandleFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline3_M.ikCvVis" "IKOffsetcvSpline1_M.v";
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.ctx" "IKOffsetcvSpline1_M.tx"
		;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.cty" "IKOffsetcvSpline1_M.ty"
		;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.ctz" "IKOffsetcvSpline1_M.tz"
		;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.crx" "IKOffsetcvSpline1_M.rx"
		;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.cry" "IKOffsetcvSpline1_M.ry"
		;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.crz" "IKOffsetcvSpline1_M.rz"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKExtracvSpline1_M.v";
connectAttr "IKOffsetcvSpline1_M.ro" "IKOffsetcvSpline1_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetcvSpline1_M.pim" "IKOffsetcvSpline1_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpline1_M.rp" "IKOffsetcvSpline1_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetcvSpline1_M.rpt" "IKOffsetcvSpline1_M_parentConstraint1.crt"
		;
connectAttr "IKSpline1_M.t" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline1_M.rp" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline1_M.rpt" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpline1_M.r" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline1_M.ro" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline1_M.s" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline1_M.pm" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.w0" "IKOffsetcvSpline1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2_M.t" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpline2_M.rp" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpline2_M.rpt" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpline2_M.r" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpline2_M.ro" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpline2_M.s" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpline2_M.pm" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.w1" "IKOffsetcvSpline1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKStiffSpline1SetRange_M.ox" "IKOffsetcvSpline1_M_parentConstraint1.w0"
		;
connectAttr "IKStiffSpline1SetRange_M.oy" "IKOffsetcvSpline1_M_parentConstraint1.w1"
		;
connectAttr "IKSpline3_M.ikCvVis" "IKOffsetcvSpline2_M.v";
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.ctx" "IKOffsetcvSpline2_M.tx"
		;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.cty" "IKOffsetcvSpline2_M.ty"
		;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.ctz" "IKOffsetcvSpline2_M.tz"
		;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.crx" "IKOffsetcvSpline2_M.rx"
		;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.cry" "IKOffsetcvSpline2_M.ry"
		;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.crz" "IKOffsetcvSpline2_M.rz"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKExtracvSpline2_M.v";
connectAttr "IKOffsetcvSpline2_M.ro" "IKOffsetcvSpline2_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetcvSpline2_M.pim" "IKOffsetcvSpline2_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpline2_M.rp" "IKOffsetcvSpline2_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetcvSpline2_M.rpt" "IKOffsetcvSpline2_M_parentConstraint1.crt"
		;
connectAttr "IKSpline2_M.t" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline2_M.rp" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline2_M.rpt" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpline2_M.r" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline2_M.ro" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline2_M.s" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline2_M.pm" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.w0" "IKOffsetcvSpline2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpline1_M.t" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpline1_M.rp" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpline1_M.rpt" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpline1_M.r" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpline1_M.ro" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpline1_M.s" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpline1_M.pm" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.w1" "IKOffsetcvSpline2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3_M.ikCvVis" "IKOffsetcvSpline3_M.v";
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.ctx" "IKOffsetcvSpline3_M.tx"
		;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.cty" "IKOffsetcvSpline3_M.ty"
		;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.ctz" "IKOffsetcvSpline3_M.tz"
		;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.crx" "IKOffsetcvSpline3_M.rx"
		;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.cry" "IKOffsetcvSpline3_M.ry"
		;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.crz" "IKOffsetcvSpline3_M.rz"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKExtracvSpline3_M.v";
connectAttr "IKOffsetcvSpline3_M.ro" "IKOffsetcvSpline3_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetcvSpline3_M.pim" "IKOffsetcvSpline3_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpline3_M.rp" "IKOffsetcvSpline3_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetcvSpline3_M.rpt" "IKOffsetcvSpline3_M_parentConstraint1.crt"
		;
connectAttr "IKSpline2_M.t" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline2_M.rp" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline2_M.rpt" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpline2_M.r" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline2_M.ro" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline2_M.s" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline2_M.pm" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.w0" "IKOffsetcvSpline3_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpline1_M.t" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpline1_M.rp" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpline1_M.rpt" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpline1_M.r" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpline1_M.ro" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpline1_M.s" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpline1_M.pm" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.w1" "IKOffsetcvSpline3_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3_M.ikCvVis" "IKOffsetcvSpline4_M.v";
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.ctx" "IKOffsetcvSpline4_M.tx"
		;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.cty" "IKOffsetcvSpline4_M.ty"
		;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.ctz" "IKOffsetcvSpline4_M.tz"
		;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.crx" "IKOffsetcvSpline4_M.rx"
		;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.cry" "IKOffsetcvSpline4_M.ry"
		;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.crz" "IKOffsetcvSpline4_M.rz"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKExtracvSpline4_M.v";
connectAttr "IKOffsetcvSpline4_M.ro" "IKOffsetcvSpline4_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetcvSpline4_M.pim" "IKOffsetcvSpline4_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpline4_M.rp" "IKOffsetcvSpline4_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetcvSpline4_M.rpt" "IKOffsetcvSpline4_M_parentConstraint1.crt"
		;
connectAttr "IKSpline2_M.t" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline2_M.rp" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline2_M.rpt" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpline2_M.r" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline2_M.ro" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline2_M.s" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline2_M.pm" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.w0" "IKOffsetcvSpline4_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpline3_M.t" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpline3_M.rp" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpline3_M.rpt" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpline3_M.r" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpline3_M.ro" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpline3_M.s" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpline3_M.pm" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.w1" "IKOffsetcvSpline4_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3_M.ikCvVis" "IKOffsetcvSpline5_M.v";
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.ctx" "IKOffsetcvSpline5_M.tx"
		;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.cty" "IKOffsetcvSpline5_M.ty"
		;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.ctz" "IKOffsetcvSpline5_M.tz"
		;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.crx" "IKOffsetcvSpline5_M.rx"
		;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.cry" "IKOffsetcvSpline5_M.ry"
		;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.crz" "IKOffsetcvSpline5_M.rz"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKExtracvSpline5_M.v";
connectAttr "IKOffsetcvSpline5_M.ro" "IKOffsetcvSpline5_M_parentConstraint1.cro"
		;
connectAttr "IKOffsetcvSpline5_M.pim" "IKOffsetcvSpline5_M_parentConstraint1.cpim"
		;
connectAttr "IKOffsetcvSpline5_M.rp" "IKOffsetcvSpline5_M_parentConstraint1.crp"
		;
connectAttr "IKOffsetcvSpline5_M.rpt" "IKOffsetcvSpline5_M_parentConstraint1.crt"
		;
connectAttr "IKSpline3_M.t" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline3_M.rp" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline3_M.rpt" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].trt";
connectAttr "IKSpline3_M.r" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline3_M.ro" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline3_M.s" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline3_M.pm" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].tpm";
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.w0" "IKOffsetcvSpline5_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2_M.t" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].tt";
connectAttr "IKSpline2_M.rp" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].trp";
connectAttr "IKSpline2_M.rpt" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].trt";
connectAttr "IKSpline2_M.r" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].tr";
connectAttr "IKSpline2_M.ro" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].tro";
connectAttr "IKSpline2_M.s" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].ts";
connectAttr "IKSpline2_M.pm" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].tpm";
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.w1" "IKOffsetcvSpline5_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKStiffSpline3SetRange_M.ox" "IKOffsetcvSpline5_M_parentConstraint1.w0"
		;
connectAttr "IKStiffSpline3SetRange_M.oy" "IKOffsetcvSpline5_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetSpline2_M_parentConstraint1.ctx" "IKOffsetSpline2_M.tx";
connectAttr "IKOffsetSpline2_M_parentConstraint1.cty" "IKOffsetSpline2_M.ty";
connectAttr "IKOffsetSpline2_M_parentConstraint1.ctz" "IKOffsetSpline2_M.tz";
connectAttr "IKOffsetSpline2_M_parentConstraint1.crx" "IKOffsetSpline2_M.rx";
connectAttr "IKOffsetSpline2_M_parentConstraint1.cry" "IKOffsetSpline2_M.ry";
connectAttr "IKOffsetSpline2_M_parentConstraint1.crz" "IKOffsetSpline2_M.rz";
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKSpline2_MShape.v";
connectAttr "IKOffsetSpline2_M.ro" "IKOffsetSpline2_M_parentConstraint1.cro";
connectAttr "IKOffsetSpline2_M.pim" "IKOffsetSpline2_M_parentConstraint1.cpim";
connectAttr "IKOffsetSpline2_M.rp" "IKOffsetSpline2_M_parentConstraint1.crp";
connectAttr "IKOffsetSpline2_M.rpt" "IKOffsetSpline2_M_parentConstraint1.crt";
connectAttr "IKFollowEndSpline1_M.t" "IKOffsetSpline2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKFollowEndSpline1_M.rp" "IKOffsetSpline2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKFollowEndSpline1_M.rpt" "IKOffsetSpline2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKFollowEndSpline1_M.r" "IKOffsetSpline2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKFollowEndSpline1_M.ro" "IKOffsetSpline2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKFollowEndSpline1_M.s" "IKOffsetSpline2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKFollowEndSpline1_M.pm" "IKOffsetSpline2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetSpline2_M_parentConstraint1.w0" "IKOffsetSpline2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKFollowEndSpline3_M.t" "IKOffsetSpline2_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKFollowEndSpline3_M.rp" "IKOffsetSpline2_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKFollowEndSpline3_M.rpt" "IKOffsetSpline2_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKFollowEndSpline3_M.r" "IKOffsetSpline2_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKFollowEndSpline3_M.ro" "IKOffsetSpline2_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKFollowEndSpline3_M.s" "IKOffsetSpline2_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKFollowEndSpline3_M.pm" "IKOffsetSpline2_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKOffsetSpline2_M_parentConstraint1.w1" "IKOffsetSpline2_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKFollowEndSpline2_MReverse.ox" "IKOffsetSpline2_M_parentConstraint1.w0"
		;
connectAttr "IKFollowEndSpline2_MUnitConversion.o" "IKOffsetSpline2_M_parentConstraint1.w1"
		;
connectAttr "IKOffsetConstrainedSpline1_M_pointConstraint1.ctx" "IKOffsetConstrainedSpline1_M.tx"
		;
connectAttr "IKOffsetConstrainedSpline1_M_pointConstraint1.cty" "IKOffsetConstrainedSpline1_M.ty"
		;
connectAttr "IKOffsetConstrainedSpline1_M_pointConstraint1.ctz" "IKOffsetConstrainedSpline1_M.tz"
		;
connectAttr "IKOffsetConstrainedSpline1_M_orientConstraint1.crx" "IKOffsetConstrainedSpline1_M.rx"
		;
connectAttr "IKOffsetConstrainedSpline1_M_orientConstraint1.cry" "IKOffsetConstrainedSpline1_M.ry"
		;
connectAttr "IKOffsetConstrainedSpline1_M_orientConstraint1.crz" "IKOffsetConstrainedSpline1_M.rz"
		;
connectAttr "IKOffsetConstrainedSpline1_M.pim" "IKOffsetConstrainedSpline1_M_pointConstraint1.cpim"
		;
connectAttr "IKOffsetConstrainedSpline1_M.rp" "IKOffsetConstrainedSpline1_M_pointConstraint1.crp"
		;
connectAttr "IKOffsetConstrainedSpline1_M.rpt" "IKOffsetConstrainedSpline1_M_pointConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "IKOffsetConstrainedSpline1_M_pointConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "IKOffsetConstrainedSpline1_M_pointConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "IKOffsetConstrainedSpline1_M_pointConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.pm" "IKOffsetConstrainedSpline1_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetConstrainedSpline1_M_pointConstraint1.w0" "IKOffsetConstrainedSpline1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKOffsetConstrainedSpline1_M.ro" "IKOffsetConstrainedSpline1_M_orientConstraint1.cro"
		;
connectAttr "IKOffsetConstrainedSpline1_M.pim" "IKOffsetConstrainedSpline1_M_orientConstraint1.cpim"
		;
connectAttr "LegLockConstrained.r" "IKOffsetConstrainedSpline1_M_orientConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "IKOffsetConstrainedSpline1_M_orientConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.pm" "IKOffsetConstrainedSpline1_M_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKOffsetConstrainedSpline1_M_orientConstraint1.w0" "IKOffsetConstrainedSpline1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKSpline1_MShape.v";
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.ctx" "IKhybridFollowSpline1_M.tx"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.cty" "IKhybridFollowSpline1_M.ty"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.ctz" "IKhybridFollowSpline1_M.tz"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.crx" "IKhybridFollowSpline1_M.rx"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.cry" "IKhybridFollowSpline1_M.ry"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.crz" "IKhybridFollowSpline1_M.rz"
		;
connectAttr "FKIKBlendSplineHybridVisPMA_M.o1" "IKhybridSpline1_MShape.v";
connectAttr "FKIKBlendSplineHybridVisPMA_M.o1" "IKhybridSpline2_MShape.v";
connectAttr "FKIKBlendSplineHybridVisPMA_M.o1" "IKhybridSpline3_MShape.v";
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKSpline3_MShape.v";
connectAttr "IKhybridFollowSpline1_M.ro" "IKhybridFollowSpline1_M_parentConstraint1.cro"
		;
connectAttr "IKhybridFollowSpline1_M.pim" "IKhybridFollowSpline1_M_parentConstraint1.cpim"
		;
connectAttr "IKhybridFollowSpline1_M.rp" "IKhybridFollowSpline1_M_parentConstraint1.crp"
		;
connectAttr "IKhybridFollowSpline1_M.rpt" "IKhybridFollowSpline1_M_parentConstraint1.crt"
		;
connectAttr "IKhybridFollowSpline1_MStatic.t" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKhybridFollowSpline1_MStatic.rp" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKhybridFollowSpline1_MStatic.rpt" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKhybridFollowSpline1_MStatic.r" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKhybridFollowSpline1_MStatic.ro" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKhybridFollowSpline1_MStatic.s" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKhybridFollowSpline1_MStatic.pm" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.w0" "IKhybridFollowSpline1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKhybridFollowSpline1_MFollow.t" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].tt"
		;
connectAttr "IKhybridFollowSpline1_MFollow.rp" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].trp"
		;
connectAttr "IKhybridFollowSpline1_MFollow.rpt" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].trt"
		;
connectAttr "IKhybridFollowSpline1_MFollow.r" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].tr"
		;
connectAttr "IKhybridFollowSpline1_MFollow.ro" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].tro"
		;
connectAttr "IKhybridFollowSpline1_MFollow.s" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].ts"
		;
connectAttr "IKhybridFollowSpline1_MFollow.pm" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].tpm"
		;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.w1" "IKhybridFollowSpline1_M_parentConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3_MSetRangeFollow.oy" "IKhybridFollowSpline1_M_parentConstraint1.w0"
		;
connectAttr "IKSpline3_MSetRangeFollow.ox" "IKhybridFollowSpline1_M_parentConstraint1.w1"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.ctx" "IKFollowEndSpline1_M.tx"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.cty" "IKFollowEndSpline1_M.ty"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.ctz" "IKFollowEndSpline1_M.tz"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.crx" "IKFollowEndSpline1_M.rx"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.cry" "IKFollowEndSpline1_M.ry"
		;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.crz" "IKFollowEndSpline1_M.rz"
		;
connectAttr "IKFollowEndSpline1_M.ro" "IKFollowEndSpline1_M_parentConstraint1.cro"
		;
connectAttr "IKFollowEndSpline1_M.pim" "IKFollowEndSpline1_M_parentConstraint1.cpim"
		;
connectAttr "IKFollowEndSpline1_M.rp" "IKFollowEndSpline1_M_parentConstraint1.crp"
		;
connectAttr "IKFollowEndSpline1_M.rpt" "IKFollowEndSpline1_M_parentConstraint1.crt"
		;
connectAttr "IKSpline1_M.t" "IKFollowEndSpline1_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline1_M.rp" "IKFollowEndSpline1_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline1_M.rpt" "IKFollowEndSpline1_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpline1_M.r" "IKFollowEndSpline1_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline1_M.ro" "IKFollowEndSpline1_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline1_M.s" "IKFollowEndSpline1_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline1_M.pm" "IKFollowEndSpline1_M_parentConstraint1.tg[0].tpm";
connectAttr "IKFollowEndSpline1_M_parentConstraint1.w0" "IKFollowEndSpline1_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.ctx" "IKFollowEndSpline3_M.tx"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.cty" "IKFollowEndSpline3_M.ty"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.ctz" "IKFollowEndSpline3_M.tz"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.crx" "IKFollowEndSpline3_M.rx"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.cry" "IKFollowEndSpline3_M.ry"
		;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.crz" "IKFollowEndSpline3_M.rz"
		;
connectAttr "IKFollowEndSpline3_M.ro" "IKFollowEndSpline3_M_parentConstraint1.cro"
		;
connectAttr "IKFollowEndSpline3_M.pim" "IKFollowEndSpline3_M_parentConstraint1.cpim"
		;
connectAttr "IKFollowEndSpline3_M.rp" "IKFollowEndSpline3_M_parentConstraint1.crp"
		;
connectAttr "IKFollowEndSpline3_M.rpt" "IKFollowEndSpline3_M_parentConstraint1.crt"
		;
connectAttr "IKSpline3_M.t" "IKFollowEndSpline3_M_parentConstraint1.tg[0].tt";
connectAttr "IKSpline3_M.rp" "IKFollowEndSpline3_M_parentConstraint1.tg[0].trp";
connectAttr "IKSpline3_M.rpt" "IKFollowEndSpline3_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpline3_M.r" "IKFollowEndSpline3_M_parentConstraint1.tg[0].tr";
connectAttr "IKSpline3_M.ro" "IKFollowEndSpline3_M_parentConstraint1.tg[0].tro";
connectAttr "IKSpline3_M.s" "IKFollowEndSpline3_M_parentConstraint1.tg[0].ts";
connectAttr "IKSpline3_M.pm" "IKFollowEndSpline3_M_parentConstraint1.tg[0].tpm";
connectAttr "IKFollowEndSpline3_M_parentConstraint1.w0" "IKFollowEndSpline3_M_parentConstraint1.tg[0].tw"
		;
connectAttr "IKScalerHairs1_M_scaleConstraint1.csx" "IKScalerHairs1_M.sx";
connectAttr "IKScalerHairs1_M_scaleConstraint1.csy" "IKScalerHairs1_M.sy";
connectAttr "IKScalerHairs1_M_scaleConstraint1.csz" "IKScalerHairs1_M.sz";
connectAttr "IKScalerHairs1_M.pim" "IKScalerHairs1_M_scaleConstraint1.cpim";
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs1_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs1_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs1_M_scaleConstraint1.w0" "IKScalerHairs1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs1_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs1_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs1_M_scaleConstraint1.w1" "IKScalerHairs1_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs1_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs1_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs1_M_scaleConstraint1.w2" "IKScalerHairs1_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.csx" "IKScalerHairs1Part1_M.sx"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.csy" "IKScalerHairs1Part1_M.sy"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.csz" "IKScalerHairs1Part1_M.sz"
		;
connectAttr "IKScalerHairs1Part1_M.pim" "IKScalerHairs1Part1_M_scaleConstraint1.cpim"
		;
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs1Part1_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs1Part1_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.w0" "IKScalerHairs1Part1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs1Part1_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs1Part1_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.w1" "IKScalerHairs1Part1_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs1Part1_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs1Part1_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.w2" "IKScalerHairs1Part1_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.csx" "IKScalerHairs1Part2_M.sx"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.csy" "IKScalerHairs1Part2_M.sy"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.csz" "IKScalerHairs1Part2_M.sz"
		;
connectAttr "IKScalerHairs1Part2_M.pim" "IKScalerHairs1Part2_M_scaleConstraint1.cpim"
		;
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs1Part2_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs1Part2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.w0" "IKScalerHairs1Part2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs1Part2_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs1Part2_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.w1" "IKScalerHairs1Part2_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs1Part2_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs1Part2_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.w2" "IKScalerHairs1Part2_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs2_M_scaleConstraint1.csx" "IKScalerHairs2_M.sx";
connectAttr "IKScalerHairs2_M_scaleConstraint1.csy" "IKScalerHairs2_M.sy";
connectAttr "IKScalerHairs2_M_scaleConstraint1.csz" "IKScalerHairs2_M.sz";
connectAttr "IKScalerHairs2_M.pim" "IKScalerHairs2_M_scaleConstraint1.cpim";
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs2_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs2_M_scaleConstraint1.w0" "IKScalerHairs2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs2_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs2_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs2_M_scaleConstraint1.w1" "IKScalerHairs2_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs2_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs2_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs2_M_scaleConstraint1.w2" "IKScalerHairs2_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.csx" "IKScalerHairs2Part1_M.sx"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.csy" "IKScalerHairs2Part1_M.sy"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.csz" "IKScalerHairs2Part1_M.sz"
		;
connectAttr "IKScalerHairs2Part1_M.pim" "IKScalerHairs2Part1_M_scaleConstraint1.cpim"
		;
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs2Part1_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs2Part1_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.w0" "IKScalerHairs2Part1_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs2Part1_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs2Part1_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.w1" "IKScalerHairs2Part1_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs2Part1_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs2Part1_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.w2" "IKScalerHairs2Part1_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.csx" "IKScalerHairs2Part2_M.sx"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.csy" "IKScalerHairs2Part2_M.sy"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.csz" "IKScalerHairs2Part2_M.sz"
		;
connectAttr "IKScalerHairs2Part2_M.pim" "IKScalerHairs2Part2_M_scaleConstraint1.cpim"
		;
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs2Part2_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs2Part2_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.w0" "IKScalerHairs2Part2_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs2Part2_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs2Part2_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.w1" "IKScalerHairs2Part2_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs2Part2_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs2Part2_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.w2" "IKScalerHairs2Part2_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKScalerHairs3_M_scaleConstraint1.csx" "IKScalerHairs3_M.sx";
connectAttr "IKScalerHairs3_M_scaleConstraint1.csy" "IKScalerHairs3_M.sy";
connectAttr "IKScalerHairs3_M_scaleConstraint1.csz" "IKScalerHairs3_M.sz";
connectAttr "IKScalerHairs3_M.pim" "IKScalerHairs3_M_scaleConstraint1.cpim";
connectAttr "IKSpline1LocalOrient2_M.s" "IKScalerHairs3_M_scaleConstraint1.tg[0].ts"
		;
connectAttr "IKSpline1LocalOrient2_M.pm" "IKScalerHairs3_M_scaleConstraint1.tg[0].tpm"
		;
connectAttr "IKScalerHairs3_M_scaleConstraint1.w0" "IKScalerHairs3_M_scaleConstraint1.tg[0].tw"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "IKScalerHairs3_M_scaleConstraint1.tg[1].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "IKScalerHairs3_M_scaleConstraint1.tg[1].tpm"
		;
connectAttr "IKScalerHairs3_M_scaleConstraint1.w1" "IKScalerHairs3_M_scaleConstraint1.tg[1].tw"
		;
connectAttr "IKSpline3LocalOrient2_M.s" "IKScalerHairs3_M_scaleConstraint1.tg[2].ts"
		;
connectAttr "IKSpline3LocalOrient2_M.pm" "IKScalerHairs3_M_scaleConstraint1.tg[2].tpm"
		;
connectAttr "IKScalerHairs3_M_scaleConstraint1.w2" "IKScalerHairs3_M_scaleConstraint1.tg[2].tw"
		;
connectAttr "IKfake0Spline_M.msg" "IKSplineHandle_M.hsj";
connectAttr "IKSplineEffector_M.hp" "IKSplineHandle_M.hee";
connectAttr "ikSplineSolver.msg" "IKSplineHandle_M.hsv";
connectAttr "IKSplineCurve_MShape.ws" "IKSplineHandle_M.ic";
connectAttr "IKSpline1LocalOrient2_M.wm" "IKSplineHandle_M.dwum";
connectAttr "IKSpline3LocalStartOrient_M.wm" "IKSplineHandle_M.dwue";
connectAttr "IKSplineRamp_M.oc" "IKSplineHandle_M.dtra";
connectAttr "IKSplineFlipUpAxisSetRange_M.ox" "IKSplineHandle_M.dwua";
connectAttr "IKSplineFlipAxisSetRange_M.ox" "IKSplineHandle_M.dwux";
connectAttr "IKSplineFlipAxisSetRange_M.oy" "IKSplineHandle_M.dwuy";
connectAttr "IKSplineFlipAxisSetRange_M.oz" "IKSplineHandle_M.dwuz";
connectAttr "IKSplineFlipAxisSetRange_M.ox" "IKSplineHandle_M.dwvx";
connectAttr "IKSplineFlipAxisSetRange_M.oy" "IKSplineHandle_M.dwvy";
connectAttr "IKSplineFlipAxisSetRange_M.oz" "IKSplineHandle_M.dwvz";
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.ctx" "IKhybridFollowSpline1_MFollowNoScaleOffset.tx"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.cty" "IKhybridFollowSpline1_MFollowNoScaleOffset.ty"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.ctz" "IKhybridFollowSpline1_MFollowNoScaleOffset.tz"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.crx" "IKhybridFollowSpline1_MFollowNoScaleOffset.rx"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.cry" "IKhybridFollowSpline1_MFollowNoScaleOffset.ry"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.crz" "IKhybridFollowSpline1_MFollowNoScaleOffset.rz"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.pim" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.cpim"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.rp" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.crp"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.rpt" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.pm" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.tg[0].tpm"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.w0" "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.tg[0].tw"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.ro" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.cro"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.pim" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.cpim"
		;
connectAttr "LegLockConstrained.r" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.pm" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.tg[0].tpm"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.w0" "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.tg[0].tw"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.ctx" "IKhybridFollowSpline1_MFollow.tx"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.cty" "IKhybridFollowSpline1_MFollow.ty"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.ctz" "IKhybridFollowSpline1_MFollow.tz"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.crx" "IKhybridFollowSpline1_MFollow.rx"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.cry" "IKhybridFollowSpline1_MFollow.ry"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.crz" "IKhybridFollowSpline1_MFollow.rz"
		;
connectAttr "IKhybridFollowSpline1_MFollow.ro" "IKhybridFollowSpline1_MFollow_parentConstraint1.cro"
		;
connectAttr "IKhybridFollowSpline1_MFollow.pim" "IKhybridFollowSpline1_MFollow_parentConstraint1.cpim"
		;
connectAttr "IKhybridFollowSpline1_MFollow.rp" "IKhybridFollowSpline1_MFollow_parentConstraint1.crp"
		;
connectAttr "IKhybridFollowSpline1_MFollow.rpt" "IKhybridFollowSpline1_MFollow_parentConstraint1.crt"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.t" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].tt"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.rp" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].trp"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.rpt" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].trt"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.r" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].tr"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.ro" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].tro"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.s" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].ts"
		;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.pm" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.w0" "IKhybridFollowSpline1_MFollow_parentConstraint1.tg[0].tw"
		;
connectAttr "IKStatic_parentConstraint1.ctx" "IKStatic.tx";
connectAttr "IKStatic_parentConstraint1.cty" "IKStatic.ty";
connectAttr "IKStatic_parentConstraint1.ctz" "IKStatic.tz";
connectAttr "IKStatic_parentConstraint1.crx" "IKStatic.rx";
connectAttr "IKStatic_parentConstraint1.cry" "IKStatic.ry";
connectAttr "IKStatic_parentConstraint1.crz" "IKStatic.rz";
connectAttr "IKStatic_scaleConstraint1.csx" "IKStatic.sx";
connectAttr "IKStatic_scaleConstraint1.csy" "IKStatic.sy";
connectAttr "IKStatic_scaleConstraint1.csz" "IKStatic.sz";
connectAttr "IKStatic.ro" "IKStatic_parentConstraint1.cro";
connectAttr "IKStatic.pim" "IKStatic_parentConstraint1.cpim";
connectAttr "IKStatic.rp" "IKStatic_parentConstraint1.crp";
connectAttr "IKStatic.rpt" "IKStatic_parentConstraint1.crt";
connectAttr "Main.t" "IKStatic_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "IKStatic_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "IKStatic_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "IKStatic_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "IKStatic_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "IKStatic_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKStatic_parentConstraint1.tg[0].tpm";
connectAttr "IKStatic_parentConstraint1.w0" "IKStatic_parentConstraint1.tg[0].tw"
		;
connectAttr "IKStatic.pim" "IKStatic_scaleConstraint1.cpim";
connectAttr "Main.s" "IKStatic_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "IKStatic_scaleConstraint1.tg[0].tpm";
connectAttr "IKStatic_scaleConstraint1.w0" "IKStatic_scaleConstraint1.tg[0].tw";
connectAttr "FKIKBlendSplineCondition_M.ocr" "IKSplineCurve_M.v";
connectAttr "IKSplineLocator0_MShape.wp" "IKSplineCurve_MShape.cp[0]";
connectAttr "IKSplineLocator1_MShape.wp" "IKSplineCurve_MShape.cp[1]";
connectAttr "IKSplineLocator2_MShape.wp" "IKSplineCurve_MShape.cp[2]";
connectAttr "IKSplineLocator3_MShape.wp" "IKSplineCurve_MShape.cp[3]";
connectAttr "IKSplineLocator4_MShape.wp" "IKSplineCurve_MShape.cp[4]";
connectAttr "IKSplineLocator5_MShape.wp" "IKSplineCurve_MShape.cp[5]";
connectAttr "IKSplineLocator6_MShape.wp" "IKSplineCurve_MShape.cp[6]";
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.ctx" "IKParentConstraintToRoot_M.tx"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.cty" "IKParentConstraintToRoot_M.ty"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.ctz" "IKParentConstraintToRoot_M.tz"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.crx" "IKParentConstraintToRoot_M.rx"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.cry" "IKParentConstraintToRoot_M.ry"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.crz" "IKParentConstraintToRoot_M.rz"
		;
connectAttr "IKParentConstraintToRoot_M.ro" "IKParentConstraintToRoot_M_parentConstraint1.cro"
		;
connectAttr "IKParentConstraintToRoot_M.pim" "IKParentConstraintToRoot_M_parentConstraint1.cpim"
		;
connectAttr "IKParentConstraintToRoot_M.rp" "IKParentConstraintToRoot_M_parentConstraint1.crp"
		;
connectAttr "IKParentConstraintToRoot_M.rpt" "IKParentConstraintToRoot_M_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.w0" "IKParentConstraintToRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "MainScaleMultiplyDivide.o" "FKIKSystem.s";
connectAttr "Main.fkIkVis" "FKIKSystem.v";
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.ctx" "FKIKParentConstraintSpline_M.tx"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.cty" "FKIKParentConstraintSpline_M.ty"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.ctz" "FKIKParentConstraintSpline_M.tz"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.crx" "FKIKParentConstraintSpline_M.rx"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.cry" "FKIKParentConstraintSpline_M.ry"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.crz" "FKIKParentConstraintSpline_M.rz"
		;
connectAttr "FKIKParentConstraintSpline_M.ro" "FKIKParentConstraintSpline_M_parentConstraint1.cro"
		;
connectAttr "FKIKParentConstraintSpline_M.pim" "FKIKParentConstraintSpline_M_parentConstraint1.cpim"
		;
connectAttr "FKIKParentConstraintSpline_M.rp" "FKIKParentConstraintSpline_M_parentConstraint1.crp"
		;
connectAttr "FKIKParentConstraintSpline_M.rpt" "FKIKParentConstraintSpline_M_parentConstraint1.crt"
		;
connectAttr "LegLockConstrained.t" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].tt"
		;
connectAttr "LegLockConstrained.rp" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].trp"
		;
connectAttr "LegLockConstrained.rpt" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].trt"
		;
connectAttr "LegLockConstrained.r" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].tr"
		;
connectAttr "LegLockConstrained.ro" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].tro"
		;
connectAttr "LegLockConstrained.s" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].ts"
		;
connectAttr "LegLockConstrained.pm" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.w0" "FKIKParentConstraintSpline_M_parentConstraint1.tg[0].tw"
		;
connectAttr "Main.bendVis" "BendSystem.v";
connectAttr "MainScaleMultiplyDivide.o" "AimSystem.s";
connectAttr "Main.aimVis" "AimSystem.v";
connectAttr "MainScaleMultiplyDivide.o" "RootSystem.s";
connectAttr "RootFollowMain_parentConstraint1.ctx" "RootFollowMain.tx";
connectAttr "RootFollowMain_parentConstraint1.cty" "RootFollowMain.ty";
connectAttr "RootFollowMain_parentConstraint1.ctz" "RootFollowMain.tz";
connectAttr "RootFollowMain_parentConstraint1.crx" "RootFollowMain.rx";
connectAttr "RootFollowMain_parentConstraint1.cry" "RootFollowMain.ry";
connectAttr "RootFollowMain_parentConstraint1.crz" "RootFollowMain.rz";
connectAttr "RootFollowMain_scaleConstraint1.csx" "RootFollowMain.sx";
connectAttr "RootFollowMain_scaleConstraint1.csy" "RootFollowMain.sy";
connectAttr "RootFollowMain_scaleConstraint1.csz" "RootFollowMain.sz";
connectAttr "RootFollowMain.ro" "RootFollowMain_parentConstraint1.cro";
connectAttr "RootFollowMain.pim" "RootFollowMain_parentConstraint1.cpim";
connectAttr "RootFollowMain.rp" "RootFollowMain_parentConstraint1.crp";
connectAttr "RootFollowMain.rpt" "RootFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "RootFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "RootFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "RootFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "RootFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "RootFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "RootFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "RootFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "RootFollowMain_parentConstraint1.w0" "RootFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "RootFollowMain.pim" "RootFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "RootFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "RootFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "RootFollowMain_scaleConstraint1.w0" "RootFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrained_pointConstraint1.ctx" "LegLockConstrained.tx";
connectAttr "LegLockConstrained_pointConstraint1.cty" "LegLockConstrained.ty";
connectAttr "LegLockConstrained_pointConstraint1.ctz" "LegLockConstrained.tz";
connectAttr "LegLockConstrained_orientConstraint1.crx" "LegLockConstrained.rx";
connectAttr "LegLockConstrained_orientConstraint1.cry" "LegLockConstrained.ry";
connectAttr "LegLockConstrained_orientConstraint1.crz" "LegLockConstrained.rz";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_pointConstraint1.cpim";
connectAttr "LegLockConstrained.rp" "LegLockConstrained_pointConstraint1.crp";
connectAttr "LegLockConstrained.rpt" "LegLockConstrained_pointConstraint1.crt";
connectAttr "Neck_M.t" "LegLockConstrained_pointConstraint1.tg[0].tt";
connectAttr "Neck_M.rp" "LegLockConstrained_pointConstraint1.tg[0].trp";
connectAttr "Neck_M.rpt" "LegLockConstrained_pointConstraint1.tg[0].trt";
connectAttr "Neck_M.pm" "LegLockConstrained_pointConstraint1.tg[0].tpm";
connectAttr "LegLockConstrained_pointConstraint1.w0" "LegLockConstrained_pointConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrained.ro" "LegLockConstrained_orientConstraint1.cro";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_orientConstraint1.cpim"
		;
connectAttr "Neck_M.r" "LegLockConstrained_orientConstraint1.tg[0].tr";
connectAttr "Neck_M.ro" "LegLockConstrained_orientConstraint1.tg[0].tro";
connectAttr "Neck_M.pm" "LegLockConstrained_orientConstraint1.tg[0].tpm";
connectAttr "Neck_M.jo" "LegLockConstrained_orientConstraint1.tg[0].tjo";
connectAttr "LegLockConstrained_orientConstraint1.w0" "LegLockConstrained_orientConstraint1.tg[0].tw"
		;
connectAttr "MainScaleMultiplyDivide.o" "TwistSystem.s";
connectAttr "TwistFollowSpline2_M_parentConstraint1.ctx" "TwistFollowSpline2_M.tx"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.cty" "TwistFollowSpline2_M.ty"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.ctz" "TwistFollowSpline2_M.tz"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.crx" "TwistFollowSpline2_M.rx"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.cry" "TwistFollowSpline2_M.ry"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.crz" "TwistFollowSpline2_M.rz"
		;
connectAttr "TwistFollowSpline2_M.ro" "TwistFollowSpline2_M_parentConstraint1.cro"
		;
connectAttr "TwistFollowSpline2_M.pim" "TwistFollowSpline2_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowSpline2_M.rp" "TwistFollowSpline2_M_parentConstraint1.crp"
		;
connectAttr "TwistFollowSpline2_M.rpt" "TwistFollowSpline2_M_parentConstraint1.crt"
		;
connectAttr "IKSpline2LocalOrient2_M.t" "TwistFollowSpline2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpline2LocalOrient2_M.rp" "TwistFollowSpline2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpline2LocalOrient2_M.rpt" "TwistFollowSpline2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpline2LocalOrient2_M.r" "TwistFollowSpline2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpline2LocalOrient2_M.ro" "TwistFollowSpline2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "TwistFollowSpline2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "TwistFollowSpline2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistFollowSpline2_M_parentConstraint1.w0" "TwistFollowSpline2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpline2_M.msg" "UnTwistIKSpline2_M.hsj";
connectAttr "effector1.hp" "UnTwistIKSpline2_M.hee";
connectAttr "ikRPsolver.msg" "UnTwistIKSpline2_M.hsv";
connectAttr "UnTwistIKSpline2_M_poleVectorConstraint1.ctx" "UnTwistIKSpline2_M.pvx"
		;
connectAttr "UnTwistIKSpline2_M_poleVectorConstraint1.cty" "UnTwistIKSpline2_M.pvy"
		;
connectAttr "UnTwistIKSpline2_M_poleVectorConstraint1.ctz" "UnTwistIKSpline2_M.pvz"
		;
connectAttr "UnTwistIKSpline2_M.pim" "UnTwistIKSpline2_M_poleVectorConstraint1.cpim"
		;
connectAttr "UnTwistSpline2_M.pm" "UnTwistIKSpline2_M_poleVectorConstraint1.ps";
connectAttr "UnTwistSpline2_M.t" "UnTwistIKSpline2_M_poleVectorConstraint1.crp";
connectAttr "UnTwistSpline2_M.t" "UnTwistIKSpline2_M_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "UnTwistSpline2_M.rp" "UnTwistIKSpline2_M_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "UnTwistSpline2_M.rpt" "UnTwistIKSpline2_M_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "UnTwistSpline2_M.pm" "UnTwistIKSpline2_M_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistIKSpline2_M_poleVectorConstraint1.w0" "UnTwistIKSpline2_M_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.ctx" "TwistFollowParentSpline2_M.tx"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.cty" "TwistFollowParentSpline2_M.ty"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.ctz" "TwistFollowParentSpline2_M.tz"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.crx" "TwistFollowParentSpline2_M.rx"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.cry" "TwistFollowParentSpline2_M.ry"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.crz" "TwistFollowParentSpline2_M.rz"
		;
connectAttr "TwistFollowParentSpline2_M.ro" "TwistFollowParentSpline2_M_parentConstraint1.cro"
		;
connectAttr "TwistFollowParentSpline2_M.pim" "TwistFollowParentSpline2_M_parentConstraint1.cpim"
		;
connectAttr "TwistFollowParentSpline2_M.rp" "TwistFollowParentSpline2_M_parentConstraint1.crp"
		;
connectAttr "TwistFollowParentSpline2_M.rpt" "TwistFollowParentSpline2_M_parentConstraint1.crt"
		;
connectAttr "IKSpline2LocalOrient3_M.t" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpline2LocalOrient3_M.rp" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpline2LocalOrient3_M.rpt" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpline2LocalOrient3_M.r" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpline2LocalOrient3_M.ro" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpline2LocalOrient3_M.s" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpline2LocalOrient3_M.pm" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.w0" "TwistFollowParentSpline2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpline2_M_pointConstraint1.ctx" "UnTwistSpline2_M.tx";
connectAttr "UnTwistSpline2_M_pointConstraint1.cty" "UnTwistSpline2_M.ty";
connectAttr "UnTwistSpline2_M_pointConstraint1.ctz" "UnTwistSpline2_M.tz";
connectAttr "UnTwistSpline2_M.s" "UnTwistEndSpline2_M.is";
connectAttr "UnTwistSpline2_M.s" "TwistBalancerSpline2_M.is";
connectAttr "TwistBalancerSpline2_M_parentConstraint1.ctx" "TwistBalancerSpline2_M.tx"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.cty" "TwistBalancerSpline2_M.ty"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.ctz" "TwistBalancerSpline2_M.tz"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.crx" "TwistBalancerSpline2_M.rx"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.cry" "TwistBalancerSpline2_M.ry"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.crz" "TwistBalancerSpline2_M.rz"
		;
connectAttr "TwistBalancerSpline2_M.ro" "TwistBalancerSpline2_M_parentConstraint1.cro"
		;
connectAttr "TwistBalancerSpline2_M.pim" "TwistBalancerSpline2_M_parentConstraint1.cpim"
		;
connectAttr "TwistBalancerSpline2_M.rp" "TwistBalancerSpline2_M_parentConstraint1.crp"
		;
connectAttr "TwistBalancerSpline2_M.rpt" "TwistBalancerSpline2_M_parentConstraint1.crt"
		;
connectAttr "TwistBalancerSpline2_M.jo" "TwistBalancerSpline2_M_parentConstraint1.cjo"
		;
connectAttr "IKSpline2LocalOrient2_M.t" "TwistBalancerSpline2_M_parentConstraint1.tg[0].tt"
		;
connectAttr "IKSpline2LocalOrient2_M.rp" "TwistBalancerSpline2_M_parentConstraint1.tg[0].trp"
		;
connectAttr "IKSpline2LocalOrient2_M.rpt" "TwistBalancerSpline2_M_parentConstraint1.tg[0].trt"
		;
connectAttr "IKSpline2LocalOrient2_M.r" "TwistBalancerSpline2_M_parentConstraint1.tg[0].tr"
		;
connectAttr "IKSpline2LocalOrient2_M.ro" "TwistBalancerSpline2_M_parentConstraint1.tg[0].tro"
		;
connectAttr "IKSpline2LocalOrient2_M.s" "TwistBalancerSpline2_M_parentConstraint1.tg[0].ts"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "TwistBalancerSpline2_M_parentConstraint1.tg[0].tpm"
		;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.w0" "TwistBalancerSpline2_M_parentConstraint1.tg[0].tw"
		;
connectAttr "UnTwistSpline2_M.pim" "UnTwistSpline2_M_pointConstraint1.cpim";
connectAttr "UnTwistSpline2_M.rp" "UnTwistSpline2_M_pointConstraint1.crp";
connectAttr "UnTwistSpline2_M.rpt" "UnTwistSpline2_M_pointConstraint1.crt";
connectAttr "IKSpline2LocalOrient2_M.t" "UnTwistSpline2_M_pointConstraint1.tg[0].tt"
		;
connectAttr "IKSpline2LocalOrient2_M.rp" "UnTwistSpline2_M_pointConstraint1.tg[0].trp"
		;
connectAttr "IKSpline2LocalOrient2_M.rpt" "UnTwistSpline2_M_pointConstraint1.tg[0].trt"
		;
connectAttr "IKSpline2LocalOrient2_M.pm" "UnTwistSpline2_M_pointConstraint1.tg[0].tpm"
		;
connectAttr "UnTwistSpline2_M_pointConstraint1.w0" "UnTwistSpline2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "UnTwistEndSpline2_M.tx" "effector1.tx";
connectAttr "UnTwistEndSpline2_M.ty" "effector1.ty";
connectAttr "UnTwistEndSpline2_M.tz" "effector1.tz";
connectAttr "UnTwistEndSpline2_M.opm" "effector1.opm";
connectAttr "MainScaleMultiplyDivide.o" "GlobalSystem.s";
connectAttr "GlobalFollowMain_parentConstraint1.ctx" "GlobalFollowMain.tx";
connectAttr "GlobalFollowMain_parentConstraint1.cty" "GlobalFollowMain.ty";
connectAttr "GlobalFollowMain_parentConstraint1.ctz" "GlobalFollowMain.tz";
connectAttr "GlobalFollowMain_parentConstraint1.crx" "GlobalFollowMain.rx";
connectAttr "GlobalFollowMain_parentConstraint1.cry" "GlobalFollowMain.ry";
connectAttr "GlobalFollowMain_parentConstraint1.crz" "GlobalFollowMain.rz";
connectAttr "GlobalFollowMain_scaleConstraint1.csx" "GlobalFollowMain.sx";
connectAttr "GlobalFollowMain_scaleConstraint1.csy" "GlobalFollowMain.sy";
connectAttr "GlobalFollowMain_scaleConstraint1.csz" "GlobalFollowMain.sz";
connectAttr "GlobalFollowMain.ro" "GlobalFollowMain_parentConstraint1.cro";
connectAttr "GlobalFollowMain.pim" "GlobalFollowMain_parentConstraint1.cpim";
connectAttr "GlobalFollowMain.rp" "GlobalFollowMain_parentConstraint1.crp";
connectAttr "GlobalFollowMain.rpt" "GlobalFollowMain_parentConstraint1.crt";
connectAttr "Main.t" "GlobalFollowMain_parentConstraint1.tg[0].tt";
connectAttr "Main.rp" "GlobalFollowMain_parentConstraint1.tg[0].trp";
connectAttr "Main.rpt" "GlobalFollowMain_parentConstraint1.tg[0].trt";
connectAttr "Main.r" "GlobalFollowMain_parentConstraint1.tg[0].tr";
connectAttr "Main.ro" "GlobalFollowMain_parentConstraint1.tg[0].tro";
connectAttr "Main.s" "GlobalFollowMain_parentConstraint1.tg[0].ts";
connectAttr "Main.pm" "GlobalFollowMain_parentConstraint1.tg[0].tpm";
connectAttr "GlobalFollowMain_parentConstraint1.w0" "GlobalFollowMain_parentConstraint1.tg[0].tw"
		;
connectAttr "GlobalFollowMain.pim" "GlobalFollowMain_scaleConstraint1.cpim";
connectAttr "Main.s" "GlobalFollowMain_scaleConstraint1.tg[0].ts";
connectAttr "Main.pm" "GlobalFollowMain_scaleConstraint1.tg[0].tpm";
connectAttr "GlobalFollowMain_scaleConstraint1.w0" "GlobalFollowMain_scaleConstraint1.tg[0].tw"
		;
connectAttr "Hairs3_M.pim" "Hairs3_M_pointConstraint1.cpim";
connectAttr "Hairs3_M.rp" "Hairs3_M_pointConstraint1.crp";
connectAttr "Hairs3_M.rpt" "Hairs3_M_pointConstraint1.crt";
connectAttr "FKXHairs3_M.t" "Hairs3_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs3_M.rp" "Hairs3_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs3_M.rpt" "Hairs3_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs3_M.pm" "Hairs3_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs3_M_pointConstraint1.w0" "Hairs3_M_pointConstraint1.tg[0].tw";
connectAttr "IKXHairs3_M.t" "Hairs3_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs3_M.rp" "Hairs3_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs3_M.rpt" "Hairs3_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs3_M.pm" "Hairs3_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs3_M_pointConstraint1.w1" "Hairs3_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs3_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs3_M_pointConstraint1.w1";
connectAttr "Hairs3_M.ro" "Hairs3_M_orientConstraint1.cro";
connectAttr "Hairs3_M.pim" "Hairs3_M_orientConstraint1.cpim";
connectAttr "Hairs3_M.jo" "Hairs3_M_orientConstraint1.cjo";
connectAttr "Hairs3_M.is" "Hairs3_M_orientConstraint1.is";
connectAttr "FKXHairs3_M.r" "Hairs3_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs3_M.ro" "Hairs3_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs3_M.pm" "Hairs3_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs3_M.jo" "Hairs3_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs3_M_orientConstraint1.w0" "Hairs3_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs3_M.r" "Hairs3_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs3_M.ro" "Hairs3_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs3_M.pm" "Hairs3_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs3_M.jo" "Hairs3_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs3_M_orientConstraint1.w1" "Hairs3_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs3_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs3_M_orientConstraint1.w1";
connectAttr "Hairs2Part2_M.pim" "Hairs2Part2_M_pointConstraint1.cpim";
connectAttr "Hairs2Part2_M.rp" "Hairs2Part2_M_pointConstraint1.crp";
connectAttr "Hairs2Part2_M.rpt" "Hairs2Part2_M_pointConstraint1.crt";
connectAttr "FKXHairs2Part2_M.t" "Hairs2Part2_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs2Part2_M.rp" "Hairs2Part2_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs2Part2_M.rpt" "Hairs2Part2_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs2Part2_M.pm" "Hairs2Part2_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs2Part2_M_pointConstraint1.w0" "Hairs2Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2Part2_M.t" "Hairs2Part2_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs2Part2_M.rp" "Hairs2Part2_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs2Part2_M.rpt" "Hairs2Part2_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs2Part2_M.pm" "Hairs2Part2_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs2Part2_M_pointConstraint1.w1" "Hairs2Part2_M_pointConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2Part2_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2Part2_M_pointConstraint1.w1"
		;
connectAttr "Hairs2Part2_M.ro" "Hairs2Part2_M_orientConstraint1.cro";
connectAttr "Hairs2Part2_M.pim" "Hairs2Part2_M_orientConstraint1.cpim";
connectAttr "Hairs2Part2_M.jo" "Hairs2Part2_M_orientConstraint1.cjo";
connectAttr "Hairs2Part2_M.is" "Hairs2Part2_M_orientConstraint1.is";
connectAttr "FKXHairs2Part2_M.r" "Hairs2Part2_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs2Part2_M.ro" "Hairs2Part2_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs2Part2_M.pm" "Hairs2Part2_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs2Part2_M.jo" "Hairs2Part2_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs2Part2_M_orientConstraint1.w0" "Hairs2Part2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2Part2_M.r" "Hairs2Part2_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs2Part2_M.ro" "Hairs2Part2_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs2Part2_M.pm" "Hairs2Part2_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs2Part2_M.jo" "Hairs2Part2_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs2Part2_M_orientConstraint1.w1" "Hairs2Part2_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2Part2_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2Part2_M_orientConstraint1.w1"
		;
connectAttr "Hairs2Part1_M.pim" "Hairs2Part1_M_pointConstraint1.cpim";
connectAttr "Hairs2Part1_M.rp" "Hairs2Part1_M_pointConstraint1.crp";
connectAttr "Hairs2Part1_M.rpt" "Hairs2Part1_M_pointConstraint1.crt";
connectAttr "FKXHairs2Part1_M.t" "Hairs2Part1_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs2Part1_M.rp" "Hairs2Part1_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs2Part1_M.rpt" "Hairs2Part1_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs2Part1_M.pm" "Hairs2Part1_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs2Part1_M_pointConstraint1.w0" "Hairs2Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2Part1_M.t" "Hairs2Part1_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs2Part1_M.rp" "Hairs2Part1_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs2Part1_M.rpt" "Hairs2Part1_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs2Part1_M.pm" "Hairs2Part1_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs2Part1_M_pointConstraint1.w1" "Hairs2Part1_M_pointConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2Part1_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2Part1_M_pointConstraint1.w1"
		;
connectAttr "Hairs2Part1_M.ro" "Hairs2Part1_M_orientConstraint1.cro";
connectAttr "Hairs2Part1_M.pim" "Hairs2Part1_M_orientConstraint1.cpim";
connectAttr "Hairs2Part1_M.jo" "Hairs2Part1_M_orientConstraint1.cjo";
connectAttr "Hairs2Part1_M.is" "Hairs2Part1_M_orientConstraint1.is";
connectAttr "FKXHairs2Part1_M.r" "Hairs2Part1_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs2Part1_M.ro" "Hairs2Part1_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs2Part1_M.pm" "Hairs2Part1_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs2Part1_M.jo" "Hairs2Part1_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs2Part1_M_orientConstraint1.w0" "Hairs2Part1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2Part1_M.r" "Hairs2Part1_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs2Part1_M.ro" "Hairs2Part1_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs2Part1_M.pm" "Hairs2Part1_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs2Part1_M.jo" "Hairs2Part1_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs2Part1_M_orientConstraint1.w1" "Hairs2Part1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2Part1_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2Part1_M_orientConstraint1.w1"
		;
connectAttr "Hairs2_M.pim" "Hairs2_M_pointConstraint1.cpim";
connectAttr "Hairs2_M.rp" "Hairs2_M_pointConstraint1.crp";
connectAttr "Hairs2_M.rpt" "Hairs2_M_pointConstraint1.crt";
connectAttr "FKXHairs2_M.t" "Hairs2_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs2_M.rp" "Hairs2_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs2_M.rpt" "Hairs2_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs2_M.pm" "Hairs2_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs2_M_pointConstraint1.w0" "Hairs2_M_pointConstraint1.tg[0].tw";
connectAttr "IKXHairs2_M.t" "Hairs2_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs2_M.rp" "Hairs2_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs2_M.rpt" "Hairs2_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs2_M.pm" "Hairs2_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs2_M_pointConstraint1.w1" "Hairs2_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2_M_pointConstraint1.w1";
connectAttr "Hairs2_M.ro" "Hairs2_M_orientConstraint1.cro";
connectAttr "Hairs2_M.pim" "Hairs2_M_orientConstraint1.cpim";
connectAttr "Hairs2_M.jo" "Hairs2_M_orientConstraint1.cjo";
connectAttr "Hairs2_M.is" "Hairs2_M_orientConstraint1.is";
connectAttr "FKXHairs2_M.r" "Hairs2_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs2_M.ro" "Hairs2_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs2_M.pm" "Hairs2_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs2_M.jo" "Hairs2_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs2_M_orientConstraint1.w0" "Hairs2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs2_M.r" "Hairs2_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs2_M.ro" "Hairs2_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs2_M.pm" "Hairs2_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs2_M.jo" "Hairs2_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs2_M_orientConstraint1.w1" "Hairs2_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs2_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs2_M_orientConstraint1.w1";
connectAttr "Hairs1Part2_M.pim" "Hairs1Part2_M_pointConstraint1.cpim";
connectAttr "Hairs1Part2_M.rp" "Hairs1Part2_M_pointConstraint1.crp";
connectAttr "Hairs1Part2_M.rpt" "Hairs1Part2_M_pointConstraint1.crt";
connectAttr "FKXHairs1Part2_M.t" "Hairs1Part2_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs1Part2_M.rp" "Hairs1Part2_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs1Part2_M.rpt" "Hairs1Part2_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs1Part2_M.pm" "Hairs1Part2_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs1Part2_M_pointConstraint1.w0" "Hairs1Part2_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs1Part2_M.t" "Hairs1Part2_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs1Part2_M.rp" "Hairs1Part2_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs1Part2_M.rpt" "Hairs1Part2_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs1Part2_M.pm" "Hairs1Part2_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs1Part2_M_pointConstraint1.w1" "Hairs1Part2_M_pointConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1Part2_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1Part2_M_pointConstraint1.w1"
		;
connectAttr "Hairs1Part2_M.ro" "Hairs1Part2_M_orientConstraint1.cro";
connectAttr "Hairs1Part2_M.pim" "Hairs1Part2_M_orientConstraint1.cpim";
connectAttr "Hairs1Part2_M.jo" "Hairs1Part2_M_orientConstraint1.cjo";
connectAttr "Hairs1Part2_M.is" "Hairs1Part2_M_orientConstraint1.is";
connectAttr "FKXHairs1Part2_M.r" "Hairs1Part2_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs1Part2_M.ro" "Hairs1Part2_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs1Part2_M.pm" "Hairs1Part2_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs1Part2_M.jo" "Hairs1Part2_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs1Part2_M_orientConstraint1.w0" "Hairs1Part2_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs1Part2_M.r" "Hairs1Part2_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs1Part2_M.ro" "Hairs1Part2_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs1Part2_M.pm" "Hairs1Part2_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs1Part2_M.jo" "Hairs1Part2_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs1Part2_M_orientConstraint1.w1" "Hairs1Part2_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1Part2_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1Part2_M_orientConstraint1.w1"
		;
connectAttr "Hairs1Part1_M.pim" "Hairs1Part1_M_pointConstraint1.cpim";
connectAttr "Hairs1Part1_M.rp" "Hairs1Part1_M_pointConstraint1.crp";
connectAttr "Hairs1Part1_M.rpt" "Hairs1Part1_M_pointConstraint1.crt";
connectAttr "FKXHairs1Part1_M.t" "Hairs1Part1_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs1Part1_M.rp" "Hairs1Part1_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs1Part1_M.rpt" "Hairs1Part1_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs1Part1_M.pm" "Hairs1Part1_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs1Part1_M_pointConstraint1.w0" "Hairs1Part1_M_pointConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs1Part1_M.t" "Hairs1Part1_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs1Part1_M.rp" "Hairs1Part1_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs1Part1_M.rpt" "Hairs1Part1_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs1Part1_M.pm" "Hairs1Part1_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs1Part1_M_pointConstraint1.w1" "Hairs1Part1_M_pointConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1Part1_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1Part1_M_pointConstraint1.w1"
		;
connectAttr "Hairs1Part1_M.ro" "Hairs1Part1_M_orientConstraint1.cro";
connectAttr "Hairs1Part1_M.pim" "Hairs1Part1_M_orientConstraint1.cpim";
connectAttr "Hairs1Part1_M.jo" "Hairs1Part1_M_orientConstraint1.cjo";
connectAttr "Hairs1Part1_M.is" "Hairs1Part1_M_orientConstraint1.is";
connectAttr "FKXHairs1Part1_M.r" "Hairs1Part1_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs1Part1_M.ro" "Hairs1Part1_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs1Part1_M.pm" "Hairs1Part1_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs1Part1_M.jo" "Hairs1Part1_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs1Part1_M_orientConstraint1.w0" "Hairs1Part1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs1Part1_M.r" "Hairs1Part1_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs1Part1_M.ro" "Hairs1Part1_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs1Part1_M.pm" "Hairs1Part1_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs1Part1_M.jo" "Hairs1Part1_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs1Part1_M_orientConstraint1.w1" "Hairs1Part1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1Part1_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1Part1_M_orientConstraint1.w1"
		;
connectAttr "Hairs1_M.pim" "Hairs1_M_pointConstraint1.cpim";
connectAttr "Hairs1_M.rp" "Hairs1_M_pointConstraint1.crp";
connectAttr "Hairs1_M.rpt" "Hairs1_M_pointConstraint1.crt";
connectAttr "FKXHairs1_M.t" "Hairs1_M_pointConstraint1.tg[0].tt";
connectAttr "FKXHairs1_M.rp" "Hairs1_M_pointConstraint1.tg[0].trp";
connectAttr "FKXHairs1_M.rpt" "Hairs1_M_pointConstraint1.tg[0].trt";
connectAttr "FKXHairs1_M.pm" "Hairs1_M_pointConstraint1.tg[0].tpm";
connectAttr "Hairs1_M_pointConstraint1.w0" "Hairs1_M_pointConstraint1.tg[0].tw";
connectAttr "IKXHairs1_M.t" "Hairs1_M_pointConstraint1.tg[1].tt";
connectAttr "IKXHairs1_M.rp" "Hairs1_M_pointConstraint1.tg[1].trp";
connectAttr "IKXHairs1_M.rpt" "Hairs1_M_pointConstraint1.tg[1].trt";
connectAttr "IKXHairs1_M.pm" "Hairs1_M_pointConstraint1.tg[1].tpm";
connectAttr "Hairs1_M_pointConstraint1.w1" "Hairs1_M_pointConstraint1.tg[1].tw";
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1_M_pointConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1_M_pointConstraint1.w1";
connectAttr "Hairs1_M.ro" "Hairs1_M_orientConstraint1.cro";
connectAttr "Hairs1_M.pim" "Hairs1_M_orientConstraint1.cpim";
connectAttr "Hairs1_M.jo" "Hairs1_M_orientConstraint1.cjo";
connectAttr "Hairs1_M.is" "Hairs1_M_orientConstraint1.is";
connectAttr "FKXHairs1_M.r" "Hairs1_M_orientConstraint1.tg[0].tr";
connectAttr "FKXHairs1_M.ro" "Hairs1_M_orientConstraint1.tg[0].tro";
connectAttr "FKXHairs1_M.pm" "Hairs1_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXHairs1_M.jo" "Hairs1_M_orientConstraint1.tg[0].tjo";
connectAttr "Hairs1_M_orientConstraint1.w0" "Hairs1_M_orientConstraint1.tg[0].tw"
		;
connectAttr "IKXHairs1_M.r" "Hairs1_M_orientConstraint1.tg[1].tr";
connectAttr "IKXHairs1_M.ro" "Hairs1_M_orientConstraint1.tg[1].tro";
connectAttr "IKXHairs1_M.pm" "Hairs1_M_orientConstraint1.tg[1].tpm";
connectAttr "IKXHairs1_M.jo" "Hairs1_M_orientConstraint1.tg[1].tjo";
connectAttr "Hairs1_M_orientConstraint1.w1" "Hairs1_M_orientConstraint1.tg[1].tw"
		;
connectAttr "FKIKBlendSplineReverse_M.ox" "Hairs1_M_orientConstraint1.w0";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "Hairs1_M_orientConstraint1.w1";
connectAttr "Neck_M.pim" "Root_M_pointConstraint1.cpim";
connectAttr "Neck_M.rp" "Root_M_pointConstraint1.crp";
connectAttr "Neck_M.rpt" "Root_M_pointConstraint1.crt";
connectAttr "FKXRoot_M.t" "Root_M_pointConstraint1.tg[0].tt";
connectAttr "FKXRoot_M.rp" "Root_M_pointConstraint1.tg[0].trp";
connectAttr "FKXRoot_M.rpt" "Root_M_pointConstraint1.tg[0].trt";
connectAttr "FKXRoot_M.pm" "Root_M_pointConstraint1.tg[0].tpm";
connectAttr "Root_M_pointConstraint1.w0" "Root_M_pointConstraint1.tg[0].tw";
connectAttr "Neck_M.ro" "Root_M_orientConstraint1.cro";
connectAttr "Neck_M.pim" "Root_M_orientConstraint1.cpim";
connectAttr "Neck_M.jo" "Root_M_orientConstraint1.cjo";
connectAttr "Neck_M.is" "Root_M_orientConstraint1.is";
connectAttr "FKXRoot_M.r" "Root_M_orientConstraint1.tg[0].tr";
connectAttr "FKXRoot_M.ro" "Root_M_orientConstraint1.tg[0].tro";
connectAttr "FKXRoot_M.pm" "Root_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M.jo" "Root_M_orientConstraint1.tg[0].tjo";
connectAttr "Root_M_orientConstraint1.w0" "Root_M_orientConstraint1.tg[0].tw";
connectAttr "MainScaleMultiplyDivide.o" "DynamicSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DrivingSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "Root_M.s";
connectAttr "Root_M_pointConstraint1.ctx" "Neck_M.tx";
connectAttr "Root_M_pointConstraint1.cty" "Neck_M.ty";
connectAttr "Root_M_pointConstraint1.ctz" "Neck_M.tz";
connectAttr "Root_M_orientConstraint1.crx" "Neck_M.rx";
connectAttr "Root_M_orientConstraint1.cry" "Neck_M.ry";
connectAttr "Root_M_orientConstraint1.crz" "Neck_M.rz";
connectAttr "Main.jointVis" "Neck_M.v";
connectAttr "FKRoot_M.sx" "Neck_M.sx";
connectAttr "FKRoot_M.sy" "Neck_M.sy";
connectAttr "FKRoot_M.sz" "Neck_M.sz";
connectAttr "Hairs1_M_orientConstraint1.crz" "Hairs1_M.rz";
connectAttr "Hairs1_M_orientConstraint1.crx" "Hairs1_M.rx";
connectAttr "Hairs1_M_orientConstraint1.cry" "Hairs1_M.ry";
connectAttr "Neck_M.s" "Hairs1_M.is";
connectAttr "ScaleBlendHairs1_M.opr" "Hairs1_M.sx";
connectAttr "ScaleBlendHairs1_M.opg" "Hairs1_M.sy";
connectAttr "ScaleBlendHairs1_M.opb" "Hairs1_M.sz";
connectAttr "Hairs1_M_pointConstraint1.ctx" "Hairs1_M.tx";
connectAttr "Hairs1_M_pointConstraint1.cty" "Hairs1_M.ty";
connectAttr "Hairs1_M_pointConstraint1.ctz" "Hairs1_M.tz";
connectAttr "Hairs1_M.s" "Hairs1Part1_M.is";
connectAttr "ScaleBlendHairs1Part1_M.opr" "Hairs1Part1_M.sx";
connectAttr "ScaleBlendHairs1Part1_M.opg" "Hairs1Part1_M.sy";
connectAttr "ScaleBlendHairs1Part1_M.opb" "Hairs1Part1_M.sz";
connectAttr "Hairs1Part1_M_orientConstraint1.crx" "Hairs1Part1_M.rx";
connectAttr "Hairs1Part1_M_orientConstraint1.cry" "Hairs1Part1_M.ry";
connectAttr "Hairs1Part1_M_orientConstraint1.crz" "Hairs1Part1_M.rz";
connectAttr "Hairs1Part1_M_pointConstraint1.ctx" "Hairs1Part1_M.tx";
connectAttr "Hairs1Part1_M_pointConstraint1.cty" "Hairs1Part1_M.ty";
connectAttr "Hairs1Part1_M_pointConstraint1.ctz" "Hairs1Part1_M.tz";
connectAttr "Hairs1Part1_M.s" "Hairs1Part2_M.is";
connectAttr "ScaleBlendHairs1Part2_M.opr" "Hairs1Part2_M.sx";
connectAttr "ScaleBlendHairs1Part2_M.opg" "Hairs1Part2_M.sy";
connectAttr "ScaleBlendHairs1Part2_M.opb" "Hairs1Part2_M.sz";
connectAttr "Hairs1Part2_M_orientConstraint1.crx" "Hairs1Part2_M.rx";
connectAttr "Hairs1Part2_M_orientConstraint1.cry" "Hairs1Part2_M.ry";
connectAttr "Hairs1Part2_M_orientConstraint1.crz" "Hairs1Part2_M.rz";
connectAttr "Hairs1Part2_M_pointConstraint1.ctx" "Hairs1Part2_M.tx";
connectAttr "Hairs1Part2_M_pointConstraint1.cty" "Hairs1Part2_M.ty";
connectAttr "Hairs1Part2_M_pointConstraint1.ctz" "Hairs1Part2_M.tz";
connectAttr "Hairs1Part2_M.s" "Hairs2_M.is";
connectAttr "ScaleBlendHairs2_M.opr" "Hairs2_M.sx";
connectAttr "ScaleBlendHairs2_M.opg" "Hairs2_M.sy";
connectAttr "ScaleBlendHairs2_M.opb" "Hairs2_M.sz";
connectAttr "Hairs2_M_orientConstraint1.crx" "Hairs2_M.rx";
connectAttr "Hairs2_M_orientConstraint1.cry" "Hairs2_M.ry";
connectAttr "Hairs2_M_orientConstraint1.crz" "Hairs2_M.rz";
connectAttr "Hairs2_M_pointConstraint1.ctx" "Hairs2_M.tx";
connectAttr "Hairs2_M_pointConstraint1.cty" "Hairs2_M.ty";
connectAttr "Hairs2_M_pointConstraint1.ctz" "Hairs2_M.tz";
connectAttr "Hairs2_M.s" "Hairs2Part1_M.is";
connectAttr "ScaleBlendHairs2Part1_M.opr" "Hairs2Part1_M.sx";
connectAttr "ScaleBlendHairs2Part1_M.opg" "Hairs2Part1_M.sy";
connectAttr "ScaleBlendHairs2Part1_M.opb" "Hairs2Part1_M.sz";
connectAttr "Hairs2Part1_M_orientConstraint1.crx" "Hairs2Part1_M.rx";
connectAttr "Hairs2Part1_M_orientConstraint1.cry" "Hairs2Part1_M.ry";
connectAttr "Hairs2Part1_M_orientConstraint1.crz" "Hairs2Part1_M.rz";
connectAttr "Hairs2Part1_M_pointConstraint1.ctx" "Hairs2Part1_M.tx";
connectAttr "Hairs2Part1_M_pointConstraint1.cty" "Hairs2Part1_M.ty";
connectAttr "Hairs2Part1_M_pointConstraint1.ctz" "Hairs2Part1_M.tz";
connectAttr "Hairs2Part1_M.s" "Hairs2Part2_M.is";
connectAttr "ScaleBlendHairs2Part2_M.opr" "Hairs2Part2_M.sx";
connectAttr "ScaleBlendHairs2Part2_M.opg" "Hairs2Part2_M.sy";
connectAttr "ScaleBlendHairs2Part2_M.opb" "Hairs2Part2_M.sz";
connectAttr "Hairs2Part2_M_orientConstraint1.crx" "Hairs2Part2_M.rx";
connectAttr "Hairs2Part2_M_orientConstraint1.cry" "Hairs2Part2_M.ry";
connectAttr "Hairs2Part2_M_orientConstraint1.crz" "Hairs2Part2_M.rz";
connectAttr "Hairs2Part2_M_pointConstraint1.ctx" "Hairs2Part2_M.tx";
connectAttr "Hairs2Part2_M_pointConstraint1.cty" "Hairs2Part2_M.ty";
connectAttr "Hairs2Part2_M_pointConstraint1.ctz" "Hairs2Part2_M.tz";
connectAttr "Hairs2Part2_M.s" "Hairs3_M.is";
connectAttr "Hairs3_M_orientConstraint1.crx" "Hairs3_M.rx";
connectAttr "Hairs3_M_orientConstraint1.cry" "Hairs3_M.ry";
connectAttr "Hairs3_M_orientConstraint1.crz" "Hairs3_M.rz";
connectAttr "Hairs3_M_pointConstraint1.ctx" "Hairs3_M.tx";
connectAttr "Hairs3_M_pointConstraint1.cty" "Hairs3_M.ty";
connectAttr "Hairs3_M_pointConstraint1.ctz" "Hairs3_M.tz";
connectAttr "ScaleBlendHairs3_M.opr" "Hairs3_M.sx";
connectAttr "ScaleBlendHairs3_M.opg" "Hairs3_M.sy";
connectAttr "ScaleBlendHairs3_M.opb" "Hairs3_M.sz";
connectAttr "groupId1.id" "ScarfShape.iog.og[0].gid";
connectAttr "ScarfSG.mwc" "ScarfShape.iog.og[0].gco";
connectAttr "skinCluster1.og[0]" "ScarfShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ScarfSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "CorpsSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ScarfSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "CorpsSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Scarf_ncl1_2.oc" "ScarfSG.ss";
connectAttr "groupId1.msg" "ScarfSG.gn" -na;
connectAttr "ScarfShape.iog.og[0]" "ScarfSG.dsm" -na;
connectAttr "ScarfSG.msg" "materialInfo1.sg";
connectAttr "Scarf_ncl1_2.msg" "materialInfo1.m";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.oc" "CorpsSG.ss";
connectAttr "CorpsSG.msg" "materialInfo2.sg";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.msg" "materialInfo2.m";
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatFront" "RootFat.i2y";
connectAttr "Root.fatWidth" "RootFat.i2z";
connectAttr "Hairs1.fat" "Hairs1Fat.i1y";
connectAttr "Hairs1.fat" "Hairs1Fat.i1z";
connectAttr "Hairs1.fatFront" "Hairs1Fat.i2y";
connectAttr "Hairs1.fatWidth" "Hairs1Fat.i2z";
connectAttr "Hairs2.fat" "Hairs2Fat.i1y";
connectAttr "Hairs2.fat" "Hairs2Fat.i1z";
connectAttr "Hairs2.fatFront" "Hairs2Fat.i2y";
connectAttr "Hairs2.fatWidth" "Hairs2Fat.i2z";
connectAttr "Hairs3.fat" "Hairs3Fat.i1y";
connectAttr "Hairs3.fat" "Hairs3Fat.i1z";
connectAttr "Hairs3.fatFront" "Hairs3Fat.i2y";
connectAttr "Hairs3.fatWidth" "Hairs3Fat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraHairs2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKHairs2_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraHairs1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKHairs1_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpline4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpline4_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtracvSpline5_M.iog" "ControlSet.dsm" -na;
connectAttr "IKcvSpline5_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKExtraSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSpline1_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSpline2_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridExtraSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "IKhybridSpline3_M.iog" "ControlSet.dsm" -na;
connectAttr "FKIKSpline_M.iog" "ControlSet.dsm" -na;
connectAttr "Hairs2Part2_M.iog" "DeformSet.dsm" -na;
connectAttr "Hairs2Part1_M.iog" "DeformSet.dsm" -na;
connectAttr "Hairs2_M.iog" "DeformSet.dsm" -na;
connectAttr "Hairs1Part2_M.iog" "DeformSet.dsm" -na;
connectAttr "Hairs1Part1_M.iog" "DeformSet.dsm" -na;
connectAttr "Hairs1_M.iog" "DeformSet.dsm" -na;
connectAttr "Neck_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs2Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs2Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs2Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerHairs2Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBHairs2Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerAHairs2Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendSplineBlendTwo_M.msg" "AllSet.dnsm" -na;
connectAttr "volumepowSpline_M.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverSpline_M.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchySpline_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeSplineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs3MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs2Part2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs2Part1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs1Part2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs1Part1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleHairs1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs2Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs2Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHairs3_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineConditionUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineHybridVisPMA_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplinesetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineCondition_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineReverse_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSplineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "IKFixedOrientSpline1_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFixedOrientSpline1_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs3_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs2Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs2Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKAcPociHairs1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSpline2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "IKFollowEndSpline2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "IKSpline3_MSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineFlipAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineFlipUpAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "unitConversion1.msg" "AllSet.dnsm" -na;
connectAttr "IKSplineRamp_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo5_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide5_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo4_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide4_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo3_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide3_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo2_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide2_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo1_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide1_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineBlendTwo0_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineMultiplyDivide0_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineReverse_M.msg" "AllSet.dnsm" -na;
connectAttr "stretchySplineUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoAllMultiplySpline_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoNormalizeSpline_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoSpline_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSpline3SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSpline1SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "FKW2Hairs1_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW2Hairs1_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKW1Hairs1_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW1Hairs1_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKW0Hairs1_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW0Hairs1_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKW2Hairs2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW2Hairs2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKW1Hairs2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW1Hairs2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "FKW0Hairs2_MReverse.msg" "AllSet.dnsm" -na;
connectAttr "FKW0Hairs2_MUnitConversion.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrained_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs3_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2Part2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2Part1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1Part2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1Part1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKScalerHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKIKParentConstraintSpline_M_parentConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "FKIKParentConstraintSpline_M.iog" "AllSet.dsm" -na;
connectAttr "FKIKSpline_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKIKSpline_M.iog" "AllSet.dsm" -na;
connectAttr "IKFixedOrientHairs1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKNonFixedOrientHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1LocalOrient3_M.iog" "AllSet.dsm" -na;
connectAttr "IKFixedOrientHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs3_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs3_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs3FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs3FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs3FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2Part2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs2Part2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs2Part2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2Part1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs2Part1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs2Part1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1Part2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs1Part2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs1Part2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1Part1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs1Part1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKSpHairs1Part1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs3FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs3FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs3FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2Part2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs2Part2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs2Part2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2Part1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs2Part1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs2Part1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1Part2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part2FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs1Part2FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs1Part2FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1Part1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part1FollowOffset_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs1Part1FollowOffset_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKAcHairs1Part1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1FollowOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs3_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part2_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part1_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part2_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part1_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1_M_aimConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKAcPociXformHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineOffset3_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineOffset2_M.iog" "AllSet.dsm" -na;
connectAttr "IKAcSplineOffset_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpline2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSpline3_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSpline1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKFollowEndSpline_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetConstrainedSpline1_M_orientConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKOffsetConstrainedSpline1_M_pointConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKOffsetConstrainedSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MStatic.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MStaticOffset.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MFollow_parentConstraint1.iog" "AllSet.dsm" -na
		;
connectAttr "IKhybridFollowSpline1_MFollow.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MFollowOffset.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_orientConstraint1.iog" "AllSet.dsm"
		 -na;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset_pointConstraint1.iog" "AllSet.dsm"
		 -na;
connectAttr "IKhybridFollowSpline1_MFollowNoScale.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_MFollowNoScaleOffset.iog" "AllSet.dsm" -na;
connectAttr "IKhybridFollowSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerSpline2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKSpline2_M_poleVectorConstraint1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistIKSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "effector1.iog" "AllSet.dsm" -na;
connectAttr "UnTwistSpline2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistBalancerSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistEndSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "UnTwistSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentOffsetSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentSpline2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2LocalOrient3_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowParentSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowOffsetSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowSpline2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "TwistFollowSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3LocalStartOrient_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline5_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline4_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline3_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline2_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline1_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKhybridSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridExtraSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKhybridOffsetSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1LocalOrient2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1LocalOrient1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1LocalOrient0_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtraSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator6_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator6_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline5_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline5_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpline5_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline5_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator5_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator5_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline4_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpline4_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline4_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator4_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator4_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator3_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator3_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator2_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator2_M.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKcvSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKExtracvSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKOffsetcvSpline1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator1_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator0_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineLocator0_M.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintToRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineCurve_MShape.iog" "AllSet.dsm" -na;
connectAttr "IKSplineCurve_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineHandle_M.iog" "AllSet.dsm" -na;
connectAttr "IKSplineEffector_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake1Spline_M.iog" "AllSet.dsm" -na;
connectAttr "IKfake0Spline_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKSpSplineOffset_M.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs3_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Hairs3_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKXOffsetHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKParentConstraintHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "IKX2Hairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKXHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs1Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs1Part1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Hairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs1Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs1Part2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Hairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Hairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2Part1_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2Part1_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Hairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2Part2_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2Part2_M_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKPS2Hairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKPS1Hairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKParentConstraintToRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "AlignIKToHairs3_M.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKInbetweenHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKInbetweenHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part0_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1Part0_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1Part1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1Part2_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKInbetweenHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part2_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKInbetweenHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part1_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part0_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2Part0_M.iog" "AllSet.dsm" -na;
connectAttr "InbetweenHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2Part1_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "FKXHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2Part2_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetHairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "FKFollowRoot_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKFollowRoot.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Neck_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs1_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part1_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs1Part2_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs2_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part1_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs2Part2_M.iog" "AllSet.dsm" -na;
connectAttr "Hairs3_M.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain.iog" "AllSet.dsm" -na;
connectAttr "IKMessure.iog" "AllSet.dsm" -na;
connectAttr "IKCurve.iog" "AllSet.dsm" -na;
connectAttr "IKStatic.iog" "AllSet.dsm" -na;
connectAttr "IKFollow.iog" "AllSet.dsm" -na;
connectAttr "IKHandle.iog" "AllSet.dsm" -na;
connectAttr "IKJoints.iog" "AllSet.dsm" -na;
connectAttr "DrivingSystem.iog" "AllSet.dsm" -na;
connectAttr "DynamicSystem.iog" "AllSet.dsm" -na;
connectAttr "ConstraintSystem.iog" "AllSet.dsm" -na;
connectAttr "GlobalSystem.iog" "AllSet.dsm" -na;
connectAttr "TwistSystem.iog" "AllSet.dsm" -na;
connectAttr "RootSystem.iog" "AllSet.dsm" -na;
connectAttr "AimSystem.iog" "AllSet.dsm" -na;
connectAttr "BendSystem.iog" "AllSet.dsm" -na;
connectAttr "FKIKSystem.iog" "AllSet.dsm" -na;
connectAttr "IKSystem.iog" "AllSet.dsm" -na;
connectAttr "FKSystem.iog" "AllSet.dsm" -na;
connectAttr "MainShape.iog" "AllSet.dsm" -na;
connectAttr "Main.iog" "AllSet.dsm" -na;
connectAttr "MainSystem.iog" "AllSet.dsm" -na;
connectAttr "Root_M.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "Main.s" "MainScaleMultiplyDivide.i1";
connectAttr "FKHairs2_M.w0" "FKW0Hairs2_MUnitConversion.i";
connectAttr "FKW0Hairs2_MUnitConversion.o" "FKW0Hairs2_MReverse.ix";
connectAttr "FKHairs2_M.w1" "FKW1Hairs2_MUnitConversion.i";
connectAttr "FKW1Hairs2_MUnitConversion.o" "FKW1Hairs2_MReverse.ix";
connectAttr "FKHairs2_M.w2" "FKW2Hairs2_MUnitConversion.i";
connectAttr "FKW2Hairs2_MUnitConversion.o" "FKW2Hairs2_MReverse.ix";
connectAttr "FKHairs1_M.w0" "FKW0Hairs1_MUnitConversion.i";
connectAttr "FKW0Hairs1_MUnitConversion.o" "FKW0Hairs1_MReverse.ix";
connectAttr "FKHairs1_M.w1" "FKW1Hairs1_MUnitConversion.i";
connectAttr "FKW1Hairs1_MUnitConversion.o" "FKW1Hairs1_MReverse.ix";
connectAttr "FKHairs1_M.w2" "FKW2Hairs1_MUnitConversion.i";
connectAttr "FKW2Hairs1_MUnitConversion.o" "FKW2Hairs1_MReverse.ix";
connectAttr "IKSpline1_M.stiff" "IKStiffSpline1SetRange_M.vx";
connectAttr "IKSpline1_M.stiff" "IKStiffSpline1SetRange_M.vy";
connectAttr "IKSpline3_M.stiff" "IKStiffSpline3SetRange_M.vx";
connectAttr "IKSpline3_M.stiff" "IKStiffSpline3SetRange_M.vy";
connectAttr "IKSplineCurve_MShape.ws" "IKCurveInfoSpline_M.ic";
connectAttr "IKCurveInfoSpline_M.al" "IKCurveInfoNormalizeSpline_M.i1x";
connectAttr "IKCurveInfoNormalizeSpline_M.ox" "IKCurveInfoAllMultiplySpline_M.i1x"
		;
connectAttr "MainScaleMultiplyDivide.ox" "IKCurveInfoAllMultiplySpline_M.i2x";
connectAttr "IKSpline3_M.stretchy" "stretchySplineUnitConversion_M.i";
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineReverse_M.ix";
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide0_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo0_M.ab";
connectAttr "stretchySplineMultiplyDivide0_M.ox" "stretchySplineBlendTwo0_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide1_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo1_M.ab";
connectAttr "stretchySplineMultiplyDivide1_M.ox" "stretchySplineBlendTwo1_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide2_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo2_M.ab";
connectAttr "stretchySplineMultiplyDivide2_M.ox" "stretchySplineBlendTwo2_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide3_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo3_M.ab";
connectAttr "stretchySplineMultiplyDivide3_M.ox" "stretchySplineBlendTwo3_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide4_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo4_M.ab";
connectAttr "stretchySplineMultiplyDivide4_M.ox" "stretchySplineBlendTwo4_M.i[1]"
		;
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "stretchySplineMultiplyDivide5_M.i2x"
		;
connectAttr "stretchySplineUnitConversion_M.o" "stretchySplineBlendTwo5_M.ab";
connectAttr "stretchySplineMultiplyDivide5_M.ox" "stretchySplineBlendTwo5_M.i[1]"
		;
connectAttr "unitConversion1.o" "IKSplineRamp_M.cel[1].ecr";
connectAttr "TwistBalancerSpline2_M.rx" "unitConversion1.i";
connectAttr "IKSpline3_M.flipAxis" "IKSplineFlipUpAxisSetRange_M.vx";
connectAttr "IKSpline3_M.flipAxis" "IKSplineFlipAxisSetRange_M.vx";
connectAttr "IKSpline3_M.flipAxis" "IKSplineFlipAxisSetRange_M.vy";
connectAttr "IKSpline3_M.flipAxis" "IKSplineFlipAxisSetRange_M.vz";
connectAttr "IKSpline3_M.follow" "IKSpline3_MSetRangeFollow.vx";
connectAttr "IKSpline3_M.follow" "IKSpline3_MSetRangeFollow.vy";
connectAttr "IKSpline2_M.followEnd" "IKFollowEndSpline2_MUnitConversion.i";
connectAttr "IKFollowEndSpline2_MUnitConversion.o" "IKFollowEndSpline2_MReverse.ix"
		;
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs1_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs1Part1_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs1Part2_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs2_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs2Part1_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs2Part2_M.ic";
connectAttr "IKSplineCurve_MShape.ws" "IKAcPociHairs3_M.ic";
connectAttr "IKSpline1_M.FixedOrient" "IKFixedOrientSpline1_MUnitConversion.i";
connectAttr "IKFixedOrientSpline1_MUnitConversion.o" "IKFixedOrientSpline1_MReverse.ix"
		;
connectAttr "FKIKSpline_M.FKIKBlend" "FKIKBlendSplineUnitConversion_M.i";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "FKIKBlendSplineReverse_M.ix";
connectAttr "FKIKSpline_M.autoVis" "FKIKBlendSplineCondition_M.ft";
connectAttr "FKIKSpline_M.IKVis" "FKIKBlendSplineCondition_M.ctr";
connectAttr "FKIKSpline_M.FKVis" "FKIKBlendSplineCondition_M.ctg";
connectAttr "FKIKSpline_M.FKIKBlend" "FKIKBlendSplineCondition_M.cfr";
connectAttr "FKIKBlendSplinesetRange_M.ox" "FKIKBlendSplineCondition_M.cfg";
connectAttr "FKIKSpline_M.FKIKBlend" "FKIKBlendSplinesetRange_M.vx";
connectAttr "FKIKBlendSplineConditionUnitConversion_M.o" "FKIKBlendSplineHybridVisPMA_M.i1[0]"
		;
connectAttr "IKSpline3_M.ikHybridVis" "FKIKBlendSplineHybridVisPMA_M.i1[1]";
connectAttr "FKIKBlendSplineCondition_M.ocr" "FKIKBlendSplineConditionUnitConversion_M.i"
		;
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs3_M.b";
connectAttr "IKScaleHairs3MultiplyDivide_M.ox" "ScaleBlendHairs3_M.c1r";
connectAttr "IKScaleHairs3MultiplyDivide_M.oy" "ScaleBlendHairs3_M.c1g";
connectAttr "IKScaleHairs3MultiplyDivide_M.oz" "ScaleBlendHairs3_M.c1b";
connectAttr "FKHairs2Part2_M.sx" "ScaleBlendHairs2Part2_M.c2r";
connectAttr "FKHairs2Part2_M.sy" "ScaleBlendHairs2Part2_M.c2g";
connectAttr "FKHairs2Part2_M.sz" "ScaleBlendHairs2Part2_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs2Part2_M.b";
connectAttr "IKScaleHairs2Part2MultiplyDivide_M.ox" "ScaleBlendHairs2Part2_M.c1r"
		;
connectAttr "IKScaleHairs2Part2MultiplyDivide_M.oy" "ScaleBlendHairs2Part2_M.c1g"
		;
connectAttr "IKScaleHairs2Part2MultiplyDivide_M.oz" "ScaleBlendHairs2Part2_M.c1b"
		;
connectAttr "FKHairs2Part1_M.sx" "ScaleBlendHairs2Part1_M.c2r";
connectAttr "FKHairs2Part1_M.sy" "ScaleBlendHairs2Part1_M.c2g";
connectAttr "FKHairs2Part1_M.sz" "ScaleBlendHairs2Part1_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs2Part1_M.b";
connectAttr "IKScaleHairs2Part1MultiplyDivide_M.ox" "ScaleBlendHairs2Part1_M.c1r"
		;
connectAttr "IKScaleHairs2Part1MultiplyDivide_M.oy" "ScaleBlendHairs2Part1_M.c1g"
		;
connectAttr "IKScaleHairs2Part1MultiplyDivide_M.oz" "ScaleBlendHairs2Part1_M.c1b"
		;
connectAttr "FKHairs2_M.sx" "ScaleBlendHairs2_M.c2r";
connectAttr "FKHairs2_M.sy" "ScaleBlendHairs2_M.c2g";
connectAttr "FKHairs2_M.sz" "ScaleBlendHairs2_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs2_M.b";
connectAttr "IKScaleHairs2MultiplyDivide_M.ox" "ScaleBlendHairs2_M.c1r";
connectAttr "IKScaleHairs2MultiplyDivide_M.oy" "ScaleBlendHairs2_M.c1g";
connectAttr "IKScaleHairs2MultiplyDivide_M.oz" "ScaleBlendHairs2_M.c1b";
connectAttr "FKHairs1Part2_M.sx" "ScaleBlendHairs1Part2_M.c2r";
connectAttr "FKHairs1Part2_M.sy" "ScaleBlendHairs1Part2_M.c2g";
connectAttr "FKHairs1Part2_M.sz" "ScaleBlendHairs1Part2_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs1Part2_M.b";
connectAttr "IKScaleHairs1Part2MultiplyDivide_M.ox" "ScaleBlendHairs1Part2_M.c1r"
		;
connectAttr "IKScaleHairs1Part2MultiplyDivide_M.oy" "ScaleBlendHairs1Part2_M.c1g"
		;
connectAttr "IKScaleHairs1Part2MultiplyDivide_M.oz" "ScaleBlendHairs1Part2_M.c1b"
		;
connectAttr "FKHairs1Part1_M.sx" "ScaleBlendHairs1Part1_M.c2r";
connectAttr "FKHairs1Part1_M.sy" "ScaleBlendHairs1Part1_M.c2g";
connectAttr "FKHairs1Part1_M.sz" "ScaleBlendHairs1Part1_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs1Part1_M.b";
connectAttr "IKScaleHairs1Part1MultiplyDivide_M.ox" "ScaleBlendHairs1Part1_M.c1r"
		;
connectAttr "IKScaleHairs1Part1MultiplyDivide_M.oy" "ScaleBlendHairs1Part1_M.c1g"
		;
connectAttr "IKScaleHairs1Part1MultiplyDivide_M.oz" "ScaleBlendHairs1Part1_M.c1b"
		;
connectAttr "FKHairs1_M.sx" "ScaleBlendHairs1_M.c2r";
connectAttr "FKHairs1_M.sy" "ScaleBlendHairs1_M.c2g";
connectAttr "FKHairs1_M.sz" "ScaleBlendHairs1_M.c2b";
connectAttr "FKIKBlendSplineUnitConversion_M.o" "ScaleBlendHairs1_M.b";
connectAttr "IKScaleHairs1MultiplyDivide_M.ox" "ScaleBlendHairs1_M.c1r";
connectAttr "IKScaleHairs1MultiplyDivide_M.oy" "ScaleBlendHairs1_M.c1g";
connectAttr "IKScaleHairs1MultiplyDivide_M.oz" "ScaleBlendHairs1_M.c1b";
connectAttr "IKScalerHairs1_M.s" "IKScaleHairs1MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs1_M.o1" "IKScaleHairs1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs1_M.o1" "IKScaleHairs1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs1_M.o1" "IKScaleHairs1MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs1Part1_M.s" "IKScaleHairs1Part1MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs1Part1_M.o1" "IKScaleHairs1Part1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs1Part1_M.o1" "IKScaleHairs1Part1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs1Part1_M.o1" "IKScaleHairs1Part1MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs1Part2_M.s" "IKScaleHairs1Part2MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs1Part2_M.o1" "IKScaleHairs1Part2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs1Part2_M.o1" "IKScaleHairs1Part2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs1Part2_M.o1" "IKScaleHairs1Part2MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs2_M.s" "IKScaleHairs2MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs2_M.o1" "IKScaleHairs2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs2_M.o1" "IKScaleHairs2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs2_M.o1" "IKScaleHairs2MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs2Part1_M.s" "IKScaleHairs2Part1MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs2Part1_M.o1" "IKScaleHairs2Part1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs2Part1_M.o1" "IKScaleHairs2Part1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs2Part1_M.o1" "IKScaleHairs2Part1MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs2Part2_M.s" "IKScaleHairs2Part2MultiplyDivide_M.i1";
connectAttr "IKSquashDistributNormalizerBHairs2Part2_M.o1" "IKScaleHairs2Part2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBHairs2Part2_M.o1" "IKScaleHairs2Part2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBHairs2Part2_M.o1" "IKScaleHairs2Part2MultiplyDivide_M.i2z"
		;
connectAttr "IKScalerHairs3_M.s" "IKScaleHairs3MultiplyDivide_M.i1";
connectAttr "IKSpline3_M.volume" "volumeSplineUnitConversion_M.i";
connectAttr "volumeSplineUnitConversion_M.o" "multWithStretchySpline_M.i1x";
connectAttr "stretchySplineUnitConversion_M.o" "multWithStretchySpline_M.i2x";
connectAttr "IKCurveInfoAllMultiplySpline_M.ox" "volume1OverSpline_M.i2x";
connectAttr "volume1OverSpline_M.ox" "volumepowSpline_M.i1x";
connectAttr "multWithStretchySpline_M.ox" "volumeBlendSplineBlendTwo_M.ab";
connectAttr "volumepowSpline_M.ox" "volumeBlendSplineBlendTwo_M.i[1]";
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs2Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs2Part2_M.ox" "IKSquashDistributNormalizerBHairs2Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs2Part2_M.o1" "IKSquashDistributerHairs2Part2_M.i1x"
		;
connectAttr "IKScalerHairs2Part2_M.scalerWeight" "IKSquashDistributerHairs2Part2_M.i2x"
		;
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs2Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs2Part1_M.ox" "IKSquashDistributNormalizerBHairs2Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs2Part1_M.o1" "IKSquashDistributerHairs2Part1_M.i1x"
		;
connectAttr "IKScalerHairs2Part1_M.scalerWeight" "IKSquashDistributerHairs2Part1_M.i2x"
		;
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs2_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs2_M.ox" "IKSquashDistributNormalizerBHairs2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs2_M.o1" "IKSquashDistributerHairs2_M.i1x"
		;
connectAttr "IKScalerHairs2_M.scalerWeight" "IKSquashDistributerHairs2_M.i2x";
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs1Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs1Part2_M.ox" "IKSquashDistributNormalizerBHairs1Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs1Part2_M.o1" "IKSquashDistributerHairs1Part2_M.i1x"
		;
connectAttr "IKScalerHairs1Part2_M.scalerWeight" "IKSquashDistributerHairs1Part2_M.i2x"
		;
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs1Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs1Part1_M.ox" "IKSquashDistributNormalizerBHairs1Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs1Part1_M.o1" "IKSquashDistributerHairs1Part1_M.i1x"
		;
connectAttr "IKScalerHairs1Part1_M.scalerWeight" "IKSquashDistributerHairs1Part1_M.i2x"
		;
connectAttr "volumeBlendSplineBlendTwo_M.o" "IKSquashDistributNormalizerAHairs1_M.i1[0]"
		;
connectAttr "IKSquashDistributerHairs1_M.ox" "IKSquashDistributNormalizerBHairs1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerAHairs1_M.o1" "IKSquashDistributerHairs1_M.i1x"
		;
connectAttr "IKScalerHairs1_M.scalerWeight" "IKSquashDistributerHairs1_M.i2x";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "ScarfShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Neck_M.wm" "skinCluster1.ma[0]";
connectAttr "Hairs1_M.wm" "skinCluster1.ma[1]";
connectAttr "Hairs1Part1_M.wm" "skinCluster1.ma[2]";
connectAttr "Hairs1Part2_M.wm" "skinCluster1.ma[3]";
connectAttr "Hairs2_M.wm" "skinCluster1.ma[4]";
connectAttr "Hairs2Part1_M.wm" "skinCluster1.ma[5]";
connectAttr "Hairs2Part2_M.wm" "skinCluster1.ma[6]";
connectAttr "Hairs3_M.wm" "skinCluster1.ma[7]";
connectAttr "Neck_M.liw" "skinCluster1.lw[0]";
connectAttr "Hairs1_M.liw" "skinCluster1.lw[1]";
connectAttr "Hairs1Part1_M.liw" "skinCluster1.lw[2]";
connectAttr "Hairs1Part2_M.liw" "skinCluster1.lw[3]";
connectAttr "Hairs2_M.liw" "skinCluster1.lw[4]";
connectAttr "Hairs2Part1_M.liw" "skinCluster1.lw[5]";
connectAttr "Hairs2Part2_M.liw" "skinCluster1.lw[6]";
connectAttr "Hairs3_M.liw" "skinCluster1.lw[7]";
connectAttr "Neck_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "Hairs1_M.obcc" "skinCluster1.ifcl[1]";
connectAttr "Hairs1Part1_M.obcc" "skinCluster1.ifcl[2]";
connectAttr "Hairs1Part2_M.obcc" "skinCluster1.ifcl[3]";
connectAttr "Hairs2_M.obcc" "skinCluster1.ifcl[4]";
connectAttr "Hairs2Part1_M.obcc" "skinCluster1.ifcl[5]";
connectAttr "Hairs2Part2_M.obcc" "skinCluster1.ifcl[6]";
connectAttr "Hairs3_M.obcc" "skinCluster1.ifcl[7]";
connectAttr "Hairs1Part1_M.msg" "skinCluster1.ptt";
connectAttr "ScarfShapeOrig.w" "skinCluster1GroupParts.ig";
connectAttr "groupId1.id" "skinCluster1GroupParts.gi";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "Root_M.msg" "bindPose1.m[1]";
connectAttr "Neck_M.msg" "bindPose1.m[2]";
connectAttr "Hairs1_M.msg" "bindPose1.m[3]";
connectAttr "Hairs1Part1_M.msg" "bindPose1.m[4]";
connectAttr "Hairs1Part2_M.msg" "bindPose1.m[5]";
connectAttr "Hairs2_M.msg" "bindPose1.m[6]";
connectAttr "Hairs2Part1_M.msg" "bindPose1.m[7]";
connectAttr "Hairs2Part2_M.msg" "bindPose1.m[8]";
connectAttr "Hairs3_M.msg" "bindPose1.m[9]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "Neck_M.bps" "bindPose1.wm[2]";
connectAttr "Hairs1_M.bps" "bindPose1.wm[3]";
connectAttr "Hairs1Part1_M.bps" "bindPose1.wm[4]";
connectAttr "Hairs1Part2_M.bps" "bindPose1.wm[5]";
connectAttr "Hairs2_M.bps" "bindPose1.wm[6]";
connectAttr "Hairs2Part1_M.bps" "bindPose1.wm[7]";
connectAttr "Hairs2Part2_M.bps" "bindPose1.wm[8]";
connectAttr "Hairs3_M.bps" "bindPose1.wm[9]";
connectAttr "ScarfSG.pa" ":renderPartition.st" -na;
connectAttr "CorpsSG.pa" ":renderPartition.st" -na;
connectAttr "Scarf_ncl1_2.msg" ":defaultShaderList1.s" -na;
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of MC_Poils_Skin_SMOOTH_Finale.ma
