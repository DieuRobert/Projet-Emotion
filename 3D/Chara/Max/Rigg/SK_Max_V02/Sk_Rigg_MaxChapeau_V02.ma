//Maya ASCII 2023 scene
//Name: MC_Chapeau_Skin_Final.ma
//Last modified: Fri, Dec 01, 2023 09:48:15 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Education v2009 (Build: 22621)";
fileInfo "UUID" "49F79AA9-4E95-80CE-A068-9E84F4E8C428";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "BE9FCABD-43D2-A814-FF1D-A981B4C11840";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 306.78599371933069 -17.697882559690441 -12.993586548204107 ;
	setAttr ".r" -type "double3" 3.861647262835505 92.600000769578983 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BC89DF12-4C30-806F-AB38-0CB1AFC9FFC0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 312.4419960977134;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.23499488830566406 -8.2061312198638916 -0.092498779296875 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4C2E9328-44E1-AE8A-BAC3-BBA7723A43B7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.23499488830566406 1000.1000316266155 -0.092498779296875 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "35F86C75-493E-0545-8689-979C5CD71C17";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1008.3061628464794;
	setAttr ".ow" 167.97968762129329;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -0.23499488830566406 -8.2061312198638916 -0.092498779296875 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "C7BF8D91-4673-9E92-1773-8CA2BB4B7CDE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.23499488830566406 -8.2061312198638916 1000.1336908531127 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "31DAD18B-498B-5C0A-1BD4-1082BABCD754";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.2261896324096;
	setAttr ".ow" 85.901951036955182;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.23499488830566406 -8.2061312198638916 -0.092498779296875 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1DF71A2E-42DA-CA27-F713-D6B71264CB34";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1336627293789 0.58933166201986253 -0.26125782633375882 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DF94F0B7-4194-954B-27C2-0192651FF513";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.3686576176846;
	setAttr ".ow" 108.71866269306912;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.23499488830566406 -8.2061312198638916 -0.092498779296875 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "35103BE3-4D96-7AA3-6693-34A270A3756E";
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
	rename -uid "6EECC5DD-458C-F180-DA4C-108B5AD75104";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	addAttr -r false -s false -ci true -m -im false -sn "drivingSystem" -ln "drivingSystem" 
		-at "message";
	addAttr -ci true -m -sn "drivingSystem_Fingers_R" -ln "drivingSystem_Fingers_R" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -m -sn "drivingSystem_Fingers_L" -ln "drivingSystem_Fingers_L" 
		-dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "fitSkeletonTemplate" -ln "fitSkeletonTemplate" -dt "string";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visPoleVector" -ln "visPoleVector" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visJointOrient" -ln "visJointOrient" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -k true -sn "visJointAxis" -ln "visJointAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "objectsSkin" -ln "objectsSkin" -dt "string";
	addAttr -ci true -sn "objectsAll" -ln "objectsAll" -dt "string";
	addAttr -ci true -sn "objectsRightEye" -ln "objectsRightEye" -dt "string";
	addAttr -ci true -sn "objectsLeftEye" -ln "objectsLeftEye" -dt "string";
	addAttr -ci true -sn "gameEngine" -ln "gameEngine" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "zUpAxis" -ln "zUpAxis" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mirTrans" -ln "mirTrans" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "primaryAxis" -ln "primaryAxis" -min 0 -max 5 -en "X:Y:Z:-X:-Y:-Z" 
		-at "enum";
	addAttr -ci true -sn "secondaryAxis" -ln "secondaryAxis" -dv 1 -min 0 -max 5 -en 
		"X:Y:Z:-X:-Y:-Z" -at "enum";
	addAttr -ci true -sn "worldmatch" -ln "worldmatch" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useOffsetParentMatrix" -ln "useOffsetParentMatrix" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	setAttr -l on ".v" no;
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".visCylinders" yes;
	setAttr ".visGap" 1;
	setAttr ".fitSkeletonTemplate" -type "string" "biped";
	setAttr ".objectsSkin" -type "string" "";
	setAttr ".objectsAll" -type "string" "";
	setAttr ".objectsRightEye" -type "string" "";
	setAttr ".objectsLeftEye" -type "string" "";
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "AF8EF037-414D-263B-76DC-6E88D6D96BB3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		-3.3245825626631635 5.899006384856358e-32 -9.6338085217116898e-16
		-2.3508348746736734 -1.4394712022965408e-16 2.350834874673672
		-1.0017616090771558e-15 -2.0357196969332745e-16 3.3245825626631644
		2.3508348746736716 -1.4394712022965413e-16 2.3508348746736729
		3.3245825626631635 -1.0933890203714376e-31 1.7856397797841755e-15
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "2EBF6928-4DC8-E092-0CDD-D5A68CF44696";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.35 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 -25.335501082931994 90 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "23";
	setAttr ".radi" 0.69902018748466888;
	setAttr ".fatYabs" 0.34999999403953552;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Hat" -p "|Group|FitSkeleton|Root";
	rename -uid "AD3EA49D-43C2-0984-A037-5F9230A1F0AB";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 0.35 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 4.8026396791290349 -3.7785768172020337e-16 -7.8886090522101181e-31 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.69902018748466888;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "08842367-4C3B-27EC-D1AC-F28D6D3D1AF4";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "359C917C-4177-80C5-A0A7-F48B2B9E9F6F";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "3B528E6D-4E5D-7C60-8C16-5A8709C8E824";
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
	setAttr -l on ".height" 4.3407101752353165;
	setAttr -l on ".version" 6.2;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "40E5B198-49F4-66C5-AD71-CAB0B9F8451F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		-3.3245825626631635 5.899006384856358e-32 -9.6338085217116898e-16
		-2.3508348746736734 -1.4394712022965408e-16 2.350834874673672
		-1.0017616090771558e-15 -2.0357196969332745e-16 3.3245825626631644
		2.3508348746736716 -1.4394712022965413e-16 2.3508348746736729
		3.3245825626631635 -1.0933890203714376e-31 1.7856397797841755e-15
		2.3508348746736751 1.4394712022965405e-16 -2.3508348746736716
		-3.7929511823487981e-16 2.035719696933274e-16 -3.3245825626631635
		-2.3508348746736729 1.4394712022965413e-16 -2.3508348746736729
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "6EAC6F0D-4CD0-4C60-8943-49BDEB47AD22";
createNode transform -n "FKOffsetRoot_M" -p "FKSystem";
	rename -uid "BA9E8819-41F4-B230-C080-E2AE03D950E1";
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "566E9D5B-4D82-98B1-4D59-5DB266AE47A8";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "557F0EFB-4636-317B-8831-1E8BA35294A7";
	setAttr -k off -cb on ".v";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "6C3EC0BA-4967-2D26-BDF3-6BBEE1D9C832";
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
		-15.030515998075284 -31.573588024138704 -34.968669861555107
		1.6577921064075461e-15 5.6952214411153965e-15 -49.453165829181678
		15.030515998075284 31.573588024138704 -34.968669861555107
		21.256358994889361 44.651795180137228 -2.0076895192574388e-14
		15.030515998075284 31.573588024138704 34.968669861555092
		6.3903867404718089e-15 1.5636662791520747e-14 49.453165829181664
		-15.030515998075284 -31.573588024138704 34.968669861555092
		-21.256358994889361 -44.651795180137228 2.1898354617356909e-14
		-15.030515998075284 -31.573588024138704 -34.968669861555107
		1.6577921064075461e-15 5.6952214411153965e-15 -49.453165829181678
		15.030515998075284 31.573588024138704 -34.968669861555107
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "08087F87-43D7-09D7-E368-BCA8DE9B14BB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode parentConstraint -n "FKOffsetRoot_M_parentConstraint1" -p "FKOffsetRoot_M";
	rename -uid "AF761A33-482A-7651-A815-11BC4F707986";
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
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr ".lr" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr ".rst" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr -k on ".w0";
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "3AE4993E-444E-4CAA-C504-05904E7C8F7F";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "F898D9E6-4588-019E-F643-ABBFD4B7166F";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "40766999-4B42-1FBA-F4EC-BCAC7C4A13F6";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "9C9A71C2-4393-1BDF-CF68-DFA795F67BC3";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "A8DF7185-4D03-4079-D197-AFB615C86946";
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
	rename -uid "C4CE8C38-47F5-9855-3AD6-FCACB66B8BB9";
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
createNode transform -n "IKPoleVector" -p "IKSystem";
	rename -uid "EA69AE08-4F20-732D-31F6-58B7135D5DF4";
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "CAAB0976-4D41-749A-62FC-6989C7E2E8CE";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "6AD5EA91-4E87-8D2A-7F57-36832ED4C6E1";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "CE93E137-4A73-73AE-6067-3BAFB15ABD52";
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
	rename -uid "B6FA1CFE-407E-F259-D81E-B395D46B474F";
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
createNode transform -n "IKCurve" -p "IKSystem";
	rename -uid "15976700-4B7F-FAA0-5704-239D43E62574";
	setAttr ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "F816E73D-456F-9A36-E547-63B5C772BBD1";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "41555807-425B-2E8A-DAFE-849F48832C8A";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "6AAF255B-472C-F52B-9B2A-9F8FD0D05FB8";
	setAttr -l on ".it" no;
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "41116BF1-4ACD-03CB-81DD-48A9080A3C51";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "8BE25F45-40F2-B888-A6D7-419113374866";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "35C1083D-4BED-A151-DBBE-20906558F309";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "9B55353D-4E68-C702-E235-09A3E94406E7";
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
	rename -uid "B39E1BF0-4BDF-FFDE-06D9-6D966AE29AE2";
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
	rename -uid "67EC940A-4B69-F188-2754-1F9CB5B2E38B";
	setAttr ".t" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "92490F4E-4362-24CC-4866-B59B57BC965B";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "6CEAE63B-451E-F266-433A-76A6DBE94A40";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "749D36A5-4205-3720-ED7E-E8A7FD1D872F";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 39 0 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		-8.5798035343032067e-15 0 0
		-7.1681456365269014e-08 0 -0.59388075724427114
		-0.057687715530395506 0 -0.59388077044486998
		-0.057687715530395506 0 -0.67753159689903253
		-0.16099017333984372 0 -0.67753159689903253
		0 0 -0.83852130961418148
		0.16099017333984372 0 -0.67753159689903253
		0.057687715530395506 0 -0.67753159689903253
		0.057687715530395506 0 -0.59388077044486998
		7.1681454649308297e-08 0 -0.59388078364546892
		0 0 0
		0.5938805741452694 0 3.0114127163270716e-11
		0.59388065528869627 0 -0.057687992624938483
		0.67753194236755365 0 -0.057687992624938483
		0.67753194236755365 0 -0.16098974150419235
		0.83852119445800788 0 3.7237826582900156e-16
		0.67753194236755365 0 0.16098974150419235
		0.67753194236755365 0 0.057687992624938483
		0.59388065528869627 0 0.057687992624938483
		0.59388073643212291 0 -3.0114126744335001e-11
		0 0 0
		-2.2011891791962052e-07 0 0.59388075956209396
		0.057687715530395506 0 0.59388077044486998
		0.057687715530395506 0 0.67753159689903253
		0.16099017333984372 0 0.67753159689903253
		0 0 0.83852130961418148
		-0.16099017333984372 0 0.67753159689903253
		-0.057687715530395506 0 0.67753159689903253
		-0.057687715530395506 0 0.59388077044486998
		2.2011891963558127e-07 0 0.59388078132764599
		0 0 0
		-0.59388052582816597 0 -2.8324327779050142e-12
		-0.59388065528869627 0 0.057687992624938483
		-0.67753194236755365 0 0.057687992624938483
		-0.67753194236755365 0 0.16098974150419235
		-0.83852119445800788 0 0
		-0.67753194236755365 0 -0.16098974150419235
		-0.67753194236755365 0 -0.057687992624938483
		-0.59388065528869627 0 -0.057687992624938483
		-0.59388078474922645 0 2.8324327779050142e-12
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "2C5F1076-403E-3F64-2606-FAAADC1B24E4";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 1 ;
createNode pointConstraint -n "LegLockConstrained_pointConstraint1" -p "LegLockConstrained";
	rename -uid "EB3CA036-4BAD-88CC-AE67-7F9923FD68B1";
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
	setAttr ".rst" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "LegLockConstrained_orientConstraint1" -p "LegLockConstrained";
	rename -uid "7A093D4D-432A-B371-D354-F9AA784AC309";
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
	setAttr ".lr" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr ".rsrr" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr -k on ".w0";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "AD01C120-4F8F-526C-126B-FE9B3D35534F";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "40C51C8A-4578-41B2-04CD-FEBA9B10C47E";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "5D11C273-44D6-D4DE-EA90-B682D698FA58";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "C9C0FE37-4605-75F4-0999-A58EC4008C7D";
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
	rename -uid "D6C17916-422E-5940-9744-1E8A9A4C06BE";
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
	rename -uid "B36A9A0A-4FC6-649C-A2A5-A7BAE1D66624";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "A475138D-4626-ADAD-DBED-BC8AD93882F2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "664F0295-4EEF-60FA-1CBB-F6A147329B77";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr ".t" -type "double3" 3.6332360275586701e-15 0 4.1806852382047819e-16 ;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 89.999999999999986 -25.335500726084149 90.000000000000028 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.5761893552059258e-06 -2.263591377800166e-06 6.702724101709079e-16 ;
	setAttr ".rsrr" -type "double3" -3.5761893552059258e-06 -2.263591377800166e-06 6.702724101709079e-16 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "3811DCB0-4E35-9E68-C577-A7965BAD0215";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "1E3B361D-45D7-DE13-88FA-828713A314C8";
createNode transform -n "Root" -p "Group";
	rename -uid "1D15296C-439E-D710-0A30-BC868EB6E3B8";
createNode joint -n "HeadEnd_M" -p "|Group|Root";
	rename -uid "F39AA4CE-4A97-0CF0-80FE-5CBC3297FC8C";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.35 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000002504478161 -25.335500726084266 90.000002504478161 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 0.90381758325501638 0.42791795498560431 0
		 -1.6653345369377348e-16 -0.42791795498560425 0.90381758325501638 0 1.0000000000000002 2.7755575615628914e-16 2.2204460492503131e-16 0
		 3.6332360275586701e-15 0 4.1806852382047819e-16 1;
	setAttr ".liw" yes;
createNode joint -n "Hat_M" -p "HeadEnd_M";
	rename -uid "D2A176A4-49E1-AD84-96B5-64906EEA71E4";
	addAttr -ci true -sn "fat" -ln "fat" -dv 0.35 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 4.8026396791290358 -3.7785768172020337e-16 -7.8886090522101181e-31 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-16 0.90381758325501638 0.42791795498560431 0
		 -1.6653345369377348e-16 -0.42791795498560425 0.90381758325501638 0 1.0000000000000002 2.7755575615628914e-16 2.2204460492503131e-16 0
		 1.5004355672596976e-15 4.340710188035052 2.0551357500256158 1;
	setAttr ".liw" yes;
createNode transform -n "Geometry" -p "Group";
	rename -uid "4F4B1A04-4EDD-2BF2-8BF8-2FBD847A8944";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "800D94C7-48F4-8101-622C-DBAD32F42400";
createNode transform -n "Chapeau" -p "geo";
	rename -uid "2615F3C3-4FC0-1F97-7F0A-61AD30D4397F";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "ChapeauShape" -p "Chapeau";
	rename -uid "6D6182B8-455A-B224-9DC4-34AA1370DCF8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -105472.75 2.7955904363280101e-43 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "ChapeauShapeOrig" -p "Chapeau";
	rename -uid "B0115D9F-4AE9-3204-7DAE-8F8C987D1B90";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1147 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 -210945.5 5.5911809e-43 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[500:749]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[750:999]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".uvst[0].uvsp[1000:1146]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1146 ".vt";
	setAttr ".vt[0:165]"  1.515962 -1.86161804 8.80240822 -0.234956 -1.89314306 8.93139458
		 -0.23505899 -0.087357 6.43380308 0.95296401 -0.77416998 7.27952099 -0.23508599 0.73660302 5.69508314
		 1.47191298 0.047272 6.13492298 3.094604015 -1.71998596 8.33356094 1.39056897 2.040709972 -3.31617093
		 -0.234969 2.53906202 -2.43646097 -0.234954 2.09530592 -3.44662094 0.93856299 1.64729297 -4.67269897
		 -0.234946 1.091614008 -6.75774479 1.44600499 1.073212028 -6.52179813 3.064680099 1.056702018 -5.89055204
		 2.57670808 -2.5896759 5.17456818 1.48461401 -2.084656 4.802073 1.20673096 -2.71908593 5.85374308
		 2.46185088 -3.14373803 6.13312817 3.145504 -3.95205688 7.16112518 4.074775219 -3.62426805 6.25933218
		 2.060900927 -4.059157848 7.65644503 6.874331 -3.029144049 -4.24880409 5.81113815 -1.99345398 -1.98755503
		 8.26124001 -3.36985803 -1.27880204 8.71487427 -3.96589708 -3.60044193 8.8104744 -4.85006714 -6.78580618
		 7.14268398 -4.53846693 -8.82337284 5.61869717 -2.99168396 -5.99379301 10.10001945 -5.12811279 -4.66150808
		 4.44262409 -1.63429296 -3.45468998 3.89340496 -2.91784692 -7.54418993 3.085045099 -1.55975294 -4.65362978
		 4.1497159 -1.12187195 -1.37173295 5.61956215 -1.88996899 -0.34663901 2.79051995 -0.69488502 -2.22136593
		 2.75579095 -0.44722 -0.23711 4.18074322 -1.10395801 0.321659 1.33545399 -0.46342501 -2.73381209
		 1.29441297 -0.037888002 -0.590002 1.48261905 -1.45687902 -5.24712992 1.85771 -2.75109911 -8.33947277
		 -0.23500501 -2.5909121 -8.53736973 -0.234946 -1.31150806 -5.41919088 -0.235092 -0.27429199 -3.21210504
		 -0.234954 0.34819001 -0.74017203 -0.234969 0.108963 1.06595397 1.20155501 -0.223984 1.10582805
		 -0.23504201 -0.326141 2.56224704 1.061835051 -0.63899201 2.52777791 -0.235011 -1.073456049 3.74715805
		 0.844432 -1.268646 3.70872998 -0.234937 -1.80184901 4.78458786 0.63569701 -1.926422 4.74908686
		 -0.23507901 -2.465698 5.72716522 0.51624 -2.63998389 5.85714483 -0.23502401 -4.027283192 7.97477913
		 0.916987 -4.072144032 7.9122839 -0.23494001 -5.70124817 10.34837818 1.41710305 -5.7275238 10.25742817
		 -0.234961 -7.5608058 13.12619114 1.92901695 -7.52371216 13.044913292 -0.235044 -9.16404724 16.39809418
		 2.47780704 -9.22209167 16.20454788 -0.235084 -11.36776733 19.43490219 3.050276041 -11.43858337 19.14129257
		 -0.23501 -13.44754028 22.46980667 3.73779011 -13.46981812 22.12094498 -0.23498701 -14.5965271 25.83125114
		 4.54944611 -14.73980713 25.3075676 -0.235036 -15.97523499 28.96631241 5.29790688 -16.059005737 28.34121895
		 -0.235009 -17.72987366 31.59907532 5.86590576 -17.47999573 30.91482925 -0.23499499 -18.95483398 33.88800812
		 6.22505713 -18.50437927 32.74526215 -0.23498499 -19.74790955 35.41805267 6.44957781 -19.18447876 34.040672302
		 -0.234973 -20.30104065 36.79899597 6.65603018 -19.65412903 35.26499176 -0.23497701 -20.43893433 37.97489166
		 6.86488104 -19.84431458 36.37112427 -0.234946 -20.33531189 38.91989899 7.028197765 -19.82669067 37.26947784
		 -0.235011 -20.15759277 39.77514648 7.15169001 -19.67718506 38.061836243 -0.23495901 -19.86172485 40.58851624
		 7.23674393 -19.31838989 38.75244141 -0.234972 -19.18560791 41.140625 7.26411295 -18.68275452 39.18469238
		 -0.234973 -18.33856201 41.053512573 7.19245386 -17.94630432 39.12583923 -0.23495901 -17.72216797 40.4499054
		 7.035471916 -17.37322998 38.63694 -0.234945 -17.34288025 39.69134521 6.83680582 -16.99075317 37.95439148
		 -0.234974 -16.95845032 38.78128052 6.60875416 -16.63519287 37.17467499 -0.23503 -16.49324036 37.6677475
		 6.35763216 -16.22557068 36.2518158 -0.235002 -15.89599609 36.23755646 6.116292 -15.75567627 35.18165588
		 -0.23501 -15.13317871 34.43695068 5.8907938 -15.10250854 33.69644165 -0.235002 -14.2376709 32.36389923
		 5.66175318 -14.28299046 31.86144638 -0.234955 -13.027923584 29.66781998 5.2785058 -13.071563721 29.27446747
		 -0.235021 -11.56036377 26.63823128 4.73192406 -11.56492615 26.30339241 -0.235016 -9.93243408 23.52900505
		 4.14857578 -9.92074585 23.25972366 -0.23505799 -8.29789734 20.3900528 3.5890429 -8.26243591 20.16922379
		 -0.23494101 -6.67201185 17.27858734 3.054503918 -6.62611389 17.095748901 -0.235015 -5.03733778 14.29575062
		 2.566576 -5.015029907 14.13901234 -0.234999 -3.44091797 11.50836086 2.089910984 -3.44267297 11.38301277
		 4.45346403 -3.40539598 10.96673393 5.4153862 -4.94445801 13.62943363 6.42846823 -3.21354699 9.99254036
		 8.26554108 -4.91893005 12.60071754 6.35178518 -6.53070116 16.45666122 9.64825058 -6.50588989 15.19333363
		 10.25475121 -4.51663208 10.73973083 12.5089016 -6.206604 13.0049238205 11.081914902 -8.1257782 17.76695824
		 7.37235212 -8.17999268 19.37594795 14.53451157 -7.83097792 15.26366901 14.46133518 -5.56680298 10.30505371
		 17.061302185 -7.15567017 12.095000267 16.52449989 -9.38841248 17.50128937 12.67948246 -9.78547668 20.3076458
		 19.59989548 -8.65498447 13.92357159 18.89723015 -6.50242615 8.60057163 21.83233261 -7.91374207 9.8564682
		 22.13145256 -10.021652222 15.81622791 18.63097763 -10.83251953 19.74197197 24.75969887 -9.1900177 11.20601845
		 23.25855827 -7.227386 5.42717886 26.44652367 -8.41537476 6.11783314 27.56580544 -10.31646729 12.58754158
		 24.58684921 -11.22615147 17.69753456 29.51356697 -9.46632385 6.84951115 27.12324333 -7.59170485 0.76612097
		 30.29514503 -8.55715942 0.81499797 31.973423 -10.25827026 7.45658684 29.87916946 -11.17388916 13.72186947
		 32.89397812 -9.30444336 0.87643301 29.9194603 -7.5297699 -5.27693081 32.55376816 -8.22273254 -5.77694702
		 34.86019516 -9.83781433 0.88752002 33.82878876 -10.82090759 7.87459517 34.57078171 -8.72317505 -6.19112587
		 30.99681664 -7.0622859 -12.15720654 32.94102478 -7.50483704 -13.016437531 35.94887924 -9.053924561 -6.52149105
		 36.32053757 -10.21406555 0.856565 34.23711395 -7.78987122 -13.61084747 29.51633835 -6.37089491 -19.25383186
		 30.57491684 -6.65481615 -20.090719223 35.3900032 -8.052032471 -14.13342571 37.13522339 -9.34613037 -6.81361198
		 31.54416466 -6.93905592 -20.8442955 25.80429649 -5.89398193 -25.59945107;
	setAttr ".vt[166:331]" 26.66289902 -6.16484118 -26.51047134 32.40365219 -7.31143188 -21.47699547
		 36.41172409 -8.35568237 -14.58628845 27.40683365 -6.47349501 -27.28686714 20.99004745 -5.37065077 -31.23805046
		 21.59504128 -5.70187378 -32.17739868 27.99525452 -6.84735107 -27.90214729 33.073802948 -7.7706151 -21.95939255
		 22.040882111 -6.16075087 -32.91150665 14.9926033 -4.82099915 -36.0075149536 15.35011673 -5.33886719 -36.88516998
		 22.32454491 -6.72650099 -33.41270447 28.43064499 -7.38787794 -28.36216927 15.59072971 -6.051514149 -37.48699188
		 7.32360601 -5.032241821 -38.77709198 7.45629597 -5.68273878 -39.41114044 15.69375515 -6.88540602 -37.78879547
		 22.42959595 -7.44367981 -33.68344879 7.52199793 -6.46556091 -39.71562195 -0.234973 -5.44694519 -40.77332306
		 -0.23501 -6.27098083 -41.32562256 7.50368977 -7.295609 -39.67237854 15.6401968 -7.75016785 -37.73815918
		 -0.234997 -7.24533081 -41.18450928 -0.235 -7.99108887 -40.53482056 7.41867685 -8.06842041 -39.29786682
		 -0.23497801 -8.39932346 -39.62849426 7.27477121 -8.66271973 -38.57632446 -0.23506001 -8.56808472 -38.6031189
		 7.078800201 -9.0042724609 -37.60181427 -0.234991 -8.65592957 -37.44680023 6.88315487 -9.13348389 -36.47450256
		 -0.235039 -8.68800354 -36.11465454 6.67888021 -9.14096069 -35.20848083 -0.235075 -8.6452179 -34.59491348
		 6.45021677 -9.021972656 -33.7473259 -0.234983 -8.44941711 -32.6526947 6.1926899 -8.71014404 -32.0057830811
		 -0.235085 -7.60041809 -30.028081894 5.7571311 -7.9223628 -29.66615105 -0.235029 -6.084609985 -27.60182571
		 5.31740808 -6.53035021 -27.10358047 -0.234953 -4.78143311 -25.65144348 4.99742222 -5.32702589 -24.82959366
		 -0.23501 -4.805511 -23.20931816 4.36617994 -5.03192091 -22.18798447 -0.235027 -5.417068 -19.86422539
		 3.54530311 -5.43522596 -19.02192688 -0.234956 -5.24937391 -15.74367046 2.90890098 -5.23124695 -15.25177383
		 -0.235073 -4.010361195 -12.0077848434 2.35189509 -4.13774109 -11.66274261 4.891047 -4.34219408 -10.55767536
		 5.97592688 -5.37075806 -13.77155304 8.69911575 -5.59751892 -11.71601009 10.41217709 -5.89771986 -14.64432907
		 7.15501881 -5.61257887 -17.051198959 10.90575886 -5.98890686 -9.35070705 13.12609005 -6.3483119 -11.87704754
		 12.56811905 -6.48750305 -6.71117496 15.18309307 -6.93237305 -8.72484875 13.73197269 -6.9389801 -3.90974808
		 16.61288071 -7.61181593 -5.37535 11.032605171 -5.43572998 -2.47030997 11.57494736 -5.72627306 -0.208308
		 14.35509205 -7.3518219 -1.0016770363 8.62995911 -3.66552711 0.31653899 8.81504631 -3.97647095 1.88047302
		 11.61026573 -6.00013685226 2.076129913 5.9289341 -2.15210009 1.080518961 5.94369316 -2.56970191 2.49666095
		 8.55381393 -4.29623413 3.57887506 4.079308033 -1.43862903 1.76853895 3.81089592 -1.77916002 3.095555067
		 5.61317301 -2.9138639 3.897259 2.61960196 -0.70962501 1.34660006 2.38239193 -1.05528295 2.7049799
		 1.95788598 -1.55694604 3.81956911 3.25507689 -2.21836901 4.20219088 4.9237752 -3.27105689 5.1762619
		 6.97566605 -4.8720088 6.77882195 7.91744614 -4.58032179 5.26870203 5.97791719 -5.26742601 8.16535091
		 8.12184906 -7.22595215 10.39175129 9.36510277 -6.82853699 8.4978857 4.79264212 -5.62951708 9.33359337
		 6.46379614 -7.52442884 11.96387672 3.18304396 -5.74874878 9.9892807 4.18187714 -7.49313402 12.71610928
		 5.23402405 -9.29696655 15.62575436 8.05856514 -9.53913879 14.42400455 6.30060101 -11.57382202 18.24461937
		 9.52387238 -11.63424683 16.71722221 7.682302 -13.44856262 21.031433105 11.43377209 -13.19244385 19.19034767
		 9.25135899 -14.70654297 23.93813324 13.63691807 -14.28126526 21.75691223 10.73511219 -15.7177887 26.82705688
		 15.74730206 -15.086639404 24.40217781 11.95423603 -17.022033691 29.36182404 17.49072075 -16.36830139 26.71762848
		 12.73713684 -18.20918274 31.16501999 18.59482193 -17.68634033 28.3318634 13.18399906 -18.89912415 32.39979935
		 19.25305557 -18.45906067 29.43203354 13.65079975 -19.39624023 33.56486511 19.86227989 -18.93786621 30.4466095
		 14.048220634 -19.65382385 34.63009644 20.46038628 -19.18006897 31.36898041 14.41878223 -19.71928406 35.53073883
		 20.99219704 -19.18113708 32.15444183 14.71818542 -19.56401062 36.33030701 21.40197945 -18.96948242 32.8316803
		 14.94932365 -19.14013672 36.98729706 21.72938538 -18.55406189 33.39080811 15.078328133 -18.48368835 37.40433502
		 21.91311073 -17.93113708 33.77368164 14.96808434 -17.76385498 37.28329468 21.78863525 -17.23045349 33.70297241
		 14.69960499 -17.28456116 36.6876297 21.39575768 -16.77363586 33.22089386 14.36771584 -16.92915344 35.97668457
		 20.95874596 -16.43223572 32.6284256 14.024098396 -16.5632782 35.19351196 20.49434662 -16.094177246 31.94543839
		 13.64915657 -16.15837097 34.30278015 19.98818016 -15.71801758 31.16075897 13.22528267 -15.68710327 33.26618958
		 19.42463684 -15.28933716 30.2630043 12.64151955 -15.055573463 31.91009903 18.67201996 -14.71134853 29.082019806
		 11.94167614 -14.27406311 30.28055191 17.61873436 -13.91213989 27.50227928 10.89649105 -13.047134399 27.83833313
		 16.13215828 -12.76191711 25.31994247 9.71359253 -11.54988098 25.078821182 14.41883659 -11.35481262 22.83485413
		 8.51132202 -9.88354492 22.26150894 20.72922325 -12.12924194 21.96788216 22.56865692 -13.19941711 23.91373634
		 26.65026474 -12.15428162 19.24201393 28.23225021 -12.82214355 20.40665627 23.83679962 -13.90463257 25.24677849
		 31.70354271 -11.79626465 14.57337475 33.19513702 -12.26478577 15.21254253 29.50798225 -13.33061218 21.32629967
		 35.28475571 -11.23956299 8.14613533 36.50550842 -11.582901 8.34912205 34.40711975 -12.62734985 15.69931698
		 37.5462265 -10.52912903 0.81910199 38.618927 -10.82496643 0.78295702 37.56965637 -11.90167236 8.54527473
		 38.16320419 -9.63491821 -7.044866085 38.97909546 -10.007598877 -7.24517393 39.51456833 -11.16278076 0.74171001
		 37.20959854 -8.7900238 -14.9683609 37.7468338 -9.41000366 -15.27027702 39.57456589 -10.54489136 -7.43550301
		 33.53313446 -8.36183167 -22.302948 33.7350235 -9.099791527 -22.48597145 37.97288513 -10.19645691 -15.46386242
		 28.63583946 -8.11460876 -28.61945915 28.52915192 -8.8881073 -28.57671356 33.61817169 -9.86200047 -22.45329857
		 22.37539291 -8.20384216 -33.64379501 22.15785217 -8.85302734 -33.299263;
	setAttr ".vt[332:497]" 28.14323997 -9.48741055 -28.21288872 15.47089863 -8.50294495 -37.36183167
		 15.1994772 -9.065032959 -36.71090698 21.81764412 -9.30334473 -32.70981598 14.86296654 -9.39123535 -35.79651642
		 21.3557148 -9.54109192 -31.91296959 14.42071724 -9.52246094 -34.69714737 20.79232025 -9.65576172 -30.92167854
		 13.93596935 -9.51853943 -33.44756317 20.1639843 -9.65182495 -29.78877831 13.38753033 -9.37165833 -32.070716858
		 19.4805851 -9.54441833 -28.59547424 12.7311182 -9.067672729 -30.44128036 18.61821556 -9.30735779 -27.15171623
		 11.75488186 -8.40020847 -28.099796295 17.24626732 -8.83401489 -25.03509903 10.7071228 -7.19084215 -25.42533493
		 15.54061031 -7.96275282 -22.52716446 9.72159576 -5.92649794 -22.76983452 13.91469193 -6.73232985 -19.99204063
		 8.46457291 -5.37095594 -20.011415482 12.20387363 -5.90188599 -17.37694359 15.39804554 -6.66078186 -14.24608803
		 17.54335213 -7.63256788 -16.53095818 17.84571648 -7.53556824 -10.65294743 20.47939873 -8.45727539 -12.49824715
		 19.51067162 -8.38623047 -6.77037191 22.49115181 -9.24006653 -8.047909737 20.45929337 -9.054656982 -2.57032299
		 23.61557007 -9.83166504 -3.26470494 17.38922501 -8.24789429 -1.81803501 17.47802734 -8.784729 1.80678201
		 20.66447639 -9.52661133 1.721084 14.3970871 -7.75031996 1.94558203 13.93592262 -8.12744141 4.82149696
		 16.96634865 -9.33499146 5.31728983 11.22285748 -6.25956678 4.35870314 10.42820454 -6.51896715 6.5308342
		 13.035391808 -8.50244141 7.52398205 11.77823544 -8.93536377 10.0036172867 14.41908264 -10.60185242 11.62162971
		 15.92311954 -9.94665527 8.60251331 10.24424934 -9.34848022 12.40031242 12.41207695 -11.24664307 14.43771553
		 14.73896694 -12.60696411 16.57756042 17.20531273 -11.78134155 13.38886547 17.32849121 -13.56484985 18.85114288
		 20.10313797 -12.5809021 15.24691868 20.011583328 -14.33778381 21.17073631 23.1437645 -13.23487854 17.012903214
		 22.26565742 -15.60287476 23.11962891 25.97007942 -14.53114319 18.42010498 23.74272346 -17.16687012 24.54555893
		 27.75265312 -16.26800537 19.50595474 24.60678482 -17.9914856 25.53584862 28.84807396 -17.16287231 20.30192757
		 25.4563446 -18.47135925 26.43535614 29.91610527 -17.62672424 21.050771713 26.23592949 -18.71614075 27.24640465
		 30.89208794 -17.86064148 21.72583199 26.92041397 -18.74557495 27.96481323 31.70175934 -17.85472107 22.33603668
		 27.50311089 -18.5501709 28.59415436 32.37671661 -17.62174988 22.84937477 27.93293381 -18.086013794 29.11092377
		 32.90143967 -17.14393616 23.29065514 28.22700691 -17.44909668 29.52069092 33.18250656 -16.42420959 23.58758354
		 28.10681915 -16.67619324 29.5127449 33.14566803 -15.60829163 23.70078087 27.7128582 -16.041427612 29.20140457
		 32.75127792 -14.90286255 23.55706787 27.12858963 -15.62722778 28.6824646 32.15623093 -14.41247559 23.18179893
		 26.4493866 -15.2840271 28.015485764 31.42672157 -14.060745239 22.67146301 25.68558884 -14.89768982 27.22422028
		 30.52183342 -13.71243286 22.030656815 24.86498833 -14.46463013 26.34404945 35.45361328 -12.96218872 16.12525177
		 36.31600189 -13.32904053 16.46022034 38.43302536 -12.24411011 8.69922161 39.10505676 -12.76698303 8.78172207
		 36.98192596 -13.87123108 16.6804657 40.21251297 -11.66766357 0.68400401 40.56843185 -12.41452026 0.58832502
		 39.46271515 -13.51246643 8.75668716 39.83892441 -11.29034424 -7.58775187 39.66717911 -12.075164795 -7.64563608
		 40.43731689 -13.21264553 0.476583 37.7480545 -10.98579407 -15.47136784 37.24998093 -11.62181091 -15.33919811
		 39.14230728 -12.69129944 -7.60032082 33.19773102 -10.47715759 -22.19446373 32.59174728 -10.87454224 -21.7845211
		 36.54599762 -12.027648926 -15.072331429 27.6242981 -9.85314941 -27.66801453 27.02807045 -10.044677734 -26.99297333
		 31.86266518 -11.086700439 -21.24967003 26.34786224 -10.13072205 -26.18918419 31.0099811554 -11.15518188 -20.58707047
		 25.56622124 -10.094955444 -25.22866058 30.057556152 -11.043075562 -19.77308273 24.72784615 -9.92526245 -24.17533302
		 29.070983887 -10.67208862 -18.84847832 23.59025002 -9.64427185 -22.8011322 27.77399635 -10.18440247 -17.73055458
		 21.88264656 -9.23519897 -20.9478569 25.76799774 -9.64146423 -16.19242287 19.72837257 -8.60534668 -18.78957558
		 23.1348896 -9.23953247 -14.34502602 25.56274796 -9.92500305 -9.36552143 28.52171516 -10.24958801 -10.74860954
		 26.84951782 -10.58766174 -4.048989773 30.053308487 -11.035568237 -4.92503405 27.25686455 -11.010131836 1.42573702
		 30.54335213 -11.81556702 1.13594401 23.93671417 -10.18382263 1.61771905 23.48615646 -10.58535767 6.42602205
		 26.80607986 -11.48350525 6.851017 20.16650581 -10.093017578 5.87317181 18.99672699 -10.88163757 9.77312469
		 22.16771126 -11.45890808 10.98492146 25.41578674 -12.17947388 12.078370094 28.49574852 -13.5802002 12.98932362
		 30.010477066 -12.659729 7.16814184 30.77723694 -15.29270935 13.64399147 32.41971588 -14.048950195 7.2995882
		 32.1084137 -16.055557251 14.093804359 33.84719467 -14.79801941 7.37556982 33.3494606 -16.53088379 14.56857395
		 35.14974976 -15.23608398 7.55279922 34.50395584 -16.79631042 15.062064171 36.34863663 -15.46482754 7.77548218
		 35.52554703 -16.84762573 15.52336979 37.38911057 -15.52775574 8.00060653687 36.35381699 -16.662323 15.96230984
		 38.26236343 -15.38435364 8.22642422 36.97924423 -16.17205811 16.32556534 38.97977829 -14.9911499 8.44646072
		 37.35959244 -15.4604187 16.60328865 39.42248154 -14.32302856 8.63230228 37.36728668 -14.62815857 16.73086739
		 39.91555023 -13.84083557 0.38976499 39.14852524 -14.20625305 0.34173 38.41054916 -13.078948975 -7.47488594
		 37.53199387 -13.24624634 -7.28554296 38.23594284 -14.33792114 0.33132201 35.70656204 -12.22198486 -14.69783115
		 34.72360992 -12.24423218 -14.22258759 36.51161575 -13.24465942 -7.048213005 33.60173035 -12.067016602 -13.61859131
		 35.34189606 -13.046951294 -6.73163891 32.42422867 -11.61875916 -12.91137791 34.095508575 -12.6020813 -6.30835009
		 30.81093597 -10.91633606 -11.96899033 32.49198532 -11.91020203 -5.73851299 33.054702759 -12.91235447 0.78119701
		 34.63516235 -13.63812256 0.54366797 35.95404816 -14.11045837 0.41028699 37.18289185 -14.30587769 0.34801301
		 -0.23496801 -4.89825392 -39.8682785 7.073728085 -4.60911608 -37.80231476 -0.234963 -4.60992384 -38.78668976
		 6.81346989 -4.37445116 -36.61092377 -0.234963 -4.43182421 -37.57559967;
	setAttr ".vt[498:663]" 14.49684715 -4.49980211 -34.92510986 13.91540146 -4.33244324 -33.69126892
		 6.53464603 -4.24049377 -35.33278656 20.27467537 -5.11494398 -30.17483139 19.43839836 -4.8672328 -28.96041489
		 13.25927353 -4.20929003 -32.29959869 24.82601929 -5.61648607 -24.54417419 23.54308701 -5.26715088 -23.18181229
		 18.26181412 -4.53471422 -27.12902069 27.8562088 -5.97576904 -18.073003769 25.55553627 -5.38526917 -16.49897194
		 21.67558861 -4.74082899 -21.15301132 28.37664223 -6.4082489 -11.098127365 25.34926987 -5.60636902 -9.83866405
		 22.88436699 -4.64565992 -14.62054253 26.76230621 -6.64771986 -4.64130306 23.52951813 -5.6656189 -3.93835497
		 22.29110909 -4.72338915 -8.47723961 23.84417343 -6.50164795 0.77968401 20.57579613 -5.28686523 0.84283799
		 20.31380463 -4.57858276 -3.17023206 20.077177048 -5.9103241 4.81164789 16.89784813 -4.50729418 4.26482916
		 17.32025146 -3.98783898 0.97799897 15.93717098 -5.015563965 7.40704489 12.90465832 -3.47596693 6.2448988
		 13.68872356 -3.049698114 3.74997902 11.72578812 -3.98161292 8.5442009 8.89302444 -2.30900598 6.87358809
		 9.79815769 -1.93174696 5.13032198 7.79047585 -2.75895691 8.49386501 5.23043203 -0.97569299 6.37810898
		 6.025601864 -0.63163799 5.27813387 4.29665422 -1.37481701 7.45064402 2.12867093 0.459656 5.49095297
		 2.7094171 0.85487401 4.79980898 -0.234955 1.57537794 4.94210005 -0.235019 2.3843689 4.221416
		 -0.234979 2.97645593 3.6992619 3.16068006 1.22074902 4.07524395 -0.23492301 3.35725403 3.30596399
		 3.52449012 1.48457301 3.37173796 -0.23509 3.66416907 2.8986249 3.77143598 1.70066798 2.65739989
		 -0.234937 3.89790297 2.42947888 3.89618301 1.88253796 1.92650199 -0.23499 4.026671886 1.90489495
		 3.89112806 2.037918091 1.17829096 -0.23496599 4.010651112 1.27123106 3.72512603 2.16632104 0.333763
		 -0.235029 3.80508399 0.43726799 3.35033894 2.26533508 -0.61306602 -0.235036 3.41831994 -0.45395401
		 2.83741808 2.24580407 -1.57405806 -0.23503999 2.96666002 -1.45740795 2.16179204 2.16545105 -2.48376489
		 4.41061783 1.050873041 -4.8405571 5.47546911 0.99681097 -3.66412711 6.30726099 0.14298999 -7.59731913
		 7.91324806 0.028214 -6.11230707 4.36097717 0.19702099 -8.839571 2.12779689 0.22579999 -9.68164158
		 5.6137619 -0.61634803 -11.85878086 8.1309948 -0.692307 -10.41660786 2.77875805 -0.58123797 -12.83518314
		 -0.234965 0.27008101 -9.98222733 -0.23494001 -0.53910798 -13.18065357 3.39830208 -1.36227405 -15.99371624
		 6.83914614 -1.39160204 -14.9020462 -0.234974 -1.332214 -16.38355827 -0.235047 -2.038909912 -19.60105896
		 3.99547601 -2.061005116 -19.18981743 -0.23492999 -2.64144897 -22.85081482 4.55914879 -2.66264296 -22.41558075
		 -0.23507901 -3.14822412 -26.13145065 5.078343868 -3.17446899 -25.66510391 -0.23503999 -3.58744788 -29.38965988
		 5.5637598 -3.60949707 -28.88732529 -0.23503999 -3.92204309 -32.24503708 5.98829412 -3.92259192 -31.7659893
		 -0.234973 -4.13562012 -34.47462463 6.29258299 -4.11140394 -33.86841583 -0.23494101 -4.29728699 -36.25307465
		 12.35941315 -4.013045788 -30.14248466 11.34688282 -3.67744398 -27.31590271 16.8876667 -4.10205078 -24.77044487
		 15.2240324 -3.53178406 -21.93013 10.29717636 -3.22743201 -24.23833466 19.46101952 -4.06372118 -18.71556664
		 17.17339897 -3.32206702 -16.19204521 13.48227406 -2.90678406 -19.03241539 20.14850807 -3.86343408 -12.62322998
		 17.42854118 -3.013259888 -10.57806587 14.87321854 -2.53504896 -13.64595413 19.25542641 -3.76011705 -7.038043022
		 16.2317028 -2.71145606 -5.55851889 14.71154308 -2.099014044 -8.51465034 17.10401917 -3.39373803 -2.3537519
		 13.87749004 -2.13835096 -1.50667095 13.1913023 -1.60888696 -4.067440987 14.039987564 -2.62042189 1.14022398
		 10.71011353 -1.23608398 1.31955004 10.59548378 -0.88304102 -0.648332 10.43051815 -1.58415198 3.26459289
		 7.1197052 -0.080902003 2.79743195 7.30351686 0.166641 1.52656698 6.67038298 -0.34643599 4.073246956
		 7.24879122 0.411331 0.242383 6.9305172 0.64502001 -1.073551059 10.094412804 -0.518112 -2.581285
		 6.3237052 0.85163897 -2.39951611 9.18566132 -0.199417 -4.42018414 11.96696472 -1.15605199 -6.46444511
		 10.26814175 -0.852997 -8.59561157 12.5832119 -1.70550501 -11.10988903 9.93281746 -1.48771703 -13.25917816
		 11.71414375 -2.22825599 -16.13890266 8.035085678 -2.086853027 -17.99328232 9.19668484 -2.70005798 -21.10861969
		 -1.98594999 -1.86167896 8.80247021 -1.42294097 -0.77406299 7.27946711 -1.94186795 0.047072999 6.13491106
		 -3.5645349 -1.71975696 8.33357716 -1.86047804 2.040436029 -3.31617999 -1.40856695 1.64753699 -4.6726861
		 -1.91604602 1.073395014 -6.52178907 -3.53467798 1.056671023 -5.89056206 -1.67678499 -2.71884203 5.85374594
		 -1.95464897 -2.085098028 4.80209303 -3.046802998 -2.58955407 5.17458582 -2.93195391 -3.14369202 6.13315296
		 -4.54484987 -3.62483191 6.25933218 -3.61549592 -3.95208693 7.16104221 -2.53095698 -4.059143066 7.65641785
		 -8.73119259 -3.36984301 -1.27880204 -6.28119612 -1.99336195 -1.98748505 -7.34438992 -3.030548096 -4.24881697
		 -9.18481255 -3.96614099 -3.60040689 -6.088775158 -2.99182105 -5.99379396 -7.61269808 -4.53846693 -8.82339001
		 -9.28059864 -4.85055494 -6.78580093 -10.56998158 -5.12788391 -4.66149092 -4.91265297 -1.63423204 -3.45472407
		 -3.55502105 -1.55960095 -4.65362978 -4.36345005 -2.91770911 -7.54420185 -6.089606762 -1.89021301 -0.34663999
		 -4.61978722 -1.12115502 -1.37170303 -3.26050401 -0.69474798 -2.22136903 -4.65069818 -1.10371399 0.32166201
		 -3.22580099 -0.44725001 -0.23711 -1.76445901 -0.037551999 -0.58996898 -1.80554903 -0.46363801 -2.73384404
		 -1.952582 -1.45687902 -5.247159 -2.32775211 -2.75137305 -8.33946419 -1.67152596 -0.22395299 1.10583305
		 -1.53182399 -0.63896197 2.52780604 -1.31443501 -1.26852405 3.70875597 -1.10572898 -1.92613196 4.74907398
		 -0.98643702 -2.64005995 5.85714197 -1.386971 -4.072219849 7.91217279 -1.88719904 -5.72773695 10.25740242
		 -2.39898396 -7.52401686 13.044887543 -2.94780707 -9.22221375 16.20459366 -3.52025604 -11.43864441 19.14129257
		 -4.20778322 -13.46994019 22.12085152 -5.0195508 -14.74006653 25.30756187;
	setAttr ".vt[664:829]" -5.76792622 -16.059158325 28.34114456 -6.33588886 -17.48023987 30.91490555
		 -6.69500685 -18.50418091 32.74521637 -6.91958809 -19.18463135 34.040748596 -7.12603998 -19.65379333 35.26499176
		 -7.33487892 -19.84436035 36.37107086 -7.49827385 -19.82701111 37.26952362 -7.62165403 -19.67715454 38.061813354
		 -7.70670795 -19.31858826 38.75244141 -7.73416901 -18.68283081 39.18465424 -7.66250801 -17.94619751 39.1257782
		 -7.50552702 -17.37321472 38.63695526 -7.30673981 -16.99107361 37.95453644 -7.078948975 -16.63520813 37.17470551
		 -6.827631 -16.22570801 36.25196838 -6.58636189 -15.75567627 35.18172455 -6.36073017 -15.10246277 33.69637299
		 -6.13182592 -14.28323364 31.86156464 -5.74857283 -13.071563721 29.27441788 -5.20191097 -11.56472778 26.30346298
		 -4.61862278 -9.92082214 23.25976753 -4.059124947 -8.26254272 20.16914368 -3.52447391 -6.62620497 17.095773697
		 -3.036638021 -5.015090942 14.13905621 -2.55995011 -3.44281006 11.38301945 -4.92356491 -3.40545702 10.96673679
		 -5.8853488 -4.94436598 13.62944698 -8.73550129 -4.91918898 12.60073757 -6.89847803 -3.21333289 9.99252129
		 -6.82189798 -6.53037977 16.45661354 -10.11819744 -6.50588989 15.19333363 -12.97896957 -6.20684814 13.0048952103
		 -10.72480869 -4.51651001 10.73972797 -7.84231186 -8.18022156 19.37584877 -11.55200672 -8.12579346 17.76696396
		 -15.0045862198 -7.83109999 15.26365566 -17.53141975 -7.1557312 12.095042229 -14.93146992 -5.56661987 10.30511093
		 -13.14957428 -9.78553772 20.30764008 -16.99467468 -9.38853455 17.50127983 -20.069932938 -8.65525818 13.92357159
		 -22.30233955 -7.9138341 9.8564558 -19.36741638 -6.50245714 8.60055161 -19.10099602 -10.83258057 19.74196625
		 -22.60164261 -10.02154541 15.81622219 -25.22978592 -9.19009399 11.20594597 -26.9164257 -8.41513062 6.11780024
		 -23.72859001 -7.22763109 5.42718506 -25.056932449 -11.22618103 17.69749641 -28.035835266 -10.3165741 12.58750153
		 -29.98350716 -9.46627808 6.84950686 -30.7650032 -8.55682373 0.81503397 -27.59328461 -7.59172106 0.766114
		 -30.34928894 -11.17382813 13.72188091 -32.44320297 -10.25810242 7.4566288 -33.36387253 -9.30450439 0.87642199
		 -33.023796082 -8.22267246 -5.77693176 -30.38960648 -7.52940416 -5.27690792 -34.29891205 -10.82099915 7.87456799
		 -35.33042908 -9.83789063 0.88751101 -35.040626526 -8.72319031 -6.19115019 -33.41096497 -7.50517321 -13.016450882
		 -31.46691704 -7.062271118 -12.15715218 -36.7906723 -10.21427917 0.85658503 -36.41882324 -9.054016113 -6.52150297
		 -34.70720673 -7.79014587 -13.61083698 -31.044809341 -6.65483093 -20.090654373 -29.98638344 -6.37161303 -19.25380325
		 -37.6051445 -9.34634399 -6.81359005 -35.85998535 -8.051971436 -14.13333416 -32.014232635 -6.93885803 -20.84433365
		 -27.13293457 -6.16491699 -26.51041603 -26.2743454 -5.89427185 -25.59947968 -36.88196945 -8.35638428 -14.58629322
		 -32.87361145 -7.31152296 -21.47700691 -27.8769722 -6.47349501 -27.28684235 -22.065048218 -5.70243788 -32.17737961
		 -21.46009636 -5.37103319 -31.23803902 -33.54385757 -7.77067614 -21.95938492 -28.4652977 -6.84747314 -27.90213776
		 -22.51101112 -6.16095018 -32.91156006 -15.82017899 -5.33869886 -36.8852005 -15.46266365 -4.82116699 -36.0075378418
		 -28.90071106 -7.38787794 -28.36218834 -22.79473495 -6.72662401 -33.41272354 -16.060947418 -6.051422119 -37.48703003
		 -7.92625523 -5.68267822 -39.41113281 -7.79371881 -5.03204298 -38.77719116 -22.89937973 -7.44393921 -33.68347168
		 -16.16379356 -6.88551283 -37.7888031 -7.99198914 -6.46560717 -39.71562195 -16.11026382 -7.75016785 -37.73826599
		 -7.97375584 -7.29547119 -39.67237091 -7.88868809 -8.06842041 -39.2979126 -7.74492407 -8.66247559 -38.57619476
		 -7.54878092 -9.0044555664 -37.6016922 -7.35319996 -9.13339233 -36.47454071 -7.14888906 -9.14050293 -35.20848083
		 -6.92030716 -9.022201538 -33.74727631 -6.66275883 -8.71028137 -32.0059432983 -6.22720289 -7.92242384 -29.66610146
		 -5.7874012 -6.5304718 -27.1035881 -5.46755123 -5.32705688 -24.82958794 -4.83624887 -5.032166004 -22.18797493
		 -4.015291214 -5.43502808 -19.021970749 -3.37893605 -5.23123217 -15.25180626 -2.821908 -4.13760424 -11.66276836
		 -6.44594097 -5.37037706 -13.77152061 -5.3610239 -4.3422699 -10.55766869 -9.16914368 -5.59762621 -11.71602154
		 -7.6250248 -5.61247301 -17.051233292 -10.88220978 -5.89741516 -14.64431095 -13.59617043 -6.34780884 -11.87702847
		 -11.37570763 -5.9884491 -9.35068607 -15.65300846 -6.93234301 -8.72485256 -13.038082123 -6.4876399 -6.71117401
		 -17.082769394 -7.61172485 -5.37537718 -14.20216656 -6.93911695 -3.90975809 -11.50267696 -5.43501282 -2.47026205
		 -14.8250351 -7.3517909 -1.0016789436 -12.044905663 -5.72628784 -0.208331 -9.099987984 -3.66590905 0.316531
		 -12.080280304 -6.00027513504 2.076077938 -9.28510475 -3.97624207 1.88049102 -6.39904213 -2.15199304 1.080487967
		 -9.02380085 -4.29612684 3.57889199 -6.41380596 -2.56977797 2.49665308 -4.54931784 -1.43893397 1.76852703
		 -6.083169937 -2.91397095 3.89721704 -4.28100014 -1.77932703 3.095561028 -2.85244608 -1.055389047 2.70494604
		 -3.089612007 -0.709503 1.346614 -3.725142 -2.218292 4.20219088 -2.42789888 -1.55699205 3.81956911
		 -5.39377594 -3.27092004 5.17631817 -8.3874712 -4.58091688 5.26867723 -7.44570208 -4.8720088 6.77882195
		 -6.44798803 -5.26736498 8.16530895 -9.83510876 -6.82835388 8.49788284 -8.59188747 -7.22622681 10.39177513
		 -6.93382978 -7.524261 11.9638958 -5.26269293 -5.6295929 9.33359337 -4.65191078 -7.49307299 12.71613026
		 -3.65299106 -5.74880981 9.9892807 -8.52867126 -9.53912354 14.42399883 -5.70404577 -9.29701233 15.62578487
		 -9.99390411 -11.63406372 16.71715355 -6.77057695 -11.57411194 18.2446003 -11.90379143 -13.19288635 19.19035339
		 -8.15246677 -13.44844055 21.031303406 -14.10683346 -14.28146362 21.7568531 -9.72137547 -14.70654297 23.9380703
		 -16.2174015 -15.086639404 24.40219688 -11.20514107 -15.71798706 26.82702637 -17.96088219 -16.3682251 26.71760368
		 -12.42428875 -17.022216797 29.36182785 -19.064668655 -17.686203 28.33187485 -13.20726585 -18.20904541 31.16506958
		 -19.72296333 -18.45869446 29.43202972 -13.65397453 -18.89942932 32.39974213 -20.33240891 -18.93759155 30.44659042
		 -14.12092113 -19.3963623 33.56486511 -20.93033409 -19.18000793 31.36896133 -14.51834202 -19.65354919 34.63014984
		 -21.4621315 -19.18127441 32.15459824 -14.88879013 -19.71951294 35.53076172;
	setAttr ".vt[830:995]" -21.87205696 -18.96974182 32.83171082 -15.18817616 -19.56411743 36.33032227
		 -22.19941902 -18.5536499 33.39085388 -15.41942787 -19.14015198 36.98726654 -22.38311005 -17.92985535 33.77368164
		 -15.54832458 -18.48330688 37.40433502 -22.25861168 -17.23010254 33.70304108 -15.4381361 -17.76403809 37.28326416
		 -21.86579132 -16.77346802 33.22093201 -15.16963291 -17.28482056 36.68750763 -21.42882156 -16.43283081 32.62844467
		 -14.83775616 -16.92935181 35.97663879 -20.96428871 -16.094085693 31.94540024 -14.49416828 -16.56315613 35.19356537
		 -20.45818901 -15.71798706 31.16075134 -14.11909008 -16.15847778 34.302742 -19.89458656 -15.28944397 30.26301193
		 -13.69519711 -15.68708801 33.26611328 -19.1420784 -14.71150208 29.08197403 -13.11154079 -15.055297852 31.91016006
		 -18.088979721 -13.91233826 27.50227928 -12.41171646 -14.27416992 30.28056335 -16.60212898 -12.76184082 25.31990433
		 -11.36647606 -13.047393799 27.83836365 -14.88904095 -11.35475159 22.83485413 -10.18355656 -11.54995728 25.078821182
		 -8.98130131 -9.8835907 22.26153946 -21.19922256 -12.12901306 21.96792603 -23.038743973 -13.19935608 23.91372299
		 -27.12030411 -12.15429688 19.2420311 -24.30673218 -13.90429688 25.24678993 -28.70216179 -12.82229614 20.40664291
		 -32.17366791 -11.79614258 14.57339382 -29.9780674 -13.33079529 21.32629967 -33.66504669 -12.26461792 15.2125597
		 -35.75471878 -11.23974609 8.14613724 -34.87722397 -12.62727356 15.69935513 -36.97557068 -11.58291626 8.34916782
		 -38.016155243 -10.5291748 0.81908202 -38.039669037 -11.90171814 8.54526615 -39.089080811 -10.82501221 0.78301001
		 -38.63339996 -9.63485718 -7.044824123 -39.98442459 -11.16281128 0.74172503 -39.44906998 -10.0079040527 -7.24517679
		 -37.6797142 -8.7911377 -14.96832848 -40.044456482 -10.54464722 -7.43550682 -38.21681595 -9.41000366 -15.27028656
		 -34.0030937195 -8.36183167 -22.30289841 -38.44300842 -10.19599915 -15.46382809 -34.20508575 -9.099838257 -22.48600006
		 -29.10605431 -8.11463928 -28.61946678 -34.088096619 -9.86180115 -22.45328331 -28.99917412 -8.88822937 -28.57674217
		 -22.84527779 -8.2038269 -33.6437912 -28.61311722 -9.48760986 -28.21290398 -22.62776375 -8.85415554 -33.29919434
		 -15.94086456 -8.50337219 -37.36177826 -22.28769302 -9.30334473 -32.70981598 -15.66948509 -9.064971924 -36.71092224
		 -21.82573128 -9.54125977 -31.91287041 -15.33299828 -9.39126587 -35.79641724 -21.26225471 -9.65551758 -30.92156601
		 -14.8906889 -9.52256775 -34.69719696 -20.63406754 -9.65167236 -29.78879738 -14.40594482 -9.51779175 -33.44745636
		 -19.95044899 -9.54455566 -28.59549522 -13.857481 -9.37168884 -32.070724487 -19.088167191 -9.30755615 -27.15166664
		 -13.20121288 -9.067642212 -30.44132423 -17.71630859 -8.83392334 -25.035043716 -12.22495079 -8.40077209 -28.099845886
		 -16.010736465 -7.96281385 -22.52720642 -11.17715359 -7.1907959 -25.42539978 -14.38479233 -6.73219299 -19.99204063
		 -10.19163609 -5.92636108 -22.76987839 -12.67407036 -5.90228319 -17.37697792 -8.93457794 -5.37097216 -20.011362076
		 -18.013425827 -7.63244581 -16.53096771 -15.86807537 -6.66055298 -14.24607086 -20.94950867 -8.45747375 -12.49823856
		 -18.31571198 -7.53549194 -10.65293407 -22.96130943 -9.23989868 -8.047919273 -19.9806118 -8.38607788 -6.77034187
		 -24.085622787 -9.83189392 -3.2647109 -20.9293499 -9.054718018 -2.57032394 -17.85925865 -8.24777222 -1.81804097
		 -21.13451767 -9.52668762 1.721084 -17.94803047 -8.78443909 1.806777 -14.86709976 -7.75031996 1.94561195
		 -17.43609619 -9.33505154 5.31724691 -14.40581608 -8.12738037 4.82149982 -11.69281197 -6.25965881 4.35868883
		 -13.50532818 -8.50265503 7.52398396 -10.89818478 -6.51878405 6.53079796 -12.24831581 -8.93560791 10.0035772324
		 -16.39309502 -9.94647217 8.60248947 -14.88926601 -10.60203648 11.62162399 -12.88214493 -11.2467041 14.43772221
		 -10.71424389 -9.34848022 12.40032196 -17.67533112 -11.78141785 13.38883686 -15.20894146 -12.60668945 16.5775795
		 -20.57309723 -12.58091736 15.24696255 -17.7983799 -13.56484985 18.85110474 -23.61377907 -13.23503113 17.012872696
		 -20.48173141 -14.33760071 21.17069054 -26.43994904 -14.53103638 18.42010498 -22.73563004 -15.60287476 23.11958694
		 -28.22278214 -16.26808167 19.50600815 -24.21260834 -17.16716003 24.54542542 -29.31793594 -17.16297913 20.30192757
		 -25.076795578 -17.99217224 25.53581047 -30.38626671 -17.62698364 21.050741196 -25.92619514 -18.47142029 26.43535614
		 -31.3621521 -17.86054993 21.72583199 -26.7059288 -18.71609497 27.24638557 -32.17178726 -17.85466003 22.33599663
		 -27.39042473 -18.7454834 27.96481323 -32.84666061 -17.62185669 22.84934235 -27.97312164 -18.5504303 28.59409332
		 -33.37134933 -17.14398193 23.29075432 -28.4029789 -18.085861206 29.11094666 -33.65234375 -16.42428589 23.5875473
		 -28.69714355 -17.44921875 29.52069092 -33.61578369 -15.6083374 23.7007637 -28.57689667 -16.67619324 29.51271057
		 -33.22129059 -14.9029541 23.55703163 -28.18277931 -16.041427612 29.20143509 -32.62634277 -14.41253662 23.1818428
		 -27.59877205 -15.62736511 28.68244553 -31.89656448 -14.060897827 22.67143059 -26.91926193 -15.28462219 28.015485764
		 -30.99179268 -13.71255493 22.030725479 -26.15563393 -14.89785767 27.22427368 -25.33500099 -14.4650116 26.34404945
		 -35.92360306 -12.96229553 16.12526512 -36.78605652 -13.32875061 16.46022034 -38.9031601 -12.24414063 8.69923592
		 -37.45202637 -13.87097168 16.68040276 -39.57493591 -12.76715088 8.78174973 -40.68264008 -11.66737366 0.68398702
		 -39.93268585 -13.51268005 8.75670719 -41.038421631 -12.41455078 0.588305 -40.30890656 -11.2902832 -7.58775902
		 -40.90745544 -13.21270847 0.476596 -40.13726044 -12.075302124 -7.64563084 -38.21813583 -10.98579407 -15.47139072
		 -39.61226273 -12.6913147 -7.60036278 -37.71997452 -11.62181091 -15.33919811 -33.66785049 -10.4773407 -22.19444275
		 -37.015911102 -12.027770996 -15.07226944 -33.061695099 -10.87449646 -21.78453445
		 -28.094413757 -9.85317993 -27.66806984 -32.33260727 -11.086685181 -21.24966812 -27.49795151 -10.044281006 -26.99295807
		 -31.48001671 -11.15548706 -20.5870533 -26.81779861 -10.1308136 -26.18919373 -30.52766037 -11.042800903 -19.77311134
		 -26.036224365 -10.095062256 -25.22854042 -29.54090309 -10.67234802 -18.84850121 -25.19777298 -9.92643738 -24.17541504
		 -28.24398232 -10.18437195 -17.73052597 -24.060295105 -9.64405823 -22.80111313 -26.23797417 -9.64128113 -16.19242668
		 -22.35261917 -9.23527527 -20.94776344 -23.60489845 -9.23930359 -14.34501839 -20.19832611 -8.6053772 -18.78956604;
	setAttr ".vt[996:1145]" -28.9916935 -10.24957275 -10.74853802 -26.032648087 -9.92514038 -9.3655138
		 -30.52318573 -11.035675049 -4.92501783 -27.31952477 -10.58753967 -4.048985958 -31.013471603 -11.81556702 1.13592505
		 -27.72676468 -11.0099639893 1.42569399 -24.40669823 -10.18386841 1.61770296 -27.27610207 -11.48361206 6.85105896
		 -23.95608139 -10.58531189 6.42603779 -20.63663101 -10.092803955 5.87315607 -22.63772583 -11.45863342 10.98485374
		 -19.46667671 -10.88172913 9.77316475 -25.88569069 -12.17933655 12.078307152 -30.48039818 -12.659729 7.16816711
		 -28.96565247 -13.58024597 12.98927402 -32.88974762 -14.04914856 7.29959202 -31.24728775 -15.29258728 13.64405346
		 -34.31723785 -14.79774475 7.37554121 -32.57823181 -16.055358887 14.093810081 -35.61970901 -15.2359314 7.55276823
		 -33.81948853 -16.53077698 14.56859684 -36.81871796 -15.46508789 7.77542591 -34.9738884 -16.7963562 15.062008858
		 -37.85899353 -15.52749634 8.00060462952 -35.9954834 -16.84767151 15.52334499 -38.73242569 -15.384552 8.22639656
		 -36.82390976 -16.66255188 15.96232319 -39.44969177 -14.99147034 8.44640732 -37.44944382 -16.17178345 16.32555389
		 -39.89237976 -14.32302856 8.63232231 -37.82952499 -15.46046352 16.60328293 -37.83715439 -14.62812805 16.73084831
		 -40.38581848 -13.84082031 0.389788 -39.61830902 -14.20623779 0.341741 -38.88050079 -13.078903198 -7.47484779
		 -38.7057991 -14.33755493 0.331352 -38.0020751953 -13.24632263 -7.28549099 -36.17650986 -12.22203064 -14.69783592
		 -36.98143005 -13.24459839 -7.048213005 -35.1934433 -12.24415588 -14.22257996 -35.81208038 -13.047180176 -6.73169613
		 -34.071678162 -12.067138672 -13.61860371 -34.5656395 -12.6020813 -6.30830097 -32.89428329 -11.61856079 -12.91139412
		 -32.96216583 -11.91036987 -5.73854208 -31.28090858 -10.91630554 -11.96898842 -35.10516739 -13.63815308 0.54367799
		 -33.52466202 -12.91226196 0.78121501 -36.42399979 -14.11045837 0.41026399 -37.6528244 -14.3056488 0.34797999
		 -7.54377317 -4.60876513 -37.80226898 -7.28346109 -4.37445116 -36.61087036 -14.96673298 -4.49983215 -34.92506409
		 -7.0046868324 -4.24057007 -35.33274078 -14.38541889 -4.33236694 -33.69129181 -20.74456787 -5.11483812 -30.1747818
		 -13.72918987 -4.20929003 -32.29960632 -19.90830612 -4.86726379 -28.960495 -25.2961998 -5.61659193 -24.5441761
		 -18.73186684 -4.53469801 -27.12901497 -24.013246536 -5.26715088 -23.18177223 -28.32644081 -5.97586107 -18.072992325
		 -22.14567184 -4.74090576 -21.15311813 -26.025522232 -5.38519287 -16.49896812 -28.84657669 -6.40833998 -11.098130226
		 -23.35422516 -4.64546204 -14.62054157 -25.81926537 -5.60661316 -9.83866405 -27.23254013 -6.64767504 -4.64131212
		 -22.76097679 -4.72348022 -8.47723579 -23.99949074 -5.66554308 -3.93832803 -24.3140583 -6.5017848 0.77970397
		 -20.78386497 -4.57865906 -3.17021799 -21.045825958 -5.28700304 0.84280503 -20.54708672 -5.91033888 4.81165791
		 -17.79012299 -3.98791504 0.97800702 -17.36776352 -4.50737 4.26483917 -16.40724754 -5.015579224 7.40702009
		 -14.15875912 -3.049926996 3.75004911 -13.37475204 -3.47616601 6.24482489 -12.1958313 -3.98187304 8.54419804
		 -10.26813412 -1.93174696 5.13037109 -9.36294937 -2.30885291 6.87358618 -8.26054478 -2.75895691 8.49382019
		 -6.49566984 -0.63162202 5.27813387 -5.70050001 -0.975739 6.37811518 -4.76662397 -1.37503099 7.45062208
		 -3.17934608 0.85527003 4.79982281 -2.59873891 0.45967099 5.49098396 -3.63066292 1.22058105 4.075272083
		 -3.99452901 1.48446703 3.37173796 -4.24139786 1.70080602 2.65735793 -4.36620283 1.88255298 1.92649901
		 -4.36121798 2.038146973 1.17832804 -4.1950469 2.16618299 0.33375299 -3.82038808 2.2653501 -0.613074
		 -3.30738497 2.24604797 -1.57404006 -2.63174701 2.16549706 -2.483778 -5.9454422 0.99675 -3.66408706
		 -4.88060284 1.050979972 -4.84057617 -8.38328648 0.028336 -6.11228514 -6.77727604 0.143188 -7.59730291
		 -4.83103609 0.19683801 -8.839571 -2.59794807 0.226227 -9.68162632 -8.60106754 -0.69274902 -10.41663647
		 -6.083858013 -0.61648601 -11.85877323 -3.24882698 -0.58126801 -12.83522129 -7.30915499 -1.39187598 -14.90202045
		 -3.86826706 -1.36222804 -15.99371624 -4.46542788 -2.060928106 -19.18982124 -5.029220104 -2.66279602 -22.41553879
		 -5.54846287 -3.174438 -25.66507721 -6.033799171 -3.60946703 -28.88730431 -6.45833683 -3.92266798 -31.76613808
		 -6.76263809 -4.11154222 -33.86840057 -12.82954693 -4.012360096 -30.14248466 -11.81697369 -3.67771912 -27.3158989
		 -17.35762215 -4.102036 -24.77043915 -10.7672081 -3.22734094 -24.23833847 -15.69404793 -3.53167701 -21.93015862
		 -19.93089676 -4.063735962 -18.71556473 -13.95235443 -2.90686011 -19.032424927 -17.64340401 -3.32220507 -16.19207573
		 -20.61856461 -3.86350989 -12.62322426 -15.34317303 -2.53488207 -13.64595032 -17.89863586 -3.013259888 -10.57809067
		 -19.72547913 -3.76001 -7.038009167 -15.18167591 -2.099014044 -8.51461601 -16.70165443 -2.7115171 -5.55851793
		 -17.5739994 -3.39381409 -2.35374498 -13.66120052 -1.60861194 -4.067424774 -14.34753418 -2.13844299 -1.506706
		 -14.51008511 -2.62052894 1.14021695 -11.065525055 -0.88304102 -0.64829803 -11.18018246 -1.23594701 1.31955302
		 -10.90062141 -1.58427405 3.26464105 -7.77352524 0.166641 1.52654803 -7.58976316 -0.080673002 2.79743195
		 -7.14038181 -0.346634 4.07326889 -7.7188282 0.41140699 0.242341 -7.40056419 0.64504999 -1.073534012
		 -10.56438446 -0.51798999 -2.58131599 -9.65561104 -0.19958501 -4.42021799 -6.79364681 0.85172999 -2.39953399
		 -12.43697453 -1.15614295 -6.46445084 -10.73825932 -0.85308802 -8.595644 -13.053318977 -1.70562696 -11.10986423
		 -10.40286446 -1.48751795 -13.25913906 -12.18405819 -2.2285769 -16.13891411 -8.50509357 -2.086745977 -17.99324989
		 -9.66668987 -2.70031691 -21.10861969;
	setAttr -s 2288 ".ed";
	setAttr ".ed[0:165]"  3 2 0 2 1 0 1 0 0 0 3 0 3 5 0 5 4 0 4 2 0 0 6 0 6 5 0
		 10 9 0 9 8 0 8 7 0 7 10 0 10 12 0 12 11 0 11 9 0 7 13 0 13 12 0 17 16 0 16 15 0 15 14 0
		 14 17 0 14 19 0 19 18 0 18 17 0 18 20 0 20 16 0 24 23 0 23 22 0 22 21 0 21 24 0 21 27 0
		 27 26 0 26 25 0 25 21 0 25 28 0 28 24 0 22 29 0 29 27 0 29 31 0 31 30 0 30 27 0 22 33 0
		 33 32 0 32 29 0 32 34 0 34 31 0 32 36 0 36 35 0 35 34 0 35 38 0 38 37 0 37 34 0 37 39 0
		 39 31 0 39 42 0 42 41 0 41 40 0 40 39 0 40 30 0 37 43 0 43 42 0 38 44 0 44 43 0 38 46 0
		 46 45 0 45 44 0 46 48 0 48 47 0 47 45 0 48 50 0 50 49 0 49 47 0 50 52 0 52 51 0 51 49 0
		 52 54 0 54 53 0 53 51 0 54 56 0 56 55 0 55 53 0 56 58 0 58 57 0 57 55 0 58 60 0 60 59 0
		 59 57 0 60 62 0 62 61 0 61 59 0 62 64 0 64 63 0 63 61 0 64 66 0 66 65 0 65 63 0 66 68 0
		 68 67 0 67 65 0 68 70 0 70 69 0 69 67 0 70 72 0 72 71 0 71 69 0 72 74 0 74 73 0 73 71 0
		 74 76 0 76 75 0 75 73 0 76 78 0 78 77 0 77 75 0 78 80 0 80 79 0 79 77 0 80 82 0 82 81 0
		 81 79 0 82 84 0 84 83 0 83 81 0 84 86 0 86 85 0 85 83 0 86 88 0 88 87 0 87 85 0 88 90 0
		 90 89 0 89 87 0 90 92 0 92 91 0 91 89 0 92 94 0 94 93 0 93 91 0 94 96 0 96 95 0 95 93 0
		 96 98 0 98 97 0 97 95 0 98 100 0 100 99 0 99 97 0 100 102 0 102 101 0 101 99 0 102 104 0
		 104 103 0 103 101 0 104 106 0 106 105 0 105 103 0 106 108 0 108 107 0 107 105 0 108 110 0
		 110 109 0 109 107 0 110 112 0 112 111 0 111 109 0;
	setAttr ".ed[166:331]" 112 114 0 114 113 0 113 111 0 114 116 0 116 115 0 115 113 0
		 116 118 0 118 117 0 117 115 0 118 0 0 1 117 0 118 119 0 119 6 0 116 120 0 120 119 0
		 120 122 0 122 121 0 121 119 0 114 123 0 123 120 0 123 124 0 124 122 0 124 126 0 126 125 0
		 125 122 0 123 128 0 128 127 0 127 124 0 127 129 0 129 126 0 129 131 0 131 130 0 130 126 0
		 127 133 0 133 132 0 132 129 0 132 134 0 134 131 0 134 136 0 136 135 0 135 131 0 132 138 0
		 138 137 0 137 134 0 137 139 0 139 136 0 139 141 0 141 140 0 140 136 0 137 143 0 143 142 0
		 142 139 0 142 144 0 144 141 0 144 146 0 146 145 0 145 141 0 142 148 0 148 147 0 147 144 0
		 147 149 0 149 146 0 149 151 0 151 150 0 150 146 0 147 153 0 153 152 0 152 149 0 152 154 0
		 154 151 0 154 156 0 156 155 0 155 151 0 152 158 0 158 157 0 157 154 0 157 159 0 159 156 0
		 159 161 0 161 160 0 160 156 0 157 163 0 163 162 0 162 159 0 162 164 0 164 161 0 164 166 0
		 166 165 0 165 161 0 162 168 0 168 167 0 167 164 0 167 169 0 169 166 0 169 171 0 171 170 0
		 170 166 0 167 173 0 173 172 0 172 169 0 172 174 0 174 171 0 174 176 0 176 175 0 175 171 0
		 172 178 0 178 177 0 177 174 0 177 179 0 179 176 0 179 181 0 181 180 0 180 176 0 177 183 0
		 183 182 0 182 179 0 182 184 0 184 181 0 184 186 0 186 185 0 185 181 0 182 188 0 188 187 0
		 187 184 0 187 189 0 189 186 0 187 191 0 191 190 0 190 189 0 191 193 0 193 192 0 192 190 0
		 193 195 0 195 194 0 194 192 0 195 197 0 197 196 0 196 194 0 197 199 0 199 198 0 198 196 0
		 199 201 0 201 200 0 200 198 0 201 203 0 203 202 0 202 200 0 203 205 0 205 204 0 204 202 0
		 205 207 0 207 206 0 206 204 0 207 209 0 209 208 0 208 206 0 209 211 0 211 210 0 210 208 0
		 211 213 0 213 212 0 212 210 0 213 215 0 215 214 0 214 212 0 215 217 0;
	setAttr ".ed[332:497]" 217 216 0 216 214 0 217 40 0 41 216 0 215 219 0 219 218 0
		 218 217 0 218 30 0 219 220 0 220 26 0 26 218 0 219 222 0 222 221 0 221 220 0 221 224 0
		 224 223 0 223 220 0 223 25 0 224 226 0 226 225 0 225 223 0 225 28 0 226 228 0 228 227 0
		 227 225 0 227 229 0 229 28 0 227 231 0 231 230 0 230 229 0 230 232 0 232 23 0 23 229 0
		 230 234 0 234 233 0 233 232 0 233 235 0 235 33 0 33 232 0 233 237 0 237 236 0 236 235 0
		 236 238 0 238 36 0 36 235 0 236 240 0 240 239 0 239 238 0 239 242 0 242 241 0 241 238 0
		 241 35 0 242 48 0 46 241 0 239 244 0 244 243 0 243 242 0 243 50 0 244 14 0 15 243 0
		 15 52 0 240 245 0 245 244 0 245 19 0 240 247 0 247 246 0 246 245 0 246 248 0 248 19 0
		 246 250 0 250 249 0 249 248 0 249 252 0 252 251 0 251 248 0 251 18 0 252 254 0 254 253 0
		 253 251 0 253 20 0 254 60 0 58 253 0 56 20 0 252 256 0 256 255 0 255 254 0 255 62 0
		 256 258 0 258 257 0 257 255 0 257 64 0 258 260 0 260 259 0 259 257 0 259 66 0 260 262 0
		 262 261 0 261 259 0 261 68 0 262 264 0 264 263 0 263 261 0 263 70 0 264 266 0 266 265 0
		 265 263 0 265 72 0 266 268 0 268 267 0 267 265 0 267 74 0 268 270 0 270 269 0 269 267 0
		 269 76 0 270 272 0 272 271 0 271 269 0 271 78 0 272 274 0 274 273 0 273 271 0 273 80 0
		 274 276 0 276 275 0 275 273 0 275 82 0 276 278 0 278 277 0 277 275 0 277 84 0 278 280 0
		 280 279 0 279 277 0 279 86 0 280 282 0 282 281 0 281 279 0 281 88 0 282 284 0 284 283 0
		 283 281 0 283 90 0 284 286 0 286 285 0 285 283 0 285 92 0 286 288 0 288 287 0 287 285 0
		 287 94 0 288 290 0 290 289 0 289 287 0 289 96 0 290 292 0 292 291 0 291 289 0 291 98 0
		 292 294 0 294 293 0 293 291 0 293 100 0 294 296 0 296 295 0 295 293 0;
	setAttr ".ed[498:663]" 295 102 0 296 298 0 298 297 0 297 295 0 297 104 0 298 300 0
		 300 299 0 299 297 0 299 106 0 300 302 0 302 301 0 301 299 0 301 108 0 302 133 0 133 303 0
		 303 301 0 303 110 0 128 303 0 128 112 0 302 138 0 300 304 0 304 138 0 304 143 0 298 305 0
		 305 304 0 305 306 0 306 143 0 306 148 0 305 308 0 308 307 0 307 306 0 307 309 0 309 148 0
		 309 153 0 307 311 0 311 310 0 310 309 0 310 312 0 312 153 0 312 158 0 310 314 0 314 313 0
		 313 312 0 313 315 0 315 158 0 315 163 0 313 317 0 317 316 0 316 315 0 316 318 0 318 163 0
		 318 168 0 316 320 0 320 319 0 319 318 0 319 321 0 321 168 0 321 173 0 319 323 0 323 322 0
		 322 321 0 322 324 0 324 173 0 324 178 0 322 326 0 326 325 0 325 324 0 325 327 0 327 178 0
		 327 183 0 325 329 0 329 328 0 328 327 0 328 330 0 330 183 0 330 188 0 328 332 0 332 331 0
		 331 330 0 331 333 0 333 188 0 333 191 0 331 335 0 335 334 0 334 333 0 334 193 0 335 337 0
		 337 336 0 336 334 0 336 195 0 337 339 0 339 338 0 338 336 0 338 197 0 339 341 0 341 340 0
		 340 338 0 340 199 0 341 343 0 343 342 0 342 340 0 342 201 0 343 345 0 345 344 0 344 342 0
		 344 203 0 345 347 0 347 346 0 346 344 0 346 205 0 347 349 0 349 348 0 348 346 0 348 207 0
		 349 351 0 351 350 0 350 348 0 350 209 0 351 353 0 353 352 0 352 350 0 352 211 0 353 221 0
		 222 352 0 222 213 0 351 355 0 355 354 0 354 353 0 354 224 0 355 357 0 357 356 0 356 354 0
		 356 226 0 357 359 0 359 358 0 358 356 0 358 228 0 359 361 0 361 360 0 360 358 0 360 362 0
		 362 228 0 360 364 0 364 363 0 363 362 0 363 365 0 365 231 0 231 362 0 363 367 0 367 366 0
		 366 365 0 366 368 0 368 234 0 234 365 0 366 370 0 370 369 0 369 368 0 369 247 0 247 237 0
		 237 368 0 370 371 0 371 250 0 250 369 0 370 373 0 373 372 0 372 371 0;
	setAttr ".ed[664:829]" 372 375 0 375 374 0 374 371 0 374 249 0 375 258 0 256 374 0
		 372 377 0 377 376 0 376 375 0 376 260 0 377 379 0 379 378 0 378 376 0 378 262 0 379 381 0
		 381 380 0 380 378 0 380 264 0 381 383 0 383 382 0 382 380 0 382 266 0 383 385 0 385 384 0
		 384 382 0 384 268 0 385 387 0 387 386 0 386 384 0 386 270 0 387 389 0 389 388 0 388 386 0
		 388 272 0 389 391 0 391 390 0 390 388 0 390 274 0 391 393 0 393 392 0 392 390 0 392 276 0
		 393 395 0 395 394 0 394 392 0 394 278 0 395 397 0 397 396 0 396 394 0 396 280 0 397 399 0
		 399 398 0 398 396 0 398 282 0 399 401 0 401 400 0 400 398 0 400 284 0 401 403 0 403 402 0
		 402 400 0 402 286 0 403 405 0 405 404 0 404 402 0 404 288 0 405 407 0 407 406 0 406 404 0
		 406 290 0 407 409 0 409 408 0 408 406 0 408 292 0 409 311 0 311 410 0 410 408 0 410 294 0
		 308 410 0 308 296 0 409 314 0 407 411 0 411 314 0 411 317 0 405 412 0 412 411 0 412 413 0
		 413 317 0 413 320 0 412 415 0 415 414 0 414 413 0 414 416 0 416 320 0 416 323 0 414 418 0
		 418 417 0 417 416 0 417 419 0 419 323 0 419 326 0 417 421 0 421 420 0 420 419 0 420 422 0
		 422 326 0 422 329 0 420 424 0 424 423 0 423 422 0 423 425 0 425 329 0 425 332 0 423 427 0
		 427 426 0 426 425 0 426 428 0 428 332 0 428 335 0 426 430 0 430 429 0 429 428 0 429 337 0
		 430 432 0 432 431 0 431 429 0 431 339 0 432 434 0 434 433 0 433 431 0 433 341 0 434 436 0
		 436 435 0 435 433 0 435 343 0 436 438 0 438 437 0 437 435 0 437 345 0 438 440 0 440 439 0
		 439 437 0 439 347 0 440 442 0 442 441 0 441 439 0 441 349 0 442 357 0 355 441 0 440 444 0
		 444 443 0 443 442 0 443 359 0 444 446 0 446 445 0 445 443 0 445 361 0 446 448 0 448 447 0
		 447 445 0 447 449 0 449 361 0 447 451 0 451 450 0 450 449 0 450 452 0;
	setAttr ".ed[830:995]" 452 364 0 364 449 0 450 454 0 454 453 0 453 452 0 453 373 0
		 373 367 0 367 452 0 454 379 0 377 453 0 451 455 0 455 454 0 455 381 0 451 457 0 457 456 0
		 456 455 0 456 383 0 457 459 0 459 458 0 458 456 0 458 385 0 459 461 0 461 460 0 460 458 0
		 460 387 0 461 463 0 463 462 0 462 460 0 462 389 0 463 465 0 465 464 0 464 462 0 464 391 0
		 465 467 0 467 466 0 466 464 0 466 393 0 467 469 0 469 468 0 468 466 0 468 395 0 469 471 0
		 471 470 0 470 468 0 470 397 0 471 473 0 473 472 0 472 470 0 472 399 0 473 418 0 418 474 0
		 474 472 0 474 401 0 415 474 0 415 403 0 473 421 0 471 475 0 475 421 0 475 424 0 469 476 0
		 476 475 0 476 477 0 477 424 0 477 427 0 476 479 0 479 478 0 478 477 0 478 480 0 480 427 0
		 480 430 0 478 482 0 482 481 0 481 480 0 481 432 0 482 484 0 484 483 0 483 481 0 483 434 0
		 484 486 0 486 485 0 485 483 0 485 436 0 486 488 0 488 487 0 487 485 0 487 438 0 488 446 0
		 444 487 0 486 490 0 490 489 0 489 488 0 489 448 0 490 461 0 459 489 0 457 448 0 484 491 0
		 491 490 0 491 463 0 482 492 0 492 491 0 492 465 0 479 492 0 479 467 0 185 493 0 493 180 0
		 493 495 0 495 494 0 494 180 0 495 497 0 497 496 0 496 494 0 496 498 0 498 175 0 175 494 0
		 496 500 0 500 499 0 499 498 0 499 501 0 501 170 0 170 498 0 499 503 0 503 502 0 502 501 0
		 502 504 0 504 165 0 165 501 0 502 506 0 506 505 0 505 504 0 505 507 0 507 160 0 160 504 0
		 505 509 0 509 508 0 508 507 0 508 510 0 510 155 0 155 507 0 508 512 0 512 511 0 511 510 0
		 511 513 0 513 150 0 150 510 0 511 515 0 515 514 0 514 513 0 514 516 0 516 145 0 145 513 0
		 514 518 0 518 517 0 517 516 0 517 519 0 519 140 0 140 516 0 517 521 0 521 520 0 520 519 0
		 520 522 0 522 135 0 135 519 0 520 524 0 524 523 0 523 522 0 523 525 0;
	setAttr ".ed[996:1161]" 525 130 0 130 522 0 523 527 0 527 526 0 526 525 0 526 528 0
		 528 125 0 125 525 0 526 530 0 530 529 0 529 528 0 529 531 0 531 121 0 121 528 0 529 533 0
		 533 532 0 532 531 0 532 5 0 6 531 0 533 535 0 535 534 0 534 532 0 534 4 0 533 537 0
		 537 536 0 536 535 0 537 539 0 539 538 0 538 536 0 539 541 0 541 540 0 540 538 0 541 543 0
		 543 542 0 542 540 0 543 545 0 545 544 0 544 542 0 545 547 0 547 546 0 546 544 0 547 549 0
		 549 548 0 548 546 0 549 551 0 551 550 0 550 548 0 551 553 0 553 552 0 552 550 0 553 7 0
		 8 552 0 551 555 0 555 554 0 554 553 0 554 13 0 555 557 0 557 556 0 556 554 0 556 558 0
		 558 13 0 558 559 0 559 12 0 556 561 0 561 560 0 560 558 0 560 562 0 562 559 0 562 564 0
		 564 563 0 563 559 0 560 566 0 566 565 0 565 562 0 565 567 0 567 564 0 565 569 0 569 568 0
		 568 567 0 569 571 0 571 570 0 570 568 0 571 573 0 573 572 0 572 570 0 573 575 0 575 574 0
		 574 572 0 575 577 0 577 576 0 576 574 0 577 579 0 579 578 0 578 576 0 579 500 0 500 580 0
		 580 578 0 497 580 0 577 581 0 581 503 0 503 579 0 575 582 0 582 581 0 582 583 0 583 506 0
		 506 581 0 582 585 0 585 584 0 584 583 0 584 586 0 586 509 0 509 583 0 584 588 0 588 587 0
		 587 586 0 587 589 0 589 512 0 512 586 0 587 591 0 591 590 0 590 589 0 590 592 0 592 515 0
		 515 589 0 590 594 0 594 593 0 593 592 0 593 595 0 595 518 0 518 592 0 593 597 0 597 596 0
		 596 595 0 596 598 0 598 521 0 521 595 0 596 600 0 600 599 0 599 598 0 599 601 0 601 524 0
		 524 598 0 599 603 0 603 602 0 602 601 0 602 604 0 604 527 0 527 601 0 602 541 0 539 604 0
		 537 530 0 530 604 0 603 543 0 603 605 0 605 545 0 600 605 0 605 606 0 606 547 0 600 607 0
		 607 606 0 607 609 0 609 608 0 608 606 0 597 607 0 597 610 0 610 609 0;
	setAttr ".ed[1162:1327]" 610 611 0 611 557 0 557 609 0 594 610 0 594 612 0 612 611 0
		 612 613 0 613 561 0 561 611 0 591 612 0 591 614 0 614 613 0 614 615 0 615 566 0 566 613 0
		 588 614 0 588 616 0 616 615 0 616 571 0 569 615 0 585 616 0 585 573 0 608 555 0 549 608 0
		 563 11 0 54 16 0 618 617 0 617 1 0 2 618 0 4 619 0 619 618 0 619 620 0 620 617 0
		 622 621 0 621 8 0 9 622 0 11 623 0 623 622 0 623 624 0 624 621 0 628 627 0 627 626 0
		 626 625 0 625 628 0 628 630 0 630 629 0 629 627 0 625 631 0 631 630 0 635 634 0 634 633 0
		 633 632 0 632 635 0 634 638 0 638 637 0 637 636 0 636 634 0 635 639 0 639 638 0 636 640 0
		 640 633 0 636 642 0 642 641 0 641 640 0 640 644 0 644 643 0 643 633 0 641 645 0 645 644 0
		 645 647 0 647 646 0 646 644 0 645 649 0 649 648 0 648 647 0 641 650 0 650 649 0 650 651 0
		 651 41 0 42 650 0 642 651 0 43 649 0 44 648 0 45 652 0 652 648 0 47 653 0 653 652 0
		 49 654 0 654 653 0 51 655 0 655 654 0 53 656 0 656 655 0 55 657 0 657 656 0 57 658 0
		 658 657 0 59 659 0 659 658 0 61 660 0 660 659 0 63 661 0 661 660 0 65 662 0 662 661 0
		 67 663 0 663 662 0 69 664 0 664 663 0 71 665 0 665 664 0 73 666 0 666 665 0 75 667 0
		 667 666 0 77 668 0 668 667 0 79 669 0 669 668 0 81 670 0 670 669 0 83 671 0 671 670 0
		 85 672 0 672 671 0 87 673 0 673 672 0 89 674 0 674 673 0 91 675 0 675 674 0 93 676 0
		 676 675 0 95 677 0 677 676 0 97 678 0 678 677 0 99 679 0 679 678 0 101 680 0 680 679 0
		 103 681 0 681 680 0 105 682 0 682 681 0 107 683 0 683 682 0 109 684 0 684 683 0 111 685 0
		 685 684 0 113 686 0 686 685 0 115 687 0 687 686 0 117 688 0 688 687 0 617 688 0 620 689 0
		 689 688 0 689 690 0 690 687 0 689 692 0 692 691 0 691 690 0 690 693 0;
	setAttr ".ed[1328:1493]" 693 686 0 691 694 0 694 693 0 691 696 0 696 695 0 695 694 0
		 694 698 0 698 697 0 697 693 0 695 699 0 699 698 0 695 701 0 701 700 0 700 699 0 699 703 0
		 703 702 0 702 698 0 700 704 0 704 703 0 700 706 0 706 705 0 705 704 0 704 708 0 708 707 0
		 707 703 0 705 709 0 709 708 0 705 711 0 711 710 0 710 709 0 709 713 0 713 712 0 712 708 0
		 710 714 0 714 713 0 710 716 0 716 715 0 715 714 0 714 718 0 718 717 0 717 713 0 715 719 0
		 719 718 0 715 721 0 721 720 0 720 719 0 719 723 0 723 722 0 722 718 0 720 724 0 724 723 0
		 720 726 0 726 725 0 725 724 0 724 728 0 728 727 0 727 723 0 725 729 0 729 728 0 725 731 0
		 731 730 0 730 729 0 729 733 0 733 732 0 732 728 0 730 734 0 734 733 0 730 736 0 736 735 0
		 735 734 0 734 738 0 738 737 0 737 733 0 735 739 0 739 738 0 735 741 0 741 740 0 740 739 0
		 739 743 0 743 742 0 742 738 0 740 744 0 744 743 0 740 746 0 746 745 0 745 744 0 744 748 0
		 748 747 0 747 743 0 745 749 0 749 748 0 745 751 0 751 750 0 750 749 0 749 753 0 753 752 0
		 752 748 0 750 754 0 754 753 0 750 185 0 186 754 0 754 756 0 756 755 0 755 753 0 189 756 0
		 190 757 0 757 756 0 192 758 0 758 757 0 194 759 0 759 758 0 196 760 0 760 759 0 198 761 0
		 761 760 0 200 762 0 762 761 0 202 763 0 763 762 0 204 764 0 764 763 0 206 765 0 765 764 0
		 208 766 0 766 765 0 210 767 0 767 766 0 212 768 0 768 767 0 214 769 0 769 768 0 216 770 0
		 770 769 0 651 770 0 770 772 0 772 771 0 771 769 0 642 772 0 772 637 0 637 773 0 773 771 0
		 773 775 0 775 774 0 774 771 0 773 777 0 777 776 0 776 775 0 638 777 0 777 779 0 779 778 0
		 778 776 0 639 779 0 779 781 0 781 780 0 780 778 0 639 782 0 782 781 0 782 784 0 784 783 0
		 783 781 0 782 632 0 632 785 0 785 784 0 785 787 0 787 786 0 786 784 0;
	setAttr ".ed[1494:1659]" 785 643 0 643 788 0 788 787 0 788 790 0 790 789 0 789 787 0
		 788 646 0 646 791 0 791 790 0 791 793 0 793 792 0 792 790 0 791 795 0 795 794 0 794 793 0
		 647 795 0 795 652 0 653 794 0 794 797 0 797 796 0 796 793 0 654 797 0 797 626 0 627 796 0
		 655 626 0 796 798 0 798 792 0 629 798 0 798 800 0 800 799 0 799 792 0 629 801 0 801 800 0
		 801 803 0 803 802 0 802 800 0 801 805 0 805 804 0 804 803 0 630 805 0 805 807 0 807 806 0
		 806 804 0 631 807 0 807 658 0 659 806 0 631 657 0 806 809 0 809 808 0 808 804 0 660 809 0
		 809 811 0 811 810 0 810 808 0 661 811 0 811 813 0 813 812 0 812 810 0 662 813 0 813 815 0
		 815 814 0 814 812 0 663 815 0 815 817 0 817 816 0 816 814 0 664 817 0 817 819 0 819 818 0
		 818 816 0 665 819 0 819 821 0 821 820 0 820 818 0 666 821 0 821 823 0 823 822 0 822 820 0
		 667 823 0 823 825 0 825 824 0 824 822 0 668 825 0 825 827 0 827 826 0 826 824 0 669 827 0
		 827 829 0 829 828 0 828 826 0 670 829 0 829 831 0 831 830 0 830 828 0 671 831 0 831 833 0
		 833 832 0 832 830 0 672 833 0 833 835 0 835 834 0 834 832 0 673 835 0 835 837 0 837 836 0
		 836 834 0 674 837 0 837 839 0 839 838 0 838 836 0 675 839 0 839 841 0 841 840 0 840 838 0
		 676 841 0 841 843 0 843 842 0 842 840 0 677 843 0 843 845 0 845 844 0 844 842 0 678 845 0
		 845 847 0 847 846 0 846 844 0 679 847 0 847 849 0 849 848 0 848 846 0 680 849 0 849 851 0
		 851 850 0 850 848 0 681 851 0 851 853 0 853 852 0 852 850 0 682 853 0 853 855 0 855 854 0
		 854 852 0 683 855 0 855 856 0 856 702 0 702 854 0 684 856 0 856 697 0 685 697 0 707 854 0
		 707 857 0 857 852 0 712 857 0 857 858 0 858 850 0 712 859 0 859 858 0 717 859 0 859 861 0
		 861 860 0 860 858 0 717 862 0 862 861 0 722 862 0 862 864 0 864 863 0;
	setAttr ".ed[1660:1825]" 863 861 0 722 865 0 865 864 0 727 865 0 865 867 0 867 866 0
		 866 864 0 727 868 0 868 867 0 732 868 0 868 870 0 870 869 0 869 867 0 732 871 0 871 870 0
		 737 871 0 871 873 0 873 872 0 872 870 0 737 874 0 874 873 0 742 874 0 874 876 0 876 875 0
		 875 873 0 742 877 0 877 876 0 747 877 0 877 879 0 879 878 0 878 876 0 747 880 0 880 879 0
		 752 880 0 880 882 0 882 881 0 881 879 0 752 883 0 883 882 0 755 883 0 883 885 0 885 884 0
		 884 882 0 755 886 0 886 885 0 757 886 0 886 888 0 888 887 0 887 885 0 758 888 0 888 890 0
		 890 889 0 889 887 0 759 890 0 890 892 0 892 891 0 891 889 0 760 892 0 892 894 0 894 893 0
		 893 891 0 761 894 0 894 896 0 896 895 0 895 893 0 762 896 0 896 898 0 898 897 0 897 895 0
		 763 898 0 898 900 0 900 899 0 899 897 0 764 900 0 900 902 0 902 901 0 901 899 0 765 902 0
		 902 904 0 904 903 0 903 901 0 766 904 0 904 906 0 906 905 0 905 903 0 767 906 0 906 774 0
		 775 905 0 768 774 0 905 908 0 908 907 0 907 903 0 776 908 0 908 910 0 910 909 0 909 907 0
		 778 910 0 910 912 0 912 911 0 911 909 0 780 912 0 912 914 0 914 913 0 913 911 0 780 915 0
		 915 914 0 915 917 0 917 916 0 916 914 0 915 783 0 783 918 0 918 917 0 918 920 0 920 919 0
		 919 917 0 918 786 0 786 921 0 921 920 0 921 923 0 923 922 0 922 920 0 921 789 0 789 799 0
		 799 923 0 923 802 0 802 924 0 924 922 0 924 926 0 926 925 0 925 922 0 924 928 0 928 927 0
		 927 926 0 803 928 0 928 808 0 810 927 0 927 930 0 930 929 0 929 926 0 812 930 0 930 932 0
		 932 931 0 931 929 0 814 932 0 932 934 0 934 933 0 933 931 0 816 934 0 934 936 0 936 935 0
		 935 933 0 818 936 0 936 938 0 938 937 0 937 935 0 820 938 0 938 940 0 940 939 0 939 937 0
		 822 940 0 940 942 0 942 941 0 941 939 0 824 942 0 942 944 0 944 943 0;
	setAttr ".ed[1826:1991]" 943 941 0 826 944 0 944 946 0 946 945 0 945 943 0 828 946 0
		 946 948 0 948 947 0 947 945 0 830 948 0 948 950 0 950 949 0 949 947 0 832 950 0 950 952 0
		 952 951 0 951 949 0 834 952 0 952 954 0 954 953 0 953 951 0 836 954 0 954 956 0 956 955 0
		 955 953 0 838 956 0 956 958 0 958 957 0 957 955 0 840 958 0 958 960 0 960 959 0 959 957 0
		 842 960 0 960 962 0 962 961 0 961 959 0 844 962 0 962 963 0 963 863 0 863 961 0 846 963 0
		 963 860 0 848 860 0 866 961 0 866 964 0 964 959 0 869 964 0 964 965 0 965 957 0 869 966 0
		 966 965 0 872 966 0 966 968 0 968 967 0 967 965 0 872 969 0 969 968 0 875 969 0 969 971 0
		 971 970 0 970 968 0 875 972 0 972 971 0 878 972 0 972 974 0 974 973 0 973 971 0 878 975 0
		 975 974 0 881 975 0 975 977 0 977 976 0 976 974 0 881 978 0 978 977 0 884 978 0 978 980 0
		 980 979 0 979 977 0 884 981 0 981 980 0 887 981 0 981 983 0 983 982 0 982 980 0 889 983 0
		 983 985 0 985 984 0 984 982 0 891 985 0 985 987 0 987 986 0 986 984 0 893 987 0 987 989 0
		 989 988 0 988 986 0 895 989 0 989 991 0 991 990 0 990 988 0 897 991 0 991 993 0 993 992 0
		 992 990 0 899 993 0 993 995 0 995 994 0 994 992 0 901 995 0 995 907 0 909 994 0 994 997 0
		 997 996 0 996 992 0 911 997 0 997 999 0 999 998 0 998 996 0 913 999 0 999 1001 0
		 1001 1000 0 1000 998 0 913 1002 0 1002 1001 0 1002 1004 0 1004 1003 0 1003 1001 0
		 1002 916 0 916 1005 0 1005 1004 0 1005 1007 0 1007 1006 0 1006 1004 0 1005 919 0
		 919 925 0 925 1007 0 1007 929 0 931 1006 0 1006 1008 0 1008 1003 0 933 1008 0 1008 1010 0
		 1010 1009 0 1009 1003 0 935 1010 0 1010 1012 0 1012 1011 0 1011 1009 0 937 1012 0
		 1012 1014 0 1014 1013 0 1013 1011 0 939 1014 0 1014 1016 0 1016 1015 0 1015 1013 0
		 941 1016 0 1016 1018 0 1018 1017 0 1017 1015 0 943 1018 0 1018 1020 0 1020 1019 0
		 1019 1017 0;
	setAttr ".ed[1992:2157]" 945 1020 0 1020 1022 0 1022 1021 0 1021 1019 0 947 1022 0
		 1022 1024 0 1024 1023 0 1023 1021 0 949 1024 0 1024 1026 0 1026 1025 0 1025 1023 0
		 951 1026 0 1026 1027 0 1027 970 0 970 1025 0 953 1027 0 1027 967 0 955 967 0 973 1025 0
		 973 1028 0 1028 1023 0 976 1028 0 1028 1029 0 1029 1021 0 976 1030 0 1030 1029 0
		 979 1030 0 1030 1032 0 1032 1031 0 1031 1029 0 979 1033 0 1033 1032 0 982 1033 0
		 1033 1035 0 1035 1034 0 1034 1032 0 984 1035 0 1035 1037 0 1037 1036 0 1036 1034 0
		 986 1037 0 1037 1039 0 1039 1038 0 1038 1036 0 988 1039 0 1039 1041 0 1041 1040 0
		 1040 1038 0 990 1041 0 1041 996 0 998 1040 0 1040 1043 0 1043 1042 0 1042 1038 0
		 1000 1043 0 1043 1011 0 1013 1042 0 1000 1009 0 1042 1044 0 1044 1036 0 1015 1044 0
		 1044 1045 0 1045 1034 0 1017 1045 0 1045 1031 0 1019 1031 0 751 493 0 751 1046 0
		 1046 495 0 1046 1047 0 1047 497 0 1046 746 0 746 1048 0 1048 1047 0 1048 1050 0 1050 1049 0
		 1049 1047 0 1048 741 0 741 1051 0 1051 1050 0 1051 1053 0 1053 1052 0 1052 1050 0
		 1051 736 0 736 1054 0 1054 1053 0 1054 1056 0 1056 1055 0 1055 1053 0 1054 731 0
		 731 1057 0 1057 1056 0 1057 1059 0 1059 1058 0 1058 1056 0 1057 726 0 726 1060 0
		 1060 1059 0 1060 1062 0 1062 1061 0 1061 1059 0 1060 721 0 721 1063 0 1063 1062 0
		 1063 1065 0 1065 1064 0 1064 1062 0 1063 716 0 716 1066 0 1066 1065 0 1066 1068 0
		 1068 1067 0 1067 1065 0 1066 711 0 711 1069 0 1069 1068 0 1069 1071 0 1071 1070 0
		 1070 1068 0 1069 706 0 706 1072 0 1072 1071 0 1072 1074 0 1074 1073 0 1073 1071 0
		 1072 701 0 701 1075 0 1075 1074 0 1075 1077 0 1077 1076 0 1076 1074 0 1075 696 0
		 696 1078 0 1078 1077 0 1078 1080 0 1080 1079 0 1079 1077 0 1078 692 0 692 1081 0
		 1081 1080 0 1081 1083 0 1083 1082 0 1082 1080 0 1081 620 0 619 1083 0 1083 534 0
		 535 1082 0 536 1084 0 1084 1082 0 538 1085 0 1085 1084 0 540 1086 0 1086 1085 0 542 1087 0
		 1087 1086 0 544 1088 0 1088 1087 0 546 1089 0 1089 1088 0 548 1090 0 1090 1089 0
		 550 1091 0 1091 1090 0 552 1092 0 1092 1091 0;
	setAttr ".ed[2158:2287]" 621 1092 0 1092 1094 0 1094 1093 0 1093 1091 0 624 1094 0
		 1094 1096 0 1096 1095 0 1095 1093 0 624 1097 0 1097 1096 0 623 1098 0 1098 1097 0
		 1097 1100 0 1100 1099 0 1099 1096 0 1098 1101 0 1101 1100 0 1098 563 0 564 1101 0
		 1101 1103 0 1103 1102 0 1102 1100 0 567 1103 0 568 1104 0 1104 1103 0 570 1105 0
		 1105 1104 0 572 1106 0 1106 1105 0 574 1107 0 1107 1106 0 576 1108 0 1108 1107 0
		 578 1109 0 1109 1108 0 580 1049 0 1049 1109 0 1109 1052 0 1052 1110 0 1110 1108 0
		 1110 1111 0 1111 1107 0 1110 1055 0 1055 1112 0 1112 1111 0 1112 1114 0 1114 1113 0
		 1113 1111 0 1112 1058 0 1058 1115 0 1115 1114 0 1115 1117 0 1117 1116 0 1116 1114 0
		 1115 1061 0 1061 1118 0 1118 1117 0 1118 1120 0 1120 1119 0 1119 1117 0 1118 1064 0
		 1064 1121 0 1121 1120 0 1121 1123 0 1123 1122 0 1122 1120 0 1121 1067 0 1067 1124 0
		 1124 1123 0 1124 1126 0 1126 1125 0 1125 1123 0 1124 1070 0 1070 1127 0 1127 1126 0
		 1127 1129 0 1129 1128 0 1128 1126 0 1127 1073 0 1073 1130 0 1130 1129 0 1130 1132 0
		 1132 1131 0 1131 1129 0 1130 1076 0 1076 1133 0 1133 1132 0 1133 1085 0 1086 1132 0
		 1133 1079 0 1079 1084 0 1087 1131 0 1088 1134 0 1134 1131 0 1134 1128 0 1089 1135 0
		 1135 1134 0 1135 1136 0 1136 1128 0 1135 1138 0 1138 1137 0 1137 1136 0 1136 1125 0
		 1137 1139 0 1139 1125 0 1137 1095 0 1095 1140 0 1140 1139 0 1139 1122 0 1140 1141 0
		 1141 1122 0 1140 1099 0 1099 1142 0 1142 1141 0 1141 1119 0 1142 1143 0 1143 1119 0
		 1142 1102 0 1102 1144 0 1144 1143 0 1143 1116 0 1144 1145 0 1145 1116 0 1144 1104 0
		 1105 1145 0 1145 1113 0 1106 1113 0 1138 1090 0 1093 1138 0 625 656 0;
	setAttr -s 4576 ".n";
	setAttr ".n[0:165]" -type "float3"  0.037636001 0.81294 0.58113003 1.9999999e-05
		 0.77608597 0.63062799 -4.9999999e-06 0.83428001 0.551341 0.052048001 0.84372199 0.53425199
		 0.037636001 0.81294 0.58113003 0.098975003 0.787503 0.608311 -4.2e-05 0.66778702
		 0.74435198 1.9999999e-05 0.77608597 0.63062799 0.037636001 0.81294 0.58113003 0.052048001
		 0.84372199 0.53425199 0.111309 0.83977902 0.53139597 0.098975003 0.787503 0.608311
		 0.055195998 0.95615202 -0.287624 9.6999996e-05 0.94822001 -0.31761399 -7.5999997e-05
		 0.91597599 -0.40123299 0.120591 0.94879001 -0.29198399 0.055195998 0.95615202 -0.287624
		 0.077261999 0.96380299 -0.25517499 5.1999999e-05 0.96314502 -0.26898199 9.6999996e-05
		 0.94822001 -0.31761399 0.055195998 0.95615202 -0.287624 0.120591 0.94879001 -0.29198399
		 0.144696 0.95932502 -0.242403 0.077261999 0.96380299 -0.25517499 -0.17942999 -0.83452201
		 -0.52094001 -0.136961 -0.82738101 -0.54468602 -0.165938 -0.82861 -0.53466702 -0.22178701
		 -0.84069902 -0.49399999 -0.17942999 -0.83452201 -0.52094001 -0.22178701 -0.84069902
		 -0.49399999 -0.228121 -0.83986402 -0.49253201 -0.179315 -0.835949 -0.51868701 -0.17942999
		 -0.83452201 -0.52094001 -0.179315 -0.835949 -0.51868701 -0.13787401 -0.82924598 -0.54161102
		 -0.136961 -0.82738101 -0.54468602 -0.52577299 -0.83739197 0.14945699 -0.54628402
		 -0.83596802 0.052262999 -0.46189001 -0.88028097 0.10846 -0.45043501 -0.862207 0.231748
		 -0.45043501 -0.862207 0.231748 -0.36100501 -0.88410801 0.29669601 -0.34082499 -0.91118598
		 0.23146901 -0.42655599 -0.88688302 0.17745 -0.45043501 -0.862207 0.231748 -0.42655599
		 -0.88688302 0.17745 -0.47123301 -0.87322903 0.124139 -0.52577299 -0.83739197 0.14945699
		 -0.45043501 -0.862207 0.231748 -0.46189001 -0.88028097 0.10846 -0.37820801 -0.89370799
		 0.241339 -0.36100501 -0.88410801 0.29669601 -0.37820801 -0.89370799 0.241339 -0.25301501
		 -0.910263 0.32772699 -0.270538 -0.90012199 0.34145099 -0.36100501 -0.88410801 0.29669601
		 -0.37820801 -0.89370799 0.241339 -0.46189001 -0.88028097 0.10846 -0.48597801 -0.87356901
		 -0.026512001 -0.44007999 -0.892932 0.094880998 -0.37820801 -0.89370799 0.241339 -0.44007999
		 -0.892932 0.094880998 -0.31766799 -0.92481798 0.209282 -0.25301501 -0.910263 0.32772699
		 -0.31766799 -0.92481798 0.209282 -0.44007999 -0.892932 0.094880998 -0.43841001 -0.89320302
		 -0.099927001 -0.34077999 -0.93992603 -0.020207999 -0.31766799 -0.92481798 0.209282
		 -0.34077999 -0.93992603 -0.020207999 -0.26466599 -0.963 0.050822999 -0.22046199 -0.93549401
		 0.27612799 -0.31766799 -0.92481798 0.209282 -0.22046199 -0.93549401 0.27612799 -0.152095
		 -0.91997302 0.36127201 -0.25301501 -0.910263 0.32772699 -0.152095 -0.91997302 0.36127201
		 -3.0000001e-06 -0.91698903 0.398913 6.1999999e-05 -0.92537397 0.37905601 -0.159832
		 -0.91834003 0.362086 -0.152095 -0.91997302 0.36127201 -0.159832 -0.91834003 0.362086
		 -0.270538 -0.90012199 0.34145099 -0.25301501 -0.910263 0.32772699 -0.152095 -0.91997302
		 0.36127201 -0.22046199 -0.93549401 0.27612799 6.0999999e-05 -0.94246602 0.33430299
		 -3.0000001e-06 -0.91698903 0.398913 6.0999999e-05 -0.94246602 0.33430299 -0.22046199
		 -0.93549401 0.27612799 -0.26466599 -0.963 0.050822999 -0.000108 -0.99601102 0.089229003
		 -0.000108 -0.99601102 0.089229003 -0.26466599 -0.963 0.050822999 -0.25167501 -0.946648
		 -0.201287 -1.1e-05 -0.979783 -0.200065 -1.1e-05 -0.979783 -0.200065 -0.25167501 -0.946648
		 -0.201287 -0.227402 -0.89254701 -0.38942 -1.5e-05 -0.914976 -0.40350699 -1.5e-05
		 -0.914976 -0.40350699 -0.227402 -0.89254701 -0.38942 -0.167786 -0.83861798 -0.51823598
		 -5.4e-05 -0.83306199 -0.55317998 -5.4e-05 -0.83306199 -0.55317998 -0.167786 -0.83861798
		 -0.51823598 -0.130375 -0.82657403 -0.54751998 -0.000132 -0.81801897 -0.57519102 -0.000132
		 -0.81801897 -0.57519102 -0.130375 -0.82657403 -0.54751998 -0.096922003 -0.82765198
		 -0.55281001 4.3e-05 -0.82016098 -0.572133 4.3e-05 -0.82016098 -0.572133 -0.096922003
		 -0.82765198 -0.55281001 -0.089056998 -0.82381803 -0.55981499 5.5e-05 -0.81917399
		 -0.57354599 5.5e-05 -0.81917399 -0.57354599 -0.089056998 -0.82381803 -0.55981499
		 -0.069090001 -0.83409101 -0.54728299 5.8000001e-05 -0.82464498 -0.565651 5.8000001e-05
		 -0.82464498 -0.565651 -0.069090001 -0.83409101 -0.54728299 -0.033357002 -0.86427802
		 -0.50190598 6.4e-05 -0.86788303 -0.496768 6.4e-05 -0.86788303 -0.496768 -0.033357002
		 -0.86427802 -0.50190598 -0.094761997 -0.84549099 -0.52551502 1.5e-05 -0.85618901
		 -0.51666301 1.5e-05 -0.85618901 -0.51666301 -0.094761997 -0.84549099 -0.52551502
		 -0.127846 -0.818353 -0.56031603 8e-06 -0.81712103 -0.57646602 8e-06 -0.81712103 -0.57646602
		 -0.127846 -0.818353 -0.56031603 -0.082714997 -0.88681501 -0.454662 1.8999999e-05
		 -0.89271301 -0.450625 1.8999999e-05 -0.89271301 -0.450625 -0.082714997 -0.88681501
		 -0.454662 -0.083594002 -0.92724699 -0.36500001 2.4999999e-05 -0.931943 -0.36260501
		 2.4999999e-05 -0.931943 -0.36260501 -0.083594002 -0.92724699 -0.36500001 -0.061980002
		 -0.90239203 -0.42643499 1.5e-05 -0.87870997 -0.47735599 1.5e-05 -0.87870997 -0.47735599
		 -0.061980002 -0.90239203 -0.42643499 -0.037018001 -0.87695599 -0.47914201 1.4e-05
		 -0.85544801 -0.51788902 1.4e-05 -0.85544801 -0.51788902 -0.037018001 -0.87695599
		 -0.47914201 -0.048289999 -0.880696 -0.47121501 -1.2e-05 -0.88414901 -0.467204 -1.2e-05
		 -0.88414901 -0.467204 -0.048289999 -0.880696 -0.47121501 -0.034563001 -0.91144001
		 -0.409978 8e-06 -0.90764201 -0.419745 8e-06 -0.90764201 -0.419745 -0.034563001 -0.91144001
		 -0.409978 -0.00072499999 -0.96221 -0.27230701 -2.4000001e-05 -0.96536499 -0.260905
		 -2.4000001e-05 -0.96536499 -0.260905 -0.00072499999 -0.96221 -0.27230701 0.033197999
		 -0.99522001 -0.091839999 3.0000001e-06 -0.99987 -0.016156999 3.0000001e-06 -0.99987
		 -0.016156999 0.033197999 -0.99522001 -0.091839999;
	setAttr ".n[166:331]" -type "float3"  0.062089998 -0.99420601 0.087746002 2.2e-05
		 -0.98800802 0.154405 2.2e-05 -0.98800802 0.154405 0.062089998 -0.99420601 0.087746002
		 0.10861 -0.94496399 0.308622 -2e-06 -0.96200401 0.273036 -2e-06 -0.96200401 0.273036
		 0.10861 -0.94496399 0.308622 0.187334 -0.74460101 0.64068401 1.1e-05 -0.81467998
		 0.57991099 1.1e-05 -0.81467998 0.57991099 0.187334 -0.74460101 0.64068401 0.24035101
		 -0.24766 0.93856001 -1e-06 -0.29198 0.956424 -1e-06 -0.29198 0.956424 0.24035101
		 -0.24766 0.93856001 0.205203 0.407949 0.88964599 -1e-06 0.42683199 0.90433103 -1e-06
		 0.42683199 0.90433103 0.205203 0.407949 0.88964599 0.128847 0.78724098 0.60303402
		 1e-06 0.80732 0.590114 1e-06 0.80732 0.590114 0.128847 0.78724098 0.60303402 0.083757997
		 0.89921701 0.42941099 -1.6e-05 0.90928501 0.41617301 -1.6e-05 0.90928501 0.41617301
		 0.083757997 0.89921701 0.42941099 0.073122002 0.91720903 0.39163801 0 0.92202598
		 0.38712701 0 0.92202598 0.38712701 0.073122002 0.91720903 0.39163801 0.071819 0.91894799
		 0.387784 -4.9999999e-06 0.922746 0.385409 -4.9999999e-06 0.922746 0.385409 0.071819
		 0.91894799 0.387784 0.071906999 0.917889 0.39026701 2e-06 0.92166299 0.38799101 2e-06
		 0.92166299 0.38799101 0.071906999 0.917889 0.39026701 0.072217003 0.91535401 0.396121
		 1e-06 0.91930097 0.393556 1e-06 0.91930097 0.393556 0.072217003 0.91535401 0.396121
		 0.072518997 0.910115 0.40796 -1.5e-05 0.91483098 0.403837 -1.5e-05 0.91483098 0.403837
		 0.072518997 0.910115 0.40796 0.071969002 0.90070301 0.42843199 -2e-06 0.90586001
		 0.42357799 -2e-06 0.90586001 0.42357799 0.071969002 0.90070301 0.42843199 0.069998004
		 0.88898897 0.452546 2.1e-05 0.892905 0.45024601 2.1e-05 0.892905 0.45024601 0.069998004
		 0.88898897 0.452546 0.062316 0.883591 0.46409401 -4.9999999e-06 0.886437 0.46285
		 -4.9999999e-06 0.886437 0.46285 0.062316 0.883591 0.46409401 0.04817 0.88443202 0.46417701
		 -1.7e-05 0.88662398 0.46249199 -1.7e-05 0.88662398 0.46249199 0.04817 0.88443202
		 0.46417701 0.039535999 0.88254303 0.468566 -9.9999997e-06 0.88173598 0.471744 -9.9999997e-06
		 0.88173598 0.471744 0.039535999 0.88254303 0.468566 0.042311002 0.87576503 0.48087901
		 -6.0000002e-06 0.87252098 0.48857701 -6.0000002e-06 0.87252098 0.48857701 0.042311002
		 0.87576503 0.48087901 0.051277999 0.86418498 0.50055403 -2.4999999e-05 0.862728 0.50566798
		 -2.4999999e-05 0.862728 0.50566798 0.051277999 0.86418498 0.50055403 0.052048001
		 0.84372199 0.53425199 -4.9999999e-06 0.83428001 0.551341 0.051277999 0.86418498 0.50055403
		 0.108512 0.86950397 0.48185799 0.111309 0.83977902 0.53139597 0.052048001 0.84372199
		 0.53425199 0.051277999 0.86418498 0.50055403 0.042311002 0.87576503 0.48087901 0.110064
		 0.87965101 0.46270999 0.108512 0.86950397 0.48185799 0.110064 0.87965101 0.46270999
		 0.18566801 0.87812001 0.440945 0.17489301 0.86885798 0.463139 0.108512 0.86950397
		 0.48185799 0.110064 0.87965101 0.46270999 0.042311002 0.87576503 0.48087901 0.039535999
		 0.88254303 0.468566 0.115799 0.88185197 0.457086 0.110064 0.87965101 0.46270999 0.115799
		 0.88185197 0.457086 0.198511 0.87753397 0.43649501 0.18566801 0.87812001 0.440945
		 0.198511 0.87753397 0.43649501 0.245812 0.87800801 0.410705 0.24623699 0.87696302
		 0.41267699 0.18566801 0.87812001 0.440945 0.198511 0.87753397 0.43649501 0.115799
		 0.88185197 0.457086 0.13107599 0.87880403 0.458828 0.2085 0.87477398 0.43737701 0.198511
		 0.87753397 0.43649501 0.2085 0.87477398 0.43737701 0.24272101 0.880808 0.40652701
		 0.245812 0.87800801 0.410705 0.24272101 0.880808 0.40652701 0.28038001 0.88944799
		 0.360928 0.28556299 0.88672698 0.36355099 0.245812 0.87800801 0.410705 0.24272101
		 0.880808 0.40652701 0.2085 0.87477398 0.43737701 0.200504 0.88070899 0.42912701 0.21994001
		 0.89140302 0.396267 0.24272101 0.880808 0.40652701 0.21994001 0.89140302 0.396267
		 0.25315699 0.90198702 0.34975901 0.28038001 0.88944799 0.360928 0.25315699 0.90198702
		 0.34975901 0.29431799 0.91369098 0.28025901 0.32343599 0.90134299 0.28804401 0.28038001
		 0.88944799 0.360928 0.25315699 0.90198702 0.34975901 0.21994001 0.89140302 0.396267
		 0.18816499 0.90611303 0.37888399 0.219712 0.916565 0.33411801 0.25315699 0.90198702
		 0.34975901 0.219712 0.916565 0.33411801 0.26025701 0.92720598 0.269362 0.29431799
		 0.91369098 0.28025901 0.26025701 0.92720598 0.269362 0.28731599 0.93493801 0.20818301
		 0.31911799 0.92315698 0.214349 0.29431799 0.91369098 0.28025901 0.26025701 0.92720598
		 0.269362 0.219712 0.916565 0.33411801 0.194317 0.92701 0.32076901 0.235698 0.93667901
		 0.25899801 0.26025701 0.92720598 0.269362 0.235698 0.93667901 0.25899801 0.26530701
		 0.94268399 0.20238499 0.28731599 0.93493801 0.20818301 0.26530701 0.94268399 0.20238499
		 0.27801701 0.94706398 0.160549 0.29871199 0.94027698 0.163249 0.28731599 0.93493801
		 0.20818301 0.26530701 0.94268399 0.20238499 0.235698 0.93667901 0.25899801 0.217447
		 0.94351202 0.25000501 0.250781 0.94782799 0.196799 0.26530701 0.94268399 0.20238499
		 0.250781 0.94782799 0.196799 0.26439101 0.95139599 0.15793499 0.27801701 0.94706398
		 0.160549 0.26439101 0.95139599 0.15793499 0.26955801 0.95483398 0.12502199 0.283245
		 0.95074999 0.125884 0.27801701 0.94706398 0.160549 0.26439101 0.95139599 0.15793499
		 0.250781 0.94782799 0.196799 0.241901 0.95113498 0.191902 0.25428799 0.95450199 0.15576699;
	setAttr ".n[332:497]" -type "float3"  0.26439101 0.95139599 0.15793499 0.25428799
		 0.95450199 0.15576699 0.261619 0.95710999 0.124484 0.26955801 0.95483398 0.12502199
		 0.261619 0.95710999 0.124484 0.25104401 0.96493798 0.076623999 0.26278001 0.96190602
		 0.075384997 0.26955801 0.95483398 0.12502199 0.261619 0.95710999 0.124484 0.25428799
		 0.95450199 0.15576699 0.24995799 0.95596898 0.153768 0.26227999 0.95717001 0.122615
		 0.261619 0.95710999 0.124484 0.26227999 0.95717001 0.122615 0.24876399 0.96586603
		 0.072249003 0.25104401 0.96493798 0.076623999 0.24876399 0.96586603 0.072249003 0.25201201
		 0.96741903 -0.024278 0.236957 0.97149003 -0.0076680002 0.25104401 0.96493798 0.076623999
		 0.24876399 0.96586603 0.072249003 0.26227999 0.95717001 0.122615 0.27798799 0.95332903
		 0.117845 0.274571 0.95997602 0.055277999 0.24876399 0.96586603 0.072249003 0.274571
		 0.95997602 0.055277999 0.29491901 0.95347202 -0.062568001 0.25201201 0.96741903 -0.024278
		 0.29491901 0.95347202 -0.062568001 0.242708 0.96484202 -0.100859 0.21496101 0.974051
		 -0.070827998 0.25201201 0.96741903 -0.024278 0.29491901 0.95347202 -0.062568001 0.274571
		 0.95997602 0.055277999 0.375577 0.92679101 -0.00067699997 0.39071399 0.90945601 -0.142243
		 0.29491901 0.95347202 -0.062568001 0.39071399 0.90945601 -0.142243 0.30533201 0.93741399
		 -0.167413 0.242708 0.96484202 -0.100859 0.30533201 0.93741399 -0.167413 0.29731101
		 0.92186201 -0.24855 0.225062 0.96502399 -0.134446 0.242708 0.96484202 -0.100859 0.30533201
		 0.93741399 -0.167413 0.39071399 0.90945601 -0.142243 0.54373997 0.79534298 -0.267912
		 0.431272 0.84732801 -0.30990401 0.30533201 0.93741399 -0.167413 0.431272 0.84732801
		 -0.30990401 0.40286499 0.807127 -0.43156299 0.29731101 0.92186201 -0.24855 0.40286499
		 0.807127 -0.43156299 0.27797899 0.79078501 -0.54533201 0.191782 0.929685 -0.31449401
		 0.29731101 0.92186201 -0.24855 0.40286499 0.807127 -0.43156299 0.431272 0.84732801
		 -0.30990401 0.60504299 0.60126698 -0.52192003 0.520944 0.55040997 -0.65243202 0.40286499
		 0.807127 -0.43156299 0.520944 0.55040997 -0.65243202 0.34911501 0.529365 -0.77323401
		 0.27797899 0.79078501 -0.54533201 0.34911501 0.529365 -0.77323401 0.18929499 0.55610698
		 -0.80926698 0.12515099 0.83873802 -0.52995801 0.27797899 0.79078501 -0.54533201 0.34911501
		 0.529365 -0.77323401 0.520944 0.55040997 -0.65243202 0.581119 0.145256 -0.80075002
		 0.379291 0.14614201 -0.91366303 0.34911501 0.529365 -0.77323401 0.379291 0.14614201
		 -0.91366303 0.21985 0.16226999 -0.96194297 0.18929499 0.55610698 -0.80926698 0.21985
		 0.16226999 -0.96194297 -1e-06 0.22288799 -0.97484398 3.0000001e-06 0.72792399 -0.68565702
		 0.18929499 0.55610698 -0.80926698 0.21985 0.16226999 -0.96194297 0.379291 0.14614201
		 -0.91366303 0.34531099 -0.28370699 -0.89457798 0.197025 -0.259137 -0.94553101 0.21985
		 0.16226999 -0.96194297 0.197025 -0.259137 -0.94553101 -4e-06 -0.41771001 -0.90858001
		 -1e-06 0.22288799 -0.97484398 -4e-06 -0.41771001 -0.90858001 0.197025 -0.259137 -0.94553101
		 0.13334499 -0.63342899 -0.76222497 2e-06 -0.80321401 -0.59569001 2e-06 -0.80321401
		 -0.59569001 0.13334499 -0.63342899 -0.76222497 0.051791999 -0.87873501 -0.47449201
		 -1.8000001e-05 -0.95816898 -0.286203 -1.8000001e-05 -0.95816898 -0.286203 0.051791999
		 -0.87873501 -0.47449201 -0.012145 -0.97526598 -0.22070201 1.1e-05 -0.99315399 -0.116813
		 1.1e-05 -0.99315399 -0.116813 -0.012145 -0.97526598 -0.22070201 -0.046789002 -0.996804
		 -0.064747997 -6.0000002e-06 -0.99884099 -0.048133999 -6.0000002e-06 -0.99884099 -0.048133999
		 -0.046789002 -0.996804 -0.064747997 -0.064217001 -0.99746698 0.030591 -3.3e-05 -0.99999303
		 0.003756 -3.3e-05 -0.99999303 0.003756 -0.064217001 -0.99746698 0.030591 -0.075327002
		 -0.98970503 0.121697 1.7e-05 -0.99763399 0.068752997 1.7e-05 -0.99763399 0.068752997
		 -0.075327002 -0.98970503 0.121697 -0.087857999 -0.96548003 0.245213 8e-06 -0.974814
		 0.22301801 8e-06 -0.974814 0.22301801 -0.087857999 -0.96548003 0.245213 -0.122908
		 -0.914774 0.38481501 6.0000002e-06 -0.90565097 0.42402399 6.0000002e-06 -0.90565097
		 0.42402399 -0.122908 -0.914774 0.38481501 -0.17705999 -0.87854803 0.44362399 9.0000003e-06
		 -0.84070402 0.54149598 9.0000003e-06 -0.84070402 0.54149598 -0.17705999 -0.87854803
		 0.44362399 -0.182779 -0.94973898 0.25413999 3.0000001e-06 -0.96012002 0.279587 3.0000001e-06
		 -0.96012002 0.279587 -0.182779 -0.94973898 0.25413999 -0.053151 -0.99807698 -0.031884
		 2.6e-05 -0.99402201 -0.109178 2.6e-05 -0.99402201 -0.109178 -0.053151 -0.99807698
		 -0.031884 -0.014359 -0.99939299 -0.031736001 -2.6e-05 -0.99823701 -0.059349 -2.6e-05
		 -0.99823701 -0.059349 -0.014359 -0.99939299 -0.031736001 -0.070695996 -0.98424399
		 0.162066 -3.0000001e-06 -0.98434597 0.176249 -3.0000001e-06 -0.98434597 0.176249
		 -0.070695996 -0.98424399 0.162066 -0.149446 -0.93768299 0.31371599 -2.7e-05 -0.93819499
		 0.34610799 -2.7e-05 -0.93819499 0.34610799 -0.149446 -0.93768299 0.31371599 -0.159832
		 -0.91834003 0.362086 6.1999999e-05 -0.92537397 0.37905601 -0.149446 -0.93768299 0.31371599
		 -0.070695996 -0.98424399 0.162066 -0.147499 -0.97908598 0.140122 -0.24536601 -0.92715901
		 0.28314701 -0.149446 -0.93768299 0.31371599 -0.24536601 -0.92715901 0.28314701 -0.270538
		 -0.90012199 0.34145099 -0.159832 -0.91834003 0.362086 -0.24536601 -0.92715901 0.28314701
		 -0.147499 -0.97908598 0.140122 -0.21611799 -0.97067499 0.105274 -0.34082499 -0.91118598
		 0.23146901 -0.24536601 -0.92715901 0.28314701 -0.34082499 -0.91118598 0.23146901
		 -0.36100501 -0.88410801 0.29669601 -0.270538 -0.90012199 0.34145099 -0.21611799 -0.97067499
		 0.105274 -0.147499 -0.97908598 0.140122;
	setAttr ".n[498:663]" -type "float3"  -0.053624999 -0.99833298 -0.021356 -0.109836
		 -0.99384302 -0.014566 -0.21611799 -0.97067499 0.105274 -0.109836 -0.99384302 -0.014566
		 -0.178066 -0.98360801 -0.028407 -0.27938199 -0.95910501 0.045425002 -0.21611799 -0.97067499
		 0.105274 -0.27938199 -0.95910501 0.045425002 -0.42655599 -0.88688302 0.17745 -0.34082499
		 -0.91118598 0.23146901 -0.27938199 -0.95910501 0.045425002 -0.178066 -0.98360801
		 -0.028407 -0.237913 -0.96938199 -0.060794 -0.32987401 -0.94400299 0.0065100002 -0.27938199
		 -0.95910501 0.045425002 -0.32987401 -0.94400299 0.0065100002 -0.47123301 -0.87322903
		 0.124139 -0.42655599 -0.88688302 0.17745 -0.32987401 -0.94400299 0.0065100002 -0.237913
		 -0.96938199 -0.060794 -0.28411001 -0.95445901 -0.091045 -0.37375799 -0.92723101 -0.023387
		 -0.32987401 -0.94400299 0.0065100002 -0.37375799 -0.92723101 -0.023387 -0.52506602
		 -0.84895301 0.059873 -0.47123301 -0.87322903 0.124139 -0.52506602 -0.84895301 0.059873
		 -0.37375799 -0.92723101 -0.023387 -0.414868 -0.90649003 -0.078482002 -0.54663402
		 -0.83666402 -0.034412 -0.52506602 -0.84895301 0.059873 -0.54663402 -0.83666402 -0.034412
		 -0.53924102 -0.83950901 -0.066667996 -0.54628402 -0.83596802 0.052262999 -0.52506602
		 -0.84895301 0.059873 -0.54628402 -0.83596802 0.052262999 -0.52577299 -0.83739197
		 0.14945699 -0.47123301 -0.87322903 0.124139 -0.53924102 -0.83950901 -0.066667996
		 -0.54663402 -0.83666402 -0.034412 -0.55356902 -0.82119501 -0.138569 -0.53142899 -0.82930499
		 -0.17273299 -0.53924102 -0.83950901 -0.066667996 -0.53142899 -0.82930499 -0.17273299
		 -0.48361501 -0.86216098 -0.15098099 -0.48597801 -0.87356901 -0.026512001 -0.53924102
		 -0.83950901 -0.066667996 -0.48597801 -0.87356901 -0.026512001 -0.46189001 -0.88028097
		 0.10846 -0.54628402 -0.83596802 0.052262999 -0.48361501 -0.86216098 -0.15098099 -0.53142899
		 -0.82930499 -0.17273299 -0.48329201 -0.83078301 -0.276095 -0.43358099 -0.85643601
		 -0.28022099 -0.48361501 -0.86216098 -0.15098099 -0.43358099 -0.85643601 -0.28022099
		 -0.39870301 -0.87743199 -0.266738 -0.43841001 -0.89320302 -0.099927001 -0.48361501
		 -0.86216098 -0.15098099 -0.43841001 -0.89320302 -0.099927001 -0.44007999 -0.892932
		 0.094880998 -0.48597801 -0.87356901 -0.026512001 -0.39870301 -0.87743199 -0.266738
		 -0.43358099 -0.85643601 -0.28022099 -0.383362 -0.84725899 -0.367677 -0.34648299 -0.85286498
		 -0.39060399 -0.39870301 -0.87743199 -0.266738 -0.34648299 -0.85286498 -0.39060399
		 -0.28688401 -0.880099 -0.378315 -0.33265999 -0.91427201 -0.231179 -0.39870301 -0.87743199
		 -0.266738 -0.33265999 -0.91427201 -0.231179 -0.34077999 -0.93992603 -0.020207999
		 -0.43841001 -0.89320302 -0.099927001 -0.33265999 -0.91427201 -0.231179 -0.28688401
		 -0.880099 -0.378315 -0.227402 -0.89254701 -0.38942 -0.25167501 -0.946648 -0.201287
		 -0.33265999 -0.91427201 -0.231179 -0.25167501 -0.946648 -0.201287 -0.26466599 -0.963
		 0.050822999 -0.34077999 -0.93992603 -0.020207999 -0.28688401 -0.880099 -0.378315
		 -0.34648299 -0.85286498 -0.39060399 -0.26271099 -0.83594298 -0.48185399 -0.22483
		 -0.83318502 -0.50522602 -0.28688401 -0.880099 -0.378315 -0.22483 -0.83318502 -0.50522602
		 -0.167786 -0.83861798 -0.51823598 -0.227402 -0.89254701 -0.38942 -0.22483 -0.83318502
		 -0.50522602 -0.26271099 -0.83594298 -0.48185399 -0.22178701 -0.84069902 -0.49399999
		 -0.165938 -0.82861 -0.53466702 -0.22483 -0.83318502 -0.50522602 -0.165938 -0.82861
		 -0.53466702 -0.130375 -0.82657403 -0.54751998 -0.167786 -0.83861798 -0.51823598 -0.26271099
		 -0.83594298 -0.48185399 -0.34648299 -0.85286498 -0.39060399 -0.383362 -0.84725899
		 -0.367677 -0.29418501 -0.84538198 -0.44585201 -0.26271099 -0.83594298 -0.48185399
		 -0.29418501 -0.84538198 -0.44585201 -0.228121 -0.83986402 -0.49253201 -0.22178701
		 -0.84069902 -0.49399999 -0.29418501 -0.84538198 -0.44585201 -0.383362 -0.84725899
		 -0.367677 -0.42541301 -0.83063501 -0.359263 -0.34646401 -0.83382201 -0.42977199 -0.29418501
		 -0.84538198 -0.44585201 -0.34646401 -0.83382201 -0.42977199 -0.263437 -0.84008402
		 -0.47419399 -0.228121 -0.83986402 -0.49253201 -0.263437 -0.84008402 -0.47419399 -0.34646401
		 -0.83382201 -0.42977199 -0.42030099 -0.814367 -0.40019199 -0.34110099 -0.82471102
		 -0.451112 -0.263437 -0.84008402 -0.47419399 -0.34110099 -0.82471102 -0.451112 -0.23416001
		 -0.83779401 -0.49322399 -0.18242501 -0.84508401 -0.50254798 -0.263437 -0.84008402
		 -0.47419399 -0.18242501 -0.84508401 -0.50254798 -0.179315 -0.835949 -0.51868701 -0.228121
		 -0.83986402 -0.49253201 -0.18242501 -0.84508401 -0.50254798 -0.23416001 -0.83779401
		 -0.49322399 -0.118772 -0.85920298 -0.497659 -0.118653 -0.843988 -0.52307302 -0.18242501
		 -0.84508401 -0.50254798 -0.118653 -0.843988 -0.52307302 -0.13787401 -0.82924598 -0.54161102
		 -0.179315 -0.835949 -0.51868701 -0.118653 -0.843988 -0.52307302 -0.118772 -0.85920298
		 -0.497659 -0.033357002 -0.86427802 -0.50190598 -0.069090001 -0.83409101 -0.54728299
		 -0.118653 -0.843988 -0.52307302 -0.069090001 -0.83409101 -0.54728299 -0.089056998
		 -0.82381803 -0.55981499 -0.13787401 -0.82924598 -0.54161102 -0.118772 -0.85920298
		 -0.497659 -0.23416001 -0.83779401 -0.49322399 -0.32416999 -0.808824 -0.49063 -0.21444
		 -0.823313 -0.52552003 -0.118772 -0.85920298 -0.497659 -0.21444 -0.823313 -0.52552003
		 -0.094761997 -0.84549099 -0.52551502 -0.033357002 -0.86427802 -0.50190598 -0.21444
		 -0.823313 -0.52552003 -0.32416999 -0.808824 -0.49063 -0.248779 -0.84573102 -0.472067
		 -0.22262301 -0.81929201 -0.52839398 -0.21444 -0.823313 -0.52552003 -0.22262301 -0.81929201
		 -0.52839398 -0.127846 -0.818353 -0.56031603 -0.094761997 -0.84549099 -0.52551502
		 -0.22262301 -0.81929201 -0.52839398 -0.248779 -0.84573102 -0.472067 -0.128498 -0.91728902
		 -0.376921 -0.129761 -0.895594 -0.42552799 -0.22262301 -0.81929201 -0.52839398 -0.129761
		 -0.895594 -0.42552799 -0.082714997 -0.88681501 -0.454662 -0.127846 -0.818353 -0.56031603;
	setAttr ".n[664:829]" -type "float3"  -0.129761 -0.895594 -0.42552799 -0.128498
		 -0.91728902 -0.376921 -0.054795001 -0.95214403 -0.30069801 -0.080075003 -0.94177699
		 -0.32656601 -0.129761 -0.895594 -0.42552799 -0.080075003 -0.94177699 -0.32656601
		 -0.083594002 -0.92724699 -0.36500001 -0.082714997 -0.88681501 -0.454662 -0.080075003
		 -0.94177699 -0.32656601 -0.054795001 -0.95214403 -0.30069801 -0.068556003 -0.93750203
		 -0.34116 -0.053011 -0.92766798 -0.36962399 -0.080075003 -0.94177699 -0.32656601 -0.053011
		 -0.92766798 -0.36962399 -0.061980002 -0.90239203 -0.42643499 -0.083594002 -0.92724699
		 -0.36500001 -0.053011 -0.92766798 -0.36962399 -0.068556003 -0.93750203 -0.34116 -0.159426
		 -0.87257499 -0.46173301 -0.084316 -0.880382 -0.46671101 -0.053011 -0.92766798 -0.36962399
		 -0.084316 -0.880382 -0.46671101 -0.037018001 -0.87695599 -0.47914201 -0.061980002
		 -0.90239203 -0.42643499 -0.084316 -0.880382 -0.46671101 -0.159426 -0.87257499 -0.46173301
		 -0.221806 -0.83681399 -0.50054401 -0.116685 -0.86532903 -0.487432 -0.084316 -0.880382
		 -0.46671101 -0.116685 -0.86532903 -0.487432 -0.048289999 -0.880696 -0.47121501 -0.037018001
		 -0.87695599 -0.47914201 -0.116685 -0.86532903 -0.487432 -0.221806 -0.83681399 -0.50054401
		 -0.180719 -0.89008099 -0.41844499 -0.096753001 -0.90628397 -0.41144699 -0.116685
		 -0.86532903 -0.487432 -0.096753001 -0.90628397 -0.41144699 -0.034563001 -0.91144001
		 -0.409978 -0.048289999 -0.880696 -0.47121501 -0.096753001 -0.90628397 -0.41144699
		 -0.180719 -0.89008099 -0.41844499 -0.101226 -0.951343 -0.291031 -0.057753999 -0.95223898
		 -0.299844 -0.096753001 -0.90628397 -0.41144699 -0.057753999 -0.95223898 -0.299844
		 -0.00072499999 -0.96221 -0.27230701 -0.034563001 -0.91144001 -0.409978 -0.057753999
		 -0.95223898 -0.299844 -0.101226 -0.951343 -0.291031 -0.0066189999 -0.990587 -0.136724
		 -0.010016 -0.98733503 -0.15833201 -0.057753999 -0.95223898 -0.299844 -0.010016 -0.98733503
		 -0.15833201 0.033197999 -0.99522001 -0.091839999 -0.00072499999 -0.96221 -0.27230701
		 -0.010016 -0.98733503 -0.15833201 -0.0066189999 -0.990587 -0.136724 0.11766 -0.990798
		 0.066904001 0.057188001 -0.99790698 0.03018 -0.010016 -0.98733503 -0.15833201 0.057188001
		 -0.99790698 0.03018 0.062089998 -0.99420601 0.087746002 0.033197999 -0.99522001 -0.091839999
		 0.057188001 -0.99790698 0.03018 0.11766 -0.990798 0.066904001 0.25964499 -0.91486698
		 0.30919901 0.161459 -0.93583202 0.31328899 0.057188001 -0.99790698 0.03018 0.161459
		 -0.93583202 0.31328899 0.10861 -0.94496399 0.308622 0.062089998 -0.99420601 0.087746002
		 0.161459 -0.93583202 0.31328899 0.25964499 -0.91486698 0.30919901 0.40378699 -0.71572101
		 0.56982398 0.27308401 -0.72249597 0.63515699 0.161459 -0.93583202 0.31328899 0.27308401
		 -0.72249597 0.63515699 0.187334 -0.74460101 0.64068401 0.10861 -0.94496399 0.308622
		 0.27308401 -0.72249597 0.63515699 0.40378699 -0.71572101 0.56982398 0.51438701 -0.21859699
		 0.829229 0.348465 -0.201621 0.91538 0.27308401 -0.72249597 0.63515699 0.348465 -0.201621
		 0.91538 0.24035101 -0.24766 0.93856001 0.187334 -0.74460101 0.64068401 0.348465 -0.201621
		 0.91538 0.51438701 -0.21859699 0.829229 0.39721799 0.533988 0.74637401 0.265641 0.55504
		 0.78826803 0.348465 -0.201621 0.91538 0.265641 0.55504 0.78826803 0.205203 0.407949
		 0.88964599 0.24035101 -0.24766 0.93856001 0.265641 0.55504 0.78826803 0.39721799
		 0.533988 0.74637401 0.19610199 0.85359001 0.482627 0.14647099 0.86279202 0.48387599
		 0.265641 0.55504 0.78826803 0.14647099 0.86279202 0.48387599 0.128847 0.78724098
		 0.60303402 0.205203 0.407949 0.88964599 0.14647099 0.86279202 0.48387599 0.19610199
		 0.85359001 0.482627 0.13130599 0.91045302 0.39221701 0.111251 0.91372597 0.39080301
		 0.14647099 0.86279202 0.48387599 0.111251 0.91372597 0.39080301 0.083757997 0.89921701
		 0.42941099 0.128847 0.78724098 0.60303402 0.111251 0.91372597 0.39080301 0.13130599
		 0.91045302 0.39221701 0.118795 0.92146301 0.36985701 0.106449 0.91974097 0.377817
		 0.111251 0.91372597 0.39080301 0.106449 0.91974097 0.377817 0.073122002 0.91720903
		 0.39163801 0.083757997 0.89921701 0.42941099 0.106449 0.91974097 0.377817 0.118795
		 0.92146301 0.36985701 0.118633 0.92298001 0.366106 0.105725 0.92102402 0.37488401
		 0.106449 0.91974097 0.377817 0.105725 0.92102402 0.37488401 0.071819 0.91894799 0.387784
		 0.073122002 0.91720903 0.39163801 0.105725 0.92102402 0.37488401 0.118633 0.92298001
		 0.366106 0.122479 0.92145097 0.368682 0.10764 0.91935998 0.37840599 0.105725 0.92102402
		 0.37488401 0.10764 0.91935998 0.37840599 0.071906999 0.917889 0.39026701 0.071819
		 0.91894799 0.387784 0.10764 0.91935998 0.37840599 0.122479 0.92145097 0.368682 0.128314
		 0.918419 0.374221 0.111208 0.91591001 0.38567001 0.10764 0.91935998 0.37840599 0.111208
		 0.91591001 0.38567001 0.072217003 0.91535401 0.396121 0.071906999 0.917889 0.39026701
		 0.111208 0.91591001 0.38567001 0.128314 0.918419 0.374221 0.136251 0.91417903 0.38172299
		 0.117076 0.90965599 0.39852199 0.111208 0.91591001 0.38567001 0.117076 0.90965599
		 0.39852199 0.072518997 0.910115 0.40796 0.072217003 0.91535401 0.396121 0.117076
		 0.90965599 0.39852199 0.136251 0.91417903 0.38172299 0.15042 0.90683198 0.39373699
		 0.12633599 0.899984 0.41721401 0.117076 0.90965599 0.39852199 0.12633599 0.899984
		 0.41721401 0.071969002 0.90070301 0.42843199 0.072518997 0.910115 0.40796 0.12633599
		 0.899984 0.41721401 0.15042 0.90683198 0.39373699 0.17418499 0.89469701 0.41130999
		 0.13935301 0.88570601 0.44283801 0.12633599 0.899984 0.41721401 0.13935301 0.88570601
		 0.44283801;
	setAttr ".n[830:995]" -type "float3"  0.069998004 0.88898897 0.452546 0.071969002
		 0.90070301 0.42843199 0.13935301 0.88570601 0.44283801 0.17418499 0.89469701 0.41130999
		 0.200504 0.88070899 0.42912701 0.144805 0.87674898 0.45863199 0.13935301 0.88570601
		 0.44283801 0.144805 0.87674898 0.45863199 0.062316 0.883591 0.46409401 0.069998004
		 0.88898897 0.452546 0.144805 0.87674898 0.45863199 0.200504 0.88070899 0.42912701
		 0.2085 0.87477398 0.43737701 0.13107599 0.87880403 0.458828 0.144805 0.87674898 0.45863199
		 0.13107599 0.87880403 0.458828 0.04817 0.88443202 0.46417701 0.062316 0.883591 0.46409401
		 0.17418499 0.89469701 0.41130999 0.18816499 0.90611303 0.37888399 0.21994001 0.89140302
		 0.396267 0.200504 0.88070899 0.42912701 0.17418499 0.89469701 0.41130999 0.15042
		 0.90683198 0.39373699 0.16329201 0.91628301 0.36573401 0.18816499 0.90611303 0.37888399
		 0.16329201 0.91628301 0.36573401 0.194317 0.92701 0.32076901 0.219712 0.916565 0.33411801
		 0.18816499 0.90611303 0.37888399 0.16329201 0.91628301 0.36573401 0.15042 0.90683198
		 0.39373699 0.136251 0.91417903 0.38172299 0.148406 0.92169398 0.358408 0.16329201
		 0.91628301 0.36573401 0.148406 0.92169398 0.358408 0.176644 0.93344402 0.312217 0.194317
		 0.92701 0.32076901 0.176644 0.93344402 0.312217 0.217447 0.94351202 0.25000501 0.235698
		 0.93667901 0.25899801 0.194317 0.92701 0.32076901 0.176644 0.93344402 0.312217 0.148406
		 0.92169398 0.358408 0.136959 0.92572701 0.35252199 0.16323701 0.93805897 0.305612
		 0.176644 0.93344402 0.312217 0.16323701 0.93805897 0.305612 0.203206 0.94869697 0.24224401
		 0.217447 0.94351202 0.25000501 0.203206 0.94869697 0.24224401 0.241901 0.95113498
		 0.191902 0.250781 0.94782799 0.196799 0.217447 0.94351202 0.25000501 0.203206 0.94869697
		 0.24224401 0.16323701 0.93805897 0.305612 0.152932 0.94144201 0.30049601 0.194299
		 0.952079 0.23620801 0.203206 0.94869697 0.24224401 0.194299 0.952079 0.23620801 0.237957
		 0.95292199 0.18792801 0.241901 0.95113498 0.191902 0.237957 0.95292199 0.18792801
		 0.24995799 0.95596898 0.153768 0.25428799 0.95450199 0.15576699 0.241901 0.95113498
		 0.191902 0.237957 0.95292199 0.18792801 0.194299 0.952079 0.23620801 0.19881099 0.95143598
		 0.23504201 0.243444 0.95199299 0.18559501 0.237957 0.95292199 0.18792801 0.243444
		 0.95199299 0.18559501 0.25843999 0.95407701 0.151476 0.24995799 0.95596898 0.153768
		 0.25843999 0.95407701 0.151476 0.27798799 0.95332903 0.117845 0.26227999 0.95717001
		 0.122615 0.24995799 0.95596898 0.153768 0.25843999 0.95407701 0.151476 0.243444 0.95199299
		 0.18559501 0.287494 0.93873101 0.190082 0.30832401 0.939641 0.148359 0.25843999 0.95407701
		 0.151476 0.30832401 0.939641 0.148359 0.35630599 0.92920297 0.098119996 0.27798799
		 0.95332903 0.117845 0.35630599 0.92920297 0.098119996 0.375577 0.92679101 -0.00067699997
		 0.274571 0.95997602 0.055277999 0.27798799 0.95332903 0.117845 0.35630599 0.92920297
		 0.098119996 0.30832401 0.939641 0.148359 0.46967301 0.87192601 0.13839 0.55013901
		 0.833848 0.045223001 0.35630599 0.92920297 0.098119996 0.55013901 0.833848 0.045223001
		 0.58053303 0.80672503 -0.110341 0.375577 0.92679101 -0.00067699997 0.58053303 0.80672503
		 -0.110341 0.54373997 0.79534298 -0.267912 0.39071399 0.90945601 -0.142243 0.375577
		 0.92679101 -0.00067699997 0.58053303 0.80672503 -0.110341 0.55013901 0.833848 0.045223001
		 0.82382101 0.56486601 -0.047386002 0.81063998 0.52864802 -0.251782 0.58053303 0.80672503
		 -0.110341 0.81063998 0.52864802 -0.251782 0.72601199 0.53321099 -0.43427199 0.54373997
		 0.79534298 -0.267912 0.72601199 0.53321099 -0.43427199 0.60504299 0.60126698 -0.52192003
		 0.431272 0.84732801 -0.30990401 0.54373997 0.79534298 -0.267912 0.72601199 0.53321099
		 -0.43427199 0.81063998 0.52864802 -0.251782 0.92673802 0.048266001 -0.372594 0.81876701
		 0.103018 -0.56480801 0.72601199 0.53321099 -0.43427199 0.81876701 0.103018 -0.56480801
		 0.70689797 0.14540701 -0.69220799 0.60504299 0.60126698 -0.52192003 0.70689797 0.14540701
		 -0.69220799 0.581119 0.145256 -0.80075002 0.520944 0.55040997 -0.65243202 0.60504299
		 0.60126698 -0.52192003 0.70689797 0.14540701 -0.69220799 0.81876701 0.103018 -0.56480801
		 0.718023 -0.40055901 -0.56920499 0.609101 -0.418147 -0.67390603 0.70689797 0.14540701
		 -0.69220799 0.609101 -0.418147 -0.67390603 0.53081298 -0.316641 -0.78611398 0.581119
		 0.145256 -0.80075002 0.53081298 -0.316641 -0.78611398 0.34531099 -0.28370699 -0.89457798
		 0.379291 0.14614201 -0.91366303 0.581119 0.145256 -0.80075002 0.53081298 -0.316641
		 -0.78611398 0.609101 -0.418147 -0.67390603 0.366539 -0.79649001 -0.480887 0.37944901
		 -0.703219 -0.60124999 0.53081298 -0.316641 -0.78611398 0.37944901 -0.703219 -0.60124999
		 0.257624 -0.64701402 -0.717637 0.34531099 -0.28370699 -0.89457798 0.257624 -0.64701402
		 -0.717637 0.13334499 -0.63342899 -0.76222497 0.197025 -0.259137 -0.94553101 0.34531099
		 -0.28370699 -0.89457798 0.257624 -0.64701402 -0.717637 0.37944901 -0.703219 -0.60124999
		 0.19253699 -0.91878599 -0.34461901 0.141215 -0.88354403 -0.44655201 0.257624 -0.64701402
		 -0.717637 0.141215 -0.88354403 -0.44655201 0.051791999 -0.87873501 -0.47449201 0.13334499
		 -0.63342899 -0.76222497 0.141215 -0.88354403 -0.44655201 0.19253699 -0.91878599 -0.34461901
		 0.061918002 -0.98538297 -0.158701 0.044828001 -0.97778302 -0.204769 0.141215 -0.88354403
		 -0.44655201 0.044828001 -0.97778302 -0.204769 -0.012145 -0.97526598 -0.22070201 0.051791999
		 -0.87873501 -0.47449201;
	setAttr ".n[996:1161]" -type "float3"  0.044828001 -0.97778302 -0.204769 0.061918002
		 -0.98538297 -0.158701 -0.0098479996 -0.99829298 -0.057565998 -0.013721 -0.998133
		 -0.05951 0.044828001 -0.97778302 -0.204769 -0.013721 -0.998133 -0.05951 -0.046789002
		 -0.996804 -0.064747997 -0.012145 -0.97526598 -0.22070201 -0.013721 -0.998133 -0.05951
		 -0.0098479996 -0.99829298 -0.057565998 -0.059514999 -0.99812597 0.014215 -0.052530002
		 -0.99794698 0.036635 -0.013721 -0.998133 -0.05951 -0.052530002 -0.99794698 0.036635
		 -0.064217001 -0.99746698 0.030591 -0.046789002 -0.996804 -0.064747997 -0.052530002
		 -0.99794698 0.036635 -0.059514999 -0.99812597 0.014215 -0.098513998 -0.992535 0.071904004
		 -0.084919997 -0.989797 0.114411 -0.052530002 -0.99794698 0.036635 -0.084919997 -0.989797
		 0.114411 -0.075327002 -0.98970503 0.121697 -0.064217001 -0.99746698 0.030591 -0.084919997
		 -0.989797 0.114411 -0.098513998 -0.992535 0.071904004 -0.132167 -0.98470402 0.113537
		 -0.120609 -0.97457498 0.188833 -0.084919997 -0.989797 0.114411 -0.120609 -0.97457498
		 0.188833 -0.087857999 -0.96548003 0.245213 -0.075327002 -0.98970503 0.121697 -0.120609
		 -0.97457498 0.188833 -0.132167 -0.98470402 0.113537 -0.189781 -0.96942401 0.15556601
		 -0.186583 -0.94247502 0.27735999 -0.120609 -0.97457498 0.188833 -0.186583 -0.94247502
		 0.27735999 -0.122908 -0.914774 0.38481501 -0.087857999 -0.96548003 0.245213 -0.186583
		 -0.94247502 0.27735999 -0.189781 -0.96942401 0.15556601 -0.29183501 -0.93590999 0.197245
		 -0.26997301 -0.90859503 0.31870201 -0.186583 -0.94247502 0.27735999 -0.26997301 -0.90859503
		 0.31870201 -0.17705999 -0.87854803 0.44362399 -0.122908 -0.914774 0.38481501 -0.26997301
		 -0.90859503 0.31870201 -0.29183501 -0.93590999 0.197245 -0.32966599 -0.93064398 0.158814
		 -0.26159 -0.94240499 0.208433 -0.26997301 -0.90859503 0.31870201 -0.26159 -0.94240499
		 0.208433 -0.182779 -0.94973898 0.25413999 -0.17705999 -0.87854803 0.44362399 -0.26159
		 -0.94240499 0.208433 -0.32966599 -0.93064398 0.158814 -0.20026401 -0.97950202 0.021705
		 -0.112717 -0.99361902 0.0039550001 -0.26159 -0.94240499 0.208433 -0.112717 -0.99361902
		 0.0039550001 -0.053151 -0.99807698 -0.031884 -0.182779 -0.94973898 0.25413999 -0.112717
		 -0.99361902 0.0039550001 -0.20026401 -0.97950202 0.021705 -0.109836 -0.99384302 -0.014566
		 -0.053624999 -0.99833298 -0.021356 -0.112717 -0.99361902 0.0039550001 -0.053624999
		 -0.99833298 -0.021356 -0.014359 -0.99939299 -0.031736001 -0.053151 -0.99807698 -0.031884
		 -0.20026401 -0.97950202 0.021705 -0.32966599 -0.93064398 0.158814 -0.337502 -0.93794
		 0.07976 -0.27869001 -0.96038097 0.00050099997 -0.20026401 -0.97950202 0.021705 -0.27869001
		 -0.96038097 0.00050099997 -0.178066 -0.98360801 -0.028407 -0.109836 -0.99384302 -0.014566
		 -0.27869001 -0.96038097 0.00050099997 -0.337502 -0.93794 0.07976 -0.307322 -0.95160502
		 -0.0010770001 -0.30869401 -0.94987702 -0.049415998 -0.27869001 -0.96038097 0.00050099997
		 -0.30869401 -0.94987702 -0.049415998 -0.237913 -0.96938199 -0.060794 -0.178066 -0.98360801
		 -0.028407 -0.30869401 -0.94987702 -0.049415998 -0.307322 -0.95160502 -0.0010770001
		 -0.267156 -0.96222299 -0.052485 -0.300302 -0.95035499 -0.08151 -0.30869401 -0.94987702
		 -0.049415998 -0.300302 -0.95035499 -0.08151 -0.28411001 -0.95445901 -0.091045 -0.237913
		 -0.96938199 -0.060794 -0.300302 -0.95035499 -0.08151 -0.267156 -0.96222299 -0.052485
		 -0.24551 -0.96767199 -0.057766002 -0.265645 -0.95959598 -0.092776 -0.300302 -0.95035499
		 -0.08151 -0.265645 -0.95959598 -0.092776 -0.29510301 -0.94799203 -0.119269 -0.28411001
		 -0.95445901 -0.091045 -0.29510301 -0.94799203 -0.119269 -0.265645 -0.95959598 -0.092776
		 -0.21354701 -0.96870399 -0.126534 -0.27445799 -0.948075 -0.16070899 -0.29510301 -0.94799203
		 -0.119269 -0.27445799 -0.948075 -0.16070899 -0.42950401 -0.89059699 -0.14954001 -0.414868
		 -0.90649003 -0.078482002 -0.29510301 -0.94799203 -0.119269 -0.414868 -0.90649003
		 -0.078482002 -0.37375799 -0.92723101 -0.023387 -0.28411001 -0.95445901 -0.091045
		 -0.42950401 -0.89059699 -0.14954001 -0.27445799 -0.948075 -0.16070899 -0.25948599
		 -0.94032001 -0.220147 -0.43095601 -0.87436301 -0.223085 -0.42950401 -0.89059699 -0.14954001
		 -0.43095601 -0.87436301 -0.223085 -0.52709103 -0.81667602 -0.234981 -0.55356902 -0.82119501
		 -0.138569 -0.42950401 -0.89059699 -0.14954001 -0.55356902 -0.82119501 -0.138569 -0.54663402
		 -0.83666402 -0.034412 -0.414868 -0.90649003 -0.078482002 -0.52709103 -0.81667602
		 -0.234981 -0.43095601 -0.87436301 -0.223085 -0.417602 -0.85512501 -0.307197 -0.47971299
		 -0.81412899 -0.32721499 -0.52709103 -0.81667602 -0.234981 -0.47971299 -0.81412899
		 -0.32721499 -0.42541301 -0.83063501 -0.359263 -0.48329201 -0.83078301 -0.276095 -0.52709103
		 -0.81667602 -0.234981 -0.48329201 -0.83078301 -0.276095 -0.53142899 -0.82930499 -0.17273299
		 -0.55356902 -0.82119501 -0.138569 -0.47971299 -0.81412899 -0.32721499 -0.417602 -0.85512501
		 -0.307197 -0.39632699 -0.83917099 -0.37244701 -0.42030099 -0.814367 -0.40019199 -0.47971299
		 -0.81412899 -0.32721499 -0.42030099 -0.814367 -0.40019199 -0.34646401 -0.83382201
		 -0.42977199 -0.42541301 -0.83063501 -0.359263 -0.39632699 -0.83917099 -0.37244701
		 -0.417602 -0.85512501 -0.307197 -0.25852001 -0.921561 -0.28964299 -0.252516 -0.90103102
		 -0.35267401 -0.39632699 -0.83917099 -0.37244701 -0.252516 -0.90103102 -0.35267401
		 -0.248097 -0.87504297 -0.415629 -0.371829 -0.82500398 -0.42557299 -0.39632699 -0.83917099
		 -0.37244701 -0.371829 -0.82500398 -0.42557299 -0.34110099 -0.82471102 -0.451112 -0.42030099
		 -0.814367 -0.40019199 -0.371829 -0.82500398 -0.42557299 -0.248097 -0.87504297 -0.415629
		 -0.248779 -0.84573102 -0.472067 -0.32416999 -0.808824 -0.49063 -0.371829 -0.82500398
		 -0.42557299 -0.32416999 -0.808824 -0.49063;
	setAttr ".n[1162:1327]" -type "float3"  -0.23416001 -0.83779401 -0.49322399 -0.34110099
		 -0.82471102 -0.451112 -0.248097 -0.87504297 -0.415629 -0.252516 -0.90103102 -0.35267401
		 -0.125297 -0.94018197 -0.31679401 -0.124202 -0.92868698 -0.34944701 -0.248097 -0.87504297
		 -0.415629 -0.124202 -0.92868698 -0.34944701 -0.128498 -0.91728902 -0.376921 -0.248779
		 -0.84573102 -0.472067 -0.124202 -0.92868698 -0.34944701 -0.125297 -0.94018197 -0.31679401
		 -0.056520998 -0.95520502 -0.29049799 -0.051442001 -0.95258099 -0.29990399 -0.124202
		 -0.92868698 -0.34944701 -0.051442001 -0.95258099 -0.29990399 -0.054795001 -0.95214403
		 -0.30069801 -0.128498 -0.91728902 -0.376921 -0.051442001 -0.95258099 -0.29990399
		 -0.056520998 -0.95520502 -0.29049799 -0.145101 -0.93981802 -0.30933401 -0.098575003
		 -0.93753999 -0.333619 -0.051442001 -0.95258099 -0.29990399 -0.098575003 -0.93753999
		 -0.333619 -0.068556003 -0.93750203 -0.34116 -0.054795001 -0.95214403 -0.30069801
		 -0.098575003 -0.93753999 -0.333619 -0.145101 -0.93981802 -0.30933401 -0.35188401
		 -0.85246998 -0.38661599 -0.24936 -0.85999101 -0.445236 -0.098575003 -0.93753999 -0.333619
		 -0.24936 -0.85999101 -0.445236 -0.159426 -0.87257499 -0.46173301 -0.068556003 -0.93750203
		 -0.34116 -0.24936 -0.85999101 -0.445236 -0.35188401 -0.85246998 -0.38661599 -0.44517499
		 -0.789262 -0.422948 -0.334993 -0.81192899 -0.47806999 -0.24936 -0.85999101 -0.445236
		 -0.334993 -0.81192899 -0.47806999 -0.221806 -0.83681399 -0.50054401 -0.159426 -0.87257499
		 -0.46173301 -0.334993 -0.81192899 -0.47806999 -0.44517499 -0.789262 -0.422948 -0.305852
		 -0.88529003 -0.35030901 -0.248647 -0.88777202 -0.387344 -0.334993 -0.81192899 -0.47806999
		 -0.248647 -0.88777202 -0.387344 -0.180719 -0.89008099 -0.41844499 -0.221806 -0.83681399
		 -0.50054401 -0.248647 -0.88777202 -0.387344 -0.305852 -0.88529003 -0.35030901 -0.148514
		 -0.95546198 -0.25502199 -0.133706 -0.95184302 -0.27589399 -0.248647 -0.88777202 -0.387344
		 -0.133706 -0.95184302 -0.27589399 -0.101226 -0.951343 -0.291031 -0.180719 -0.89008099
		 -0.41844499 -0.133706 -0.95184302 -0.27589399 -0.148514 -0.95546198 -0.25502199 -0.0094609996
		 -0.98676199 -0.1619 -0.020562001 -0.98733097 -0.157335 -0.133706 -0.95184302 -0.27589399
		 -0.020562001 -0.98733097 -0.157335 -0.0066189999 -0.990587 -0.136724 -0.101226 -0.951343
		 -0.291031 -0.020562001 -0.98733097 -0.157335 -0.0094609996 -0.98676199 -0.1619 0.17842899
		 -0.98359197 -0.026636999 0.12613399 -0.99200702 0.0035679999 -0.020562001 -0.98733097
		 -0.157335 0.12613399 -0.99200702 0.0035679999 0.11766 -0.990798 0.066904001 -0.0066189999
		 -0.990587 -0.136724 0.12613399 -0.99200702 0.0035679999 0.17842899 -0.98359197 -0.026636999
		 0.41055 -0.89885598 0.15332299 0.32771999 -0.91461301 0.236818 0.12613399 -0.99200702
		 0.0035679999 0.32771999 -0.91461301 0.236818 0.25964499 -0.91486698 0.30919901 0.11766
		 -0.990798 0.066904001 0.32771999 -0.91461301 0.236818 0.41055 -0.89885598 0.15332299
		 0.65378302 -0.66381001 0.36321399 0.51005203 -0.72491598 0.462973 0.32771999 -0.91461301
		 0.236818 0.51005203 -0.72491598 0.462973 0.40378699 -0.71572101 0.56982398 0.25964499
		 -0.91486698 0.30919901 0.51005203 -0.72491598 0.462973 0.65378302 -0.66381001 0.36321399
		 0.80545801 -0.26912001 0.52802598 0.66412199 -0.27954099 0.69339699 0.51005203 -0.72491598
		 0.462973 0.66412199 -0.27954099 0.69339699 0.51438701 -0.21859699 0.829229 0.40378699
		 -0.71572101 0.56982398 0.66412199 -0.27954099 0.69339699 0.80545801 -0.26912001 0.52802598
		 0.77015001 0.230232 0.594863 0.58158797 0.376041 0.72135299 0.66412199 -0.27954099
		 0.69339699 0.58158797 0.376041 0.72135299 0.39721799 0.533988 0.74637401 0.51438701
		 -0.21859699 0.829229 0.58158797 0.376041 0.72135299 0.77015001 0.230232 0.594863
		 0.53791201 0.66815901 0.51401699 0.345002 0.758901 0.55230701 0.58158797 0.376041
		 0.72135299 0.345002 0.758901 0.55230701 0.19610199 0.85359001 0.482627 0.39721799
		 0.533988 0.74637401 0.345002 0.758901 0.55230701 0.53791201 0.66815901 0.51401699
		 0.29639199 0.873155 0.38697901 0.170403 0.90274 0.394999 0.345002 0.758901 0.55230701
		 0.170403 0.90274 0.394999 0.13130599 0.91045302 0.39221701 0.19610199 0.85359001
		 0.482627 0.170403 0.90274 0.394999 0.29639199 0.873155 0.38697901 0.17677601 0.93217999
		 0.315898 0.120581 0.93040001 0.346145 0.170403 0.90274 0.394999 0.120581 0.93040001
		 0.346145 0.118795 0.92146301 0.36985701 0.13130599 0.91045302 0.39221701 0.120581
		 0.93040001 0.346145 0.17677601 0.93217999 0.315898 0.149299 0.94260597 0.29867101
		 0.119939 0.93163699 0.343027 0.120581 0.93040001 0.346145 0.119939 0.93163699 0.343027
		 0.118633 0.92298001 0.366106 0.118795 0.92146301 0.36985701 0.119939 0.93163699 0.343027
		 0.149299 0.94260597 0.29867101 0.152932 0.94144201 0.30049601 0.127433 0.92901701
		 0.34740299 0.119939 0.93163699 0.343027 0.127433 0.92901701 0.34740299 0.122479 0.92145097
		 0.368682 0.118633 0.92298001 0.366106 0.127433 0.92901701 0.34740299 0.152932 0.94144201
		 0.30049601 0.16323701 0.93805897 0.305612 0.136959 0.92572701 0.35252199 0.127433
		 0.92901701 0.34740299 0.136959 0.92572701 0.35252199 0.128314 0.918419 0.374221 0.122479
		 0.92145097 0.368682 0.149299 0.94260597 0.29867101 0.19881099 0.95143598 0.23504201
		 0.194299 0.952079 0.23620801 0.152932 0.94144201 0.30049601 0.149299 0.94260597 0.29867101
		 0.17677601 0.93217999 0.315898 0.24486101 0.93686002 0.249672 0.19881099 0.95143598
		 0.23504201 0.24486101 0.93686002 0.249672 0.287494 0.93873101 0.190082 0.243444 0.95199299
		 0.18559501 0.19881099 0.95143598 0.23504201;
	setAttr ".n[1328:1493]" -type "float3"  0.24486101 0.93686002 0.249672 0.17677601
		 0.93217999 0.315898 0.29639199 0.873155 0.38697901 0.40304399 0.86324 0.303927 0.24486101
		 0.93686002 0.249672 0.40304399 0.86324 0.303927 0.45488101 0.86500502 0.211775 0.287494
		 0.93873101 0.190082 0.45488101 0.86500502 0.211775 0.46967301 0.87192601 0.13839
		 0.30832401 0.939641 0.148359 0.287494 0.93873101 0.190082 0.45488101 0.86500502 0.211775
		 0.40304399 0.86324 0.303927 0.67776603 0.62810397 0.382254 0.74906802 0.61883199
		 0.236525 0.45488101 0.86500502 0.211775 0.74906802 0.61883199 0.236525 0.766967 0.63238603
		 0.108854 0.46967301 0.87192601 0.13839 0.766967 0.63238603 0.108854 0.82382101 0.56486601
		 -0.047386002 0.55013901 0.833848 0.045223001 0.46967301 0.87192601 0.13839 0.766967
		 0.63238603 0.108854 0.74906802 0.61883199 0.236525 0.96082598 0.17539699 0.214589
		 0.98950398 0.138395 0.041591998 0.766967 0.63238603 0.108854 0.98950398 0.138395
		 0.041591998 0.98569602 0.080022 -0.148324 0.82382101 0.56486601 -0.047386002 0.98569602
		 0.080022 -0.148324 0.92673802 0.048266001 -0.372594 0.81063998 0.52864802 -0.251782
		 0.82382101 0.56486601 -0.047386002 0.98569602 0.080022 -0.148324 0.98950398 0.138395
		 0.041591998 0.91068101 -0.410862 -0.043047 0.87649697 -0.433963 -0.208397 0.98569602
		 0.080022 -0.148324 0.87649697 -0.433963 -0.208397 0.804932 -0.442788 -0.39499801
		 0.92673802 0.048266001 -0.372594 0.804932 -0.442788 -0.39499801 0.718023 -0.40055901
		 -0.56920499 0.81876701 0.103018 -0.56480801 0.92673802 0.048266001 -0.372594 0.804932
		 -0.442788 -0.39499801 0.87649697 -0.433963 -0.208397 0.59259498 -0.77761 -0.210131
		 0.54915202 -0.76363897 -0.33953899 0.804932 -0.442788 -0.39499801 0.54915202 -0.76363897
		 -0.33953899 0.45969 -0.764489 -0.45192999 0.718023 -0.40055901 -0.56920499 0.45969
		 -0.764489 -0.45192999 0.366539 -0.79649001 -0.480887 0.609101 -0.418147 -0.67390603
		 0.718023 -0.40055901 -0.56920499 0.45969 -0.764489 -0.45192999 0.54915202 -0.76363897
		 -0.33953899 0.25929701 -0.93309802 -0.249183 0.206919 -0.92896402 -0.30693799 0.45969
		 -0.764489 -0.45192999 0.206919 -0.92896402 -0.30693799 0.155571 -0.94452602 -0.289253
		 0.366539 -0.79649001 -0.480887 0.155571 -0.94452602 -0.289253 0.19253699 -0.91878599
		 -0.34461901 0.37944901 -0.703219 -0.60124999 0.366539 -0.79649001 -0.480887 0.155571
		 -0.94452602 -0.289253 0.206919 -0.92896402 -0.30693799 0.027716 -0.98075902 -0.193243
		 0.022802999 -0.98596603 -0.165381 0.155571 -0.94452602 -0.289253 0.022802999 -0.98596603
		 -0.165381 0.061918002 -0.98538297 -0.158701 0.19253699 -0.91878599 -0.34461901 0.022802999
		 -0.98596603 -0.165381 0.027716 -0.98075902 -0.193243 -0.10609 -0.989268 -0.100467
		 -0.063813999 -0.99465102 -0.081219003 0.022802999 -0.98596603 -0.165381 -0.063813999
		 -0.99465102 -0.081219003 -0.0098479996 -0.99829298 -0.057565998 0.061918002 -0.98538297
		 -0.158701 -0.063813999 -0.99465102 -0.081219003 -0.10609 -0.989268 -0.100467 -0.24044999
		 -0.97065997 0.001545 -0.133229 -0.99106699 -0.0060620001 -0.063813999 -0.99465102
		 -0.081219003 -0.133229 -0.99106699 -0.0060620001 -0.059514999 -0.99812597 0.014215
		 -0.0098479996 -0.99829298 -0.057565998 -0.133229 -0.99106699 -0.0060620001 -0.24044999
		 -0.97065997 0.001545 -0.30145499 -0.951401 0.062936999 -0.16511001 -0.98508298 0.048489001
		 -0.133229 -0.99106699 -0.0060620001 -0.16511001 -0.98508298 0.048489001 -0.098513998
		 -0.992535 0.071904004 -0.059514999 -0.99812597 0.014215 -0.16511001 -0.98508298 0.048489001
		 -0.30145499 -0.951401 0.062936999 -0.25539801 -0.96516001 0.056905001 -0.163001 -0.98436397
		 0.066771999 -0.16511001 -0.98508298 0.048489001 -0.163001 -0.98436397 0.066771999
		 -0.132167 -0.98470402 0.113537 -0.098513998 -0.992535 0.071904004 -0.163001 -0.98436397
		 0.066771999 -0.25539801 -0.96516001 0.056905001 -0.18404201 -0.98267102 0.022066001
		 -0.17829999 -0.98052901 0.082292996 -0.163001 -0.98436397 0.066771999 -0.17829999
		 -0.98052901 0.082292996 -0.189781 -0.96942401 0.15556601 -0.132167 -0.98470402 0.113537
		 -0.17829999 -0.98052901 0.082292996 -0.18404201 -0.98267102 0.022066001 -0.21913999
		 -0.97569299 -0.00095800002 -0.26097301 -0.960926 0.092275001 -0.17829999 -0.98052901
		 0.082292996 -0.26097301 -0.960926 0.092275001 -0.29183501 -0.93590999 0.197245 -0.189781
		 -0.96942401 0.15556601 -0.26097301 -0.960926 0.092275001 -0.21913999 -0.97569299
		 -0.00095800002 -0.307322 -0.95160502 -0.0010770001 -0.337502 -0.93794 0.07976 -0.26097301
		 -0.960926 0.092275001 -0.337502 -0.93794 0.07976 -0.32966599 -0.93064398 0.158814
		 -0.29183501 -0.93590999 0.197245 -0.21913999 -0.97569299 -0.00095800002 -0.18404201
		 -0.98267102 0.022066001 -0.205841 -0.97765499 -0.042677 -0.190676 -0.97984803 -0.059505999
		 -0.21913999 -0.97569299 -0.00095800002 -0.190676 -0.97984803 -0.059505999 -0.267156
		 -0.96222299 -0.052485 -0.307322 -0.95160502 -0.0010770001 -0.190676 -0.97984803 -0.059505999
		 -0.205841 -0.97765499 -0.042677 -0.25125501 -0.96424198 -0.084314004 -0.20005 -0.97750002
		 -0.066887997 -0.190676 -0.97984803 -0.059505999 -0.20005 -0.97750002 -0.066887997
		 -0.24551 -0.96767199 -0.057766002 -0.267156 -0.96222299 -0.052485 -0.20005 -0.97750002
		 -0.066887997 -0.25125501 -0.96424198 -0.084314004 -0.321944 -0.93818301 -0.127142
		 -0.244526 -0.966304 -0.080393001 -0.20005 -0.97750002 -0.066887997 -0.244526 -0.966304
		 -0.080393001 -0.222215 -0.97182798 -0.078551002 -0.24551 -0.96767199 -0.057766002
		 -0.222215 -0.97182798 -0.078551002 -0.244526 -0.966304 -0.080393001 -0.28359401 -0.94667202
		 -0.15292899 -0.17869499 -0.96983999 -0.165764 -0.222215 -0.97182798 -0.078551002
		 -0.17869499 -0.96983999 -0.165764;
	setAttr ".n[1494:1659]" -type "float3"  -0.15271001 -0.96890599 -0.19468001 -0.21354701
		 -0.96870399 -0.126534 -0.222215 -0.97182798 -0.078551002 -0.21354701 -0.96870399
		 -0.126534 -0.265645 -0.95959598 -0.092776 -0.24551 -0.96767199 -0.057766002 -0.15271001
		 -0.96890599 -0.19468001 -0.17869499 -0.96983999 -0.165764 -0.102164 -0.96109998 -0.25661099
		 -0.129932 -0.95523798 -0.26577801 -0.15271001 -0.96890599 -0.19468001 -0.129932 -0.95523798
		 -0.26577801 -0.25852001 -0.921561 -0.28964299 -0.25948599 -0.94032001 -0.220147 -0.15271001
		 -0.96890599 -0.19468001 -0.25948599 -0.94032001 -0.220147 -0.27445799 -0.948075 -0.16070899
		 -0.21354701 -0.96870399 -0.126534 -0.129932 -0.95523798 -0.26577801 -0.102164 -0.96109998
		 -0.25661099 -0.056520998 -0.95520502 -0.29049799 -0.125297 -0.94018197 -0.31679401
		 -0.129932 -0.95523798 -0.26577801 -0.125297 -0.94018197 -0.31679401 -0.252516 -0.90103102
		 -0.35267401 -0.25852001 -0.921561 -0.28964299 -0.102164 -0.96109998 -0.25661099 -0.17869499
		 -0.96983999 -0.165764 -0.28359401 -0.94667202 -0.15292899 -0.23666599 -0.93960899
		 -0.247233 -0.102164 -0.96109998 -0.25661099 -0.23666599 -0.93960899 -0.247233 -0.145101
		 -0.93981802 -0.30933401 -0.056520998 -0.95520502 -0.29049799 -0.23666599 -0.93960899
		 -0.247233 -0.28359401 -0.94667202 -0.15292899 -0.393758 -0.89684898 -0.201535 -0.41495401
		 -0.86161 -0.29230499 -0.23666599 -0.93960899 -0.247233 -0.41495401 -0.86161 -0.29230499
		 -0.35188401 -0.85246998 -0.38661599 -0.145101 -0.93981802 -0.30933401 -0.41495401
		 -0.86161 -0.29230499 -0.393758 -0.89684898 -0.201535 -0.46268401 -0.85345799 -0.239861
		 -0.46405399 -0.82320702 -0.327084 -0.41495401 -0.86161 -0.29230499 -0.46405399 -0.82320702
		 -0.327084 -0.44517499 -0.789262 -0.422948 -0.35188401 -0.85246998 -0.38661599 -0.46405399
		 -0.82320702 -0.327084 -0.46268401 -0.85345799 -0.239861 -0.37012899 -0.90015697 -0.22961301
		 -0.327916 -0.89869601 -0.291233 -0.46405399 -0.82320702 -0.327084 -0.327916 -0.89869601
		 -0.291233 -0.305852 -0.88529003 -0.35030901 -0.44517499 -0.789262 -0.422948 -0.327916
		 -0.89869601 -0.291233 -0.37012899 -0.90015697 -0.22961301 -0.22161999 -0.95359999
		 -0.20379201 -0.195158 -0.94995701 -0.243917 -0.327916 -0.89869601 -0.291233 -0.195158
		 -0.94995701 -0.243917 -0.148514 -0.95546198 -0.25502199 -0.305852 -0.88529003 -0.35030901
		 -0.195158 -0.94995701 -0.243917 -0.22161999 -0.95359999 -0.20379201 -0.091063 -0.97902
		 -0.182284 -0.058708001 -0.97978801 -0.19123 -0.195158 -0.94995701 -0.243917 -0.058708001
		 -0.97978801 -0.19123 -0.0094609996 -0.98676199 -0.1619 -0.148514 -0.95546198 -0.25502199
		 -0.058708001 -0.97978801 -0.19123 -0.091063 -0.97902 -0.182284 0.076609999 -0.98583603
		 -0.14919101 0.12514199 -0.98597801 -0.110399 -0.058708001 -0.97978801 -0.19123 0.12514199
		 -0.98597801 -0.110399 0.17842899 -0.98359197 -0.026636999 -0.0094609996 -0.98676199
		 -0.1619 0.12514199 -0.98597801 -0.110399 0.076609999 -0.98583603 -0.14919101 0.34010801
		 -0.93641001 -0.086384997 0.40974101 -0.91184801 0.0254 0.12514199 -0.98597801 -0.110399
		 0.40974101 -0.91184801 0.0254 0.41055 -0.89885598 0.15332299 0.17842899 -0.98359197
		 -0.026636999 0.40974101 -0.91184801 0.0254 0.34010801 -0.93641001 -0.086384997 0.67195499
		 -0.74043 0.015497 0.70172 -0.68729299 0.18766201 0.40974101 -0.91184801 0.0254 0.70172
		 -0.68729299 0.18766201 0.65378302 -0.66381001 0.36321399 0.41055 -0.89885598 0.15332299
		 0.70172 -0.68729299 0.18766201 0.67195499 -0.74043 0.015497 0.93379301 -0.33263701
		 0.13184699 0.89200199 -0.310449 0.32856399 0.70172 -0.68729299 0.18766201 0.89200199
		 -0.310449 0.32856399 0.80545801 -0.26912001 0.52802598 0.65378302 -0.66381001 0.36321399
		 0.89200199 -0.310449 0.32856399 0.93379301 -0.33263701 0.13184699 0.96082598 0.17539699
		 0.214589 0.89382899 0.192754 0.404865 0.89200199 -0.310449 0.32856399 0.89382899
		 0.192754 0.404865 0.77015001 0.230232 0.594863 0.80545801 -0.26912001 0.52802598
		 0.89382899 0.192754 0.404865 0.96082598 0.17539699 0.214589 0.74906802 0.61883199
		 0.236525 0.67776603 0.62810397 0.382254 0.89382899 0.192754 0.404865 0.67776603 0.62810397
		 0.382254 0.53791201 0.66815901 0.51401699 0.77015001 0.230232 0.594863 0.93379301
		 -0.33263701 0.13184699 0.91068101 -0.410862 -0.043047 0.98950398 0.138395 0.041591998
		 0.96082598 0.17539699 0.214589 0.93379301 -0.33263701 0.13184699 0.67195499 -0.74043
		 0.015497 0.61406398 -0.78212303 -0.105876 0.91068101 -0.410862 -0.043047 0.61406398
		 -0.78212303 -0.105876 0.59259498 -0.77761 -0.210131 0.87649697 -0.433963 -0.208397
		 0.91068101 -0.410862 -0.043047 0.61406398 -0.78212303 -0.105876 0.67195499 -0.74043
		 0.015497 0.34010801 -0.93641001 -0.086384997 0.28549299 -0.94859803 -0.13658699 0.61406398
		 -0.78212303 -0.105876 0.28549299 -0.94859803 -0.13658699 0.288486 -0.94010901 -0.181582
		 0.59259498 -0.77761 -0.210131 0.288486 -0.94010901 -0.181582 0.25929701 -0.93309802
		 -0.249183 0.54915202 -0.76363897 -0.33953899 0.59259498 -0.77761 -0.210131 0.288486
		 -0.94010901 -0.181582 0.28549299 -0.94859803 -0.13658699 0.049600001 -0.98789501
		 -0.146983 0.052937999 -0.98757702 -0.147949 0.288486 -0.94010901 -0.181582 0.052937999
		 -0.98757702 -0.147949 0.038708001 -0.98501903 -0.16804799 0.25929701 -0.93309802
		 -0.249183 0.038708001 -0.98501903 -0.16804799 0.027716 -0.98075902 -0.193243 0.206919
		 -0.92896402 -0.30693799 0.25929701 -0.93309802 -0.249183 0.038708001 -0.98501903
		 -0.16804799 0.052937999 -0.98757702 -0.147949 -0.119843 -0.98560798 -0.119229 -0.12477
		 -0.98696798 -0.101619 0.038708001 -0.98501903 -0.16804799 -0.12477 -0.98696798 -0.101619
		 -0.10609 -0.989268 -0.100467 0.027716 -0.98075902 -0.193243;
	setAttr ".n[1660:1825]" -type "float3"  -0.12477 -0.98696798 -0.101619 -0.119843
		 -0.98560798 -0.119229 -0.28209499 -0.95498401 -0.091802001 -0.280256 -0.95932901
		 -0.033847 -0.12477 -0.98696798 -0.101619 -0.280256 -0.95932901 -0.033847 -0.24044999
		 -0.97065997 0.001545 -0.10609 -0.989268 -0.100467 -0.280256 -0.95932901 -0.033847
		 -0.28209499 -0.95498401 -0.091802001 -0.39143601 -0.91727799 -0.073345996 -0.37689099
		 -0.92621899 0.0084610004 -0.280256 -0.95932901 -0.033847 -0.37689099 -0.92621899
		 0.0084610004 -0.30145499 -0.951401 0.062936999 -0.24044999 -0.97065997 0.001545 -0.37689099
		 -0.92621899 0.0084610004 -0.39143601 -0.91727799 -0.073345996 -0.38300401 -0.92055601
		 -0.076710999 -0.33330101 -0.94280899 -0.0045520002 -0.37689099 -0.92621899 0.0084610004
		 -0.33330101 -0.94280899 -0.0045520002 -0.25539801 -0.96516001 0.056905001 -0.30145499
		 -0.951401 0.062936999 -0.33330101 -0.94280899 -0.0045520002 -0.38300401 -0.92055601
		 -0.076710999 -0.25125501 -0.96424198 -0.084314004 -0.205841 -0.97765499 -0.042677
		 -0.33330101 -0.94280899 -0.0045520002 -0.205841 -0.97765499 -0.042677 -0.18404201
		 -0.98267102 0.022066001 -0.25539801 -0.96516001 0.056905001 -0.38300401 -0.92055601
		 -0.076710999 -0.39143601 -0.91727799 -0.073345996 -0.39404801 -0.90633398 -0.152595
		 -0.42026299 -0.89506 -0.14915401 -0.38300401 -0.92055601 -0.076710999 -0.42026299
		 -0.89506 -0.14915401 -0.321944 -0.93818301 -0.127142 -0.25125501 -0.96424198 -0.084314004
		 -0.42026299 -0.89506 -0.14915401 -0.39404801 -0.90633398 -0.152595 -0.37012899 -0.90015697
		 -0.22961301 -0.46268401 -0.85345799 -0.239861 -0.42026299 -0.89506 -0.14915401 -0.46268401
		 -0.85345799 -0.239861 -0.393758 -0.89684898 -0.201535 -0.321944 -0.93818301 -0.127142
		 -0.39404801 -0.90633398 -0.152595 -0.39143601 -0.91727799 -0.073345996 -0.28209499
		 -0.95498401 -0.091802001 -0.261417 -0.95355397 -0.14965101 -0.39404801 -0.90633398
		 -0.152595 -0.261417 -0.95355397 -0.14965101 -0.22161999 -0.95359999 -0.20379201 -0.37012899
		 -0.90015697 -0.22961301 -0.261417 -0.95355397 -0.14965101 -0.28209499 -0.95498401
		 -0.091802001 -0.119843 -0.98560798 -0.119229 -0.103176 -0.98352498 -0.14843801 -0.261417
		 -0.95355397 -0.14965101 -0.103176 -0.98352498 -0.14843801 -0.091063 -0.97902 -0.182284
		 -0.22161999 -0.95359999 -0.20379201 -0.103176 -0.98352498 -0.14843801 -0.119843 -0.98560798
		 -0.119229 0.052937999 -0.98757702 -0.147949 0.049600001 -0.98789501 -0.146983 -0.103176
		 -0.98352498 -0.14843801 0.049600001 -0.98789501 -0.146983 0.076609999 -0.98583603
		 -0.14919101 -0.091063 -0.97902 -0.182284 0.049600001 -0.98789501 -0.146983 0.28549299
		 -0.94859803 -0.13658699 0.34010801 -0.93641001 -0.086384997 0.076609999 -0.98583603
		 -0.14919101 -0.393758 -0.89684898 -0.201535 -0.28359401 -0.94667202 -0.15292899 -0.244526
		 -0.966304 -0.080393001 -0.321944 -0.93818301 -0.127142 0.67776603 0.62810397 0.382254
		 0.40304399 0.86324 0.303927 0.29639199 0.873155 0.38697901 0.53791201 0.66815901
		 0.51401699 -0.25852001 -0.921561 -0.28964299 -0.417602 -0.85512501 -0.307197 -0.43095601
		 -0.87436301 -0.223085 -0.25948599 -0.94032001 -0.220147 0.136959 0.92572701 0.35252199
		 0.148406 0.92169398 0.358408 0.136251 0.91417903 0.38172299 0.128314 0.918419 0.374221
		 -0.42541301 -0.83063501 -0.359263 -0.383362 -0.84725899 -0.367677 -0.43358099 -0.85643601
		 -0.28022099 -0.48329201 -0.83078301 -0.276095 -0.053624999 -0.99833298 -0.021356
		 -0.147499 -0.97908598 0.140122 -0.070695996 -0.98424399 0.162066 -0.014359 -0.99939299
		 -0.031736001 3.0000001e-06 0.72792399 -0.68565702 1.5e-05 0.92154503 -0.388271 0.12515099
		 0.83873802 -0.52995801 0.18929499 0.55610698 -0.80926698 1.5e-05 0.92154503 -0.388271
		 2.3000001e-05 0.97992599 -0.19936 0.063703001 0.95898402 -0.27620801 0.12515099 0.83873802
		 -0.52995801 0.063703001 0.95898402 -0.27620801 2.3000001e-05 0.97992599 -0.19936
		 0 0.99247301 -0.122467 0.029964 0.98953301 -0.141165 0.063703001 0.95898402 -0.27620801
		 0.029964 0.98953301 -0.141165 0.125266 0.98092502 -0.148645 0.191782 0.929685 -0.31449401
		 0.063703001 0.95898402 -0.27620801 0.191782 0.929685 -0.31449401 0.27797899 0.79078501
		 -0.54533201 0.12515099 0.83873802 -0.52995801 0.125266 0.98092502 -0.148645 0.029964
		 0.98953301 -0.141165 0.019105 0.995588 -0.091862999 0.088804998 0.99371898 -0.068094999
		 0.125266 0.98092502 -0.148645 0.088804998 0.99371898 -0.068094999 0.18831199 0.978167
		 -0.087912999 0.225062 0.96502399 -0.134446 0.125266 0.98092502 -0.148645 0.225062
		 0.96502399 -0.134446 0.29731101 0.92186201 -0.24855 0.191782 0.929685 -0.31449401
		 0.18831199 0.978167 -0.087912999 0.088804998 0.99371898 -0.068094999 0.077923998
		 0.99541801 -0.055422999 0.169811 0.98262101 -0.074969001 0.18831199 0.978167 -0.087912999
		 0.169811 0.98262101 -0.074969001 0.20500401 0.976825 -0.061526 0.21496101 0.974051
		 -0.070827998 0.18831199 0.978167 -0.087912999 0.21496101 0.974051 -0.070827998 0.242708
		 0.96484202 -0.100859 0.225062 0.96502399 -0.134446 0.20500401 0.976825 -0.061526
		 0.169811 0.98262101 -0.074969001 0.161064 0.983567 -0.081570998 0.205015 0.97680801
		 -0.061767001 0.20500401 0.976825 -0.061526 0.205015 0.97680801 -0.061767001 0.23913699
		 0.97097898 -0.003576 0.236957 0.97149003 -0.0076680002 0.20500401 0.976825 -0.061526
		 0.236957 0.97149003 -0.0076680002 0.25201201 0.96741903 -0.024278 0.21496101 0.974051
		 -0.070827998 0.23913699 0.97097898 -0.003576 0.205015 0.97680801 -0.061767001 0.21100301
		 0.97498602 -0.069857001 0.253086 0.96740901 -0.0082419999 0.23913699 0.97097898 -0.003576
		 0.253086 0.96740901 -0.0082419999 0.27770299 0.95773298 0.075029999 0.26278001 0.96190602
		 0.075384997 0.23913699 0.97097898 -0.003576 0.26278001 0.96190602 0.075384997;
	setAttr ".n[1826:1991]" -type "float3"  0.25104401 0.96493798 0.076623999 0.236957
		 0.97149003 -0.0076680002 0.27770299 0.95773298 0.075029999 0.253086 0.96740901 -0.0082419999
		 0.26530999 0.96412599 -0.0084380005 0.29627499 0.952084 0.075877003 0.27770299 0.95773298
		 0.075029999 0.29627499 0.952084 0.075877003 0.30211401 0.94486099 0.126351 0.283245
		 0.95074999 0.125884 0.27770299 0.95773298 0.075029999 0.283245 0.95074999 0.125884
		 0.26955801 0.95483398 0.12502199 0.26278001 0.96190602 0.075384997 0.30211401 0.94486099
		 0.126351 0.29627499 0.952084 0.075877003 0.31928 0.944938 0.071787 0.328816 0.93612999
		 0.124664 0.30211401 0.94486099 0.126351 0.328816 0.93612999 0.124664 0.329236 0.92979503
		 0.164575 0.29871199 0.94027698 0.163249 0.30211401 0.94486099 0.126351 0.29871199
		 0.94027698 0.163249 0.27801701 0.94706398 0.160549 0.283245 0.95074999 0.125884 0.329236
		 0.92979503 0.164575 0.328816 0.93612999 0.124664 0.35705301 0.92638999 0.119647 0.35902399
		 0.91881698 0.16394401 0.329236 0.92979503 0.164575 0.35902399 0.91881698 0.16394401
		 0.34968799 0.91105002 0.21841601 0.31911799 0.92315698 0.214349 0.329236 0.92979503
		 0.164575 0.31911799 0.92315698 0.214349 0.28731599 0.93493801 0.20818301 0.29871199
		 0.94027698 0.163249 0.34968799 0.91105002 0.21841601 0.35902399 0.91881698 0.16394401
		 0.378997 0.910568 0.165006 0.36719999 0.90293199 0.223335 0.34968799 0.91105002 0.21841601
		 0.36719999 0.90293199 0.223335 0.33682701 0.894871 0.29283801 0.32343599 0.90134299
		 0.28804401 0.34968799 0.91105002 0.21841601 0.32343599 0.90134299 0.28804401 0.29431799
		 0.91369098 0.28025901 0.31911799 0.92315698 0.214349 0.33682701 0.894871 0.29283801
		 0.36719999 0.90293199 0.223335 0.37036499 0.89916998 0.23307399 0.33274201 0.890818
		 0.30939701 0.33682701 0.894871 0.29283801 0.33274201 0.890818 0.30939701 0.286358
		 0.882478 0.373137 0.28556299 0.88672698 0.36355099 0.33682701 0.894871 0.29283801
		 0.28556299 0.88672698 0.36355099 0.28038001 0.88944799 0.360928 0.32343599 0.90134299
		 0.28804401 0.286358 0.882478 0.373137 0.33274201 0.890818 0.30939701 0.33356899 0.886684
		 0.32019299 0.291035 0.87418699 0.38870999 0.286358 0.882478 0.373137 0.291035 0.87418699
		 0.38870999 0.233463 0.8689 0.43647301 0.24623699 0.87696302 0.41267699 0.286358 0.882478
		 0.373137 0.24623699 0.87696302 0.41267699 0.245812 0.87800801 0.410705 0.28556299
		 0.88672698 0.36355099 0.233463 0.8689 0.43647301 0.291035 0.87418699 0.38870999 0.313517
		 0.84797198 0.427376 0.246163 0.84013402 0.48329899 0.233463 0.8689 0.43647301 0.246163
		 0.84013402 0.48329899 0.178388 0.83893597 0.51416302 0.17489301 0.86885798 0.463139
		 0.233463 0.8689 0.43647301 0.17489301 0.86885798 0.463139 0.18566801 0.87812001 0.440945
		 0.24623699 0.87696302 0.41267699 0.178388 0.83893597 0.51416302 0.246163 0.84013402
		 0.48329899 0.240972 0.77063602 0.58995998 0.16114999 0.77119797 0.615861 0.178388
		 0.83893597 0.51416302 0.16114999 0.77119797 0.615861 0.098975003 0.787503 0.608311
		 0.111309 0.83977902 0.53139597 0.178388 0.83893597 0.51416302 0.111309 0.83977902
		 0.53139597 0.108512 0.86950397 0.48185799 0.17489301 0.86885798 0.463139 0.16114999
		 0.77119797 0.615861 0.240972 0.77063602 0.58995998 4.7000001e-05 0.66359901 0.74808902
		 7.0000001e-06 0.666632 0.74538702 0.16114999 0.77119797 0.615861 7.0000001e-06 0.666632
		 0.74538702 -4.2e-05 0.66778702 0.74435198 0.098975003 0.787503 0.608311 4.7000001e-05
		 0.66359901 0.74808902 0.240972 0.77063602 0.58995998 0.319621 0.786098 0.52904898
		 -1.4e-05 0.68528301 0.72827703 -1.4e-05 0.68528301 0.72827703 0.319621 0.786098 0.52904898
		 0.385809 0.81058902 0.44056499 -1.1e-05 0.75857598 0.65158498 -1.1e-05 0.75857598
		 0.65158498 0.385809 0.81058902 0.44056499 0.43031099 0.83586103 0.34083501 1.2e-05
		 0.85110599 0.52499402 1.2e-05 0.85110599 0.52499402 0.43031099 0.83586103 0.34083501
		 0.45366499 0.86021501 0.232848 2e-06 0.93944502 0.3427 2e-06 0.93944502 0.3427 0.45366499
		 0.86021501 0.232848 0.45195401 0.88533199 0.109203 2.8e-05 0.995296 0.096885003 2.8e-05
		 0.995296 0.096885003 0.45195401 0.88533199 0.109203 0.421821 0.90659702 -0.012248
		 -1.7e-05 0.98879302 -0.14929201 -1.7e-05 0.98879302 -0.14929201 0.421821 0.90659702
		 -0.012248 0.36019701 0.92389899 -0.129108 2e-06 0.94580501 -0.324736 2e-06 0.94580501
		 -0.324736 0.36019701 0.92389899 -0.129108 0.27181801 0.93622899 -0.222688 3.5000001e-05
		 0.91446501 -0.40466499 3.5000001e-05 0.91446501 -0.40466499 0.27181801 0.93622899
		 -0.222688 0.19201601 0.94336802 -0.27053201 9.9999997e-06 0.91412902 -0.40542299
		 9.9999997e-06 0.91412902 -0.40542299 0.19201601 0.94336802 -0.27053201 0.120591 0.94879001
		 -0.29198399 -7.5999997e-05 0.91597599 -0.40123299 0.19201601 0.94336802 -0.27053201
		 0.27181801 0.93622899 -0.222688 0.28411999 0.947712 -0.145319 0.21310601 0.95526803
		 -0.205056 0.19201601 0.94336802 -0.27053201 0.21310601 0.95526803 -0.205056 0.144696
		 0.95932502 -0.242403 0.120591 0.94879001 -0.29198399 0.21310601 0.95526803 -0.205056
		 0.28411999 0.947712 -0.145319 0.247233 0.96145099 -0.120368 0.18375599 0.96643901
		 -0.179524 0.21310601 0.95526803 -0.205056 0.18375599 0.96643901 -0.179524 0.12735499
		 0.96784699 -0.21691801 0.144696 0.95932502 -0.242403 0.12735499 0.96784699 -0.21691801
		 0.074573003 0.968391 -0.238029 0.077261999 0.96380299 -0.25517499 0.144696 0.95932502
		 -0.242403;
	setAttr ".n[1992:2157]" -type "float3"  0.12735499 0.96784699 -0.21691801 0.18375599
		 0.96643901 -0.179524 0.169322 0.97059101 -0.171121 0.114114 0.97146702 -0.207918
		 0.12735499 0.96784699 -0.21691801 0.114114 0.97146702 -0.207918 0.065059997 0.97074401
		 -0.23113699 0.074573003 0.968391 -0.238029 0.065059997 0.97074401 -0.23113699 -3.0000001e-06
		 0.97007298 -0.242815 8.7e-05 0.96924901 -0.246084 0.074573003 0.968391 -0.238029
		 0.065059997 0.97074401 -0.23113699 0.114114 0.97146702 -0.207918 0.100086 0.975802
		 -0.194405 0.053571999 0.97476101 -0.216729 0.065059997 0.97074401 -0.23113699 0.053571999
		 0.97476101 -0.216729 6.0000002e-06 0.97378403 -0.227475 -3.0000001e-06 0.97007298
		 -0.242815 6.0000002e-06 0.97378403 -0.227475 0.053571999 0.97476101 -0.216729 0.042787001
		 0.98068702 -0.190846 9.0000003e-06 0.98011798 -0.19841599 9.0000003e-06 0.98011798
		 -0.19841599 0.042787001 0.98068702 -0.190846 0.036318999 0.98588198 -0.16345499 -1.6e-05
		 0.98587698 -0.16746999 -1.6e-05 0.98587698 -0.16746999 0.036318999 0.98588198 -0.16345499
		 0.032559998 0.98965299 -0.13973799 2e-06 0.98969603 -0.14318299 2e-06 0.98969603
		 -0.14318299 0.032559998 0.98965299 -0.13973799 0.028741 0.99266398 -0.117439 2e-06
		 0.99208498 -0.125572 2e-06 0.99208498 -0.125572 0.028741 0.99266398 -0.117439 0.023357
		 0.99502599 -0.096844003 -4.9999999e-06 0.99423897 -0.107182 -4.9999999e-06 0.99423897
		 -0.107182 0.023357 0.99502599 -0.096844003 0.019272 0.99612302 -0.085831001 -1.1e-05
		 0.995646 -0.093215004 -1.1e-05 0.995646 -0.093215004 0.019272 0.99612302 -0.085831001
		 0.019105 0.995588 -0.091862999 -6.0000002e-06 0.99546897 -0.095086999 -6.0000002e-06
		 0.99546897 -0.095086999 0.019105 0.995588 -0.091862999 0.029964 0.98953301 -0.141165
		 0 0.99247301 -0.122467 0.019272 0.99612302 -0.085831001 0.023357 0.99502599 -0.096844003
		 0.078300998 0.99402601 -0.076033004 0.077923998 0.99541801 -0.055422999 0.019272
		 0.99612302 -0.085831001 0.077923998 0.99541801 -0.055422999 0.088804998 0.99371898
		 -0.068094999 0.019105 0.995588 -0.091862999 0.078300998 0.99402601 -0.076033004 0.023357
		 0.99502599 -0.096844003 0.028741 0.99266398 -0.117439 0.080812998 0.99132198 -0.10368
		 0.078300998 0.99402601 -0.076033004 0.080812998 0.99132198 -0.10368 0.158867 0.98255098
		 -0.096717998 0.161064 0.983567 -0.081570998 0.078300998 0.99402601 -0.076033004 0.161064
		 0.983567 -0.081570998 0.169811 0.98262101 -0.074969001 0.077923998 0.99541801 -0.055422999
		 0.158867 0.98255098 -0.096717998 0.080812998 0.99132198 -0.10368 0.081693999 0.98848802
		 -0.12734701 0.15670501 0.981341 -0.111418 0.158867 0.98255098 -0.096717998 0.15670501
		 0.981341 -0.111418 0.21803699 0.972633 -0.080284998 0.21100301 0.97498602 -0.069857001
		 0.158867 0.98255098 -0.096717998 0.21100301 0.97498602 -0.069857001 0.205015 0.97680801
		 -0.061767001 0.161064 0.983567 -0.081570998 0.21803699 0.972633 -0.080284998 0.15670501
		 0.981341 -0.111418 0.154588 0.97980201 -0.126849 0.22488301 0.97030598 -0.089071997
		 0.21803699 0.972633 -0.080284998 0.22488301 0.97030598 -0.089071997 0.27925 0.96015698
		 -0.01084 0.26530999 0.96412599 -0.0084380005 0.21803699 0.972633 -0.080284998 0.26530999
		 0.96412599 -0.0084380005 0.253086 0.96740901 -0.0082419999 0.21100301 0.97498602
		 -0.069857001 0.27925 0.96015698 -0.01084 0.22488301 0.97030598 -0.089071997 0.23024
		 0.967987 -0.099950999 0.29561901 0.95511699 -0.018974001 0.27925 0.96015698 -0.01084
		 0.29561901 0.95511699 -0.018974001 0.342392 0.93732601 0.064704999 0.31928 0.944938
		 0.071787 0.27925 0.96015698 -0.01084 0.31928 0.944938 0.071787 0.29627499 0.952084
		 0.075877003 0.26530999 0.96412599 -0.0084380005 0.342392 0.93732601 0.064704999 0.29561901
		 0.95511699 -0.018974001 0.30358401 0.95242399 -0.026936 0.35834199 0.93186802 0.056678001
		 0.342392 0.93732601 0.064704999 0.35834199 0.93186802 0.056678001 0.378252 0.91836298
		 0.116337 0.35705301 0.92638999 0.119647 0.342392 0.93732601 0.064704999 0.35705301
		 0.92638999 0.119647 0.328816 0.93612999 0.124664 0.31928 0.944938 0.071787 0.378252
		 0.91836298 0.116337 0.35834199 0.93186802 0.056678001 0.35650501 0.93308598 0.047493
		 0.38368401 0.91622102 0.115438 0.378252 0.91836298 0.116337 0.38368401 0.91622102
		 0.115438 0.38617799 0.90643299 0.17101599 0.378997 0.910568 0.165006 0.378252 0.91836298
		 0.116337 0.378997 0.910568 0.165006 0.35902399 0.91881698 0.16394401 0.35705301 0.92638999
		 0.119647 0.38617799 0.90643299 0.17101599 0.38368401 0.91622102 0.115438 0.38172799
		 0.917862 0.108687 0.384884 0.90554303 0.17848 0.38617799 0.90643299 0.17101599 0.384884
		 0.90554303 0.17848 0.36807901 0.895136 0.25149399 0.37036499 0.89916998 0.23307399
		 0.38617799 0.90643299 0.17101599 0.37036499 0.89916998 0.23307399 0.36719999 0.90293199
		 0.223335 0.378997 0.910568 0.165006 0.36807901 0.895136 0.25149399 0.384884 0.90554303
		 0.17848 0.42251199 0.88578898 0.191994 0.404796 0.87167901 0.27625301 0.36807901
		 0.895136 0.25149399 0.404796 0.87167901 0.27625301 0.36896899 0.85956699 0.35356301
		 0.33356899 0.886684 0.32019299 0.36807901 0.895136 0.25149399 0.33356899 0.886684
		 0.32019299 0.33274201 0.890818 0.30939701 0.37036499 0.89916998 0.23307399 0.36896899
		 0.85956699 0.35356301 0.404796 0.87167901 0.27625301 0.43031099 0.83586103 0.34083501
		 0.385809 0.81058902 0.44056499 0.36896899 0.85956699 0.35356301 0.385809 0.81058902
		 0.44056499 0.319621 0.786098 0.52904898 0.313517 0.84797198 0.427376 0.36896899 0.85956699
		 0.35356301 0.313517 0.84797198 0.427376;
	setAttr ".n[2158:2323]" -type "float3"  0.291035 0.87418699 0.38870999 0.33356899
		 0.886684 0.32019299 0.404796 0.87167901 0.27625301 0.42251199 0.88578898 0.191994
		 0.45366499 0.86021501 0.232848 0.43031099 0.83586103 0.34083501 0.42251199 0.88578898
		 0.191994 0.421175 0.90084398 0.10532 0.45195401 0.88533199 0.109203 0.45366499 0.86021501
		 0.232848 0.42251199 0.88578898 0.191994 0.384884 0.90554303 0.17848 0.38172799 0.917862
		 0.108687 0.421175 0.90084398 0.10532 0.421175 0.90084398 0.10532 0.39420101 0.91890001
		 0.015114 0.421821 0.90659702 -0.012248 0.45195401 0.88533199 0.109203 0.421175 0.90084398
		 0.10532 0.38172799 0.917862 0.108687 0.35411099 0.93447101 0.037009001 0.39420101
		 0.91890001 0.015114 0.35411099 0.93447101 0.037009001 0.30737901 0.950625 -0.042789999
		 0.349417 0.93439603 -0.069369003 0.39420101 0.91890001 0.015114 0.35411099 0.93447101
		 0.037009001 0.38172799 0.917862 0.108687 0.38368401 0.91622102 0.115438 0.35650501
		 0.93308598 0.047493 0.35411099 0.93447101 0.037009001 0.35650501 0.93308598 0.047493
		 0.301301 0.95287001 -0.035441998 0.30737901 0.950625 -0.042789999 0.301301 0.95287001
		 -0.035441998 0.235195 0.96511698 -0.115034 0.247233 0.96145099 -0.120368 0.30737901
		 0.950625 -0.042789999 0.301301 0.95287001 -0.035441998 0.35650501 0.93308598 0.047493
		 0.35834199 0.93186802 0.056678001 0.30358401 0.95242399 -0.026936 0.301301 0.95287001
		 -0.035441998 0.30358401 0.95242399 -0.026936 0.232596 0.96635997 -0.109764 0.235195
		 0.96511698 -0.115034 0.232596 0.96635997 -0.109764 0.15975501 0.97387803 -0.161369
		 0.169322 0.97059101 -0.171121 0.235195 0.96511698 -0.115034 0.232596 0.96635997 -0.109764
		 0.30358401 0.95242399 -0.026936 0.29561901 0.95511699 -0.018974001 0.23024 0.967987
		 -0.099950999 0.232596 0.96635997 -0.109764 0.23024 0.967987 -0.099950999 0.155837
		 0.97717398 -0.14438 0.15975501 0.97387803 -0.161369 0.155837 0.97717398 -0.14438
		 0.089546002 0.980883 -0.172774 0.100086 0.975802 -0.194405 0.15975501 0.97387803
		 -0.161369 0.155837 0.97717398 -0.14438 0.23024 0.967987 -0.099950999 0.22488301 0.97030598
		 -0.089071997 0.154588 0.97980201 -0.126849 0.155837 0.97717398 -0.14438 0.154588
		 0.97980201 -0.126849 0.083683997 0.98519599 -0.14962099 0.089546002 0.980883 -0.172774
		 0.083683997 0.98519599 -0.14962099 0.036318999 0.98588198 -0.16345499 0.042787001
		 0.98068702 -0.190846 0.089546002 0.980883 -0.172774 0.083683997 0.98519599 -0.14962099
		 0.154588 0.97980201 -0.126849 0.15670501 0.981341 -0.111418 0.081693999 0.98848802
		 -0.12734701 0.083683997 0.98519599 -0.14962099 0.081693999 0.98848802 -0.12734701
		 0.032559998 0.98965299 -0.13973799 0.036318999 0.98588198 -0.16345499 0.089546002
		 0.980883 -0.172774 0.042787001 0.98068702 -0.190846 0.053571999 0.97476101 -0.216729
		 0.100086 0.975802 -0.194405 0.15975501 0.97387803 -0.161369 0.100086 0.975802 -0.194405
		 0.114114 0.97146702 -0.207918 0.169322 0.97059101 -0.171121 0.235195 0.96511698 -0.115034
		 0.169322 0.97059101 -0.171121 0.18375599 0.96643901 -0.179524 0.247233 0.96145099
		 -0.120368 0.349417 0.93439603 -0.069369003 0.28411999 0.947712 -0.145319 0.27181801
		 0.93622899 -0.222688 0.36019701 0.92389899 -0.129108 0.349417 0.93439603 -0.069369003
		 0.36019701 0.92389899 -0.129108 0.421821 0.90659702 -0.012248 0.39420101 0.91890001
		 0.015114 0.349417 0.93439603 -0.069369003 0.30737901 0.950625 -0.042789999 0.247233
		 0.96145099 -0.120368 0.28411999 0.947712 -0.145319 0.081693999 0.98848802 -0.12734701
		 0.080812998 0.99132198 -0.10368 0.028741 0.99266398 -0.117439 0.032559998 0.98965299
		 -0.13973799 8.7e-05 0.96924901 -0.246084 5.1999999e-05 0.96314502 -0.26898199 0.077261999
		 0.96380299 -0.25517499 0.074573003 0.968391 -0.238029 0.319621 0.786098 0.52904898
		 0.240972 0.77063602 0.58995998 0.246163 0.84013402 0.48329899 0.313517 0.84797198
		 0.427376 0.13107599 0.87880403 0.458828 0.115799 0.88185197 0.457086 0.039535999
		 0.88254303 0.468566 0.04817 0.88443202 0.46417701 -0.089056998 -0.82381803 -0.55981499
		 -0.096922003 -0.82765198 -0.55281001 -0.136961 -0.82738101 -0.54468602 -0.13787401
		 -0.82924598 -0.54161102 -0.096922003 -0.82765198 -0.55281001 -0.130375 -0.82657403
		 -0.54751998 -0.165938 -0.82861 -0.53466702 -0.136961 -0.82738101 -0.54468602 -0.037728999
		 0.81296599 0.58108801 -0.051996 0.84369898 0.534293 -4.9999999e-06 0.83428001 0.551341
		 1.9999999e-05 0.77608597 0.63062799 -0.037728999 0.81296599 0.58108801 1.9999999e-05
		 0.77608597 0.63062799 -4.2e-05 0.66778702 0.74435198 -0.098947003 0.78751802 0.60829699
		 -0.037728999 0.81296599 0.58108801 -0.098947003 0.78751802 0.60829699 -0.111349 0.83979899
		 0.53135598 -0.051996 0.84369898 0.534293 -0.055346999 0.956182 -0.287494 -0.120652
		 0.948798 -0.291935 -7.5999997e-05 0.91597599 -0.40123299 9.6999996e-05 0.94822001
		 -0.31761399 -0.055346999 0.956182 -0.287494 9.6999996e-05 0.94822001 -0.31761399
		 5.1999999e-05 0.96314502 -0.26898199 -0.077257998 0.96381199 -0.25514099 -0.055346999
		 0.956182 -0.287494 -0.077257998 0.96381199 -0.25514099 -0.14470799 0.95932901 -0.24237899
		 -0.120652 0.948798 -0.291935 0.179518 -0.83447599 -0.52098298 0.221815 -0.84068698
		 -0.49400899 0.166023 -0.828641 -0.534594 0.136933 -0.827438 -0.54460597 0.179518
		 -0.83447599 -0.52098298 0.179489 -0.83596098 -0.51860702 0.22807699 -0.83984202 -0.49259201
		 0.221815 -0.84068698 -0.49400899 0.179518 -0.83447599 -0.52098298 0.136933 -0.827438
		 -0.54460597 0.137867 -0.829216 -0.54165798 0.179489 -0.83596098 -0.51860702;
	setAttr ".n[2324:2489]" -type "float3"  0.52544701 -0.83755898 0.14966699 0.450499
		 -0.86216599 0.23177899 0.461992 -0.880202 0.108664 0.54621398 -0.83601499 0.052251998
		 0.450499 -0.86216599 0.23177899 0.42637199 -0.88699198 0.17734601 0.34087399 -0.91117603
		 0.231436 0.36128199 -0.88404799 0.29653701 0.450499 -0.86216599 0.23177899 0.52544701
		 -0.83755898 0.14966699 0.47110301 -0.873276 0.124303 0.42637199 -0.88699198 0.17734601
		 0.450499 -0.86216599 0.23177899 0.36128199 -0.88404799 0.29653701 0.37831101 -0.893637
		 0.241441 0.461992 -0.880202 0.108664 0.37831101 -0.893637 0.241441 0.36128199 -0.88404799
		 0.29653701 0.270524 -0.90011299 0.34148699 0.252992 -0.91026801 0.32773 0.37831101
		 -0.893637 0.241441 0.440182 -0.89288002 0.094899997 0.48615101 -0.87347299 -0.026489001
		 0.461992 -0.880202 0.108664 0.37831101 -0.893637 0.241441 0.252992 -0.91026801 0.32773
		 0.317395 -0.92491001 0.20929 0.440182 -0.89288002 0.094899997 0.317395 -0.92491001
		 0.20929 0.34081599 -0.93991297 -0.020211 0.438256 -0.89324498 -0.100228 0.440182
		 -0.89288002 0.094899997 0.317395 -0.92491001 0.20929 0.22045299 -0.93547797 0.27619201
		 0.26467401 -0.96299499 0.050875001 0.34081599 -0.93991297 -0.020211 0.317395 -0.92491001
		 0.20929 0.252992 -0.91026801 0.32773 0.152053 -0.91997302 0.36128899 0.22045299 -0.93547797
		 0.27619201 0.152053 -0.91997302 0.36128899 0.159797 -0.91834998 0.36207399 6.1999999e-05
		 -0.92537397 0.37905601 -3.0000001e-06 -0.91698903 0.398913 0.152053 -0.91997302 0.36128899
		 0.252992 -0.91026801 0.32773 0.270524 -0.90011299 0.34148699 0.159797 -0.91834998
		 0.36207399 0.152053 -0.91997302 0.36128899 -3.0000001e-06 -0.91698903 0.398913 6.0999999e-05
		 -0.94246602 0.33430299 0.22045299 -0.93547797 0.27619201 6.0999999e-05 -0.94246602
		 0.33430299 -0.000108 -0.99601102 0.089229003 0.26467401 -0.96299499 0.050875001 0.22045299
		 -0.93547797 0.27619201 -0.000108 -0.99601102 0.089229003 -1.1e-05 -0.979783 -0.200065
		 0.25161701 -0.94664401 -0.20138 0.26467401 -0.96299499 0.050875001 -1.1e-05 -0.979783
		 -0.200065 -1.5e-05 -0.914976 -0.40350699 0.227448 -0.89254898 -0.38938901 0.25161701
		 -0.94664401 -0.20138 -1.5e-05 -0.914976 -0.40350699 -5.4e-05 -0.83306199 -0.55317998
		 0.167814 -0.83865303 -0.51817 0.227448 -0.89254898 -0.38938901 -5.4e-05 -0.83306199
		 -0.55317998 -0.000132 -0.81801897 -0.57519102 0.130558 -0.82650697 -0.54757702 0.167814
		 -0.83865303 -0.51817 -0.000132 -0.81801897 -0.57519102 4.3e-05 -0.82016098 -0.572133
		 0.096771002 -0.82760501 -0.55290598 0.130558 -0.82650697 -0.54757702 4.3e-05 -0.82016098
		 -0.572133 5.5e-05 -0.81917399 -0.57354599 0.089060001 -0.82380402 -0.55983502 0.096771002
		 -0.82760501 -0.55290598 5.5e-05 -0.81917399 -0.57354599 5.8000001e-05 -0.82464498
		 -0.565651 0.069104999 -0.83407903 -0.54729998 0.089060001 -0.82380402 -0.55983502
		 5.8000001e-05 -0.82464498 -0.565651 6.4e-05 -0.86788303 -0.496768 0.033341002 -0.86428601
		 -0.50189501 0.069104999 -0.83407903 -0.54729998 6.4e-05 -0.86788303 -0.496768 1.5e-05
		 -0.85618901 -0.51666301 0.094764002 -0.84550703 -0.52548802 0.033341002 -0.86428601
		 -0.50189501 1.5e-05 -0.85618901 -0.51666301 8e-06 -0.81712103 -0.57646602 0.127887
		 -0.81834602 -0.56031603 0.094764002 -0.84550703 -0.52548802 8e-06 -0.81712103 -0.57646602
		 1.8999999e-05 -0.89271301 -0.450625 0.082711004 -0.88680398 -0.45468399 0.127887
		 -0.81834602 -0.56031603 1.8999999e-05 -0.89271301 -0.450625 2.4999999e-05 -0.931943
		 -0.36260501 0.083595999 -0.92724597 -0.36500201 0.082711004 -0.88680398 -0.45468399
		 2.4999999e-05 -0.931943 -0.36260501 1.5e-05 -0.87870997 -0.47735599 0.061996002 -0.90239602
		 -0.42642501 0.083595999 -0.92724597 -0.36500201 1.5e-05 -0.87870997 -0.47735599 1.4e-05
		 -0.85544801 -0.51788902 0.037018999 -0.87698698 -0.479087 0.061996002 -0.90239602
		 -0.42642501 1.4e-05 -0.85544801 -0.51788902 -1.2e-05 -0.88414901 -0.467204 0.048273999
		 -0.88070601 -0.47119799 0.037018999 -0.87698698 -0.479087 -1.2e-05 -0.88414901 -0.467204
		 8e-06 -0.90764201 -0.419745 0.034573 -0.91146201 -0.40992799 0.048273999 -0.88070601
		 -0.47119799 8e-06 -0.90764201 -0.419745 -2.4000001e-05 -0.96536499 -0.260905 0.00072700001
		 -0.96221799 -0.27228001 0.034573 -0.91146201 -0.40992799 -2.4000001e-05 -0.96536499
		 -0.260905 3.0000001e-06 -0.99987 -0.016156999 -0.033142 -0.995193 -0.092151999 0.00072700001
		 -0.96221799 -0.27228001 3.0000001e-06 -0.99987 -0.016156999 2.2e-05 -0.98800802 0.154405
		 -0.062084001 -0.99420202 0.087791003 -0.033142 -0.995193 -0.092151999 2.2e-05 -0.98800802
		 0.154405 -2e-06 -0.96200401 0.273036 -0.108621 -0.94493502 0.30870599 -0.062084001
		 -0.99420202 0.087791003 -2e-06 -0.96200401 0.273036 1.1e-05 -0.81467998 0.57991099
		 -0.187324 -0.74463999 0.64064199 -0.108621 -0.94493502 0.30870599 1.1e-05 -0.81467998
		 0.57991099 -1e-06 -0.29198 0.956424 -0.240358 -0.247584 0.93857902 -0.187324 -0.74463999
		 0.64064199 -1e-06 -0.29198 0.956424 -1e-06 0.42683199 0.90433103 -0.20521501 0.40789801
		 0.88966602 -0.240358 -0.247584 0.93857902 -1e-06 0.42683199 0.90433103 1e-06 0.80732
		 0.590114 -0.128833 0.78733099 0.60291898 -0.20521501 0.40789801 0.88966602 1e-06
		 0.80732 0.590114 -1.6e-05 0.90928501 0.41617301 -0.083769001 0.89921898 0.42940399
		 -0.128833 0.78733099 0.60291898 -1.6e-05 0.90928501 0.41617301 0 0.92202598 0.38712701
		 -0.073133998 0.91717303 0.39172199 -0.083769001 0.89921898 0.42940399 0 0.92202598
		 0.38712701 -4.9999999e-06 0.922746 0.385409 -0.071829997 0.918944 0.38779101 -0.073133998
		 0.91717303 0.39172199 -4.9999999e-06 0.922746 0.385409 2e-06 0.92166299 0.38799101;
	setAttr ".n[2490:2655]" -type "float3"  -0.071914002 0.91787899 0.39029101 -0.071829997
		 0.918944 0.38779101 2e-06 0.92166299 0.38799101 1e-06 0.91930097 0.393556 -0.072186001
		 0.91537702 0.39607301 -0.071914002 0.91787899 0.39029101 1e-06 0.91930097 0.393556
		 -1.5e-05 0.91483098 0.403837 -0.072526 0.91011697 0.40795499 -0.072186001 0.91537702
		 0.39607301 -1.5e-05 0.91483098 0.403837 -2e-06 0.90586001 0.42357799 -0.071996003
		 0.90067703 0.428482 -0.072526 0.91011697 0.40795499 -2e-06 0.90586001 0.42357799
		 2.1e-05 0.892905 0.45024601 -0.070005 0.888991 0.45254201 -0.071996003 0.90067703
		 0.428482 2.1e-05 0.892905 0.45024601 -4.9999999e-06 0.886437 0.46285 -0.062313002
		 0.883614 0.46405199 -0.070005 0.888991 0.45254201 -4.9999999e-06 0.886437 0.46285
		 -1.7e-05 0.88662398 0.46249199 -0.048202001 0.88443398 0.464169 -0.062313002 0.883614
		 0.46405199 -1.7e-05 0.88662398 0.46249199 -9.9999997e-06 0.88173598 0.471744 -0.039498001
		 0.88253498 0.46858501 -0.048202001 0.88443398 0.464169 -9.9999997e-06 0.88173598
		 0.471744 -6.0000002e-06 0.87252098 0.48857701 -0.042296 0.87576801 0.48087499 -0.039498001
		 0.88253498 0.46858501 -6.0000002e-06 0.87252098 0.48857701 -2.4999999e-05 0.862728
		 0.50566798 -0.051288001 0.86418498 0.50055301 -0.042296 0.87576801 0.48087499 -2.4999999e-05
		 0.862728 0.50566798 -4.9999999e-06 0.83428001 0.551341 -0.051996 0.84369898 0.534293
		 -0.051288001 0.86418498 0.50055301 -0.051288001 0.86418498 0.50055301 -0.051996 0.84369898
		 0.534293 -0.111349 0.83979899 0.53135598 -0.108458 0.86949003 0.48189601 -0.051288001
		 0.86418498 0.50055301 -0.108458 0.86949003 0.48189601 -0.110084 0.87967497 0.462659
		 -0.042296 0.87576801 0.48087499 -0.110084 0.87967497 0.462659 -0.108458 0.86949003
		 0.48189601 -0.17489 0.86885601 0.46314499 -0.18567599 0.87810701 0.44096801 -0.110084
		 0.87967497 0.462659 -0.115802 0.88182902 0.45713001 -0.039498001 0.88253498 0.46858501
		 -0.042296 0.87576801 0.48087499 -0.110084 0.87967497 0.462659 -0.18567599 0.87810701
		 0.44096801 -0.198558 0.87755299 0.436436 -0.115802 0.88182902 0.45713001 -0.198558
		 0.87755299 0.436436 -0.18567599 0.87810701 0.44096801 -0.24625599 0.87695098 0.41269299
		 -0.24580801 0.87799102 0.41074401 -0.198558 0.87755299 0.436436 -0.20848501 0.874771
		 0.43739 -0.131073 0.87878299 0.45886901 -0.115802 0.88182902 0.45713001 -0.198558
		 0.87755299 0.436436 -0.24580801 0.87799102 0.41074401 -0.242709 0.88081801 0.40651301
		 -0.20848501 0.874771 0.43739 -0.242709 0.88081801 0.40651301 -0.24580801 0.87799102
		 0.41074401 -0.28551999 0.88673598 0.363563 -0.280424 0.88941902 0.36096701 -0.242709
		 0.88081801 0.40651301 -0.219952 0.89140701 0.39625001 -0.20050199 0.88071501 0.429115
		 -0.20848501 0.874771 0.43739 -0.242709 0.88081801 0.40651301 -0.280424 0.88941902
		 0.36096701 -0.25314 0.90199602 0.34974799 -0.219952 0.89140701 0.39625001 -0.25314
		 0.90199602 0.34974799 -0.280424 0.88941902 0.36096701 -0.32344899 0.90133899 0.28804401
		 -0.29432699 0.91368598 0.28026599 -0.25314 0.90199602 0.34974799 -0.219688 0.91657799
		 0.33410001 -0.188133 0.90613103 0.37885699 -0.219952 0.89140701 0.39625001 -0.25314
		 0.90199602 0.34974799 -0.29432699 0.91368598 0.28026599 -0.26025701 0.92720503 0.269366
		 -0.219688 0.91657799 0.33410001 -0.26025701 0.92720503 0.269366 -0.29432699 0.91368598
		 0.28026599 -0.31909001 0.92316902 0.21433599 -0.28728101 0.93494898 0.20818201 -0.26025701
		 0.92720503 0.269366 -0.235673 0.93668598 0.25899199 -0.194353 0.92700601 0.320759
		 -0.219688 0.91657799 0.33410001 -0.26025701 0.92720503 0.269366 -0.28728101 0.93494898
		 0.20818201 -0.26531199 0.94267499 0.202418 -0.235673 0.93668598 0.25899199 -0.26531199
		 0.94267499 0.202418 -0.28728101 0.93494898 0.20818201 -0.29865101 0.94029802 0.163242
		 -0.27802899 0.947056 0.160578 -0.26531199 0.94267499 0.202418 -0.25080299 0.94782501
		 0.19678999 -0.21739601 0.94352603 0.24999499 -0.235673 0.93668598 0.25899199 -0.26531199
		 0.94267499 0.202418 -0.27802899 0.947056 0.160578 -0.26445201 0.951379 0.157932 -0.25080299
		 0.94782501 0.19678999 -0.26445201 0.951379 0.157932 -0.27802899 0.947056 0.160578
		 -0.28324699 0.95075399 0.125852 -0.269647 0.95481002 0.12501501 -0.26445201 0.951379
		 0.157932 -0.254309 0.95449603 0.15576699 -0.24198399 0.95111299 0.19190601 -0.25080299
		 0.94782501 0.19678999 -0.26445201 0.951379 0.157932 -0.269647 0.95481002 0.12501501
		 -0.26166099 0.957102 0.124454 -0.254309 0.95449603 0.15576699 -0.26166099 0.957102
		 0.124454 -0.269647 0.95481002 0.12501501 -0.26281899 0.96189803 0.075360999 -0.25109899
		 0.96493 0.076554 -0.26166099 0.957102 0.124454 -0.262337 0.95715702 0.1226 -0.249975
		 0.95596302 0.15377299 -0.254309 0.95449603 0.15576699 -0.26166099 0.957102 0.124454
		 -0.25109899 0.96493 0.076554 -0.24863499 0.96589398 0.072310001 -0.262337 0.95715702
		 0.1226 -0.24863499 0.96589398 0.072310001 -0.25109899 0.96493 0.076554 -0.23696899
		 0.97148699 -0.0076529998 -0.25174701 0.96749401 -0.024080999 -0.24863499 0.96589398
		 0.072310001 -0.27471599 0.95993698 0.055245001 -0.277899 0.95335102 0.11787 -0.262337
		 0.95715702 0.1226 -0.24863499 0.96589398 0.072310001 -0.25174701 0.96749401 -0.024080999
		 -0.29493001 0.95346701 -0.062586002 -0.27471599 0.95993698 0.055245001 -0.29493001
		 0.95346701 -0.062586002 -0.25174701 0.96749401 -0.024080999 -0.214968 0.97404999
		 -0.070823997 -0.242599 0.964876 -0.100798 -0.29493001 0.95346701 -0.062586002 -0.39082101
		 0.90940398 -0.14228 -0.37598601 0.92662501 -0.00088299997 -0.27471599 0.95993698
		 0.055245001;
	setAttr ".n[2656:2821]" -type "float3"  -0.29493001 0.95346701 -0.062586002 -0.242599
		 0.964876 -0.100798 -0.30532199 0.93741202 -0.167445 -0.39082101 0.90940398 -0.14228
		 -0.30532199 0.93741202 -0.167445 -0.242599 0.964876 -0.100798 -0.22519501 0.96496499
		 -0.13464899 -0.29725301 0.92189902 -0.24848001 -0.30532199 0.93741202 -0.167445 -0.43127501
		 0.847323 -0.30991399 -0.54374599 0.795358 -0.26785499 -0.39082101 0.90940398 -0.14228
		 -0.30532199 0.93741202 -0.167445 -0.29725301 0.92189902 -0.24848001 -0.402771 0.80727202
		 -0.43137801 -0.43127501 0.847323 -0.30991399 -0.402771 0.80727202 -0.43137801 -0.29725301
		 0.92189902 -0.24848001 -0.191798 0.929721 -0.31437799 -0.27796599 0.79086202 -0.54522598
		 -0.402771 0.80727202 -0.43137801 -0.52099001 0.55028301 -0.65250099 -0.60500801 0.60135102
		 -0.521864 -0.43127501 0.847323 -0.30991399 -0.402771 0.80727202 -0.43137801 -0.27796599
		 0.79086202 -0.54522598 -0.34912801 0.52928698 -0.77328199 -0.52099001 0.55028301
		 -0.65250099 -0.34912801 0.52928698 -0.77328199 -0.27796599 0.79086202 -0.54522598
		 -0.125157 0.83867401 -0.53005898 -0.189298 0.55599201 -0.80934501 -0.34912801 0.52928698
		 -0.77328199 -0.379296 0.146137 -0.91366202 -0.58111602 0.14514101 -0.80077302 -0.52099001
		 0.55028301 -0.65250099 -0.34912801 0.52928698 -0.77328199 -0.189298 0.55599201 -0.80934501
		 -0.21985 0.162287 -0.96193999 -0.379296 0.146137 -0.91366202 -0.21985 0.162287 -0.96193999
		 -0.189298 0.55599201 -0.80934501 3.0000001e-06 0.72792399 -0.68565702 -1e-06 0.22288799
		 -0.97484398 -0.21985 0.162287 -0.96193999 -0.19701999 -0.25911701 -0.94553798 -0.345314
		 -0.283701 -0.89457899 -0.379296 0.146137 -0.91366202 -0.21985 0.162287 -0.96193999
		 -1e-06 0.22288799 -0.97484398 -4e-06 -0.41771001 -0.90858001 -0.19701999 -0.25911701
		 -0.94553798 -4e-06 -0.41771001 -0.90858001 2e-06 -0.80321401 -0.59569001 -0.13331901
		 -0.63349301 -0.76217598 -0.19701999 -0.25911701 -0.94553798 2e-06 -0.80321401 -0.59569001
		 -1.8000001e-05 -0.95816898 -0.286203 -0.051803 -0.87871599 -0.47452599 -0.13331901
		 -0.63349301 -0.76217598 -1.8000001e-05 -0.95816898 -0.286203 1.1e-05 -0.99315399
		 -0.116813 0.012129 -0.97524703 -0.22078399 -0.051803 -0.87871599 -0.47452599 1.1e-05
		 -0.99315399 -0.116813 -6.0000002e-06 -0.99884099 -0.048133999 0.046845 -0.99681801
		 -0.064493999 0.012129 -0.97524703 -0.22078399 -6.0000002e-06 -0.99884099 -0.048133999
		 -3.3e-05 -0.99999303 0.003756 0.064145997 -0.99747503 0.030485 0.046845 -0.99681801
		 -0.064493999 -3.3e-05 -0.99999303 0.003756 1.7e-05 -0.99763399 0.068752997 0.075300001
		 -0.98972797 0.121528 0.064145997 -0.99747503 0.030485 1.7e-05 -0.99763399 0.068752997
		 8e-06 -0.974814 0.22301801 0.087860003 -0.96547103 0.24525 0.075300001 -0.98972797
		 0.121528 8e-06 -0.974814 0.22301801 6.0000002e-06 -0.90565097 0.42402399 0.122948
		 -0.91477603 0.38479799 0.087860003 -0.96547103 0.24525 6.0000002e-06 -0.90565097
		 0.42402399 9.0000003e-06 -0.84070402 0.54149598 0.177056 -0.87854397 0.443634 0.122948
		 -0.91477603 0.38479799 9.0000003e-06 -0.84070402 0.54149598 3.0000001e-06 -0.96012002
		 0.279587 0.182759 -0.94974703 0.254125 0.177056 -0.87854397 0.443634 3.0000001e-06
		 -0.96012002 0.279587 2.6e-05 -0.99402201 -0.109178 0.053165998 -0.99807799 -0.031849999
		 0.182759 -0.94974703 0.254125 2.6e-05 -0.99402201 -0.109178 -2.6e-05 -0.99823701
		 -0.059349 0.014359 -0.999394 -0.031699002 0.053165998 -0.99807799 -0.031849999 -2.6e-05
		 -0.99823701 -0.059349 -3.0000001e-06 -0.98434597 0.176249 0.070635997 -0.98424798
		 0.16206799 0.014359 -0.999394 -0.031699002 -3.0000001e-06 -0.98434597 0.176249 -2.7e-05
		 -0.93819499 0.34610799 0.149455 -0.93769401 0.31367701 0.070635997 -0.98424798 0.16206799
		 -2.7e-05 -0.93819499 0.34610799 6.1999999e-05 -0.92537397 0.37905601 0.159797 -0.91834998
		 0.36207399 0.149455 -0.93769401 0.31367701 0.149455 -0.93769401 0.31367701 0.24537399
		 -0.927167 0.28311399 0.14750201 -0.97908998 0.140092 0.070635997 -0.98424798 0.16206799
		 0.149455 -0.93769401 0.31367701 0.159797 -0.91834998 0.36207399 0.270524 -0.90011299
		 0.34148699 0.24537399 -0.927167 0.28311399 0.24537399 -0.927167 0.28311399 0.34087399
		 -0.91117603 0.231436 0.21608201 -0.97068602 0.105246 0.14750201 -0.97908998 0.140092
		 0.24537399 -0.927167 0.28311399 0.270524 -0.90011299 0.34148699 0.36128199 -0.88404799
		 0.29653701 0.34087399 -0.91117603 0.231436 0.21608201 -0.97068602 0.105246 0.109819
		 -0.993846 -0.014507 0.053645 -0.99833298 -0.021299999 0.14750201 -0.97908998 0.140092
		 0.21608201 -0.97068602 0.105246 0.279284 -0.95913798 0.045333002 0.17811801 -0.98359901
		 -0.028413 0.109819 -0.993846 -0.014507 0.21608201 -0.97068602 0.105246 0.34087399
		 -0.91117603 0.231436 0.42637199 -0.88699198 0.17734601 0.279284 -0.95913798 0.045333002
		 0.279284 -0.95913798 0.045333002 0.329943 -0.94397902 0.0064619998 0.23792 -0.96937603
		 -0.060858 0.17811801 -0.98359901 -0.028413 0.279284 -0.95913798 0.045333002 0.42637199
		 -0.88699198 0.17734601 0.47110301 -0.873276 0.124303 0.329943 -0.94397902 0.0064619998
		 0.329943 -0.94397902 0.0064619998 0.373835 -0.92720199 -0.023332 0.28407499 -0.95446998
		 -0.09104 0.23792 -0.96937603 -0.060858 0.329943 -0.94397902 0.0064619998 0.47110301
		 -0.873276 0.124303 0.52508098 -0.84894598 0.059831999 0.373835 -0.92720199 -0.023332
		 0.52508098 -0.84894598 0.059831999 0.54662102 -0.83666599 -0.034577999 0.41484499
		 -0.90650201 -0.078477003 0.373835 -0.92720199 -0.023332 0.52508098 -0.84894598 0.059831999
		 0.54621398 -0.83601499 0.052251998 0.53922802 -0.83952302 -0.066597998 0.54662102
		 -0.83666599 -0.034577999 0.52508098 -0.84894598 0.059831999 0.47110301 -0.873276
		 0.124303;
	setAttr ".n[2822:2987]" -type "float3"  0.52544701 -0.83755898 0.14966699 0.54621398
		 -0.83601499 0.052251998 0.53922802 -0.83952302 -0.066597998 0.53148597 -0.82929301
		 -0.17261399 0.55359399 -0.82117599 -0.13858201 0.54662102 -0.83666599 -0.034577999
		 0.53922802 -0.83952302 -0.066597998 0.48615101 -0.87347299 -0.026489001 0.48362899
		 -0.86216402 -0.15091801 0.53148597 -0.82929301 -0.17261399 0.53922802 -0.83952302
		 -0.066597998 0.54621398 -0.83601499 0.052251998 0.461992 -0.880202 0.108664 0.48615101
		 -0.87347299 -0.026489001 0.48362899 -0.86216402 -0.15091801 0.43348601 -0.85645902
		 -0.28029999 0.483226 -0.83075899 -0.276283 0.53148597 -0.82929301 -0.17261399 0.48362899
		 -0.86216402 -0.15091801 0.438256 -0.89324498 -0.100228 0.39869499 -0.87740499 -0.266839
		 0.43348601 -0.85645902 -0.28029999 0.48362899 -0.86216402 -0.15091801 0.48615101
		 -0.87347299 -0.026489001 0.440182 -0.89288002 0.094899997 0.438256 -0.89324498 -0.100228
		 0.39869499 -0.87740499 -0.266839 0.34654701 -0.85289103 -0.39049 0.38345701 -0.84723002
		 -0.367645 0.43348601 -0.85645902 -0.28029999 0.39869499 -0.87740499 -0.266839 0.33274201
		 -0.91423601 -0.231203 0.28691301 -0.88006598 -0.378373 0.34654701 -0.85289103 -0.39049
		 0.39869499 -0.87740499 -0.266839 0.438256 -0.89324498 -0.100228 0.34081599 -0.93991297
		 -0.020211 0.33274201 -0.91423601 -0.231203 0.33274201 -0.91423601 -0.231203 0.25161701
		 -0.94664401 -0.20138 0.227448 -0.89254898 -0.38938901 0.28691301 -0.88006598 -0.378373
		 0.33274201 -0.91423601 -0.231203 0.34081599 -0.93991297 -0.020211 0.26467401 -0.96299499
		 0.050875001 0.25161701 -0.94664401 -0.20138 0.28691301 -0.88006598 -0.378373 0.22480799
		 -0.83313698 -0.50531602 0.26272199 -0.83599198 -0.48176101 0.34654701 -0.85289103
		 -0.39049 0.28691301 -0.88006598 -0.378373 0.227448 -0.89254898 -0.38938901 0.167814
		 -0.83865303 -0.51817 0.22480799 -0.83313698 -0.50531602 0.22480799 -0.83313698 -0.50531602
		 0.166023 -0.828641 -0.534594 0.221815 -0.84068698 -0.49400899 0.26272199 -0.83599198
		 -0.48176101 0.22480799 -0.83313698 -0.50531602 0.167814 -0.83865303 -0.51817 0.130558
		 -0.82650697 -0.54757702 0.166023 -0.828641 -0.534594 0.26272199 -0.83599198 -0.48176101
		 0.294119 -0.84535497 -0.445948 0.38345701 -0.84723002 -0.367645 0.34654701 -0.85289103
		 -0.39049 0.26272199 -0.83599198 -0.48176101 0.221815 -0.84068698 -0.49400899 0.22807699
		 -0.83984202 -0.49259201 0.294119 -0.84535497 -0.445948 0.294119 -0.84535497 -0.445948
		 0.34656599 -0.83384103 -0.42965299 0.42537299 -0.830652 -0.35927001 0.38345701 -0.84723002
		 -0.367645 0.294119 -0.84535497 -0.445948 0.22807699 -0.83984202 -0.49259201 0.26339599
		 -0.84009999 -0.474188 0.34656599 -0.83384103 -0.42965299 0.26339599 -0.84009999 -0.474188
		 0.34110701 -0.82470697 -0.451114 0.420279 -0.81434602 -0.40025899 0.34656599 -0.83384103
		 -0.42965299 0.26339599 -0.84009999 -0.474188 0.182381 -0.84509701 -0.50254202 0.234207
		 -0.83780497 -0.493184 0.34110701 -0.82470697 -0.451114 0.26339599 -0.84009999 -0.474188
		 0.22807699 -0.83984202 -0.49259201 0.179489 -0.83596098 -0.51860702 0.182381 -0.84509701
		 -0.50254202 0.182381 -0.84509701 -0.50254202 0.118617 -0.84399003 -0.52307802 0.118681
		 -0.85920101 -0.497684 0.234207 -0.83780497 -0.493184 0.182381 -0.84509701 -0.50254202
		 0.179489 -0.83596098 -0.51860702 0.137867 -0.829216 -0.54165798 0.118617 -0.84399003
		 -0.52307802 0.118617 -0.84399003 -0.52307802 0.069104999 -0.83407903 -0.54729998
		 0.033341002 -0.86428601 -0.50189501 0.118681 -0.85920101 -0.497684 0.118617 -0.84399003
		 -0.52307802 0.137867 -0.829216 -0.54165798 0.089060001 -0.82380402 -0.55983502 0.069104999
		 -0.83407903 -0.54729998 0.118681 -0.85920101 -0.497684 0.214433 -0.82328802 -0.525563
		 0.32416901 -0.80882102 -0.49063501 0.234207 -0.83780497 -0.493184 0.118681 -0.85920101
		 -0.497684 0.033341002 -0.86428601 -0.50189501 0.094764002 -0.84550703 -0.52548802
		 0.214433 -0.82328802 -0.525563 0.214433 -0.82328802 -0.525563 0.222596 -0.81929803
		 -0.528395 0.24878 -0.845698 -0.47212601 0.32416901 -0.80882102 -0.49063501 0.214433
		 -0.82328802 -0.525563 0.094764002 -0.84550703 -0.52548802 0.127887 -0.81834602 -0.56031603
		 0.222596 -0.81929803 -0.528395 0.222596 -0.81929803 -0.528395 0.129776 -0.89561099
		 -0.42548701 0.128509 -0.91726702 -0.37697199 0.24878 -0.845698 -0.47212601 0.222596
		 -0.81929803 -0.528395 0.127887 -0.81834602 -0.56031603 0.082711004 -0.88680398 -0.45468399
		 0.129776 -0.89561099 -0.42548701 0.129776 -0.89561099 -0.42548701 0.080086999 -0.94176298
		 -0.32660201 0.054761998 -0.95216101 -0.30064899 0.128509 -0.91726702 -0.37697199
		 0.129776 -0.89561099 -0.42548701 0.082711004 -0.88680398 -0.45468399 0.083595999
		 -0.92724597 -0.36500201 0.080086999 -0.94176298 -0.32660201 0.080086999 -0.94176298
		 -0.32660201 0.053004 -0.92765802 -0.36964899 0.068506002 -0.93751103 -0.34114501
		 0.054761998 -0.95216101 -0.30064899 0.080086999 -0.94176298 -0.32660201 0.083595999
		 -0.92724597 -0.36500201 0.061996002 -0.90239602 -0.42642501 0.053004 -0.92765802
		 -0.36964899 0.053004 -0.92765802 -0.36964899 0.084275998 -0.880409 -0.46666601 0.15941
		 -0.87257999 -0.46172801 0.068506002 -0.93751103 -0.34114501 0.053004 -0.92765802
		 -0.36964899 0.061996002 -0.90239602 -0.42642501 0.037018999 -0.87698698 -0.479087
		 0.084275998 -0.880409 -0.46666601 0.084275998 -0.880409 -0.46666601 0.116699 -0.86531001
		 -0.48746201 0.221816 -0.83684403 -0.500489 0.15941 -0.87257999 -0.46172801 0.084275998
		 -0.880409 -0.46666601 0.037018999 -0.87698698 -0.479087 0.048273999 -0.88070601 -0.47119799
		 0.116699 -0.86531001 -0.48746201 0.116699 -0.86531001 -0.48746201 0.096753001 -0.90624398
		 -0.41153401 0.180712 -0.89010799 -0.41839001 0.221816 -0.83684403 -0.500489;
	setAttr ".n[2988:3153]" -type "float3"  0.116699 -0.86531001 -0.48746201 0.048273999
		 -0.88070601 -0.47119799 0.034573 -0.91146201 -0.40992799 0.096753001 -0.90624398
		 -0.41153401 0.096753001 -0.90624398 -0.41153401 0.057677001 -0.95231003 -0.29963201
		 0.101287 -0.951307 -0.29113001 0.180712 -0.89010799 -0.41839001 0.096753001 -0.90624398
		 -0.41153401 0.034573 -0.91146201 -0.40992799 0.00072700001 -0.96221799 -0.27228001
		 0.057677001 -0.95231003 -0.29963201 0.057677001 -0.95231003 -0.29963201 0.010025
		 -0.98732698 -0.158379 0.0067309998 -0.99056602 -0.13687301 0.101287 -0.951307 -0.29113001
		 0.057677001 -0.95231003 -0.29963201 0.00072700001 -0.96221799 -0.27228001 -0.033142
		 -0.995193 -0.092151999 0.010025 -0.98732698 -0.158379 0.010025 -0.98732698 -0.158379
		 -0.057130001 -0.99791598 0.029983999 -0.117581 -0.99081898 0.066729002 0.0067309998
		 -0.99056602 -0.13687301 0.010025 -0.98732698 -0.158379 -0.033142 -0.995193 -0.092151999
		 -0.062084001 -0.99420202 0.087791003 -0.057130001 -0.99791598 0.029983999 -0.057130001
		 -0.99791598 0.029983999 -0.161478 -0.93579 0.31340399 -0.25978401 -0.914738 0.30946201
		 -0.117581 -0.99081898 0.066729002 -0.057130001 -0.99791598 0.029983999 -0.062084001
		 -0.99420202 0.087791003 -0.108621 -0.94493502 0.30870599 -0.161478 -0.93579 0.31340399
		 -0.161478 -0.93579 0.31340399 -0.27315801 -0.72233599 0.63530701 -0.404048 -0.71518397
		 0.57031298 -0.25978401 -0.914738 0.30946201 -0.161478 -0.93579 0.31340399 -0.108621
		 -0.94493502 0.30870599 -0.187324 -0.74463999 0.64064199 -0.27315801 -0.72233599 0.63530701
		 -0.27315801 -0.72233599 0.63530701 -0.348481 -0.20163099 0.91537201 -0.514377 -0.21859699
		 0.82923502 -0.404048 -0.71518397 0.57031298 -0.27315801 -0.72233599 0.63530701 -0.187324
		 -0.74463999 0.64064199 -0.240358 -0.247584 0.93857902 -0.348481 -0.20163099 0.91537201
		 -0.348481 -0.20163099 0.91537201 -0.265558 0.55529302 0.78811699 -0.39708301 0.53432399
		 0.74620599 -0.514377 -0.21859699 0.82923502 -0.348481 -0.20163099 0.91537201 -0.240358
		 -0.247584 0.93857902 -0.20521501 0.40789801 0.88966602 -0.265558 0.55529302 0.78811699
		 -0.265558 0.55529302 0.78811699 -0.146458 0.86279899 0.483868 -0.195847 0.85385299
		 0.48226401 -0.39708301 0.53432399 0.74620599 -0.265558 0.55529302 0.78811699 -0.20521501
		 0.40789801 0.88966602 -0.128833 0.78733099 0.60291898 -0.146458 0.86279899 0.483868
		 -0.146458 0.86279899 0.483868 -0.111347 0.91363198 0.39099601 -0.13126899 0.91047901
		 0.392169 -0.195847 0.85385299 0.48226401 -0.146458 0.86279899 0.483868 -0.128833
		 0.78733099 0.60291898 -0.083769001 0.89921898 0.42940399 -0.111347 0.91363198 0.39099601
		 -0.111347 0.91363198 0.39099601 -0.106459 0.919725 0.37785101 -0.118981 0.92135602
		 0.37006301 -0.13126899 0.91047901 0.392169 -0.111347 0.91363198 0.39099601 -0.083769001
		 0.89921898 0.42940399 -0.073133998 0.91717303 0.39172199 -0.106459 0.919725 0.37785101
		 -0.106459 0.919725 0.37785101 -0.105695 0.92105103 0.374825 -0.118595 0.92300898
		 0.366045 -0.118981 0.92135602 0.37006301 -0.106459 0.919725 0.37785101 -0.073133998
		 0.91717303 0.39172199 -0.071829997 0.918944 0.38779101 -0.105695 0.92105103 0.374825
		 -0.105695 0.92105103 0.374825 -0.107696 0.91930503 0.37852401 -0.122466 0.92147899
		 0.36861801 -0.118595 0.92300898 0.366045 -0.105695 0.92105103 0.374825 -0.071829997
		 0.918944 0.38779101 -0.071914002 0.91787899 0.39029101 -0.107696 0.91930503 0.37852401
		 -0.107696 0.91930503 0.37852401 -0.111213 0.91591799 0.38565001 -0.128305 0.91842401
		 0.374212 -0.122466 0.92147899 0.36861801 -0.107696 0.91930503 0.37852401 -0.071914002
		 0.91787899 0.39029101 -0.072186001 0.91537702 0.39607301 -0.111213 0.91591799 0.38565001
		 -0.111213 0.91591799 0.38565001 -0.117042 0.90969902 0.39843401 -0.136261 0.91416198
		 0.38176 -0.128305 0.91842401 0.374212 -0.111213 0.91591799 0.38565001 -0.072186001
		 0.91537702 0.39607301 -0.072526 0.91011697 0.40795499 -0.117042 0.90969902 0.39843401
		 -0.117042 0.90969902 0.39843401 -0.126332 0.89998299 0.417218 -0.150405 0.90681398
		 0.39378601 -0.136261 0.91416198 0.38176 -0.117042 0.90969902 0.39843401 -0.072526
		 0.91011697 0.40795499 -0.071996003 0.90067703 0.428482 -0.126332 0.89998299 0.417218
		 -0.126332 0.89998299 0.417218 -0.139373 0.88569403 0.44285601 -0.17417701 0.89470297
		 0.41130099 -0.150405 0.90681398 0.39378601 -0.126332 0.89998299 0.417218 -0.071996003
		 0.90067703 0.428482 -0.070005 0.888991 0.45254201 -0.139373 0.88569403 0.44285601
		 -0.139373 0.88569403 0.44285601 -0.144798 0.87676102 0.45861101 -0.20050199 0.88071501
		 0.429115 -0.17417701 0.89470297 0.41130099 -0.139373 0.88569403 0.44285601 -0.070005
		 0.888991 0.45254201 -0.062313002 0.883614 0.46405199 -0.144798 0.87676102 0.45861101
		 -0.144798 0.87676102 0.45861101 -0.131073 0.87878299 0.45886901 -0.20848501 0.874771
		 0.43739 -0.20050199 0.88071501 0.429115 -0.144798 0.87676102 0.45861101 -0.062313002
		 0.883614 0.46405199 -0.048202001 0.88443398 0.464169 -0.131073 0.87878299 0.45886901
		 -0.17417701 0.89470297 0.41130099 -0.20050199 0.88071501 0.429115 -0.219952 0.89140701
		 0.39625001 -0.188133 0.90613103 0.37885699 -0.17417701 0.89470297 0.41130099 -0.188133
		 0.90613103 0.37885699 -0.163284 0.916291 0.36571699 -0.150405 0.90681398 0.39378601
		 -0.163284 0.916291 0.36571699 -0.188133 0.90613103 0.37885699 -0.219688 0.91657799
		 0.33410001 -0.194353 0.92700601 0.320759 -0.163284 0.916291 0.36571699 -0.148387
		 0.92169797 0.35840499 -0.136261 0.91416198 0.38176 -0.150405 0.90681398 0.39378601
		 -0.163284 0.916291 0.36571699 -0.194353 0.92700601 0.320759;
	setAttr ".n[3154:3319]" -type "float3"  -0.17666601 0.93343502 0.31223199 -0.148387
		 0.92169797 0.35840499 -0.17666601 0.93343502 0.31223199 -0.194353 0.92700601 0.320759
		 -0.235673 0.93668598 0.25899199 -0.21739601 0.94352603 0.24999499 -0.17666601 0.93343502
		 0.31223199 -0.163278 0.93804801 0.30562401 -0.13703699 0.92568702 0.35259801 -0.148387
		 0.92169797 0.35840499 -0.17666601 0.93343502 0.31223199 -0.21739601 0.94352603 0.24999499
		 -0.203188 0.94870001 0.24224401 -0.163278 0.93804801 0.30562401 -0.203188 0.94870001
		 0.24224401 -0.21739601 0.94352603 0.24999499 -0.25080299 0.94782501 0.19678999 -0.24198399
		 0.95111299 0.19190601 -0.203188 0.94870001 0.24224401 -0.19431201 0.952075 0.236212
		 -0.15289401 0.94144303 0.300513 -0.163278 0.93804801 0.30562401 -0.203188 0.94870001
		 0.24224401 -0.24198399 0.95111299 0.19190601 -0.237937 0.95293099 0.187903 -0.19431201
		 0.952075 0.236212 -0.237937 0.95293099 0.187903 -0.24198399 0.95111299 0.19190601
		 -0.254309 0.95449603 0.15576699 -0.249975 0.95596302 0.15377299 -0.237937 0.95293099
		 0.187903 -0.24339101 0.95200998 0.185574 -0.19889501 0.95140803 0.235083 -0.19431201
		 0.952075 0.236212 -0.237937 0.95293099 0.187903 -0.249975 0.95596302 0.15377299 -0.258371
		 0.95409799 0.15146101 -0.24339101 0.95200998 0.185574 -0.258371 0.95409799 0.15146101
		 -0.249975 0.95596302 0.15377299 -0.262337 0.95715702 0.1226 -0.277899 0.95335102
		 0.11787 -0.258371 0.95409799 0.15146101 -0.30832499 0.93963897 0.148369 -0.28749299
		 0.93873 0.190088 -0.24339101 0.95200998 0.185574 -0.258371 0.95409799 0.15146101
		 -0.277899 0.95335102 0.11787 -0.356332 0.92919803 0.098076999 -0.30832499 0.93963897
		 0.148369 -0.356332 0.92919803 0.098076999 -0.277899 0.95335102 0.11787 -0.27471599
		 0.95993698 0.055245001 -0.37598601 0.92662501 -0.00088299997 -0.356332 0.92919803
		 0.098076999 -0.55013901 0.83385003 0.045175001 -0.46954101 0.87199998 0.138376 -0.30832499
		 0.93963897 0.148369 -0.356332 0.92919803 0.098076999 -0.37598601 0.92662501 -0.00088299997
		 -0.58037502 0.806853 -0.110242 -0.55013901 0.83385003 0.045175001 -0.58037502 0.806853
		 -0.110242 -0.37598601 0.92662501 -0.00088299997 -0.39082101 0.90940398 -0.14228 -0.54374599
		 0.795358 -0.26785499 -0.58037502 0.806853 -0.110242 -0.81041199 0.52906799 -0.251634
		 -0.82374501 0.564978 -0.047375999 -0.55013901 0.83385003 0.045175001 -0.58037502
		 0.806853 -0.110242 -0.54374599 0.795358 -0.26785499 -0.72600698 0.53322703 -0.43426099
		 -0.81041199 0.52906799 -0.251634 -0.72600698 0.53322703 -0.43426099 -0.54374599 0.795358
		 -0.26785499 -0.43127501 0.847323 -0.30991399 -0.60500801 0.60135102 -0.521864 -0.72600698
		 0.53322703 -0.43426099 -0.81876802 0.103026 -0.56480497 -0.926741 0.048324998 -0.37258101
		 -0.81041199 0.52906799 -0.251634 -0.72600698 0.53322703 -0.43426099 -0.60500801 0.60135102
		 -0.521864 -0.70688897 0.14538001 -0.69222301 -0.81876802 0.103026 -0.56480497 -0.70688897
		 0.14538001 -0.69222301 -0.60500801 0.60135102 -0.521864 -0.52099001 0.55028301 -0.65250099
		 -0.58111602 0.14514101 -0.80077302 -0.70688897 0.14538001 -0.69222301 -0.60907203
		 -0.41822499 -0.67388302 -0.71804202 -0.400518 -0.56921101 -0.81876802 0.103026 -0.56480497
		 -0.70688897 0.14538001 -0.69222301 -0.58111602 0.14514101 -0.80077302 -0.53085899
		 -0.31646901 -0.78615302 -0.60907203 -0.41822499 -0.67388302 -0.53085899 -0.31646901
		 -0.78615302 -0.58111602 0.14514101 -0.80077302 -0.379296 0.146137 -0.91366202 -0.345314
		 -0.283701 -0.89457899 -0.53085899 -0.31646901 -0.78615302 -0.37947899 -0.70318401
		 -0.60127199 -0.36656001 -0.79650199 -0.48085099 -0.60907203 -0.41822499 -0.67388302
		 -0.53085899 -0.31646901 -0.78615302 -0.345314 -0.283701 -0.89457899 -0.257568 -0.647066
		 -0.71761 -0.37947899 -0.70318401 -0.60127199 -0.257568 -0.647066 -0.71761 -0.345314
		 -0.283701 -0.89457899 -0.19701999 -0.25911701 -0.94553798 -0.13331901 -0.63349301
		 -0.76217598 -0.257568 -0.647066 -0.71761 -0.141133 -0.88363302 -0.44640201 -0.192249
		 -0.91898298 -0.344253 -0.37947899 -0.70318401 -0.60127199 -0.257568 -0.647066 -0.71761
		 -0.13331901 -0.63349301 -0.76217598 -0.051803 -0.87871599 -0.47452599 -0.141133 -0.88363302
		 -0.44640201 -0.141133 -0.88363302 -0.44640201 -0.044856999 -0.97776699 -0.20483799
		 -0.061868001 -0.98540503 -0.158586 -0.192249 -0.91898298 -0.344253 -0.141133 -0.88363302
		 -0.44640201 -0.051803 -0.87871599 -0.47452599 0.012129 -0.97524703 -0.22078399 -0.044856999
		 -0.97776699 -0.20483799 -0.044856999 -0.97776699 -0.20483799 0.013826 -0.99814898
		 -0.059222002 0.0099219996 -0.998299 -0.057459999 -0.061868001 -0.98540503 -0.158586
		 -0.044856999 -0.97776699 -0.20483799 0.012129 -0.97524703 -0.22078399 0.046845 -0.99681801
		 -0.064493999 0.013826 -0.99814898 -0.059222002 0.013826 -0.99814898 -0.059222002
		 0.052558001 -0.99794501 0.036651999 0.059484001 -0.99813002 0.014068 0.0099219996
		 -0.998299 -0.057459999 0.013826 -0.99814898 -0.059222002 0.046845 -0.99681801 -0.064493999
		 0.064145997 -0.99747503 0.030485 0.052558001 -0.99794501 0.036651999 0.052558001
		 -0.99794501 0.036651999 0.08484 -0.98982602 0.11422 0.098517001 -0.992544 0.071764998
		 0.059484001 -0.99813002 0.014068 0.052558001 -0.99794501 0.036651999 0.064145997
		 -0.99747503 0.030485 0.075300001 -0.98972797 0.121528 0.08484 -0.98982602 0.11422
		 0.08484 -0.98982602 0.11422 0.120578 -0.974599 0.18872599 0.13218801 -0.98469502
		 0.113589 0.098517001 -0.992544 0.071764998 0.08484 -0.98982602 0.11422 0.075300001
		 -0.98972797 0.121528 0.087860003 -0.96547103 0.24525 0.120578 -0.974599 0.18872599
		 0.120578 -0.974599 0.18872599 0.186573 -0.94247502 0.27736601 0.18977 -0.969419 0.15561099
		 0.13218801 -0.98469502 0.113589;
	setAttr ".n[3320:3485]" -type "float3"  0.120578 -0.974599 0.18872599 0.087860003
		 -0.96547103 0.24525 0.122948 -0.91477603 0.38479799 0.186573 -0.94247502 0.27736601
		 0.186573 -0.94247502 0.27736601 0.26999801 -0.90855598 0.31879199 0.29184899 -0.93590498
		 0.197248 0.18977 -0.969419 0.15561099 0.186573 -0.94247502 0.27736601 0.122948 -0.91477603
		 0.38479799 0.177056 -0.87854397 0.443634 0.26999801 -0.90855598 0.31879199 0.26999801
		 -0.90855598 0.31879199 0.26157099 -0.94241101 0.208427 0.329642 -0.930659 0.158779
		 0.29184899 -0.93590498 0.197248 0.26999801 -0.90855598 0.31879199 0.177056 -0.87854397
		 0.443634 0.182759 -0.94974703 0.254125 0.26157099 -0.94241101 0.208427 0.26157099
		 -0.94241101 0.208427 0.112728 -0.99361801 0.0039440002 0.200256 -0.97950202 0.021739
		 0.329642 -0.930659 0.158779 0.26157099 -0.94241101 0.208427 0.182759 -0.94974703
		 0.254125 0.053165998 -0.99807799 -0.031849999 0.112728 -0.99361801 0.0039440002 0.112728
		 -0.99361801 0.0039440002 0.053645 -0.99833298 -0.021299999 0.109819 -0.993846 -0.014507
		 0.200256 -0.97950202 0.021739 0.112728 -0.99361801 0.0039440002 0.053165998 -0.99807799
		 -0.031849999 0.014359 -0.999394 -0.031699002 0.053645 -0.99833298 -0.021299999 0.200256
		 -0.97950202 0.021739 0.27869999 -0.96037799 0.00056900003 0.337551 -0.937922 0.079764999
		 0.329642 -0.930659 0.158779 0.200256 -0.97950202 0.021739 0.109819 -0.993846 -0.014507
		 0.17811801 -0.98359901 -0.028413 0.27869999 -0.96037799 0.00056900003 0.27869999
		 -0.96037799 0.00056900003 0.30871901 -0.94986898 -0.049414001 0.3073 -0.951612 -0.001083
		 0.337551 -0.937922 0.079764999 0.27869999 -0.96037799 0.00056900003 0.17811801 -0.98359901
		 -0.028413 0.23792 -0.96937603 -0.060858 0.30871901 -0.94986898 -0.049414001 0.30871901
		 -0.94986898 -0.049414001 0.300286 -0.95035899 -0.081529997 0.26719701 -0.96221203
		 -0.052474 0.3073 -0.951612 -0.001083 0.30871901 -0.94986898 -0.049414001 0.23792
		 -0.96937603 -0.060858 0.28407499 -0.95446998 -0.09104 0.300286 -0.95035899 -0.081529997
		 0.300286 -0.95035899 -0.081529997 0.265697 -0.95958102 -0.09279 0.245491 -0.96767497
		 -0.057794999 0.26719701 -0.96221203 -0.052474 0.300286 -0.95035899 -0.081529997 0.28407499
		 -0.95446998 -0.09104 0.295104 -0.94799602 -0.119238 0.265697 -0.95958102 -0.09279
		 0.295104 -0.94799602 -0.119238 0.274468 -0.948066 -0.160744 0.213595 -0.96869701
		 -0.12650201 0.265697 -0.95958102 -0.09279 0.295104 -0.94799602 -0.119238 0.41484499
		 -0.90650201 -0.078477003 0.42945099 -0.89062297 -0.14953899 0.274468 -0.948066 -0.160744
		 0.295104 -0.94799602 -0.119238 0.28407499 -0.95446998 -0.09104 0.373835 -0.92720199
		 -0.023332 0.41484499 -0.90650201 -0.078477003 0.42945099 -0.89062297 -0.14953899
		 0.43095601 -0.87435299 -0.223124 0.25945401 -0.94032699 -0.220157 0.274468 -0.948066
		 -0.160744 0.42945099 -0.89062297 -0.14953899 0.55359399 -0.82117599 -0.13858201 0.52711701
		 -0.81667298 -0.23493201 0.43095601 -0.87435299 -0.223124 0.42945099 -0.89062297 -0.14953899
		 0.41484499 -0.90650201 -0.078477003 0.54662102 -0.83666599 -0.034577999 0.55359399
		 -0.82117599 -0.13858201 0.52711701 -0.81667298 -0.23493201 0.479707 -0.814156 -0.32715499
		 0.417588 -0.85512102 -0.307228 0.43095601 -0.87435299 -0.223124 0.52711701 -0.81667298
		 -0.23493201 0.483226 -0.83075899 -0.276283 0.42537299 -0.830652 -0.35927001 0.479707
		 -0.814156 -0.32715499 0.52711701 -0.81667298 -0.23493201 0.55359399 -0.82117599 -0.13858201
		 0.53148597 -0.82929301 -0.17261399 0.483226 -0.83075899 -0.276283 0.479707 -0.814156
		 -0.32715499 0.420279 -0.81434602 -0.40025899 0.39637399 -0.83915699 -0.37243 0.417588
		 -0.85512102 -0.307228 0.479707 -0.814156 -0.32715499 0.42537299 -0.830652 -0.35927001
		 0.34656599 -0.83384103 -0.42965299 0.420279 -0.81434602 -0.40025899 0.39637399 -0.83915699
		 -0.37243 0.25248399 -0.90103501 -0.352687 0.258504 -0.92156702 -0.28963599 0.417588
		 -0.85512102 -0.307228 0.39637399 -0.83915699 -0.37243 0.37184101 -0.82502002 -0.42553201
		 0.2481 -0.875063 -0.41558501 0.25248399 -0.90103501 -0.352687 0.39637399 -0.83915699
		 -0.37243 0.420279 -0.81434602 -0.40025899 0.34110701 -0.82470697 -0.451114 0.37184101
		 -0.82502002 -0.42553201 0.37184101 -0.82502002 -0.42553201 0.32416901 -0.80882102
		 -0.49063501 0.24878 -0.845698 -0.47212601 0.2481 -0.875063 -0.41558501 0.37184101
		 -0.82502002 -0.42553201 0.34110701 -0.82470697 -0.451114 0.234207 -0.83780497 -0.493184
		 0.32416901 -0.80882102 -0.49063501 0.2481 -0.875063 -0.41558501 0.124173 -0.92868203
		 -0.349473 0.125303 -0.94019502 -0.31675199 0.25248399 -0.90103501 -0.352687 0.2481
		 -0.875063 -0.41558501 0.24878 -0.845698 -0.47212601 0.128509 -0.91726702 -0.37697199
		 0.124173 -0.92868203 -0.349473 0.124173 -0.92868203 -0.349473 0.051437002 -0.95257401
		 -0.29992801 0.056515001 -0.95519698 -0.290526 0.125303 -0.94019502 -0.31675199 0.124173
		 -0.92868203 -0.349473 0.128509 -0.91726702 -0.37697199 0.054761998 -0.95216101 -0.30064899
		 0.051437002 -0.95257401 -0.29992801 0.051437002 -0.95257401 -0.29992801 0.098585002
		 -0.93754297 -0.33360699 0.14509401 -0.93982297 -0.309322 0.056515001 -0.95519698
		 -0.290526 0.051437002 -0.95257401 -0.29992801 0.054761998 -0.95216101 -0.30064899
		 0.068506002 -0.93751103 -0.34114501 0.098585002 -0.93754297 -0.33360699 0.098585002
		 -0.93754297 -0.33360699 0.249421 -0.85994798 -0.44528401 0.35187 -0.85248202 -0.386603
		 0.14509401 -0.93982297 -0.309322 0.098585002 -0.93754297 -0.33360699 0.068506002
		 -0.93751103 -0.34114501 0.15941 -0.87257999 -0.46172801 0.249421 -0.85994798 -0.44528401
		 0.249421 -0.85994798 -0.44528401 0.33507699 -0.811854 -0.478138;
	setAttr ".n[3486:3651]" -type "float3"  0.44518101 -0.789235 -0.42299101 0.35187
		 -0.85248202 -0.386603 0.249421 -0.85994798 -0.44528401 0.15941 -0.87257999 -0.46172801
		 0.221816 -0.83684403 -0.500489 0.33507699 -0.811854 -0.478138 0.33507699 -0.811854
		 -0.478138 0.248616 -0.88781297 -0.38727 0.30586699 -0.88525802 -0.35037801 0.44518101
		 -0.789235 -0.42299101 0.33507699 -0.811854 -0.478138 0.221816 -0.83684403 -0.500489
		 0.180712 -0.89010799 -0.41839001 0.248616 -0.88781297 -0.38727 0.248616 -0.88781297
		 -0.38727 0.133542 -0.95192897 -0.275677 0.14843599 -0.95548302 -0.25499001 0.30586699
		 -0.88525802 -0.35037801 0.248616 -0.88781297 -0.38727 0.180712 -0.89010799 -0.41839001
		 0.101287 -0.951307 -0.29113001 0.133542 -0.95192897 -0.275677 0.133542 -0.95192897
		 -0.275677 0.020510999 -0.98733997 -0.157285 0.0093470002 -0.98677701 -0.161817 0.14843599
		 -0.95548302 -0.25499001 0.133542 -0.95192897 -0.275677 0.101287 -0.951307 -0.29113001
		 0.0067309998 -0.99056602 -0.13687301 0.020510999 -0.98733997 -0.157285 0.020510999
		 -0.98733997 -0.157285 -0.12603401 -0.99202001 0.0034380001 -0.178349 -0.98360503
		 -0.026684999 0.0093470002 -0.98677701 -0.161817 0.020510999 -0.98733997 -0.157285
		 0.0067309998 -0.99056602 -0.13687301 -0.117581 -0.99081898 0.066729002 -0.12603401
		 -0.99202001 0.0034380001 -0.12603401 -0.99202001 0.0034380001 -0.32774401 -0.91460198
		 0.236826 -0.41051999 -0.89887297 0.153301 -0.178349 -0.98360503 -0.026684999 -0.12603401
		 -0.99202001 0.0034380001 -0.117581 -0.99081898 0.066729002 -0.25978401 -0.914738
		 0.30946201 -0.32774401 -0.91460198 0.236826 -0.32774401 -0.91460198 0.236826 -0.51003897
		 -0.72491401 0.462989 -0.65381002 -0.66376799 0.36324 -0.41051999 -0.89887297 0.153301
		 -0.32774401 -0.91460198 0.236826 -0.25978401 -0.914738 0.30946201 -0.404048 -0.71518397
		 0.57031298 -0.51003897 -0.72491401 0.462989 -0.51003897 -0.72491401 0.462989 -0.66410798
		 -0.279558 0.69340301 -0.80545503 -0.26918101 0.528 -0.65381002 -0.66376799 0.36324
		 -0.51003897 -0.72491401 0.462989 -0.404048 -0.71518397 0.57031298 -0.514377 -0.21859699
		 0.82923502 -0.66410798 -0.279558 0.69340301 -0.66410798 -0.279558 0.69340301 -0.58158201
		 0.37607601 0.72133899 -0.77017701 0.23015299 0.594859 -0.80545503 -0.26918101 0.528
		 -0.66410798 -0.279558 0.69340301 -0.514377 -0.21859699 0.82923502 -0.39708301 0.53432399
		 0.74620599 -0.58158201 0.37607601 0.72133899 -0.58158201 0.37607601 0.72133899 -0.344993
		 0.75892597 0.55227798 -0.537911 0.66814899 0.51403201 -0.77017701 0.23015299 0.594859
		 -0.58158201 0.37607601 0.72133899 -0.39708301 0.53432399 0.74620599 -0.195847 0.85385299
		 0.48226401 -0.344993 0.75892597 0.55227798 -0.344993 0.75892597 0.55227798 -0.170193
		 0.90285498 0.39482599 -0.296336 0.87317801 0.386969 -0.537911 0.66814899 0.51403201
		 -0.344993 0.75892597 0.55227798 -0.195847 0.85385299 0.48226401 -0.13126899 0.91047901
		 0.392169 -0.170193 0.90285498 0.39482599 -0.170193 0.90285498 0.39482599 -0.120587
		 0.93040502 0.34612799 -0.176728 0.93218702 0.31590399 -0.296336 0.87317801 0.386969
		 -0.170193 0.90285498 0.39482599 -0.13126899 0.91047901 0.392169 -0.118981 0.92135602
		 0.37006301 -0.120587 0.93040502 0.34612799 -0.120587 0.93040502 0.34612799 -0.120003
		 0.93160802 0.34308201 -0.149295 0.94260103 0.29868701 -0.176728 0.93218702 0.31590399
		 -0.120587 0.93040502 0.34612799 -0.118981 0.92135602 0.37006301 -0.118595 0.92300898
		 0.366045 -0.120003 0.93160802 0.34308201 -0.120003 0.93160802 0.34308201 -0.127537
		 0.92896497 0.34750301 -0.15289401 0.94144303 0.300513 -0.149295 0.94260103 0.29868701
		 -0.120003 0.93160802 0.34308201 -0.118595 0.92300898 0.366045 -0.122466 0.92147899
		 0.36861801 -0.127537 0.92896497 0.34750301 -0.127537 0.92896497 0.34750301 -0.13703699
		 0.92568702 0.35259801 -0.163278 0.93804801 0.30562401 -0.15289401 0.94144303 0.300513
		 -0.127537 0.92896497 0.34750301 -0.122466 0.92147899 0.36861801 -0.128305 0.91842401
		 0.374212 -0.13703699 0.92568702 0.35259801 -0.149295 0.94260103 0.29868701 -0.15289401
		 0.94144303 0.300513 -0.19431201 0.952075 0.236212 -0.19889501 0.95140803 0.235083
		 -0.149295 0.94260103 0.29868701 -0.19889501 0.95140803 0.235083 -0.244784 0.936885
		 0.249653 -0.176728 0.93218702 0.31590399 -0.244784 0.936885 0.249653 -0.19889501
		 0.95140803 0.235083 -0.24339101 0.95200998 0.185574 -0.28749299 0.93873 0.190088
		 -0.244784 0.936885 0.249653 -0.40289399 0.86332798 0.303877 -0.296336 0.87317801
		 0.386969 -0.176728 0.93218702 0.31590399 -0.244784 0.936885 0.249653 -0.28749299
		 0.93873 0.190088 -0.45496401 0.86496502 0.21176299 -0.40289399 0.86332798 0.303877
		 -0.45496401 0.86496502 0.21176299 -0.28749299 0.93873 0.190088 -0.30832499 0.93963897
		 0.148369 -0.46954101 0.87199998 0.138376 -0.45496401 0.86496502 0.21176299 -0.74915802
		 0.61872101 0.236531 -0.67787802 0.62797099 0.38227499 -0.40289399 0.86332798 0.303877
		 -0.45496401 0.86496502 0.21176299 -0.46954101 0.87199998 0.138376 -0.76692802 0.632429
		 0.108876 -0.74915802 0.61872101 0.236531 -0.76692802 0.632429 0.108876 -0.46954101
		 0.87199998 0.138376 -0.55013901 0.83385003 0.045175001 -0.82374501 0.564978 -0.047375999
		 -0.76692802 0.632429 0.108876 -0.98950702 0.138372 0.041591 -0.96081901 0.17542499
		 0.214598 -0.74915802 0.61872101 0.236531 -0.76692802 0.632429 0.108876 -0.82374501
		 0.564978 -0.047375999 -0.98569202 0.080121003 -0.14830001 -0.98950702 0.138372 0.041591
		 -0.98569202 0.080121003 -0.14830001 -0.82374501 0.564978 -0.047375999 -0.81041199
		 0.52906799 -0.251634 -0.926741 0.048324998 -0.37258101;
	setAttr ".n[3652:3817]" -type "float3"  -0.98569202 0.080121003 -0.14830001 -0.87650102
		 -0.43395299 -0.2084 -0.91074097 -0.41073099 -0.043014999 -0.98950702 0.138372 0.041591
		 -0.98569202 0.080121003 -0.14830001 -0.926741 0.048324998 -0.37258101 -0.80495697
		 -0.442725 -0.39501801 -0.87650102 -0.43395299 -0.2084 -0.80495697 -0.442725 -0.39501801
		 -0.926741 0.048324998 -0.37258101 -0.81876802 0.103026 -0.56480497 -0.71804202 -0.400518
		 -0.56921101 -0.80495697 -0.442725 -0.39501801 -0.54914498 -0.76365101 -0.339524 -0.59248197
		 -0.777695 -0.210133 -0.87650102 -0.43395299 -0.2084 -0.80495697 -0.442725 -0.39501801
		 -0.71804202 -0.400518 -0.56921101 -0.45975399 -0.76443398 -0.451958 -0.54914498 -0.76365101
		 -0.339524 -0.45975399 -0.76443398 -0.451958 -0.71804202 -0.400518 -0.56921101 -0.60907203
		 -0.41822499 -0.67388302 -0.36656001 -0.79650199 -0.48085099 -0.45975399 -0.76443398
		 -0.451958 -0.20682 -0.92900598 -0.30687699 -0.25931299 -0.93309301 -0.24918801 -0.54914498
		 -0.76365101 -0.339524 -0.45975399 -0.76443398 -0.451958 -0.36656001 -0.79650199 -0.48085099
		 -0.15534499 -0.94462901 -0.28904 -0.20682 -0.92900598 -0.30687699 -0.15534499 -0.94462901
		 -0.28904 -0.36656001 -0.79650199 -0.48085099 -0.37947899 -0.70318401 -0.60127199
		 -0.192249 -0.91898298 -0.344253 -0.15534499 -0.94462901 -0.28904 -0.022829 -0.985964
		 -0.165391 -0.027837999 -0.98073298 -0.19336 -0.20682 -0.92900598 -0.30687699 -0.15534499
		 -0.94462901 -0.28904 -0.192249 -0.91898298 -0.344253 -0.061868001 -0.98540503 -0.158586
		 -0.022829 -0.985964 -0.165391 -0.022829 -0.985964 -0.165391 0.063692003 -0.994645
		 -0.081391998 0.106179 -0.98926598 -0.100391 -0.027837999 -0.98073298 -0.19336 -0.022829
		 -0.985964 -0.165391 -0.061868001 -0.98540503 -0.158586 0.0099219996 -0.998299 -0.057459999
		 0.063692003 -0.994645 -0.081391998 0.063692003 -0.994645 -0.081391998 0.132929 -0.99110502
		 -0.0063510002 0.240457 -0.97065902 0.001547 0.106179 -0.98926598 -0.100391 0.063692003
		 -0.994645 -0.081391998 0.0099219996 -0.998299 -0.057459999 0.059484001 -0.99813002
		 0.014068 0.132929 -0.99110502 -0.0063510002 0.132929 -0.99110502 -0.0063510002 0.165188
		 -0.985066 0.048556998 0.301328 -0.95143998 0.062963001 0.240457 -0.97065902 0.001547
		 0.132929 -0.99110502 -0.0063510002 0.059484001 -0.99813002 0.014068 0.098517001 -0.992544
		 0.071764998 0.165188 -0.985066 0.048556998 0.165188 -0.985066 0.048556998 0.16316099
		 -0.98432499 0.066955999 0.25548699 -0.96513402 0.056949001 0.301328 -0.95143998 0.062963001
		 0.165188 -0.985066 0.048556998 0.098517001 -0.992544 0.071764998 0.13218801 -0.98469502
		 0.113589 0.16316099 -0.98432499 0.066955999 0.16316099 -0.98432499 0.066955999 0.17826299
		 -0.98053801 0.082267001 0.184066 -0.98266602 0.022090999 0.25548699 -0.96513402 0.056949001
		 0.16316099 -0.98432499 0.066955999 0.13218801 -0.98469502 0.113589 0.18977 -0.969419
		 0.15561099 0.17826299 -0.98053801 0.082267001 0.17826299 -0.98053801 0.082267001
		 0.26098201 -0.96091902 0.092315003 0.21910299 -0.97570097 -0.00099500001 0.184066
		 -0.98266602 0.022090999 0.17826299 -0.98053801 0.082267001 0.18977 -0.969419 0.15561099
		 0.29184899 -0.93590498 0.197248 0.26098201 -0.96091902 0.092315003 0.26098201 -0.96091902
		 0.092315003 0.337551 -0.937922 0.079764999 0.3073 -0.951612 -0.001083 0.21910299
		 -0.97570097 -0.00099500001 0.26098201 -0.96091902 0.092315003 0.29184899 -0.93590498
		 0.197248 0.329642 -0.930659 0.158779 0.337551 -0.937922 0.079764999 0.21910299 -0.97570097
		 -0.00099500001 0.190704 -0.97984201 -0.059505001 0.205824 -0.97765702 -0.042711001
		 0.184066 -0.98266602 0.022090999 0.21910299 -0.97570097 -0.00099500001 0.3073 -0.951612
		 -0.001083 0.26719701 -0.96221203 -0.052474 0.190704 -0.97984201 -0.059505001 0.190704
		 -0.97984201 -0.059505001 0.200032 -0.97750503 -0.066863999 0.251293 -0.96423298 -0.084305003
		 0.205824 -0.97765702 -0.042711001 0.190704 -0.97984201 -0.059505001 0.26719701 -0.96221203
		 -0.052474 0.245491 -0.96767497 -0.057794999 0.200032 -0.97750503 -0.066863999 0.200032
		 -0.97750503 -0.066863999 0.244516 -0.96630502 -0.080412 0.32194999 -0.938182 -0.127132
		 0.251293 -0.96423298 -0.084305003 0.200032 -0.97750503 -0.066863999 0.245491 -0.96767497
		 -0.057794999 0.222185 -0.97183698 -0.078527004 0.244516 -0.96630502 -0.080412 0.222185
		 -0.97183698 -0.078527004 0.178746 -0.96983498 -0.16574 0.28359899 -0.94666898 -0.152933
		 0.244516 -0.96630502 -0.080412 0.222185 -0.97183698 -0.078527004 0.213595 -0.96869701
		 -0.12650201 0.152689 -0.96890998 -0.19467901 0.178746 -0.96983498 -0.16574 0.222185
		 -0.97183698 -0.078527004 0.245491 -0.96767497 -0.057794999 0.265697 -0.95958102 -0.09279
		 0.213595 -0.96869701 -0.12650201 0.152689 -0.96890998 -0.19467901 0.129907 -0.95523399
		 -0.26580599 0.102137 -0.96110398 -0.256607 0.178746 -0.96983498 -0.16574 0.152689
		 -0.96890998 -0.19467901 0.25945401 -0.94032699 -0.220157 0.258504 -0.92156702 -0.28963599
		 0.129907 -0.95523399 -0.26580599 0.152689 -0.96890998 -0.19467901 0.213595 -0.96869701
		 -0.12650201 0.274468 -0.948066 -0.160744 0.25945401 -0.94032699 -0.220157 0.129907
		 -0.95523399 -0.26580599 0.125303 -0.94019502 -0.31675199 0.056515001 -0.95519698
		 -0.290526 0.102137 -0.96110398 -0.256607 0.129907 -0.95523399 -0.26580599 0.258504
		 -0.92156702 -0.28963599 0.25248399 -0.90103501 -0.352687 0.125303 -0.94019502 -0.31675199
		 0.102137 -0.96110398 -0.256607 0.236706 -0.93959397 -0.247251 0.28359899 -0.94666898
		 -0.152933 0.178746 -0.96983498 -0.16574 0.102137 -0.96110398 -0.256607 0.056515001
		 -0.95519698 -0.290526 0.14509401 -0.93982297 -0.309322 0.236706 -0.93959397 -0.247251
		 0.236706 -0.93959397 -0.247251 0.41494399 -0.86161703 -0.29229701;
	setAttr ".n[3818:3983]" -type "float3"  0.393769 -0.896842 -0.201547 0.28359899
		 -0.94666898 -0.152933 0.236706 -0.93959397 -0.247251 0.14509401 -0.93982297 -0.309322
		 0.35187 -0.85248202 -0.386603 0.41494399 -0.86161703 -0.29229701 0.41494399 -0.86161703
		 -0.29229701 0.46402699 -0.82323003 -0.32706499 0.46263 -0.85349 -0.239851 0.393769
		 -0.896842 -0.201547 0.41494399 -0.86161703 -0.29229701 0.35187 -0.85248202 -0.386603
		 0.44518101 -0.789235 -0.42299101 0.46402699 -0.82323003 -0.32706499 0.46402699 -0.82323003
		 -0.32706499 0.32791501 -0.89868802 -0.29126099 0.37004501 -0.90019602 -0.22959501
		 0.46263 -0.85349 -0.239851 0.46402699 -0.82323003 -0.32706499 0.44518101 -0.789235
		 -0.42299101 0.30586699 -0.88525802 -0.35037801 0.32791501 -0.89868802 -0.29126099
		 0.32791501 -0.89868802 -0.29126099 0.195224 -0.94993103 -0.243965 0.221807 -0.95355302
		 -0.20380899 0.37004501 -0.90019602 -0.22959501 0.32791501 -0.89868802 -0.29126099
		 0.30586699 -0.88525802 -0.35037801 0.14843599 -0.95548302 -0.25499001 0.195224 -0.94993103
		 -0.243965 0.195224 -0.94993103 -0.243965 0.058782 -0.979783 -0.19123299 0.091016002
		 -0.97902298 -0.182294 0.221807 -0.95355302 -0.20380899 0.195224 -0.94993103 -0.243965
		 0.14843599 -0.95548302 -0.25499001 0.0093470002 -0.98677701 -0.161817 0.058782 -0.979783
		 -0.19123299 0.058782 -0.979783 -0.19123299 -0.12506101 -0.985982 -0.110447 -0.076649003
		 -0.98583001 -0.14921001 0.091016002 -0.97902298 -0.182294 0.058782 -0.979783 -0.19123299
		 0.0093470002 -0.98677701 -0.161817 -0.178349 -0.98360503 -0.026684999 -0.12506101
		 -0.985982 -0.110447 -0.12506101 -0.985982 -0.110447 -0.409823 -0.91180998 0.025448
		 -0.33981499 -0.936508 -0.086474001 -0.076649003 -0.98583001 -0.14921001 -0.12506101
		 -0.985982 -0.110447 -0.178349 -0.98360503 -0.026684999 -0.41051999 -0.89887297 0.153301
		 -0.409823 -0.91180998 0.025448 -0.409823 -0.91180998 0.025448 -0.70180303 -0.68719202
		 0.187722 -0.67206502 -0.74032903 0.015547 -0.33981499 -0.936508 -0.086474001 -0.409823
		 -0.91180998 0.025448 -0.41051999 -0.89887297 0.153301 -0.65381002 -0.66376799 0.36324
		 -0.70180303 -0.68719202 0.187722 -0.70180303 -0.68719202 0.187722 -0.89203399 -0.31032199
		 0.32859799 -0.93378502 -0.33265501 0.13185599 -0.67206502 -0.74032903 0.015547 -0.70180303
		 -0.68719202 0.187722 -0.65381002 -0.66376799 0.36324 -0.80545503 -0.26918101 0.528
		 -0.89203399 -0.31032199 0.32859799 -0.89203399 -0.31032199 0.32859799 -0.89385802
		 0.192645 0.404852 -0.96081901 0.17542499 0.214598 -0.93378502 -0.33265501 0.13185599
		 -0.89203399 -0.31032199 0.32859799 -0.80545503 -0.26918101 0.528 -0.77017701 0.23015299
		 0.594859 -0.89385802 0.192645 0.404852 -0.89385802 0.192645 0.404852 -0.67787802
		 0.62797099 0.38227499 -0.74915802 0.61872101 0.236531 -0.96081901 0.17542499 0.214598
		 -0.89385802 0.192645 0.404852 -0.77017701 0.23015299 0.594859 -0.537911 0.66814899
		 0.51403201 -0.67787802 0.62797099 0.38227499 -0.93378502 -0.33265501 0.13185599 -0.96081901
		 0.17542499 0.214598 -0.98950702 0.138372 0.041591 -0.91074097 -0.41073099 -0.043014999
		 -0.93378502 -0.33265501 0.13185599 -0.91074097 -0.41073099 -0.043014999 -0.61392999
		 -0.782224 -0.105905 -0.67206502 -0.74032903 0.015547 -0.61392999 -0.782224 -0.105905
		 -0.91074097 -0.41073099 -0.043014999 -0.87650102 -0.43395299 -0.2084 -0.59248197
		 -0.777695 -0.210133 -0.61392999 -0.782224 -0.105905 -0.28524601 -0.948668 -0.136617
		 -0.33981499 -0.936508 -0.086474001 -0.67206502 -0.74032903 0.015547 -0.61392999 -0.782224
		 -0.105905 -0.59248197 -0.777695 -0.210133 -0.28852999 -0.94009602 -0.181577 -0.28524601
		 -0.948668 -0.136617 -0.28852999 -0.94009602 -0.181577 -0.59248197 -0.777695 -0.210133
		 -0.54914498 -0.76365101 -0.339524 -0.25931299 -0.93309301 -0.24918801 -0.28852999
		 -0.94009602 -0.181577 -0.052935999 -0.98758101 -0.14792199 -0.0495 -0.987903 -0.146963
		 -0.28524601 -0.948668 -0.136617 -0.28852999 -0.94009602 -0.181577 -0.25931299 -0.93309301
		 -0.24918801 -0.038617998 -0.98502702 -0.168019 -0.052935999 -0.98758101 -0.14792199
		 -0.038617998 -0.98502702 -0.168019 -0.25931299 -0.93309301 -0.24918801 -0.20682 -0.92900598
		 -0.30687699 -0.027837999 -0.98073298 -0.19336 -0.038617998 -0.98502702 -0.168019
		 0.124731 -0.986974 -0.101612 0.119775 -0.98561502 -0.119231 -0.052935999 -0.98758101
		 -0.14792199 -0.038617998 -0.98502702 -0.168019 -0.027837999 -0.98073298 -0.19336
		 0.106179 -0.98926598 -0.100391 0.124731 -0.986974 -0.101612 0.124731 -0.986974 -0.101612
		 0.28032899 -0.95930701 -0.033849001 0.28210601 -0.95498198 -0.091790996 0.119775
		 -0.98561502 -0.119231 0.124731 -0.986974 -0.101612 0.106179 -0.98926598 -0.100391
		 0.240457 -0.97065902 0.001547 0.28032899 -0.95930701 -0.033849001 0.28032899 -0.95930701
		 -0.033849001 0.37691799 -0.92620802 0.0084990002 0.39145601 -0.91726798 -0.073357999
		 0.28210601 -0.95498198 -0.091790996 0.28032899 -0.95930701 -0.033849001 0.240457
		 -0.97065902 0.001547 0.301328 -0.95143998 0.062963001 0.37691799 -0.92620802 0.0084990002
		 0.37691799 -0.92620802 0.0084990002 0.33326799 -0.94282103 -0.0045770002 0.382963
		 -0.920573 -0.076715998 0.39145601 -0.91726798 -0.073357999 0.37691799 -0.92620802
		 0.0084990002 0.301328 -0.95143998 0.062963001 0.25548699 -0.96513402 0.056949001
		 0.33326799 -0.94282103 -0.0045770002 0.33326799 -0.94282103 -0.0045770002 0.205824
		 -0.97765702 -0.042711001 0.251293 -0.96423298 -0.084305003 0.382963 -0.920573 -0.076715998
		 0.33326799 -0.94282103 -0.0045770002 0.25548699 -0.96513402 0.056949001 0.184066
		 -0.98266602 0.022090999 0.205824 -0.97765702 -0.042711001 0.382963 -0.920573 -0.076715998
		 0.42027801 -0.89505202 -0.149159 0.39407399 -0.90632498 -0.15257899 0.39145601 -0.91726798
		 -0.073357999;
	setAttr ".n[3984:4149]" -type "float3"  0.382963 -0.920573 -0.076715998 0.251293
		 -0.96423298 -0.084305003 0.32194999 -0.938182 -0.127132 0.42027801 -0.89505202 -0.149159
		 0.42027801 -0.89505202 -0.149159 0.46263 -0.85349 -0.239851 0.37004501 -0.90019602
		 -0.22959501 0.39407399 -0.90632498 -0.15257899 0.42027801 -0.89505202 -0.149159 0.32194999
		 -0.938182 -0.127132 0.393769 -0.896842 -0.201547 0.46263 -0.85349 -0.239851 0.39407399
		 -0.90632498 -0.15257899 0.26133499 -0.95357901 -0.14963301 0.28210601 -0.95498198
		 -0.091790996 0.39145601 -0.91726798 -0.073357999 0.39407399 -0.90632498 -0.15257899
		 0.37004501 -0.90019602 -0.22959501 0.221807 -0.95355302 -0.20380899 0.26133499 -0.95357901
		 -0.14963301 0.26133499 -0.95357901 -0.14963301 0.103021 -0.98353797 -0.148459 0.119775
		 -0.98561502 -0.119231 0.28210601 -0.95498198 -0.091790996 0.26133499 -0.95357901
		 -0.14963301 0.221807 -0.95355302 -0.20380899 0.091016002 -0.97902298 -0.182294 0.103021
		 -0.98353797 -0.148459 0.103021 -0.98353797 -0.148459 -0.0495 -0.987903 -0.146963
		 -0.052935999 -0.98758101 -0.14792199 0.119775 -0.98561502 -0.119231 0.103021 -0.98353797
		 -0.148459 0.091016002 -0.97902298 -0.182294 -0.076649003 -0.98583001 -0.14921001
		 -0.0495 -0.987903 -0.146963 -0.0495 -0.987903 -0.146963 -0.076649003 -0.98583001
		 -0.14921001 -0.33981499 -0.936508 -0.086474001 -0.28524601 -0.948668 -0.136617 0.393769
		 -0.896842 -0.201547 0.32194999 -0.938182 -0.127132 0.244516 -0.96630502 -0.080412
		 0.28359899 -0.94666898 -0.152933 -0.67787802 0.62797099 0.38227499 -0.537911 0.66814899
		 0.51403201 -0.296336 0.87317801 0.386969 -0.40289399 0.86332798 0.303877 0.258504
		 -0.92156702 -0.28963599 0.25945401 -0.94032699 -0.220157 0.43095601 -0.87435299 -0.223124
		 0.417588 -0.85512102 -0.307228 -0.13703699 0.92568702 0.35259801 -0.128305 0.91842401
		 0.374212 -0.136261 0.91416198 0.38176 -0.148387 0.92169797 0.35840499 0.42537299
		 -0.830652 -0.35927001 0.483226 -0.83075899 -0.276283 0.43348601 -0.85645902 -0.28029999
		 0.38345701 -0.84723002 -0.367645 0.053645 -0.99833298 -0.021299999 0.014359 -0.999394
		 -0.031699002 0.070635997 -0.98424798 0.16206799 0.14750201 -0.97908998 0.140092 3.0000001e-06
		 0.72792399 -0.68565702 -0.189298 0.55599201 -0.80934501 -0.125157 0.83867401 -0.53005898
		 1.5e-05 0.92154503 -0.388271 1.5e-05 0.92154503 -0.388271 -0.125157 0.83867401 -0.53005898
		 -0.063694999 0.95901299 -0.27610901 2.3000001e-05 0.97992599 -0.19936 -0.063694999
		 0.95901299 -0.27610901 -0.029936999 0.98955601 -0.141003 0 0.99247301 -0.122467 2.3000001e-05
		 0.97992599 -0.19936 -0.063694999 0.95901299 -0.27610901 -0.191798 0.929721 -0.31437799
		 -0.12531801 0.98090702 -0.148719 -0.029936999 0.98955601 -0.141003 -0.063694999 0.95901299
		 -0.27610901 -0.125157 0.83867401 -0.53005898 -0.27796599 0.79086202 -0.54522598 -0.191798
		 0.929721 -0.31437799 -0.12531801 0.98090702 -0.148719 -0.088799 0.99371803 -0.068112001
		 -0.019091001 0.99559301 -0.091817997 -0.029936999 0.98955601 -0.141003 -0.12531801
		 0.98090702 -0.148719 -0.22519501 0.96496499 -0.13464899 -0.188394 0.97814399 -0.087994002
		 -0.088799 0.99371803 -0.068112001 -0.12531801 0.98090702 -0.148719 -0.191798 0.929721
		 -0.31437799 -0.29725301 0.92189902 -0.24848001 -0.22519501 0.96496499 -0.13464899
		 -0.188394 0.97814399 -0.087994002 -0.169806 0.98262298 -0.074952997 -0.077973001
		 0.99540502 -0.055574 -0.088799 0.99371803 -0.068112001 -0.188394 0.97814399 -0.087994002
		 -0.214968 0.97404999 -0.070823997 -0.205097 0.97680402 -0.061558001 -0.169806 0.98262298
		 -0.074952997 -0.188394 0.97814399 -0.087994002 -0.22519501 0.96496499 -0.13464899
		 -0.242599 0.964876 -0.100798 -0.214968 0.97404999 -0.070823997 -0.205097 0.97680402
		 -0.061558001 -0.20502099 0.976807 -0.061765999 -0.161111 0.98356098 -0.081551 -0.169806
		 0.98262298 -0.074952997 -0.205097 0.97680402 -0.061558001 -0.23696899 0.97148699
		 -0.0076529998 -0.239259 0.97094899 -0.003663 -0.20502099 0.976807 -0.061765999 -0.205097
		 0.97680402 -0.061558001 -0.214968 0.97404999 -0.070823997 -0.25174701 0.96749401
		 -0.024080999 -0.23696899 0.97148699 -0.0076529998 -0.239259 0.97094899 -0.003663
		 -0.253113 0.96740198 -0.0082550002 -0.210991 0.974989 -0.069853 -0.20502099 0.976807
		 -0.061765999 -0.239259 0.97094899 -0.003663 -0.26281899 0.96189803 0.075360999 -0.27765399
		 0.95774698 0.075023003 -0.253113 0.96740198 -0.0082550002 -0.239259 0.97094899 -0.003663
		 -0.23696899 0.97148699 -0.0076529998 -0.25109899 0.96493 0.076554 -0.26281899 0.96189803
		 0.075360999 -0.27765399 0.95774698 0.075023003 -0.29627401 0.952084 0.075880997 -0.26530501
		 0.96412802 -0.008413 -0.253113 0.96740198 -0.0082550002 -0.27765399 0.95774698 0.075023003
		 -0.28324699 0.95075399 0.125852 -0.302066 0.94487798 0.12634 -0.29627401 0.952084
		 0.075880997 -0.27765399 0.95774698 0.075023003 -0.26281899 0.96189803 0.075360999
		 -0.269647 0.95481002 0.12501501 -0.28324699 0.95075399 0.125852 -0.302066 0.94487798
		 0.12634 -0.328794 0.93613601 0.124673 -0.31931999 0.94492602 0.071755998 -0.29627401
		 0.952084 0.075880997 -0.302066 0.94487798 0.12634 -0.29865101 0.94029802 0.163242
		 -0.329218 0.92979598 0.16460501 -0.328794 0.93613601 0.124673 -0.302066 0.94487798
		 0.12634 -0.28324699 0.95075399 0.125852 -0.27802899 0.947056 0.160578 -0.29865101
		 0.94029802 0.163242 -0.329218 0.92979598 0.16460501 -0.35903001 0.918814 0.16394401
		 -0.357039 0.92639101 0.11968 -0.328794 0.93613601 0.124673 -0.329218 0.92979598 0.16460501
		 -0.31909001 0.92316902 0.21433599 -0.34970799 0.91104698 0.2184 -0.35903001 0.918814
		 0.16394401 -0.329218 0.92979598 0.16460501 -0.29865101 0.94029802 0.163242;
	setAttr ".n[4150:4315]" -type "float3"  -0.28728101 0.93494898 0.20818201 -0.31909001
		 0.92316902 0.21433599 -0.34970799 0.91104698 0.2184 -0.36718699 0.902942 0.223315
		 -0.379004 0.91056502 0.16500901 -0.35903001 0.918814 0.16394401 -0.34970799 0.91104698
		 0.2184 -0.32344899 0.90133899 0.28804401 -0.33682299 0.894889 0.29278699 -0.36718699
		 0.902942 0.223315 -0.34970799 0.91104698 0.2184 -0.31909001 0.92316902 0.21433599
		 -0.29432699 0.91368598 0.28026599 -0.32344899 0.90133899 0.28804401 -0.33682299 0.894889
		 0.29278699 -0.332739 0.89081597 0.309405 -0.37036499 0.89916497 0.23309299 -0.36718699
		 0.902942 0.223315 -0.33682299 0.894889 0.29278699 -0.28551999 0.88673598 0.363563
		 -0.28637901 0.88249302 0.37308601 -0.332739 0.89081597 0.309405 -0.33682299 0.894889
		 0.29278699 -0.32344899 0.90133899 0.28804401 -0.280424 0.88941902 0.36096701 -0.28551999
		 0.88673598 0.363563 -0.28637901 0.88249302 0.37308601 -0.29106101 0.87417197 0.388724
		 -0.33358499 0.88669097 0.32015499 -0.332739 0.89081597 0.309405 -0.28637901 0.88249302
		 0.37308601 -0.24625599 0.87695098 0.41269299 -0.23345999 0.86891001 0.43645301 -0.29106101
		 0.87417197 0.388724 -0.28637901 0.88249302 0.37308601 -0.28551999 0.88673598 0.363563
		 -0.24580801 0.87799102 0.41074401 -0.24625599 0.87695098 0.41269299 -0.23345999 0.86891001
		 0.43645301 -0.246144 0.840096 0.483376 -0.313519 0.84799898 0.42732099 -0.29106101
		 0.87417197 0.388724 -0.23345999 0.86891001 0.43645301 -0.17489 0.86885601 0.46314499
		 -0.178432 0.83895898 0.51411098 -0.246144 0.840096 0.483376 -0.23345999 0.86891001
		 0.43645301 -0.24625599 0.87695098 0.41269299 -0.18567599 0.87810701 0.44096801 -0.17489
		 0.86885601 0.46314499 -0.178432 0.83895898 0.51411098 -0.16102301 0.77108902 0.61602998
		 -0.24102101 0.77066803 0.58989698 -0.246144 0.840096 0.483376 -0.178432 0.83895898
		 0.51411098 -0.111349 0.83979899 0.53135598 -0.098947003 0.78751802 0.60829699 -0.16102301
		 0.77108902 0.61602998 -0.178432 0.83895898 0.51411098 -0.17489 0.86885601 0.46314499
		 -0.108458 0.86949003 0.48189601 -0.111349 0.83979899 0.53135598 -0.16102301 0.77108902
		 0.61602998 7.0000001e-06 0.666632 0.74538702 4.7000001e-05 0.66359901 0.74808902
		 -0.24102101 0.77066803 0.58989698 -0.16102301 0.77108902 0.61602998 -0.098947003
		 0.78751802 0.60829699 -4.2e-05 0.66778702 0.74435198 7.0000001e-06 0.666632 0.74538702
		 4.7000001e-05 0.66359901 0.74808902 -1.4e-05 0.68528301 0.72827703 -0.31970501 0.78618002
		 0.52887601 -0.24102101 0.77066803 0.58989698 -1.4e-05 0.68528301 0.72827703 -1.1e-05
		 0.75857598 0.65158498 -0.385782 0.81053698 0.44068301 -0.31970501 0.78618002 0.52887601
		 -1.1e-05 0.75857598 0.65158498 1.2e-05 0.85110599 0.52499402 -0.43028799 0.83585101
		 0.34088999 -0.385782 0.81053698 0.44068301 1.2e-05 0.85110599 0.52499402 2e-06 0.93944502
		 0.3427 -0.45365801 0.860192 0.23294701 -0.43028799 0.83585101 0.34088999 2e-06 0.93944502
		 0.3427 2.8e-05 0.995296 0.096885003 -0.451931 0.88535702 0.109097 -0.45365801 0.860192
		 0.23294701 2.8e-05 0.995296 0.096885003 -1.7e-05 0.98879302 -0.14929201 -0.42178401
		 0.90661198 -0.012352 -0.451931 0.88535702 0.109097 -1.7e-05 0.98879302 -0.14929201
		 2e-06 0.94580501 -0.324736 -0.360259 0.92389703 -0.12894601 -0.42178401 0.90661198
		 -0.012352 2e-06 0.94580501 -0.324736 3.5000001e-05 0.91446501 -0.40466499 -0.27182999
		 0.936225 -0.222693 -0.360259 0.92389703 -0.12894601 3.5000001e-05 0.91446501 -0.40466499
		 9.9999997e-06 0.91412902 -0.40542299 -0.191872 0.94335002 -0.27069399 -0.27182999
		 0.936225 -0.222693 9.9999997e-06 0.91412902 -0.40542299 -7.5999997e-05 0.91597599
		 -0.40123299 -0.120652 0.948798 -0.291935 -0.191872 0.94335002 -0.27069399 -0.191872
		 0.94335002 -0.27069399 -0.213103 0.95527399 -0.20503201 -0.28413501 0.947707 -0.14532
		 -0.27182999 0.936225 -0.222693 -0.191872 0.94335002 -0.27069399 -0.120652 0.948798
		 -0.291935 -0.14470799 0.95932901 -0.24237899 -0.213103 0.95527399 -0.20503201 -0.213103
		 0.95527399 -0.20503201 -0.18374699 0.96642399 -0.179618 -0.24729 0.96144402 -0.120307
		 -0.28413501 0.947707 -0.14532 -0.213103 0.95527399 -0.20503201 -0.14470799 0.95932901
		 -0.24237899 -0.127408 0.96784198 -0.21691 -0.18374699 0.96642399 -0.179618 -0.127408
		 0.96784198 -0.21691 -0.14470799 0.95932901 -0.24237899 -0.077257998 0.96381199 -0.25514099
		 -0.074615002 0.96838301 -0.238048 -0.127408 0.96784198 -0.21691 -0.114183 0.97146201
		 -0.20790499 -0.169313 0.97059202 -0.17112599 -0.18374699 0.96642399 -0.179618 -0.127408
		 0.96784198 -0.21691 -0.074615002 0.96838301 -0.238048 -0.065090999 0.97072899 -0.231187
		 -0.114183 0.97146201 -0.20790499 -0.065090999 0.97072899 -0.231187 -0.074615002 0.96838301
		 -0.238048 8.7e-05 0.96924901 -0.246084 -3.0000001e-06 0.97007298 -0.242815 -0.065090999
		 0.97072899 -0.231187 -0.053606 0.97476298 -0.216709 -0.100054 0.97580999 -0.194383
		 -0.114183 0.97146201 -0.20790499 -0.065090999 0.97072899 -0.231187 -3.0000001e-06
		 0.97007298 -0.242815 6.0000002e-06 0.97378403 -0.227475 -0.053606 0.97476298 -0.216709
		 6.0000002e-06 0.97378403 -0.227475 9.0000003e-06 0.98011798 -0.19841599 -0.042782001
		 0.980681 -0.19087601 -0.053606 0.97476298 -0.216709 9.0000003e-06 0.98011798 -0.19841599
		 -1.6e-05 0.98587698 -0.16746999 -0.036346 0.98588097 -0.16345701 -0.042782001 0.980681
		 -0.19087601 -1.6e-05 0.98587698 -0.16746999 2e-06 0.98969603 -0.14318299 -0.032547001
		 0.98965698 -0.13971201 -0.036346 0.98588097 -0.16345701 2e-06 0.98969603 -0.14318299
		 2e-06 0.99208498 -0.125572 -0.028766001 0.99266201 -0.117449 -0.032547001 0.98965698
		 -0.13971201;
	setAttr ".n[4316:4481]" -type "float3"  2e-06 0.99208498 -0.125572 -4.9999999e-06
		 0.99423897 -0.107182 -0.023309 0.99502301 -0.096883997 -0.028766001 0.99266201 -0.117449
		 -4.9999999e-06 0.99423897 -0.107182 -1.1e-05 0.995646 -0.093215004 -0.019273 0.99612302
		 -0.085835002 -0.023309 0.99502301 -0.096883997 -1.1e-05 0.995646 -0.093215004 -6.0000002e-06
		 0.99546897 -0.095086999 -0.019091001 0.99559301 -0.091817997 -0.019273 0.99612302
		 -0.085835002 -6.0000002e-06 0.99546897 -0.095086999 0 0.99247301 -0.122467 -0.029936999
		 0.98955601 -0.141003 -0.019091001 0.99559301 -0.091817997 -0.019273 0.99612302 -0.085835002
		 -0.077973001 0.99540502 -0.055574 -0.078277998 0.99403101 -0.075989999 -0.023309
		 0.99502301 -0.096883997 -0.019273 0.99612302 -0.085835002 -0.019091001 0.99559301
		 -0.091817997 -0.088799 0.99371803 -0.068112001 -0.077973001 0.99540502 -0.055574
		 -0.078277998 0.99403101 -0.075989999 -0.080783002 0.99133402 -0.103591 -0.028766001
		 0.99266201 -0.117449 -0.023309 0.99502301 -0.096883997 -0.078277998 0.99403101 -0.075989999
		 -0.161111 0.98356098 -0.081551 -0.15886 0.98255002 -0.096739002 -0.080783002 0.99133402
		 -0.103591 -0.078277998 0.99403101 -0.075989999 -0.077973001 0.99540502 -0.055574
		 -0.169806 0.98262298 -0.074952997 -0.161111 0.98356098 -0.081551 -0.15886 0.98255002
		 -0.096739002 -0.15671 0.98134202 -0.111403 -0.081688002 0.98848802 -0.12735 -0.080783002
		 0.99133402 -0.103591 -0.15886 0.98255002 -0.096739002 -0.210991 0.974989 -0.069853
		 -0.218026 0.97263598 -0.080279 -0.15671 0.98134202 -0.111403 -0.15886 0.98255002
		 -0.096739002 -0.161111 0.98356098 -0.081551 -0.20502099 0.976807 -0.061765999 -0.210991
		 0.974989 -0.069853 -0.218026 0.97263598 -0.080279 -0.224902 0.97030002 -0.089092001
		 -0.15454499 0.97981501 -0.126803 -0.15671 0.98134202 -0.111403 -0.218026 0.97263598
		 -0.080279 -0.26530501 0.96412802 -0.008413 -0.27923599 0.96016198 -0.010831 -0.224902
		 0.97030002 -0.089092001 -0.218026 0.97263598 -0.080279 -0.210991 0.974989 -0.069853
		 -0.253113 0.96740198 -0.0082550002 -0.26530501 0.96412802 -0.008413 -0.27923599 0.96016198
		 -0.010831 -0.295632 0.95511299 -0.018979 -0.230211 0.96799099 -0.099983998 -0.224902
		 0.97030002 -0.089092001 -0.27923599 0.96016198 -0.010831 -0.31931999 0.94492602 0.071755998
		 -0.34240299 0.93732202 0.064710997 -0.295632 0.95511299 -0.018979 -0.27923599 0.96016198
		 -0.010831 -0.26530501 0.96412802 -0.008413 -0.29627401 0.952084 0.075880997 -0.31931999
		 0.94492602 0.071755998 -0.34240299 0.93732202 0.064710997 -0.35836101 0.93186003
		 0.056689002 -0.30357 0.95242798 -0.026928 -0.295632 0.95511299 -0.018979 -0.34240299
		 0.93732202 0.064710997 -0.357039 0.92639101 0.11968 -0.37825 0.91836298 0.116344
		 -0.35836101 0.93186003 0.056689002 -0.34240299 0.93732202 0.064710997 -0.31931999
		 0.94492602 0.071755998 -0.328794 0.93613601 0.124673 -0.357039 0.92639101 0.11968
		 -0.37825 0.91836298 0.116344 -0.383706 0.916206 0.115485 -0.35652599 0.93307799 0.047481
		 -0.35836101 0.93186003 0.056689002 -0.37825 0.91836298 0.116344 -0.379004 0.91056502
		 0.16500901 -0.38621199 0.90641397 0.17103501 -0.383706 0.916206 0.115485 -0.37825
		 0.91836298 0.116344 -0.357039 0.92639101 0.11968 -0.35903001 0.918814 0.16394401
		 -0.379004 0.91056502 0.16500901 -0.38621199 0.90641397 0.17103501 -0.38489199 0.905536
		 0.178501 -0.381744 0.917858 0.108669 -0.383706 0.916206 0.115485 -0.38621199 0.90641397
		 0.17103501 -0.37036499 0.89916497 0.23309299 -0.36812001 0.89510697 0.25153601 -0.38489199
		 0.905536 0.178501 -0.38621199 0.90641397 0.17103501 -0.379004 0.91056502 0.16500901
		 -0.36718699 0.902942 0.223315 -0.37036499 0.89916497 0.23309299 -0.36812001 0.89510697
		 0.25153601 -0.40480101 0.87165701 0.276315 -0.422497 0.88580799 0.191938 -0.38489199
		 0.905536 0.178501 -0.36812001 0.89510697 0.25153601 -0.33358499 0.88669097 0.32015499
		 -0.36893499 0.859559 0.353618 -0.40480101 0.87165701 0.276315 -0.36812001 0.89510697
		 0.25153601 -0.37036499 0.89916497 0.23309299 -0.332739 0.89081597 0.309405 -0.33358499
		 0.88669097 0.32015499 -0.36893499 0.859559 0.353618 -0.385782 0.81053698 0.44068301
		 -0.43028799 0.83585101 0.34088999 -0.40480101 0.87165701 0.276315 -0.36893499 0.859559
		 0.353618 -0.313519 0.84799898 0.42732099 -0.31970501 0.78618002 0.52887601 -0.385782
		 0.81053698 0.44068301 -0.36893499 0.859559 0.353618 -0.33358499 0.88669097 0.32015499
		 -0.29106101 0.87417197 0.388724 -0.313519 0.84799898 0.42732099 -0.40480101 0.87165701
		 0.276315 -0.43028799 0.83585101 0.34088999 -0.45365801 0.860192 0.23294701 -0.422497
		 0.88580799 0.191938 -0.422497 0.88580799 0.191938 -0.45365801 0.860192 0.23294701
		 -0.451931 0.88535702 0.109097 -0.42120501 0.900828 0.105332 -0.422497 0.88580799
		 0.191938 -0.42120501 0.900828 0.105332 -0.381744 0.917858 0.108669 -0.38489199 0.905536
		 0.178501 -0.42120501 0.900828 0.105332 -0.451931 0.88535702 0.109097 -0.42178401
		 0.90661198 -0.012352 -0.394169 0.91891402 0.015118 -0.42120501 0.900828 0.105332
		 -0.394169 0.91891402 0.015118 -0.354072 0.93448699 0.036975998 -0.381744 0.917858
		 0.108669 -0.354072 0.93448699 0.036975998 -0.394169 0.91891402 0.015118 -0.34942001
		 0.93439102 -0.069415003 -0.30739799 0.95061803 -0.042798001 -0.354072 0.93448699
		 0.036975998 -0.35652599 0.93307799 0.047481 -0.383706 0.916206 0.115485 -0.381744
		 0.917858 0.108669 -0.354072 0.93448699 0.036975998 -0.30739799 0.95061803 -0.042798001
		 -0.301249 0.95288599 -0.035468001 -0.35652599 0.93307799 0.047481 -0.301249 0.95288599
		 -0.035468001 -0.30739799 0.95061803 -0.042798001;
	setAttr ".n[4482:4575]" -type "float3"  -0.24729 0.96144402 -0.120307 -0.235175
		 0.965114 -0.115096 -0.301249 0.95288599 -0.035468001 -0.30357 0.95242798 -0.026928
		 -0.35836101 0.93186003 0.056689002 -0.35652599 0.93307799 0.047481 -0.301249 0.95288599
		 -0.035468001 -0.235175 0.965114 -0.115096 -0.232594 0.96636498 -0.109726 -0.30357
		 0.95242798 -0.026928 -0.232594 0.96636498 -0.109726 -0.235175 0.965114 -0.115096
		 -0.169313 0.97059202 -0.17112599 -0.15972801 0.97388202 -0.16137099 -0.232594 0.96636498
		 -0.109726 -0.230211 0.96799099 -0.099983998 -0.295632 0.95511299 -0.018979 -0.30357
		 0.95242798 -0.026928 -0.232594 0.96636498 -0.109726 -0.15972801 0.97388202 -0.16137099
		 -0.15584999 0.97716701 -0.14441399 -0.230211 0.96799099 -0.099983998 -0.15584999
		 0.97716701 -0.14441399 -0.15972801 0.97388202 -0.16137099 -0.100054 0.97580999 -0.194383
		 -0.089589 0.98088199 -0.172755 -0.15584999 0.97716701 -0.14441399 -0.15454499 0.97981501
		 -0.126803 -0.224902 0.97030002 -0.089092001 -0.230211 0.96799099 -0.099983998 -0.15584999
		 0.97716701 -0.14441399 -0.089589 0.98088199 -0.172755 -0.083676003 0.98519599 -0.149625
		 -0.15454499 0.97981501 -0.126803 -0.083676003 0.98519599 -0.149625 -0.089589 0.98088199
		 -0.172755 -0.042782001 0.980681 -0.19087601 -0.036346 0.98588097 -0.16345701 -0.083676003
		 0.98519599 -0.149625 -0.081688002 0.98848802 -0.12735 -0.15671 0.98134202 -0.111403
		 -0.15454499 0.97981501 -0.126803 -0.083676003 0.98519599 -0.149625 -0.036346 0.98588097
		 -0.16345701 -0.032547001 0.98965698 -0.13971201 -0.081688002 0.98848802 -0.12735
		 -0.089589 0.98088199 -0.172755 -0.100054 0.97580999 -0.194383 -0.053606 0.97476298
		 -0.216709 -0.042782001 0.980681 -0.19087601 -0.15972801 0.97388202 -0.16137099 -0.169313
		 0.97059202 -0.17112599 -0.114183 0.97146201 -0.20790499 -0.100054 0.97580999 -0.194383
		 -0.235175 0.965114 -0.115096 -0.24729 0.96144402 -0.120307 -0.18374699 0.96642399
		 -0.179618 -0.169313 0.97059202 -0.17112599 -0.34942001 0.93439102 -0.069415003 -0.360259
		 0.92389703 -0.12894601 -0.27182999 0.936225 -0.222693 -0.28413501 0.947707 -0.14532
		 -0.34942001 0.93439102 -0.069415003 -0.394169 0.91891402 0.015118 -0.42178401 0.90661198
		 -0.012352 -0.360259 0.92389703 -0.12894601 -0.34942001 0.93439102 -0.069415003 -0.28413501
		 0.947707 -0.14532 -0.24729 0.96144402 -0.120307 -0.30739799 0.95061803 -0.042798001
		 -0.081688002 0.98848802 -0.12735 -0.032547001 0.98965698 -0.13971201 -0.028766001
		 0.99266201 -0.117449 -0.080783002 0.99133402 -0.103591 8.7e-05 0.96924901 -0.246084
		 -0.074615002 0.96838301 -0.238048 -0.077257998 0.96381199 -0.25514099 5.1999999e-05
		 0.96314502 -0.26898199 -0.31970501 0.78618002 0.52887601 -0.313519 0.84799898 0.42732099
		 -0.246144 0.840096 0.483376 -0.24102101 0.77066803 0.58989698 -0.131073 0.87878299
		 0.45886901 -0.048202001 0.88443398 0.464169 -0.039498001 0.88253498 0.46858501 -0.115802
		 0.88182902 0.45713001 0.089060001 -0.82380402 -0.55983502 0.137867 -0.829216 -0.54165798
		 0.136933 -0.827438 -0.54460597 0.096771002 -0.82760501 -0.55290598 0.096771002 -0.82760501
		 -0.55290598 0.136933 -0.827438 -0.54460597 0.166023 -0.828641 -0.534594 0.130558
		 -0.82650697 -0.54757702;
	setAttr -s 1144 -ch 4576 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 530 581 10
		f 4 4 5 6 -1
		mu 0 4 0 430 1023 530
		f 4 -4 7 8 -5
		mu 0 4 0 10 427 430
		f 4 9 10 11 12
		mu 0 4 1 532 1035 432
		f 4 13 14 15 -10
		mu 0 4 1 515 1132 532
		f 4 -13 16 17 -14
		mu 0 4 1 432 434 515
		f 4 18 19 20 21
		mu 0 4 2 529 528 58
		f 4 -22 22 23 24
		mu 0 4 2 58 61 63
		f 4 -25 25 26 -19
		mu 0 4 2 63 525 529
		f 4 27 28 29 30
		mu 0 4 39 38 43 3
		f 4 31 32 33 34
		mu 0 4 3 31 30 35
		f 4 -35 35 36 -31
		mu 0 4 3 35 40 39
		f 4 -30 37 38 -32
		mu 0 4 3 43 4 31
		f 4 39 40 41 -39
		mu 0 4 4 7 32 31
		f 4 -38 42 43 44
		mu 0 4 4 43 42 46
		f 4 -45 45 46 -40
		mu 0 4 4 46 5 7
		f 4 -46 47 48 49
		mu 0 4 5 46 45 51
		f 4 -50 50 51 52
		mu 0 4 5 51 50 8
		f 4 -53 53 54 -47
		mu 0 4 5 8 6 7
		f 4 55 56 57 58
		mu 0 4 6 540 615 28
		f 4 -59 59 -41 -55
		mu 0 4 6 28 32 7
		f 4 -54 60 61 -56
		mu 0 4 6 8 541 540
		f 4 -61 -52 62 63
		mu 0 4 541 8 50 543
		f 4 -63 64 65 66
		mu 0 4 543 50 49 544
		f 4 -66 67 68 69
		mu 0 4 544 49 53 545
		f 4 -69 70 71 72
		mu 0 4 545 53 55 546
		f 4 -72 73 74 75
		mu 0 4 546 55 527 547
		f 4 -75 76 77 78
		mu 0 4 547 527 526 548
		f 4 -78 79 80 81
		mu 0 4 548 526 524 549
		f 4 -81 82 83 84
		mu 0 4 549 524 65 550
		f 4 -84 85 86 87
		mu 0 4 550 65 67 551
		f 4 -87 88 89 90
		mu 0 4 551 67 69 552
		f 4 -90 91 92 93
		mu 0 4 552 69 71 553
		f 4 -93 94 95 96
		mu 0 4 553 71 73 554
		f 4 -96 97 98 99
		mu 0 4 554 73 75 555
		f 4 -99 100 101 102
		mu 0 4 555 75 77 556
		f 4 -102 103 104 105
		mu 0 4 556 77 9 557
		f 4 -105 106 107 108
		mu 0 4 557 79 81 558
		f 4 -108 109 110 111
		mu 0 4 558 81 83 559
		f 4 -111 112 113 114
		mu 0 4 559 83 85 560
		f 4 -114 115 116 117
		mu 0 4 560 85 87 561
		f 4 -117 118 119 120
		mu 0 4 561 87 89 562
		f 4 -120 121 122 123
		mu 0 4 562 89 91 563
		f 4 -123 124 125 126
		mu 0 4 563 91 93 564
		f 4 -126 127 128 129
		mu 0 4 564 93 95 565
		f 4 -129 130 131 132
		mu 0 4 565 95 97 566
		f 4 -132 133 134 135
		mu 0 4 566 97 99 567
		f 4 -135 136 137 138
		mu 0 4 567 99 101 568
		f 4 -138 139 140 141
		mu 0 4 568 101 103 569
		f 4 -141 142 143 144
		mu 0 4 569 103 105 570
		f 4 -144 145 146 147
		mu 0 4 570 105 107 571
		f 4 -147 148 149 150
		mu 0 4 571 107 109 572
		f 4 -150 151 152 153
		mu 0 4 572 109 111 573
		f 4 -153 154 155 156
		mu 0 4 573 111 113 574
		f 4 -156 157 158 159
		mu 0 4 574 113 115 575
		f 4 -159 160 161 162
		mu 0 4 575 115 119 576
		f 4 -162 163 164 165
		mu 0 4 576 119 523 577
		f 4 -165 166 167 168
		mu 0 4 577 523 522 578
		f 4 -168 169 170 171
		mu 0 4 578 522 12 579
		f 4 -171 172 173 174
		mu 0 4 579 12 11 580
		f 4 -174 175 -3 176
		mu 0 4 580 11 10 581
		f 4 177 178 -8 -176
		mu 0 4 11 428 427 10
		f 4 -173 179 180 -178
		mu 0 4 11 12 13 428
		f 4 181 182 183 -181
		mu 0 4 13 425 424 428
		f 4 -180 -170 184 185
		mu 0 4 13 12 522 521
		f 4 -186 186 187 -182
		mu 0 4 13 521 14 425
		f 4 188 189 190 -188
		mu 0 4 14 422 421 425
		f 4 -187 191 192 193
		mu 0 4 14 521 520 117
		f 4 -194 194 195 -189
		mu 0 4 14 117 15 422
		f 4 196 197 198 -196
		mu 0 4 15 419 418 422
		f 4 -195 199 200 201
		mu 0 4 15 117 116 120
		f 4 -202 202 203 -197
		mu 0 4 15 120 16 419
		f 4 204 205 206 -204
		mu 0 4 16 416 415 419
		f 4 -203 207 208 209
		mu 0 4 16 120 123 122
		f 4 -210 210 211 -205
		mu 0 4 16 122 17 416
		f 4 212 213 214 -212
		mu 0 4 17 413 412 416
		f 4 -211 215 216 217
		mu 0 4 17 122 127 126
		f 4 -218 218 219 -213
		mu 0 4 17 126 18 413
		f 4 220 221 222 -220
		mu 0 4 18 410 409 413
		f 4 -219 223 224 225
		mu 0 4 18 126 130 129
		f 4 -226 226 227 -221
		mu 0 4 18 129 19 410
		f 4 228 229 230 -228
		mu 0 4 19 407 406 410
		f 4 -227 231 232 233
		mu 0 4 19 129 133 132
		f 4 -234 234 235 -229
		mu 0 4 19 132 20 407
		f 4 236 237 238 -236
		mu 0 4 20 404 403 407
		f 4 -235 239 240 241
		mu 0 4 20 132 136 135
		f 4 -242 242 243 -237
		mu 0 4 20 135 21 404
		f 4 244 245 246 -244
		mu 0 4 21 401 400 404
		f 4 -243 247 248 249
		mu 0 4 21 135 139 138
		f 4 -250 250 251 -245
		mu 0 4 21 138 22 401
		f 4 252 253 254 -252
		mu 0 4 22 398 397 401
		f 4 -251 255 256 257
		mu 0 4 22 138 142 141
		f 4 -258 258 259 -253
		mu 0 4 22 141 23 398
		f 4 260 261 262 -260
		mu 0 4 23 395 394 398
		f 4 -259 263 264 265
		mu 0 4 23 141 145 144
		f 4 -266 266 267 -261
		mu 0 4 23 144 24 395
		f 4 268 269 270 -268
		mu 0 4 24 391 390 395
		f 4 -267 271 272 273
		mu 0 4 24 144 148 147
		f 4 -274 274 275 -269
		mu 0 4 24 147 25 391
		f 4 276 277 278 -276
		mu 0 4 25 388 392 391
		f 4 -275 279 280 281
		mu 0 4 25 147 151 150
		f 4 -282 282 283 -277
		mu 0 4 25 150 26 388
		f 4 284 285 286 -284
		mu 0 4 26 599 977 388
		f 4 -283 287 288 289
		mu 0 4 26 150 154 153
		f 4 -290 290 291 -285
		mu 0 4 26 153 600 599
		f 4 -291 292 293 294
		mu 0 4 600 153 156 601
		f 4 -294 295 296 297
		mu 0 4 601 156 158 602
		f 4 -297 298 299 300
		mu 0 4 602 158 160 603
		f 4 -300 301 302 303
		mu 0 4 603 160 162 604
		f 4 -303 304 305 306
		mu 0 4 604 162 164 605
		f 4 -306 307 308 309
		mu 0 4 605 164 166 606
		f 4 -309 310 311 312
		mu 0 4 606 166 168 607
		f 4 -312 313 314 315
		mu 0 4 607 168 170 608
		f 4 -315 316 317 318
		mu 0 4 608 170 172 609
		f 4 -318 319 320 321
		mu 0 4 609 172 174 610
		f 4 -321 322 323 324
		mu 0 4 610 174 176 611
		f 4 -324 325 326 327
		mu 0 4 611 176 387 612
		f 4 -327 328 329 330
		mu 0 4 612 387 386 613
		f 4 -330 331 332 333
		mu 0 4 613 386 27 614
		f 4 -333 334 -58 335
		mu 0 4 614 27 28 615
		f 4 -332 336 337 338
		mu 0 4 27 386 385 29
		f 4 -339 339 -60 -335
		mu 0 4 27 29 32 28
		f 4 -338 340 341 342
		mu 0 4 29 385 33 30
		f 4 -343 -33 -42 -340
		mu 0 4 29 30 31 32
		f 4 -341 343 344 345
		mu 0 4 33 385 384 178
		f 4 -346 346 347 348
		mu 0 4 33 178 180 34
		f 4 -349 349 -34 -342
		mu 0 4 33 34 35 30
		f 4 -348 350 351 352
		mu 0 4 34 180 182 36
		f 4 -353 353 -36 -350
		mu 0 4 34 36 40 35
		f 4 -352 354 355 356
		mu 0 4 36 182 187 186
		f 4 -357 357 358 -354
		mu 0 4 36 186 37 40
		f 4 -358 359 360 361
		mu 0 4 37 186 185 190
		f 4 -362 362 363 364
		mu 0 4 37 190 41 38
		f 4 -365 -28 -37 -359
		mu 0 4 37 38 39 40
		f 4 -363 365 366 367
		mu 0 4 41 190 189 193
		f 4 -368 368 369 370
		mu 0 4 41 193 44 42
		f 4 -371 -43 -29 -364
		mu 0 4 41 42 43 38
		f 4 -369 371 372 373
		mu 0 4 44 193 192 383
		f 4 -374 374 375 376
		mu 0 4 44 383 47 45
		f 4 -377 -48 -44 -370
		mu 0 4 44 45 46 42
		f 4 -375 377 378 379
		mu 0 4 47 383 382 56
		f 4 -380 380 381 382
		mu 0 4 47 56 52 48
		f 4 -383 383 -49 -376
		mu 0 4 47 48 51 45
		f 4 -382 384 -68 385
		mu 0 4 48 52 53 49
		f 4 -386 -65 -51 -384
		mu 0 4 48 49 50 51
		f 4 -381 386 387 388
		mu 0 4 52 56 57 54
		f 4 -389 389 -71 -385
		mu 0 4 52 54 55 53
		f 4 -388 390 -21 391
		mu 0 4 54 57 58 528
		f 4 -392 392 -74 -390
		mu 0 4 54 528 527 55
		f 4 -387 -379 393 394
		mu 0 4 57 56 382 59
		f 4 -395 395 -23 -391
		mu 0 4 57 59 61 58
		f 4 -394 396 397 398
		mu 0 4 59 382 381 196
		f 4 -399 399 400 -396
		mu 0 4 59 196 60 61
		f 4 -400 401 402 403
		mu 0 4 60 196 195 201
		f 4 -404 404 405 406
		mu 0 4 60 201 200 62
		f 4 -407 407 -24 -401
		mu 0 4 60 62 63 61
		f 4 -406 408 409 410
		mu 0 4 62 200 66 64
		f 4 -411 411 -26 -408
		mu 0 4 62 64 525 63
		f 4 -410 412 -86 413
		mu 0 4 64 66 67 65
		f 4 -414 -83 414 -412
		mu 0 4 64 65 524 525
		f 4 -409 415 416 417
		mu 0 4 66 200 199 68
		f 4 -418 418 -89 -413
		mu 0 4 66 68 69 67
		f 4 -417 419 420 421
		mu 0 4 68 199 203 70
		f 4 -422 422 -92 -419
		mu 0 4 68 70 71 69
		f 4 -421 423 424 425
		mu 0 4 70 203 205 72
		f 4 -426 426 -95 -423
		mu 0 4 70 72 73 71
		f 4 -425 427 428 429
		mu 0 4 72 205 207 74
		f 4 -430 430 -98 -427
		mu 0 4 72 74 75 73
		f 4 -429 431 432 433
		mu 0 4 74 207 209 76
		f 4 -434 434 -101 -431
		mu 0 4 74 76 77 75
		f 4 -433 435 436 437
		mu 0 4 76 209 211 78
		f 4 -438 438 -104 -435
		mu 0 4 76 78 79 77
		f 4 -437 439 440 441
		mu 0 4 78 211 213 80
		f 4 -442 442 -107 -439
		mu 0 4 78 80 81 79
		f 4 -441 443 444 445
		mu 0 4 80 213 215 82
		f 4 -446 446 -110 -443
		mu 0 4 80 82 83 81
		f 4 -445 447 448 449
		mu 0 4 82 215 217 84
		f 4 -450 450 -113 -447
		mu 0 4 82 84 85 83
		f 4 -449 451 452 453
		mu 0 4 84 217 219 86
		f 4 -454 454 -116 -451
		mu 0 4 84 86 87 85
		f 4 -453 455 456 457
		mu 0 4 86 219 221 88
		f 4 -458 458 -119 -455
		mu 0 4 86 88 89 87
		f 4 -457 459 460 461
		mu 0 4 88 221 223 90
		f 4 -462 462 -122 -459
		mu 0 4 88 90 91 89
		f 4 -461 463 464 465
		mu 0 4 90 223 225 92
		f 4 -466 466 -125 -463
		mu 0 4 90 92 93 91
		f 4 -465 467 468 469
		mu 0 4 92 225 227 94
		f 4 -470 470 -128 -467
		mu 0 4 92 94 95 93
		f 4 -469 471 472 473
		mu 0 4 94 227 229 96
		f 4 -474 474 -131 -471
		mu 0 4 94 96 97 95
		f 4 -473 475 476 477
		mu 0 4 96 229 231 98
		f 4 -478 478 -134 -475
		mu 0 4 96 98 99 97
		f 4 -477 479 480 481
		mu 0 4 98 231 233 100
		f 4 -482 482 -137 -479
		mu 0 4 98 100 101 99
		f 4 -481 483 484 485
		mu 0 4 100 233 235 102
		f 4 -486 486 -140 -483
		mu 0 4 100 102 103 101
		f 4 -485 487 488 489
		mu 0 4 102 235 237 104
		f 4 -490 490 -143 -487
		mu 0 4 102 104 105 103
		f 4 -489 491 492 493
		mu 0 4 104 237 241 106
		f 4 -494 494 -146 -491
		mu 0 4 104 106 107 105
		f 4 -493 495 496 497
		mu 0 4 106 241 380 108
		f 4 -498 498 -149 -495
		mu 0 4 106 108 109 107
		f 4 -497 499 500 501
		mu 0 4 108 380 379 110
		f 4 -502 502 -152 -499
		mu 0 4 108 110 111 109
		f 4 -501 503 504 505
		mu 0 4 110 379 124 112
		f 4 -506 506 -155 -503
		mu 0 4 110 112 113 111
		f 4 -505 507 508 509
		mu 0 4 112 124 121 114
		f 4 -510 510 -158 -507
		mu 0 4 112 114 115 113
		f 4 -509 511 512 513
		mu 0 4 114 121 116 118
		f 4 -514 514 -161 -511
		mu 0 4 114 118 119 115
		f 4 -513 -200 -193 515
		mu 0 4 118 116 117 520
		f 4 -516 516 -164 -515
		mu 0 4 118 520 523 119
		f 4 517 -208 -201 -512
		mu 0 4 121 123 120 116
		f 4 -508 518 519 -518
		mu 0 4 121 124 125 123
		f 4 520 -216 -209 -520
		mu 0 4 125 127 122 123
		f 4 -519 -504 521 522
		mu 0 4 125 124 379 378
		f 4 -523 523 524 -521
		mu 0 4 125 378 128 127
		f 4 525 -224 -217 -525
		mu 0 4 128 130 126 127
		f 4 -524 526 527 528
		mu 0 4 128 378 377 239
		f 4 -529 529 530 -526
		mu 0 4 128 239 131 130
		f 4 531 -232 -225 -531
		mu 0 4 131 133 129 130
		f 4 -530 532 533 534
		mu 0 4 131 239 238 242
		f 4 -535 535 536 -532
		mu 0 4 131 242 134 133
		f 4 537 -240 -233 -537
		mu 0 4 134 136 132 133
		f 4 -536 538 539 540
		mu 0 4 134 242 245 244
		f 4 -541 541 542 -538
		mu 0 4 134 244 137 136
		f 4 543 -248 -241 -543
		mu 0 4 137 139 135 136
		f 4 -542 544 545 546
		mu 0 4 137 244 249 248
		f 4 -547 547 548 -544
		mu 0 4 137 248 140 139
		f 4 549 -256 -249 -549
		mu 0 4 140 142 138 139
		f 4 -548 550 551 552
		mu 0 4 140 248 252 251
		f 4 -553 553 554 -550
		mu 0 4 140 251 143 142
		f 4 555 -264 -257 -555
		mu 0 4 143 145 141 142
		f 4 -554 556 557 558
		mu 0 4 143 251 255 254
		f 4 -559 559 560 -556
		mu 0 4 143 254 146 145
		f 4 561 -272 -265 -561
		mu 0 4 146 148 144 145
		f 4 -560 562 563 564
		mu 0 4 146 254 258 257
		f 4 -565 565 566 -562
		mu 0 4 146 257 149 148
		f 4 567 -280 -273 -567
		mu 0 4 149 151 147 148
		f 4 -566 568 569 570
		mu 0 4 149 257 261 260
		f 4 -571 571 572 -568
		mu 0 4 149 260 152 151
		f 4 573 -288 -281 -573
		mu 0 4 152 154 150 151
		f 4 -572 574 575 576
		mu 0 4 152 260 264 263
		f 4 -577 577 578 -574
		mu 0 4 152 263 155 154
		f 4 579 -293 -289 -579
		mu 0 4 155 156 153 154
		f 4 -578 580 581 582
		mu 0 4 155 263 266 157
		f 4 -583 583 -296 -580
		mu 0 4 155 157 158 156
		f 4 -582 584 585 586
		mu 0 4 157 266 268 159
		f 4 -587 587 -299 -584
		mu 0 4 157 159 160 158
		f 4 -586 588 589 590
		mu 0 4 159 268 270 161
		f 4 -591 591 -302 -588
		mu 0 4 159 161 162 160
		f 4 -590 592 593 594
		mu 0 4 161 270 272 163
		f 4 -595 595 -305 -592
		mu 0 4 161 163 164 162
		f 4 -594 596 597 598
		mu 0 4 163 272 274 165
		f 4 -599 599 -308 -596
		mu 0 4 163 165 166 164
		f 4 -598 600 601 602
		mu 0 4 165 274 276 167
		f 4 -603 603 -311 -600
		mu 0 4 165 167 168 166
		f 4 -602 604 605 606
		mu 0 4 167 276 278 169
		f 4 -607 607 -314 -604
		mu 0 4 167 169 170 168
		f 4 -606 608 609 610
		mu 0 4 169 278 282 171
		f 4 -611 611 -317 -608
		mu 0 4 169 171 172 170
		f 4 -610 612 613 614
		mu 0 4 171 282 281 173
		f 4 -615 615 -320 -612
		mu 0 4 171 173 174 172
		f 4 -614 616 617 618
		mu 0 4 173 281 177 175
		f 4 -619 619 -323 -616
		mu 0 4 173 175 176 174
		f 4 -618 620 -345 621
		mu 0 4 175 177 178 384
		f 4 -622 622 -326 -620
		mu 0 4 175 384 387 176
		f 4 -617 623 624 625
		mu 0 4 177 281 280 179
		f 4 -626 626 -347 -621
		mu 0 4 177 179 180 178
		f 4 -625 627 628 629
		mu 0 4 179 280 284 181
		f 4 -630 630 -351 -627
		mu 0 4 179 181 182 180
		f 4 -629 631 632 633
		mu 0 4 181 284 286 183
		f 4 -634 634 -355 -631
		mu 0 4 181 183 187 182
		f 4 -633 635 636 637
		mu 0 4 183 286 291 290
		f 4 -638 638 639 -635
		mu 0 4 183 290 184 187
		f 4 -639 640 641 642
		mu 0 4 184 290 289 294
		f 4 -643 643 644 645
		mu 0 4 184 294 188 185
		f 4 -646 -360 -356 -640
		mu 0 4 184 185 186 187
		f 4 -644 646 647 648
		mu 0 4 188 294 293 376
		f 4 -649 649 650 651
		mu 0 4 188 376 191 189
		f 4 -652 -366 -361 -645
		mu 0 4 188 189 190 185
		f 4 -650 652 653 654
		mu 0 4 191 376 375 194
		f 4 -655 655 656 657
		mu 0 4 191 194 381 192
		f 4 -658 -372 -367 -651
		mu 0 4 191 192 193 189
		f 4 -654 658 659 660
		mu 0 4 194 375 197 195
		f 4 -661 -402 -398 -656
		mu 0 4 194 195 196 381
		f 4 -659 661 662 663
		mu 0 4 197 375 374 297
		f 4 -664 664 665 666
		mu 0 4 197 297 202 198
		f 4 -667 667 -403 -660
		mu 0 4 197 198 201 195
		f 4 -666 668 -420 669
		mu 0 4 198 202 203 199
		f 4 -670 -416 -405 -668
		mu 0 4 198 199 200 201
		f 4 -665 670 671 672
		mu 0 4 202 297 296 204
		f 4 -673 673 -424 -669
		mu 0 4 202 204 205 203
		f 4 -672 674 675 676
		mu 0 4 204 296 300 206
		f 4 -677 677 -428 -674
		mu 0 4 204 206 207 205
		f 4 -676 678 679 680
		mu 0 4 206 300 302 208
		f 4 -681 681 -432 -678
		mu 0 4 206 208 209 207
		f 4 -680 682 683 684
		mu 0 4 208 302 304 210
		f 4 -685 685 -436 -682
		mu 0 4 208 210 211 209
		f 4 -684 686 687 688
		mu 0 4 210 304 306 212
		f 4 -689 689 -440 -686
		mu 0 4 210 212 213 211
		f 4 -688 690 691 692
		mu 0 4 212 306 308 214
		f 4 -693 693 -444 -690
		mu 0 4 212 214 215 213
		f 4 -692 694 695 696
		mu 0 4 214 308 310 216
		f 4 -697 697 -448 -694
		mu 0 4 214 216 217 215
		f 4 -696 698 699 700
		mu 0 4 216 310 312 218
		f 4 -701 701 -452 -698
		mu 0 4 216 218 219 217
		f 4 -700 702 703 704
		mu 0 4 218 312 314 220
		f 4 -705 705 -456 -702
		mu 0 4 218 220 221 219
		f 4 -704 706 707 708
		mu 0 4 220 314 316 222
		f 4 -709 709 -460 -706
		mu 0 4 220 222 223 221
		f 4 -708 710 711 712
		mu 0 4 222 316 318 224
		f 4 -713 713 -464 -710
		mu 0 4 222 224 225 223
		f 4 -712 714 715 716
		mu 0 4 224 318 320 226
		f 4 -717 717 -468 -714
		mu 0 4 224 226 227 225
		f 4 -716 718 719 720
		mu 0 4 226 320 324 228
		f 4 -721 721 -472 -718
		mu 0 4 226 228 229 227
		f 4 -720 722 723 724
		mu 0 4 228 324 373 230
		f 4 -725 725 -476 -722
		mu 0 4 228 230 231 229
		f 4 -724 726 727 728
		mu 0 4 230 373 372 232
		f 4 -729 729 -480 -726
		mu 0 4 230 232 233 231
		f 4 -728 730 731 732
		mu 0 4 232 372 246 234
		f 4 -733 733 -484 -730
		mu 0 4 232 234 235 233
		f 4 -732 734 735 736
		mu 0 4 234 246 243 236
		f 4 -737 737 -488 -734
		mu 0 4 234 236 237 235
		f 4 -736 738 739 740
		mu 0 4 236 243 238 240
		f 4 -741 741 -492 -738
		mu 0 4 236 240 241 237
		f 4 -740 -533 -528 742
		mu 0 4 240 238 239 377
		f 4 -743 743 -496 -742
		mu 0 4 240 377 380 241
		f 4 744 -539 -534 -739
		mu 0 4 243 245 242 238
		f 4 -735 745 746 -745
		mu 0 4 243 246 247 245
		f 4 747 -545 -540 -747
		mu 0 4 247 249 244 245
		f 4 -746 -731 748 749
		mu 0 4 247 246 372 371
		f 4 -750 750 751 -748
		mu 0 4 247 371 250 249
		f 4 752 -551 -546 -752
		mu 0 4 250 252 248 249
		f 4 -751 753 754 755
		mu 0 4 250 371 370 322
		f 4 -756 756 757 -753
		mu 0 4 250 322 253 252
		f 4 758 -557 -552 -758
		mu 0 4 253 255 251 252
		f 4 -757 759 760 761
		mu 0 4 253 322 321 325
		f 4 -762 762 763 -759
		mu 0 4 253 325 256 255
		f 4 764 -563 -558 -764
		mu 0 4 256 258 254 255
		f 4 -763 765 766 767
		mu 0 4 256 325 328 327
		f 4 -768 768 769 -765
		mu 0 4 256 327 259 258
		f 4 770 -569 -564 -770
		mu 0 4 259 261 257 258
		f 4 -769 771 772 773
		mu 0 4 259 327 332 331
		f 4 -774 774 775 -771
		mu 0 4 259 331 262 261
		f 4 776 -575 -570 -776
		mu 0 4 262 264 260 261
		f 4 -775 777 778 779
		mu 0 4 262 331 335 334
		f 4 -780 780 781 -777
		mu 0 4 262 334 265 264
		f 4 782 -581 -576 -782
		mu 0 4 265 266 263 264
		f 4 -781 783 784 785
		mu 0 4 265 334 337 267
		f 4 -786 786 -585 -783
		mu 0 4 265 267 268 266
		f 4 -785 787 788 789
		mu 0 4 267 337 339 269
		f 4 -790 790 -589 -787
		mu 0 4 267 269 270 268
		f 4 -789 791 792 793
		mu 0 4 269 339 341 271
		f 4 -794 794 -593 -791
		mu 0 4 269 271 272 270
		f 4 -793 795 796 797
		mu 0 4 271 341 343 273
		f 4 -798 798 -597 -795
		mu 0 4 271 273 274 272
		f 4 -797 799 800 801
		mu 0 4 273 343 347 275
		f 4 -802 802 -601 -799
		mu 0 4 273 275 276 274
		f 4 -801 803 804 805
		mu 0 4 275 347 346 277
		f 4 -806 806 -605 -803
		mu 0 4 275 277 278 276
		f 4 -805 807 808 809
		mu 0 4 277 346 283 279
		f 4 -810 810 -609 -807
		mu 0 4 277 279 282 278
		f 4 -809 811 -628 812
		mu 0 4 279 283 284 280
		f 4 -813 -624 -613 -811
		mu 0 4 279 280 281 282
		f 4 -808 813 814 815
		mu 0 4 283 346 345 285
		f 4 -816 816 -632 -812
		mu 0 4 283 285 286 284
		f 4 -815 817 818 819
		mu 0 4 285 345 349 287
		f 4 -820 820 -636 -817
		mu 0 4 285 287 291 286
		f 4 -819 821 822 823
		mu 0 4 287 349 369 368
		f 4 -824 824 825 -821
		mu 0 4 287 368 288 291
		f 4 -825 826 827 828
		mu 0 4 288 368 367 298
		f 4 -829 829 830 831
		mu 0 4 288 298 292 289
		f 4 -832 -641 -637 -826
		mu 0 4 288 289 290 291
		f 4 -830 832 833 834
		mu 0 4 292 298 299 295
		f 4 -835 835 836 837
		mu 0 4 292 295 374 293
		f 4 -838 -647 -642 -831
		mu 0 4 292 293 294 289
		f 4 -834 838 -675 839
		mu 0 4 295 299 300 296
		f 4 -840 -671 -663 -836
		mu 0 4 295 296 297 374
		f 4 -833 -828 840 841
		mu 0 4 299 298 367 301
		f 4 -842 842 -679 -839
		mu 0 4 299 301 302 300
		f 4 -841 843 844 845
		mu 0 4 301 367 366 303
		f 4 -846 846 -683 -843
		mu 0 4 301 303 304 302
		f 4 -845 847 848 849
		mu 0 4 303 366 351 305
		f 4 -850 850 -687 -847
		mu 0 4 303 305 306 304
		f 4 -849 851 852 853
		mu 0 4 305 351 354 307
		f 4 -854 854 -691 -851
		mu 0 4 305 307 308 306
		f 4 -853 855 856 857
		mu 0 4 307 354 357 309
		f 4 -858 858 -695 -855
		mu 0 4 307 309 310 308
		f 4 -857 859 860 861
		mu 0 4 309 357 361 311
		f 4 -862 862 -699 -859
		mu 0 4 309 311 312 310
		f 4 -861 863 864 865
		mu 0 4 311 361 365 313
		f 4 -866 866 -703 -863
		mu 0 4 311 313 314 312
		f 4 -865 867 868 869
		mu 0 4 313 365 364 315
		f 4 -870 870 -707 -867
		mu 0 4 313 315 316 314
		f 4 -869 871 872 873
		mu 0 4 315 364 329 317
		f 4 -874 874 -711 -871
		mu 0 4 315 317 318 316
		f 4 -873 875 876 877
		mu 0 4 317 329 326 319
		f 4 -878 878 -715 -875
		mu 0 4 317 319 320 318
		f 4 -877 879 880 881
		mu 0 4 319 326 321 323
		f 4 -882 882 -719 -879
		mu 0 4 319 323 324 320
		f 4 -881 -760 -755 883
		mu 0 4 323 321 322 370
		f 4 -884 884 -723 -883
		mu 0 4 323 370 373 324
		f 4 885 -766 -761 -880
		mu 0 4 326 328 325 321
		f 4 -876 886 887 -886
		mu 0 4 326 329 330 328
		f 4 888 -772 -767 -888
		mu 0 4 330 332 327 328
		f 4 -887 -872 889 890
		mu 0 4 330 329 364 363
		f 4 -891 891 892 -889
		mu 0 4 330 363 333 332
		f 4 893 -778 -773 -893
		mu 0 4 333 335 331 332
		f 4 -892 894 895 896
		mu 0 4 333 363 362 359
		f 4 -897 897 898 -894
		mu 0 4 333 359 336 335
		f 4 899 -784 -779 -899
		mu 0 4 336 337 334 335
		f 4 -898 900 901 902
		mu 0 4 336 359 358 338
		f 4 -903 903 -788 -900
		mu 0 4 336 338 339 337
		f 4 -902 904 905 906
		mu 0 4 338 358 355 340
		f 4 -907 907 -792 -904
		mu 0 4 338 340 341 339
		f 4 -906 908 909 910
		mu 0 4 340 355 352 342
		f 4 -911 911 -796 -908
		mu 0 4 340 342 343 341
		f 4 -910 912 913 914
		mu 0 4 342 352 348 344
		f 4 -915 915 -800 -912
		mu 0 4 342 344 347 343
		f 4 -914 916 -818 917
		mu 0 4 344 348 349 345
		f 4 -918 -814 -804 -916
		mu 0 4 344 345 346 347
		f 4 -913 918 919 920
		mu 0 4 348 352 353 350
		f 4 -921 921 -822 -917
		mu 0 4 348 350 369 349
		f 4 -920 922 -852 923
		mu 0 4 350 353 354 351
		f 4 -924 -848 924 -922
		mu 0 4 350 351 366 369
		f 4 -919 -909 925 926
		mu 0 4 353 352 355 356
		f 4 -927 927 -856 -923
		mu 0 4 353 356 357 354
		f 4 -926 -905 928 929
		mu 0 4 356 355 358 360
		f 4 -930 930 -860 -928
		mu 0 4 356 360 361 357
		f 4 -929 -901 -896 931
		mu 0 4 360 358 359 362
		f 4 -932 932 -864 -931
		mu 0 4 360 362 365 361
		f 4 -895 -890 -868 -933
		mu 0 4 362 363 364 365
		f 4 -844 -827 -823 -925
		mu 0 4 366 367 368 369
		f 4 -754 -749 -727 -885
		mu 0 4 370 371 372 373
		f 4 -662 -653 -648 -837
		mu 0 4 374 375 376 293
		f 4 -527 -522 -500 -744
		mu 0 4 377 378 379 380
		f 4 -397 -378 -373 -657
		mu 0 4 381 382 383 192
		f 4 -344 -337 -329 -623
		mu 0 4 384 385 386 387
		f 4 933 934 -278 -287
		mu 0 4 977 979 392 388
		f 4 935 936 937 -935
		mu 0 4 979 980 389 392
		f 4 -937 938 939 940
		mu 0 4 389 980 1051 438
		f 4 -941 941 942 943
		mu 0 4 389 438 393 390
		f 4 -944 -270 -279 -938
		mu 0 4 389 390 391 392
		f 4 -942 944 945 946
		mu 0 4 393 438 437 441
		f 4 -947 947 948 949
		mu 0 4 393 441 396 394
		f 4 -950 -262 -271 -943
		mu 0 4 393 394 395 390
		f 4 -948 950 951 952
		mu 0 4 396 441 440 445
		f 4 -953 953 954 955
		mu 0 4 396 445 399 397
		f 4 -956 -254 -263 -949
		mu 0 4 396 397 398 394
		f 4 -954 956 957 958
		mu 0 4 399 445 444 448
		f 4 -959 959 960 961
		mu 0 4 399 448 402 400
		f 4 -962 -246 -255 -955
		mu 0 4 399 400 401 397
		f 4 -960 962 963 964
		mu 0 4 402 448 447 451
		f 4 -965 965 966 967
		mu 0 4 402 451 405 403
		f 4 -968 -238 -247 -961
		mu 0 4 402 403 404 400
		f 4 -966 968 969 970
		mu 0 4 405 451 450 454
		f 4 -971 971 972 973
		mu 0 4 405 454 408 406
		f 4 -974 -230 -239 -967
		mu 0 4 405 406 407 403
		f 4 -972 974 975 976
		mu 0 4 408 454 453 457
		f 4 -977 977 978 979
		mu 0 4 408 457 411 409
		f 4 -980 -222 -231 -973
		mu 0 4 408 409 410 406
		f 4 -978 980 981 982
		mu 0 4 411 457 456 460
		f 4 -983 983 984 985
		mu 0 4 411 460 414 412
		f 4 -986 -214 -223 -979
		mu 0 4 411 412 413 409
		f 4 -984 986 987 988
		mu 0 4 414 460 459 463
		f 4 -989 989 990 991
		mu 0 4 414 463 417 415
		f 4 -992 -206 -215 -985
		mu 0 4 414 415 416 412
		f 4 -990 992 993 994
		mu 0 4 417 463 462 466
		f 4 -995 995 996 997
		mu 0 4 417 466 420 418
		f 4 -998 -198 -207 -991
		mu 0 4 417 418 419 415
		f 4 -996 998 999 1000
		mu 0 4 420 466 465 470
		f 4 -1001 1001 1002 1003
		mu 0 4 420 470 423 421
		f 4 -1004 -190 -199 -997
		mu 0 4 420 421 422 418
		f 4 -1002 1004 1005 1006
		mu 0 4 423 470 469 519
		f 4 -1007 1007 1008 1009
		mu 0 4 423 519 426 424
		f 4 -1010 -183 -191 -1003
		mu 0 4 423 424 425 421
		f 4 -1008 1010 1011 1012
		mu 0 4 426 519 518 429
		f 4 -1013 1013 -9 1014
		mu 0 4 426 429 430 427
		f 4 -1015 -179 -184 -1009
		mu 0 4 426 427 428 424
		f 4 -1012 1015 1016 1017
		mu 0 4 429 518 1025 1024
		f 4 -1018 1018 -6 -1014
		mu 0 4 429 1024 1023 430
		f 4 -1016 1019 1020 1021
		mu 0 4 1025 518 517 1026
		f 4 -1021 1022 1023 1024
		mu 0 4 1026 517 467 1027
		f 4 -1024 1025 1026 1027
		mu 0 4 1027 467 472 1028
		f 4 -1027 1028 1029 1030
		mu 0 4 1028 472 473 1029
		f 4 -1030 1031 1032 1033
		mu 0 4 1029 473 476 1030
		f 4 -1033 1034 1035 1036
		mu 0 4 1030 476 506 1031
		f 4 -1036 1037 1038 1039
		mu 0 4 1031 506 505 1032
		f 4 -1039 1040 1041 1042
		mu 0 4 1032 505 503 1033
		f 4 -1042 1043 1044 1045
		mu 0 4 1033 503 431 1034
		f 4 -1045 1046 -12 1047
		mu 0 4 1034 431 432 1035
		f 4 -1044 1048 1049 1050
		mu 0 4 431 503 510 433
		f 4 -1051 1051 -17 -1047
		mu 0 4 431 433 434 432
		f 4 -1050 1052 1053 1054
		mu 0 4 433 510 509 502
		f 4 -1055 1055 1056 -1052
		mu 0 4 433 502 435 434
		f 4 1057 1058 -18 -1057
		mu 0 4 435 516 515 434
		f 4 -1056 1059 1060 1061
		mu 0 4 435 502 501 499
		f 4 -1062 1062 1063 -1058
		mu 0 4 435 499 436 516;
	setAttr ".fc[500:999]"
		f 4 1064 1065 1066 -1064
		mu 0 4 436 1042 1129 516
		f 4 -1063 1067 1068 1069
		mu 0 4 436 499 498 496
		f 4 -1070 1070 1071 -1065
		mu 0 4 436 496 1043 1042
		f 4 -1071 1072 1073 1074
		mu 0 4 1043 496 495 1044
		f 4 -1074 1075 1076 1077
		mu 0 4 1044 495 493 1045
		f 4 -1077 1078 1079 1080
		mu 0 4 1045 493 514 1046
		f 4 -1080 1081 1082 1083
		mu 0 4 1046 514 513 1047
		f 4 -1083 1084 1085 1086
		mu 0 4 1047 513 442 1048
		f 4 -1086 1087 1088 1089
		mu 0 4 1048 442 439 1049
		f 4 -1089 1090 1091 1092
		mu 0 4 1049 439 437 1050
		f 4 -1092 -945 -940 1093
		mu 0 4 1050 437 438 1051
		f 4 -1088 1094 1095 1096
		mu 0 4 439 442 443 440
		f 4 -1097 -951 -946 -1091
		mu 0 4 439 440 441 437
		f 4 -1095 -1085 1097 1098
		mu 0 4 443 442 513 512
		f 4 -1099 1099 1100 1101
		mu 0 4 443 512 446 444
		f 4 -1102 -957 -952 -1096
		mu 0 4 443 444 445 440
		f 4 -1100 1102 1103 1104
		mu 0 4 446 512 511 491
		f 4 -1105 1105 1106 1107
		mu 0 4 446 491 449 447
		f 4 -1108 -963 -958 -1101
		mu 0 4 446 447 448 444
		f 4 -1106 1108 1109 1110
		mu 0 4 449 491 490 488
		f 4 -1111 1111 1112 1113
		mu 0 4 449 488 452 450
		f 4 -1114 -969 -964 -1107
		mu 0 4 449 450 451 447
		f 4 -1112 1114 1115 1116
		mu 0 4 452 488 487 485
		f 4 -1117 1117 1118 1119
		mu 0 4 452 485 455 453
		f 4 -1120 -975 -970 -1113
		mu 0 4 452 453 454 450
		f 4 -1118 1120 1121 1122
		mu 0 4 455 485 484 482
		f 4 -1123 1123 1124 1125
		mu 0 4 455 482 458 456
		f 4 -1126 -981 -976 -1119
		mu 0 4 455 456 457 453
		f 4 -1124 1126 1127 1128
		mu 0 4 458 482 481 479
		f 4 -1129 1129 1130 1131
		mu 0 4 458 479 461 459
		f 4 -1132 -987 -982 -1125
		mu 0 4 458 459 460 456
		f 4 -1130 1132 1133 1134
		mu 0 4 461 479 478 475
		f 4 -1135 1135 1136 1137
		mu 0 4 461 475 464 462
		f 4 -1138 -993 -988 -1131
		mu 0 4 461 462 463 459
		f 4 -1136 1138 1139 1140
		mu 0 4 464 475 474 471
		f 4 -1141 1141 1142 1143
		mu 0 4 464 471 468 465
		f 4 -1144 -999 -994 -1137
		mu 0 4 464 465 466 462
		f 4 -1142 1144 -1026 1145
		mu 0 4 468 471 472 467
		f 4 -1146 -1023 1146 1147
		mu 0 4 468 467 517 469
		f 4 -1148 -1005 -1000 -1143
		mu 0 4 468 469 470 465
		f 4 -1140 1148 -1029 -1145
		mu 0 4 471 474 473 472
		f 4 1149 1150 -1032 -1149
		mu 0 4 474 477 476 473
		f 4 -1139 -1134 1151 -1150
		mu 0 4 474 475 478 477
		f 4 1152 1153 -1035 -1151
		mu 0 4 477 507 506 476
		f 4 -1152 1154 1155 -1153
		mu 0 4 477 478 480 507
		f 4 1156 1157 1158 -1156
		mu 0 4 480 508 504 507
		f 4 -1155 -1133 -1128 1159
		mu 0 4 480 478 479 481
		f 4 -1160 1160 1161 -1157
		mu 0 4 480 481 483 508
		f 4 1162 1163 1164 -1162
		mu 0 4 483 500 509 508
		f 4 -1161 -1127 -1122 1165
		mu 0 4 483 481 482 484
		f 4 -1166 1166 1167 -1163
		mu 0 4 483 484 486 500
		f 4 1168 1169 1170 -1168
		mu 0 4 486 497 501 500
		f 4 -1167 -1121 -1116 1171
		mu 0 4 486 484 485 487
		f 4 -1172 1172 1173 -1169
		mu 0 4 486 487 489 497
		f 4 1174 1175 1176 -1174
		mu 0 4 489 494 498 497
		f 4 -1173 -1115 -1110 1177
		mu 0 4 489 487 488 490
		f 4 -1178 1178 1179 -1175
		mu 0 4 489 490 492 494
		f 4 1180 -1076 1181 -1180
		mu 0 4 492 493 495 494
		f 4 -1179 -1109 -1104 1182
		mu 0 4 492 490 491 511
		f 4 -1183 1183 -1079 -1181
		mu 0 4 492 511 514 493
		f 4 -1182 -1073 -1069 -1176
		mu 0 4 494 495 496 498
		f 4 -1177 -1068 -1061 -1170
		mu 0 4 497 498 499 501
		f 4 -1171 -1060 -1054 -1164
		mu 0 4 500 501 502 509
		f 4 1184 -1049 -1041 1185
		mu 0 4 504 510 503 505
		f 4 -1186 -1038 -1154 -1159
		mu 0 4 504 505 506 507
		f 4 -1158 -1165 -1053 -1185
		mu 0 4 504 508 509 510
		f 4 -1103 -1098 -1082 -1184
		mu 0 4 511 512 513 514
		f 4 1186 -15 -1059 -1067
		mu 0 4 1129 1132 515 516
		f 4 -1020 -1011 -1006 -1147
		mu 0 4 517 518 519 469
		f 4 -192 -185 -167 -517
		mu 0 4 520 521 522 523
		f 4 -80 1187 -27 -415
		mu 0 4 524 526 529 525
		f 4 -77 -393 -20 -1188
		mu 0 4 526 527 528 529
		f 4 1188 1189 -2 1190
		mu 0 4 531 582 581 530
		f 4 -1191 -7 1191 1192
		mu 0 4 531 530 1023 1022
		f 4 -1193 1193 1194 -1189
		mu 0 4 531 1022 1020 582
		f 4 1195 1196 -11 1197
		mu 0 4 533 1037 1035 532
		f 4 -1198 -16 1198 1199
		mu 0 4 533 532 1132 1131
		f 4 -1200 1200 1201 -1196
		mu 0 4 533 1131 1039 1037
		f 4 1202 1203 1204 1205
		mu 0 4 534 647 1145 1144
		f 4 1206 1207 1208 -1203
		mu 0 4 534 652 650 647
		f 4 -1206 1209 1210 -1207
		mu 0 4 534 1144 1142 652
		f 4 1211 1212 1213 1214
		mu 0 4 628 535 631 630
		f 4 1215 1216 1217 1218
		mu 0 4 535 624 622 620
		f 4 -1212 1219 1220 -1216
		mu 0 4 535 628 627 624
		f 4 -1219 1221 1222 -1213
		mu 0 4 535 620 536 631
		f 4 -1222 1223 1224 1225
		mu 0 4 536 620 619 538
		f 4 1226 1227 1228 -1223
		mu 0 4 536 634 633 631
		f 4 -1226 1229 1230 -1227
		mu 0 4 536 538 537 634
		f 4 1231 1232 1233 -1231
		mu 0 4 537 638 636 634
		f 4 1234 1235 1236 -1232
		mu 0 4 537 542 639 638
		f 4 -1230 1237 1238 -1235
		mu 0 4 537 538 539 542
		f 4 1239 1240 -57 1241
		mu 0 4 539 617 615 540
		f 4 -1238 -1225 1242 -1240
		mu 0 4 539 538 619 617
		f 4 -1242 -62 1243 -1239
		mu 0 4 539 540 541 542
		f 4 -64 1244 -1236 -1244
		mu 0 4 541 543 639 542
		f 4 -67 1245 1246 -1245
		mu 0 4 543 544 640 639
		f 4 -70 1247 1248 -1246
		mu 0 4 544 545 642 640
		f 4 -73 1249 1250 -1248
		mu 0 4 545 546 644 642
		f 4 -76 1251 1252 -1250
		mu 0 4 546 547 1146 644
		f 4 -79 1253 1254 -1252
		mu 0 4 547 548 1143 1146
		f 4 -82 1255 1256 -1254
		mu 0 4 548 549 1141 1143
		f 4 -85 1257 1258 -1256
		mu 0 4 549 550 654 1141
		f 4 -88 1259 1260 -1258
		mu 0 4 550 551 656 654
		f 4 -91 1261 1262 -1260
		mu 0 4 551 552 658 656
		f 4 -94 1263 1264 -1262
		mu 0 4 552 553 660 658
		f 4 -97 1265 1266 -1264
		mu 0 4 553 554 662 660
		f 4 -100 1267 1268 -1266
		mu 0 4 554 555 664 662
		f 4 -103 1269 1270 -1268
		mu 0 4 555 556 666 664
		f 4 -106 1271 1272 -1270
		mu 0 4 556 557 668 666
		f 4 -109 1273 1274 -1272
		mu 0 4 557 558 670 668
		f 4 -112 1275 1276 -1274
		mu 0 4 558 559 672 670
		f 4 -115 1277 1278 -1276
		mu 0 4 559 560 674 672
		f 4 -118 1279 1280 -1278
		mu 0 4 560 561 676 674
		f 4 -121 1281 1282 -1280
		mu 0 4 561 562 678 676
		f 4 -124 1283 1284 -1282
		mu 0 4 562 563 680 678
		f 4 -127 1285 1286 -1284
		mu 0 4 563 564 682 680
		f 4 -130 1287 1288 -1286
		mu 0 4 564 565 684 682
		f 4 -133 1289 1290 -1288
		mu 0 4 565 566 686 684
		f 4 -136 1291 1292 -1290
		mu 0 4 566 567 688 686
		f 4 -139 1293 1294 -1292
		mu 0 4 567 568 690 688
		f 4 -142 1295 1296 -1294
		mu 0 4 568 569 692 690
		f 4 -145 1297 1298 -1296
		mu 0 4 569 570 694 692
		f 4 -148 1299 1300 -1298
		mu 0 4 570 571 696 694
		f 4 -151 1301 1302 -1300
		mu 0 4 571 572 698 696
		f 4 -154 1303 1304 -1302
		mu 0 4 572 573 700 698
		f 4 -157 1305 1306 -1304
		mu 0 4 573 574 702 700
		f 4 -160 1307 1308 -1306
		mu 0 4 574 575 704 702
		f 4 -163 1309 1310 -1308
		mu 0 4 575 576 707 704
		f 4 -166 1311 1312 -1310
		mu 0 4 576 577 1138 707
		f 4 -169 1313 1314 -1312
		mu 0 4 577 578 1139 1138
		f 4 -172 1315 1316 -1314
		mu 0 4 578 579 584 1139
		f 4 -175 1317 1318 -1316
		mu 0 4 579 580 583 584
		f 4 -177 -1190 1319 -1318
		mu 0 4 580 581 582 583
		f 4 -1320 -1195 1320 1321
		mu 0 4 583 582 1020 1019
		f 4 -1322 1322 1323 -1319
		mu 0 4 583 1019 585 584
		f 4 -1323 1324 1325 1326
		mu 0 4 585 1019 1018 1016
		f 4 1327 1328 -1317 -1324
		mu 0 4 585 1140 1139 584
		f 4 -1327 1329 1330 -1328
		mu 0 4 585 1016 586 1140
		f 4 -1330 1331 1332 1333
		mu 0 4 586 1016 1015 1013
		f 4 1334 1335 1336 -1331
		mu 0 4 586 705 1137 1140
		f 4 -1334 1337 1338 -1335
		mu 0 4 586 1013 587 705
		f 4 -1338 1339 1340 1341
		mu 0 4 587 1013 1012 1010
		f 4 1342 1343 1344 -1339
		mu 0 4 587 709 708 705
		f 4 -1342 1345 1346 -1343
		mu 0 4 587 1010 588 709
		f 4 -1346 1347 1348 1349
		mu 0 4 588 1010 1009 1007
		f 4 1350 1351 1352 -1347
		mu 0 4 588 712 711 709
		f 4 -1350 1353 1354 -1351
		mu 0 4 588 1007 589 712
		f 4 -1354 1355 1356 1357
		mu 0 4 589 1007 1006 1004
		f 4 1358 1359 1360 -1355
		mu 0 4 589 716 715 712
		f 4 -1358 1361 1362 -1359
		mu 0 4 589 1004 590 716
		f 4 -1362 1363 1364 1365
		mu 0 4 590 1004 1003 1001
		f 4 1366 1367 1368 -1363
		mu 0 4 590 719 718 716
		f 4 -1366 1369 1370 -1367
		mu 0 4 590 1001 591 719
		f 4 -1370 1371 1372 1373
		mu 0 4 591 1001 1000 998
		f 4 1374 1375 1376 -1371
		mu 0 4 591 722 721 719
		f 4 -1374 1377 1378 -1375
		mu 0 4 591 998 592 722
		f 4 -1378 1379 1380 1381
		mu 0 4 592 998 997 995
		f 4 1382 1383 1384 -1379
		mu 0 4 592 725 724 722
		f 4 -1382 1385 1386 -1383
		mu 0 4 592 995 593 725
		f 4 -1386 1387 1388 1389
		mu 0 4 593 995 994 992
		f 4 1390 1391 1392 -1387
		mu 0 4 593 728 727 725
		f 4 -1390 1393 1394 -1391
		mu 0 4 593 992 594 728
		f 4 -1394 1395 1396 1397
		mu 0 4 594 992 991 989
		f 4 1398 1399 1400 -1395
		mu 0 4 594 731 730 728
		f 4 -1398 1401 1402 -1399
		mu 0 4 594 989 595 731
		f 4 -1402 1403 1404 1405
		mu 0 4 595 989 988 986
		f 4 1406 1407 1408 -1403
		mu 0 4 595 734 733 731
		f 4 -1406 1409 1410 -1407
		mu 0 4 595 986 596 734
		f 4 -1410 1411 1412 1413
		mu 0 4 596 986 985 983
		f 4 1414 1415 1416 -1411
		mu 0 4 596 737 736 734
		f 4 -1414 1417 1418 -1415
		mu 0 4 596 983 597 737
		f 4 -1418 1419 1420 1421
		mu 0 4 597 983 982 978
		f 4 1422 1423 1424 -1419
		mu 0 4 597 740 739 737
		f 4 -1422 1425 1426 -1423
		mu 0 4 597 978 598 740
		f 4 -1426 1427 -286 1428
		mu 0 4 598 978 977 599
		f 4 1429 1430 1431 -1427
		mu 0 4 598 743 742 740
		f 4 -1429 -292 1432 -1430
		mu 0 4 598 599 600 743
		f 4 -295 1433 1434 -1433
		mu 0 4 600 601 745 743
		f 4 -298 1435 1436 -1434
		mu 0 4 601 602 747 745
		f 4 -301 1437 1438 -1436
		mu 0 4 602 603 749 747
		f 4 -304 1439 1440 -1438
		mu 0 4 603 604 751 749
		f 4 -307 1441 1442 -1440
		mu 0 4 604 605 753 751
		f 4 -310 1443 1444 -1442
		mu 0 4 605 606 755 753
		f 4 -313 1445 1446 -1444
		mu 0 4 606 607 757 755
		f 4 -316 1447 1448 -1446
		mu 0 4 607 608 759 757
		f 4 -319 1449 1450 -1448
		mu 0 4 608 609 761 759
		f 4 -322 1451 1452 -1450
		mu 0 4 609 610 763 761
		f 4 -325 1453 1454 -1452
		mu 0 4 610 611 765 763
		f 4 -328 1455 1456 -1454
		mu 0 4 611 612 974 765
		f 4 -331 1457 1458 -1456
		mu 0 4 612 613 975 974
		f 4 -334 1459 1460 -1458
		mu 0 4 613 614 616 975
		f 4 -336 -1241 1461 -1460
		mu 0 4 614 615 617 616
		f 4 1462 1463 1464 -1461
		mu 0 4 616 618 976 975
		f 4 -1462 -1243 1465 -1463
		mu 0 4 616 617 619 618
		f 4 1466 1467 1468 -1464
		mu 0 4 618 622 621 976
		f 4 -1466 -1224 -1218 -1467
		mu 0 4 618 619 620 622
		f 4 1469 1470 1471 -1469
		mu 0 4 621 767 973 976
		f 4 1472 1473 1474 -1470
		mu 0 4 621 623 769 767
		f 4 -1468 -1217 1475 -1473
		mu 0 4 621 622 624 623
		f 4 1476 1477 1478 -1474
		mu 0 4 623 625 771 769
		f 4 -1476 -1221 1479 -1477
		mu 0 4 623 624 627 625
		f 4 1480 1481 1482 -1478
		mu 0 4 625 775 774 771
		f 4 -1480 1483 1484 -1481
		mu 0 4 625 627 626 775
		f 4 1485 1486 1487 -1485
		mu 0 4 626 778 777 775
		f 4 1488 1489 1490 -1486
		mu 0 4 626 630 629 778
		f 4 -1484 -1220 -1215 -1489
		mu 0 4 626 627 628 630
		f 4 1491 1492 1493 -1491
		mu 0 4 629 781 780 778
		f 4 1494 1495 1496 -1492
		mu 0 4 629 633 632 781
		f 4 -1490 -1214 -1229 -1495
		mu 0 4 629 630 631 633
		f 4 1497 1498 1499 -1497
		mu 0 4 632 971 970 781
		f 4 1500 1501 1502 -1498
		mu 0 4 632 636 635 971
		f 4 -1496 -1228 -1234 -1501
		mu 0 4 632 633 634 636
		f 4 1503 1504 1505 -1503
		mu 0 4 635 645 972 971
		f 4 1506 1507 1508 -1504
		mu 0 4 635 637 641 645
		f 4 -1502 -1233 1509 -1507
		mu 0 4 635 636 638 637
		f 4 1510 -1249 1511 -1508
		mu 0 4 637 640 642 641
		f 4 -1510 -1237 -1247 -1511
		mu 0 4 637 638 639 640
		f 4 1512 1513 1514 -1509
		mu 0 4 641 643 646 645
		f 4 -1512 -1251 1515 -1513
		mu 0 4 641 642 644 643
		f 4 1516 -1204 1517 -1514
		mu 0 4 643 1145 647 646
		f 4 -1516 -1253 1518 -1517
		mu 0 4 643 644 1146 1145
		f 4 1519 1520 -1505 -1515
		mu 0 4 646 648 972 645
		f 4 -1518 -1209 1521 -1520
		mu 0 4 646 647 650 648
		f 4 1522 1523 1524 -1521
		mu 0 4 648 784 783 972
		f 4 -1522 1525 1526 -1523
		mu 0 4 648 650 649 784
		f 4 1527 1528 1529 -1527
		mu 0 4 649 788 786 784
		f 4 1530 1531 1532 -1528
		mu 0 4 649 651 789 788
		f 4 -1526 -1208 1533 -1531
		mu 0 4 649 650 652 651
		f 4 1534 1535 1536 -1532
		mu 0 4 651 653 655 789
		f 4 -1534 -1211 1537 -1535
		mu 0 4 651 652 1142 653
		f 4 1538 -1261 1539 -1536
		mu 0 4 653 654 656 655
		f 4 -1538 1540 -1259 -1539
		mu 0 4 653 1142 1141 654
		f 4 1541 1542 1543 -1537
		mu 0 4 655 657 790 789
		f 4 -1540 -1263 1544 -1542
		mu 0 4 655 656 658 657
		f 4 1545 1546 1547 -1543
		mu 0 4 657 659 792 790
		f 4 -1545 -1265 1548 -1546
		mu 0 4 657 658 660 659
		f 4 1549 1550 1551 -1547
		mu 0 4 659 661 794 792
		f 4 -1549 -1267 1552 -1550
		mu 0 4 659 660 662 661
		f 4 1553 1554 1555 -1551
		mu 0 4 661 663 796 794
		f 4 -1553 -1269 1556 -1554
		mu 0 4 661 662 664 663
		f 4 1557 1558 1559 -1555
		mu 0 4 663 665 798 796
		f 4 -1557 -1271 1560 -1558
		mu 0 4 663 664 666 665
		f 4 1561 1562 1563 -1559
		mu 0 4 665 667 800 798
		f 4 -1561 -1273 1564 -1562
		mu 0 4 665 666 668 667
		f 4 1565 1566 1567 -1563
		mu 0 4 667 669 802 800
		f 4 -1565 -1275 1568 -1566
		mu 0 4 667 668 670 669
		f 4 1569 1570 1571 -1567
		mu 0 4 669 671 804 802
		f 4 -1569 -1277 1572 -1570
		mu 0 4 669 670 672 671
		f 4 1573 1574 1575 -1571
		mu 0 4 671 673 806 804
		f 4 -1573 -1279 1576 -1574
		mu 0 4 671 672 674 673
		f 4 1577 1578 1579 -1575
		mu 0 4 673 675 808 806
		f 4 -1577 -1281 1580 -1578
		mu 0 4 673 674 676 675
		f 4 1581 1582 1583 -1579
		mu 0 4 675 677 810 808
		f 4 -1581 -1283 1584 -1582
		mu 0 4 675 676 678 677
		f 4 1585 1586 1587 -1583
		mu 0 4 677 679 812 810
		f 4 -1585 -1285 1588 -1586
		mu 0 4 677 678 680 679
		f 4 1589 1590 1591 -1587
		mu 0 4 679 681 814 812
		f 4 -1589 -1287 1592 -1590
		mu 0 4 679 680 682 681
		f 4 1593 1594 1595 -1591
		mu 0 4 681 683 816 814
		f 4 -1593 -1289 1596 -1594
		mu 0 4 681 682 684 683
		f 4 1597 1598 1599 -1595
		mu 0 4 683 685 818 816
		f 4 -1597 -1291 1600 -1598
		mu 0 4 683 684 686 685
		f 4 1601 1602 1603 -1599
		mu 0 4 685 687 820 818
		f 4 -1601 -1293 1604 -1602
		mu 0 4 685 686 688 687
		f 4 1605 1606 1607 -1603
		mu 0 4 687 689 822 820
		f 4 -1605 -1295 1608 -1606
		mu 0 4 687 688 690 689
		f 4 1609 1610 1611 -1607
		mu 0 4 689 691 824 822
		f 4 -1609 -1297 1612 -1610
		mu 0 4 689 690 692 691
		f 4 1613 1614 1615 -1611
		mu 0 4 691 693 826 824
		f 4 -1613 -1299 1616 -1614
		mu 0 4 691 692 694 693
		f 4 1617 1618 1619 -1615
		mu 0 4 693 695 829 826
		f 4 -1617 -1301 1620 -1618
		mu 0 4 693 694 696 695
		f 4 1621 1622 1623 -1619
		mu 0 4 695 697 967 829
		f 4 -1621 -1303 1624 -1622
		mu 0 4 695 696 698 697
		f 4 1625 1626 1627 -1623
		mu 0 4 697 699 968 967
		f 4 -1625 -1305 1628 -1626
		mu 0 4 697 698 700 699
		f 4 1629 1630 1631 -1627
		mu 0 4 699 701 713 968
		f 4 -1629 -1307 1632 -1630
		mu 0 4 699 700 702 701
		f 4 1633 1634 1635 -1631
		mu 0 4 701 703 710 713
		f 4 -1633 -1309 1636 -1634
		mu 0 4 701 702 704 703
		f 4 1637 1638 1639 -1635
		mu 0 4 703 706 708 710
		f 4 -1637 -1311 1640 -1638
		mu 0 4 703 704 707 706
		f 4 1641 -1336 -1345 -1639
		mu 0 4 706 1137 705 708
		f 4 -1641 -1313 1642 -1642
		mu 0 4 706 707 1138 1137
		f 4 -1640 -1344 -1353 1643
		mu 0 4 710 708 709 711
		f 4 -1644 1644 1645 -1636
		mu 0 4 710 711 714 713
		f 4 -1645 -1352 -1361 1646
		mu 0 4 714 711 712 715
		f 4 1647 1648 -1632 -1646
		mu 0 4 714 969 968 713
		f 4 -1647 1649 1650 -1648
		mu 0 4 714 715 717 969
		f 4 -1650 -1360 -1369 1651
		mu 0 4 717 715 716 718
		f 4 1652 1653 1654 -1651
		mu 0 4 717 827 966 969
		f 4 -1652 1655 1656 -1653
		mu 0 4 717 718 720 827
		f 4 -1656 -1368 -1377 1657
		mu 0 4 720 718 719 721
		f 4 1658 1659 1660 -1657
		mu 0 4 720 831 830 827
		f 4 -1658 1661 1662 -1659
		mu 0 4 720 721 723 831
		f 4 -1662 -1376 -1385 1663
		mu 0 4 723 721 722 724
		f 4 1664 1665 1666 -1663
		mu 0 4 723 834 833 831
		f 4 -1664 1667 1668 -1665
		mu 0 4 723 724 726 834
		f 4 -1668 -1384 -1393 1669
		mu 0 4 726 724 725 727
		f 4 1670 1671 1672 -1669
		mu 0 4 726 838 837 834
		f 4 -1670 1673 1674 -1671
		mu 0 4 726 727 729 838
		f 4 -1674 -1392 -1401 1675
		mu 0 4 729 727 728 730
		f 4 1676 1677 1678 -1675
		mu 0 4 729 841 840 838
		f 4 -1676 1679 1680 -1677
		mu 0 4 729 730 732 841
		f 4 -1680 -1400 -1409 1681
		mu 0 4 732 730 731 733
		f 4 1682 1683 1684 -1681
		mu 0 4 732 844 843 841
		f 4 -1682 1685 1686 -1683
		mu 0 4 732 733 735 844
		f 4 -1686 -1408 -1417 1687
		mu 0 4 735 733 734 736
		f 4 1688 1689 1690 -1687
		mu 0 4 735 847 846 844
		f 4 -1688 1691 1692 -1689
		mu 0 4 735 736 738 847
		f 4 -1692 -1416 -1425 1693
		mu 0 4 738 736 737 739
		f 4 1694 1695 1696 -1693
		mu 0 4 738 850 849 847
		f 4 -1694 1697 1698 -1695
		mu 0 4 738 739 741 850
		f 4 -1698 -1424 -1432 1699
		mu 0 4 741 739 740 742
		f 4 1700 1701 1702 -1699
		mu 0 4 741 853 852 850
		f 4 -1700 1703 1704 -1701
		mu 0 4 741 742 744 853
		f 4 -1704 -1431 -1435 1705
		mu 0 4 744 742 743 745
		f 4 1706 1707 1708 -1705
		mu 0 4 744 746 855 853
		f 4 -1706 -1437 1709 -1707
		mu 0 4 744 745 747 746
		f 4 1710 1711 1712 -1708
		mu 0 4 746 748 857 855
		f 4 -1710 -1439 1713 -1711
		mu 0 4 746 747 749 748
		f 4 1714 1715 1716 -1712
		mu 0 4 748 750 859 857
		f 4 -1714 -1441 1717 -1715
		mu 0 4 748 749 751 750
		f 4 1718 1719 1720 -1716
		mu 0 4 750 752 861 859
		f 4 -1718 -1443 1721 -1719
		mu 0 4 750 751 753 752
		f 4 1722 1723 1724 -1720
		mu 0 4 752 754 863 861
		f 4 -1722 -1445 1725 -1723
		mu 0 4 752 753 755 754
		f 4 1726 1727 1728 -1724
		mu 0 4 754 756 865 863
		f 4 -1726 -1447 1729 -1727
		mu 0 4 754 755 757 756
		f 4 1730 1731 1732 -1728
		mu 0 4 756 758 867 865
		f 4 -1730 -1449 1733 -1731
		mu 0 4 756 757 759 758
		f 4 1734 1735 1736 -1732
		mu 0 4 758 760 869 867
		f 4 -1734 -1451 1737 -1735
		mu 0 4 758 759 761 760
		f 4 1738 1739 1740 -1736
		mu 0 4 760 762 870 869
		f 4 -1738 -1453 1741 -1739
		mu 0 4 760 761 763 762
		f 4 1742 1743 1744 -1740
		mu 0 4 762 764 766 870
		f 4 -1742 -1455 1745 -1743
		mu 0 4 762 763 765 764
		f 4 1746 -1471 1747 -1744
		mu 0 4 764 973 767 766
		f 4 -1746 -1457 1748 -1747
		mu 0 4 764 765 974 973
		f 4 1749 1750 1751 -1745
		mu 0 4 766 768 871 870
		f 4 -1748 -1475 1752 -1750
		mu 0 4 766 767 769 768
		f 4 1753 1754 1755 -1751
		mu 0 4 768 770 873 871
		f 4 -1753 -1479 1756 -1754
		mu 0 4 768 769 771 770
		f 4 1757 1758 1759 -1755
		mu 0 4 770 772 875 873
		f 4 -1757 -1483 1760 -1758
		mu 0 4 770 771 774 772
		f 4 1761 1762 1763 -1759
		mu 0 4 772 879 878 875
		f 4 -1761 1764 1765 -1762
		mu 0 4 772 774 773 879
		f 4 1766 1767 1768 -1766
		mu 0 4 773 882 881 879
		f 4 1769 1770 1771 -1767
		mu 0 4 773 777 776 882
		f 4 -1765 -1482 -1488 -1770
		mu 0 4 773 774 775 777
		f 4 1772 1773 1774 -1772
		mu 0 4 776 964 963 882
		f 4 1775 1776 1777 -1773
		mu 0 4 776 780 779 964
		f 4 -1771 -1487 -1494 -1776
		mu 0 4 776 777 778 780
		f 4 1778 1779 1780 -1778
		mu 0 4 779 782 965 964
		f 4 1781 1782 1783 -1779
		mu 0 4 779 970 783 782
		f 4 -1777 -1493 -1500 -1782
		mu 0 4 779 780 781 970
		f 4 1784 1785 1786 -1780
		mu 0 4 782 786 785 965
		f 4 -1784 -1524 -1530 -1785
		mu 0 4 782 783 784 786
		f 4 1787 1788 1789 -1787
		mu 0 4 785 885 884 965
		f 4 1790 1791 1792 -1788
		mu 0 4 785 787 791 885
		f 4 -1786 -1529 1793 -1791
		mu 0 4 785 786 788 787
		f 4 1794 -1548 1795 -1792
		mu 0 4 787 790 792 791
		f 4 -1794 -1533 -1544 -1795
		mu 0 4 787 788 789 790
		f 4 1796 1797 1798 -1793
		mu 0 4 791 793 886 885
		f 4 -1796 -1552 1799 -1797
		mu 0 4 791 792 794 793
		f 4 1800 1801 1802 -1798
		mu 0 4 793 795 889 886
		f 4 -1800 -1556 1803 -1801
		mu 0 4 793 794 796 795
		f 4 1804 1805 1806 -1802
		mu 0 4 795 797 891 889
		f 4 -1804 -1560 1807 -1805
		mu 0 4 795 796 798 797
		f 4 1808 1809 1810 -1806
		mu 0 4 797 799 893 891
		f 4 -1808 -1564 1811 -1809
		mu 0 4 797 798 800 799
		f 4 1812 1813 1814 -1810
		mu 0 4 799 801 895 893
		f 4 -1812 -1568 1815 -1813
		mu 0 4 799 800 802 801
		f 4 1816 1817 1818 -1814
		mu 0 4 801 803 897 895
		f 4 -1816 -1572 1819 -1817
		mu 0 4 801 802 804 803
		f 4 1820 1821 1822 -1818
		mu 0 4 803 805 899 897
		f 4 -1820 -1576 1823 -1821
		mu 0 4 803 804 806 805
		f 4 1824 1825 1826 -1822
		mu 0 4 805 807 901 899
		f 4 -1824 -1580 1827 -1825
		mu 0 4 805 806 808 807
		f 4 1828 1829 1830 -1826
		mu 0 4 807 809 903 901
		f 4 -1828 -1584 1831 -1829
		mu 0 4 807 808 810 809
		f 4 1832 1833 1834 -1830
		mu 0 4 809 811 905 903
		f 4 -1832 -1588 1835 -1833
		mu 0 4 809 810 812 811
		f 4 1836 1837 1838 -1834
		mu 0 4 811 813 907 905
		f 4 -1836 -1592 1839 -1837
		mu 0 4 811 812 814 813
		f 4 1840 1841 1842 -1838
		mu 0 4 813 815 909 907
		f 4 -1840 -1596 1843 -1841
		mu 0 4 813 814 816 815
		f 4 1844 1845 1846 -1842
		mu 0 4 815 817 912 909
		f 4 -1844 -1600 1847 -1845
		mu 0 4 815 816 818 817
		f 4 1848 1849 1850 -1846
		mu 0 4 817 819 960 912
		f 4 -1848 -1604 1851 -1849
		mu 0 4 817 818 820 819
		f 4 1852 1853 1854 -1850
		mu 0 4 819 821 961 960
		f 4 -1852 -1608 1855 -1853
		mu 0 4 819 820 822 821
		f 4 1856 1857 1858 -1854
		mu 0 4 821 823 835 961
		f 4 -1856 -1612 1859 -1857
		mu 0 4 821 822 824 823
		f 4 1860 1861 1862 -1858
		mu 0 4 823 825 832 835
		f 4 -1860 -1616 1863 -1861
		mu 0 4 823 824 826 825
		f 4 1864 1865 1866 -1862
		mu 0 4 825 828 830 832
		f 4 -1864 -1620 1867 -1865
		mu 0 4 825 826 829 828
		f 4 1868 -1654 -1661 -1866
		mu 0 4 828 966 827 830
		f 4 -1868 -1624 1869 -1869
		mu 0 4 828 829 967 966
		f 4 -1867 -1660 -1667 1870
		mu 0 4 832 830 831 833
		f 4 -1871 1871 1872 -1863
		mu 0 4 832 833 836 835
		f 4 -1872 -1666 -1673 1873
		mu 0 4 836 833 834 837
		f 4 1874 1875 -1859 -1873
		mu 0 4 836 962 961 835
		f 4 -1874 1876 1877 -1875
		mu 0 4 836 837 839 962
		f 4 -1877 -1672 -1679 1878
		mu 0 4 839 837 838 840
		f 4 1879 1880 1881 -1878
		mu 0 4 839 910 959 962
		f 4 -1879 1882 1883 -1880
		mu 0 4 839 840 842 910
		f 4 -1883 -1678 -1685 1884
		mu 0 4 842 840 841 843
		f 4 1885 1886 1887 -1884
		mu 0 4 842 914 913 910
		f 4 -1885 1888 1889 -1886
		mu 0 4 842 843 845 914
		f 4 -1889 -1684 -1691 1890
		mu 0 4 845 843 844 846
		f 4 1891 1892 1893 -1890
		mu 0 4 845 917 916 914
		f 4 -1891 1894 1895 -1892
		mu 0 4 845 846 848 917
		f 4 -1895 -1690 -1697 1896
		mu 0 4 848 846 847 849
		f 4 1897 1898 1899 -1896
		mu 0 4 848 921 920 917
		f 4 -1897 1900 1901 -1898
		mu 0 4 848 849 851 921
		f 4 -1901 -1696 -1703 1902
		mu 0 4 851 849 850 852
		f 4 1903 1904 1905 -1902
		mu 0 4 851 924 923 921
		f 4 -1903 1906 1907 -1904
		mu 0 4 851 852 854 924
		f 4 -1907 -1702 -1709 1908
		mu 0 4 854 852 853 855
		f 4 1909 1910 1911 -1908
		mu 0 4 854 856 926 924
		f 4 -1909 -1713 1912 -1910
		mu 0 4 854 855 857 856
		f 4 1913 1914 1915 -1911
		mu 0 4 856 858 928 926
		f 4 -1913 -1717 1916 -1914
		mu 0 4 856 857 859 858
		f 4 1917 1918 1919 -1915
		mu 0 4 858 860 930 928
		f 4 -1917 -1721 1920 -1918
		mu 0 4 858 859 861 860
		f 4 1921 1922 1923 -1919
		mu 0 4 860 862 932 930
		f 4 -1921 -1725 1924 -1922
		mu 0 4 860 861 863 862
		f 4 1925 1926 1927 -1923
		mu 0 4 862 864 934 932
		f 4 -1925 -1729 1928 -1926
		mu 0 4 862 863 865 864
		f 4 1929 1930 1931 -1927
		mu 0 4 864 866 935 934
		f 4 -1929 -1733 1932 -1930
		mu 0 4 864 865 867 866
		f 4 1933 1934 1935 -1931
		mu 0 4 866 868 872 935
		f 4 -1933 -1737 1936 -1934
		mu 0 4 866 867 869 868
		f 4 1937 -1756 1938 -1935
		mu 0 4 868 871 873 872
		f 4 -1937 -1741 -1752 -1938
		mu 0 4 868 869 870 871
		f 4 1939 1940 1941 -1936
		mu 0 4 872 874 936 935
		f 4 -1939 -1760 1942 -1940
		mu 0 4 872 873 875 874
		f 4 1943 1944 1945 -1941
		mu 0 4 874 876 938 936
		f 4 -1943 -1764 1946 -1944
		mu 0 4 874 875 878 876
		f 4 1947 1948 1949 -1945
		mu 0 4 876 957 956 938
		f 4 -1947 1950 1951 -1948
		mu 0 4 876 878 877 957
		f 4 1952 1953 1954 -1952
		mu 0 4 877 887 958 957
		f 4 1955 1956 1957 -1953
		mu 0 4 877 881 880 887
		f 4 -1951 -1763 -1769 -1956
		mu 0 4 877 878 879 881
		f 4 1958 1959 1960 -1958
		mu 0 4 880 883 888 887
		f 4 1961 1962 1963 -1959
		mu 0 4 880 963 884 883
		f 4 -1957 -1768 -1775 -1962
		mu 0 4 880 881 882 963
		f 4 1964 -1803 1965 -1960
		mu 0 4 883 886 889 888
		f 4 -1964 -1789 -1799 -1965
		mu 0 4 883 884 885 886
		f 4 1966 1967 -1954 -1961
		mu 0 4 888 890 958 887
		f 4 -1966 -1807 1968 -1967
		mu 0 4 888 889 891 890
		f 4 1969 1970 1971 -1968
		mu 0 4 890 892 955 958
		f 4 -1969 -1811 1972 -1970
		mu 0 4 890 891 893 892
		f 4 1973 1974 1975 -1971
		mu 0 4 892 894 940 955
		f 4 -1973 -1815 1976 -1974
		mu 0 4 892 893 895 894
		f 4 1977 1978 1979 -1975
		mu 0 4 894 896 943 940
		f 4 -1977 -1819 1980 -1978
		mu 0 4 894 895 897 896
		f 4 1981 1982 1983 -1979
		mu 0 4 896 898 946 943
		f 4 -1981 -1823 1984 -1982
		mu 0 4 896 897 899 898
		f 4 1985 1986 1987 -1983
		mu 0 4 898 900 950 946
		f 4 -1985 -1827 1988 -1986
		mu 0 4 898 899 901 900
		f 4 1989 1990 1991 -1987
		mu 0 4 900 902 952 950
		f 4 -1989 -1831 1992 -1990
		mu 0 4 900 901 903 902
		f 4 1993 1994 1995 -1991
		mu 0 4 902 904 953 952
		f 4 -1993 -1835 1996 -1994
		mu 0 4 902 903 905 904
		f 4 1997 1998 1999 -1995
		mu 0 4 904 906 918 953
		f 4 -1997 -1839 2000 -1998
		mu 0 4 904 905 907 906
		f 4 2001 2002 2003 -1999
		mu 0 4 906 908 915 918
		f 4 -2001 -1843 2004 -2002
		mu 0 4 906 907 909 908
		f 4 2005 2006 2007 -2003
		mu 0 4 908 911 913 915
		f 4 -2005 -1847 2008 -2006
		mu 0 4 908 909 912 911
		f 4 2009 -1881 -1888 -2007
		mu 0 4 911 959 910 913
		f 4 -2009 -1851 2010 -2010
		mu 0 4 911 912 960 959
		f 4 -2008 -1887 -1894 2011
		mu 0 4 915 913 914 916
		f 4 -2012 2012 2013 -2004
		mu 0 4 915 916 919 918
		f 4 -2013 -1893 -1900 2014
		mu 0 4 919 916 917 920
		f 4 2015 2016 -2000 -2014
		mu 0 4 919 954 953 918
		f 4 -2015 2017 2018 -2016
		mu 0 4 919 920 922 954
		f 4 -2018 -1899 -1906 2019
		mu 0 4 922 920 921 923
		f 4 2020 2021 2022 -2019
		mu 0 4 922 947 951 954
		f 4 -2020 2023 2024 -2021
		mu 0 4 922 923 925 947
		f 4 -2024 -1905 -1912 2025
		mu 0 4 925 923 924 926
		f 4 2026 2027 2028 -2025
		mu 0 4 925 927 948 947
		f 4 -2026 -1916 2029 -2027
		mu 0 4 925 926 928 927
		f 4 2030 2031 2032 -2028
		mu 0 4 927 929 944 948
		f 4 -2030 -1920 2033 -2031
		mu 0 4 927 928 930 929
		f 4 2034 2035 2036 -2032
		mu 0 4 929 931 941 944
		f 4 -2034 -1924 2037 -2035
		mu 0 4 929 930 932 931
		f 4 2038 2039 2040 -2036
		mu 0 4 931 933 937 941
		f 4 -2038 -1928 2041 -2039
		mu 0 4 931 932 934 933
		f 4 2042 -1946 2043 -2040
		mu 0 4 933 936 938 937
		f 4 -2042 -1932 -1942 -2043
		mu 0 4 933 934 935 936
		f 4 2044 2045 2046 -2041
		mu 0 4 937 939 942 941
		f 4 -2044 -1950 2047 -2045
		mu 0 4 937 938 956 939
		f 4 2048 -1980 2049 -2046
		mu 0 4 939 940 943 942
		f 4 -2048 2050 -1976 -2049
		mu 0 4 939 956 955 940
		f 4 2051 2052 -2037 -2047
		mu 0 4 942 945 944 941;
	setAttr ".fc[1000:1143]"
		f 4 -2050 -1984 2053 -2052
		mu 0 4 942 943 946 945
		f 4 2054 2055 -2033 -2053
		mu 0 4 945 949 948 944
		f 4 -2054 -1988 2056 -2055
		mu 0 4 945 946 950 949
		f 4 2057 -2022 -2029 -2056
		mu 0 4 949 951 947 948
		f 4 -2057 -1992 2058 -2058
		mu 0 4 949 950 952 951
		f 4 -2059 -1996 -2017 -2023
		mu 0 4 951 952 953 954
		f 4 -2051 -1949 -1955 -1972
		mu 0 4 955 956 957 958
		f 4 -2011 -1855 -1876 -1882
		mu 0 4 959 960 961 962
		f 4 -1963 -1774 -1781 -1790
		mu 0 4 884 963 964 965
		f 4 -1870 -1628 -1649 -1655
		mu 0 4 966 967 968 969
		f 4 -1783 -1499 -1506 -1525
		mu 0 4 783 970 971 972
		f 4 -1749 -1459 -1465 -1472
		mu 0 4 973 974 975 976
		f 4 -1428 -1421 2059 -934
		mu 0 4 977 978 982 979
		f 4 -2060 2060 2061 -936
		mu 0 4 979 982 981 980
		f 4 2062 2063 -939 -2062
		mu 0 4 981 1052 1051 980
		f 4 2064 2065 2066 -2063
		mu 0 4 981 985 984 1052
		f 4 -2061 -1420 -1413 -2065
		mu 0 4 981 982 983 985
		f 4 2067 2068 2069 -2067
		mu 0 4 984 1055 1054 1052
		f 4 2070 2071 2072 -2068
		mu 0 4 984 988 987 1055
		f 4 -2066 -1412 -1405 -2071
		mu 0 4 984 985 986 988
		f 4 2073 2074 2075 -2073
		mu 0 4 987 1059 1058 1055
		f 4 2076 2077 2078 -2074
		mu 0 4 987 991 990 1059
		f 4 -2072 -1404 -1397 -2077
		mu 0 4 987 988 989 991
		f 4 2079 2080 2081 -2079
		mu 0 4 990 1062 1061 1059
		f 4 2082 2083 2084 -2080
		mu 0 4 990 994 993 1062
		f 4 -2078 -1396 -1389 -2083
		mu 0 4 990 991 992 994
		f 4 2085 2086 2087 -2085
		mu 0 4 993 1065 1064 1062
		f 4 2088 2089 2090 -2086
		mu 0 4 993 997 996 1065
		f 4 -2084 -1388 -1381 -2089
		mu 0 4 993 994 995 997
		f 4 2091 2092 2093 -2091
		mu 0 4 996 1068 1067 1065
		f 4 2094 2095 2096 -2092
		mu 0 4 996 1000 999 1068
		f 4 -2090 -1380 -1373 -2095
		mu 0 4 996 997 998 1000
		f 4 2097 2098 2099 -2097
		mu 0 4 999 1071 1070 1068
		f 4 2100 2101 2102 -2098
		mu 0 4 999 1003 1002 1071
		f 4 -2096 -1372 -1365 -2101
		mu 0 4 999 1000 1001 1003
		f 4 2103 2104 2105 -2103
		mu 0 4 1002 1074 1073 1071
		f 4 2106 2107 2108 -2104
		mu 0 4 1002 1006 1005 1074
		f 4 -2102 -1364 -1357 -2107
		mu 0 4 1002 1003 1004 1006
		f 4 2109 2110 2111 -2109
		mu 0 4 1005 1077 1076 1074
		f 4 2112 2113 2114 -2110
		mu 0 4 1005 1009 1008 1077
		f 4 -2108 -1356 -1349 -2113
		mu 0 4 1005 1006 1007 1009
		f 4 2115 2116 2117 -2115
		mu 0 4 1008 1080 1079 1077
		f 4 2118 2119 2120 -2116
		mu 0 4 1008 1012 1011 1080
		f 4 -2114 -1348 -1341 -2119
		mu 0 4 1008 1009 1010 1012
		f 4 2121 2122 2123 -2121
		mu 0 4 1011 1084 1083 1080
		f 4 2124 2125 2126 -2122
		mu 0 4 1011 1015 1014 1084
		f 4 -2120 -1340 -1333 -2125
		mu 0 4 1011 1012 1013 1015
		f 4 2127 2128 2129 -2127
		mu 0 4 1014 1135 1134 1084
		f 4 2130 2131 2132 -2128
		mu 0 4 1014 1018 1017 1135
		f 4 -2126 -1332 -1326 -2131
		mu 0 4 1014 1015 1016 1018
		f 4 2133 2134 2135 -2133
		mu 0 4 1017 1021 1136 1135
		f 4 2136 -1194 2137 -2134
		mu 0 4 1017 1020 1022 1021
		f 4 -2132 -1325 -1321 -2137
		mu 0 4 1017 1018 1019 1020
		f 4 2138 -1017 2139 -2135
		mu 0 4 1021 1024 1025 1136
		f 4 -2138 -1192 -1019 -2139
		mu 0 4 1021 1022 1023 1024
		f 4 -1022 2140 2141 -2140
		mu 0 4 1025 1026 1133 1136
		f 4 -1025 2142 2143 -2141
		mu 0 4 1026 1027 1081 1133
		f 4 -1028 2144 2145 -2143
		mu 0 4 1027 1028 1086 1081
		f 4 -1031 2146 2147 -2145
		mu 0 4 1028 1029 1087 1086
		f 4 -1034 2148 2149 -2147
		mu 0 4 1029 1030 1090 1087
		f 4 -1037 2150 2151 -2149
		mu 0 4 1030 1031 1120 1090
		f 4 -1040 2152 2153 -2151
		mu 0 4 1031 1032 1121 1120
		f 4 -1043 2154 2155 -2153
		mu 0 4 1032 1033 1118 1121
		f 4 -1046 2156 2157 -2155
		mu 0 4 1033 1034 1036 1118
		f 4 -1048 -1197 2158 -2157
		mu 0 4 1034 1035 1037 1036
		f 4 2159 2160 2161 -2158
		mu 0 4 1036 1038 1123 1118
		f 4 -2159 -1202 2162 -2160
		mu 0 4 1036 1037 1039 1038
		f 4 2163 2164 2165 -2161
		mu 0 4 1038 1117 1116 1123
		f 4 -2163 2166 2167 -2164
		mu 0 4 1038 1039 1040 1117
		f 4 -2167 -1201 2168 2169
		mu 0 4 1040 1039 1131 1130
		f 4 2170 2171 2172 -2168
		mu 0 4 1040 1114 1113 1117
		f 4 -2170 2173 2174 -2171
		mu 0 4 1040 1130 1041 1114
		f 4 -2174 2175 -1066 2176
		mu 0 4 1041 1130 1129 1042
		f 4 2177 2178 2179 -2175
		mu 0 4 1041 1110 1109 1114
		f 4 -2177 -1072 2180 -2178
		mu 0 4 1041 1042 1043 1110
		f 4 -1075 2181 2182 -2181
		mu 0 4 1043 1044 1111 1110
		f 4 -1078 2183 2184 -2182
		mu 0 4 1044 1045 1107 1111
		f 4 -1081 2185 2186 -2184
		mu 0 4 1045 1046 1126 1107
		f 4 -1084 2187 2188 -2186
		mu 0 4 1046 1047 1127 1126
		f 4 -1087 2189 2190 -2188
		mu 0 4 1047 1048 1056 1127
		f 4 -1090 2191 2192 -2190
		mu 0 4 1048 1049 1053 1056
		f 4 -1093 2193 2194 -2192
		mu 0 4 1049 1050 1054 1053
		f 4 -1094 -2064 -2070 -2194
		mu 0 4 1050 1051 1052 1054
		f 4 2195 2196 2197 -2193
		mu 0 4 1053 1058 1057 1056
		f 4 -2195 -2069 -2076 -2196
		mu 0 4 1053 1054 1055 1058
		f 4 2198 2199 -2191 -2198
		mu 0 4 1057 1128 1127 1056
		f 4 2200 2201 2202 -2199
		mu 0 4 1057 1061 1060 1128
		f 4 -2197 -2075 -2082 -2201
		mu 0 4 1057 1058 1059 1061
		f 4 2203 2204 2205 -2203
		mu 0 4 1060 1104 1125 1128
		f 4 2206 2207 2208 -2204
		mu 0 4 1060 1064 1063 1104
		f 4 -2202 -2081 -2088 -2207
		mu 0 4 1060 1061 1062 1064
		f 4 2209 2210 2211 -2209
		mu 0 4 1063 1101 1105 1104
		f 4 2212 2213 2214 -2210
		mu 0 4 1063 1067 1066 1101
		f 4 -2208 -2087 -2094 -2213
		mu 0 4 1063 1064 1065 1067
		f 4 2215 2216 2217 -2215
		mu 0 4 1066 1098 1102 1101
		f 4 2218 2219 2220 -2216
		mu 0 4 1066 1070 1069 1098
		f 4 -2214 -2093 -2100 -2219
		mu 0 4 1066 1067 1068 1070
		f 4 2221 2222 2223 -2221
		mu 0 4 1069 1095 1099 1098
		f 4 2224 2225 2226 -2222
		mu 0 4 1069 1073 1072 1095
		f 4 -2220 -2099 -2106 -2225
		mu 0 4 1069 1070 1071 1073
		f 4 2227 2228 2229 -2227
		mu 0 4 1072 1092 1096 1095
		f 4 2230 2231 2232 -2228
		mu 0 4 1072 1076 1075 1092
		f 4 -2226 -2105 -2112 -2231
		mu 0 4 1072 1073 1074 1076
		f 4 2233 2234 2235 -2233
		mu 0 4 1075 1089 1093 1092
		f 4 2236 2237 2238 -2234
		mu 0 4 1075 1079 1078 1089
		f 4 -2232 -2111 -2118 -2237
		mu 0 4 1075 1076 1077 1079
		f 4 2239 2240 2241 -2239
		mu 0 4 1078 1085 1088 1089
		f 4 2242 2243 2244 -2240
		mu 0 4 1078 1083 1082 1085
		f 4 -2238 -2117 -2124 -2243
		mu 0 4 1078 1079 1080 1083
		f 4 2245 -2146 2246 -2245
		mu 0 4 1082 1081 1086 1085
		f 4 2247 2248 -2144 -2246
		mu 0 4 1082 1134 1133 1081
		f 4 -2244 -2123 -2130 -2248
		mu 0 4 1082 1083 1084 1134
		f 4 -2247 -2148 2249 -2241
		mu 0 4 1085 1086 1087 1088
		f 4 -2250 -2150 2250 2251
		mu 0 4 1088 1087 1090 1091
		f 4 -2252 2252 -2235 -2242
		mu 0 4 1088 1091 1093 1089
		f 4 -2251 -2152 2253 2254
		mu 0 4 1091 1090 1120 1119
		f 4 -2255 2255 2256 -2253
		mu 0 4 1091 1119 1094 1093
		f 4 -2256 2257 2258 2259
		mu 0 4 1094 1119 1122 1124
		f 4 2260 -2229 -2236 -2257
		mu 0 4 1094 1096 1092 1093
		f 4 -2260 2261 2262 -2261
		mu 0 4 1094 1124 1097 1096
		f 4 -2262 2263 2264 2265
		mu 0 4 1097 1124 1116 1115
		f 4 2266 -2223 -2230 -2263
		mu 0 4 1097 1099 1095 1096
		f 4 -2266 2267 2268 -2267
		mu 0 4 1097 1115 1100 1099
		f 4 -2268 2269 2270 2271
		mu 0 4 1100 1115 1113 1112
		f 4 2272 -2217 -2224 -2269
		mu 0 4 1100 1102 1098 1099
		f 4 -2272 2273 2274 -2273
		mu 0 4 1100 1112 1103 1102
		f 4 -2274 2275 2276 2277
		mu 0 4 1103 1112 1109 1108
		f 4 2278 -2211 -2218 -2275
		mu 0 4 1103 1105 1101 1102
		f 4 -2278 2279 2280 -2279
		mu 0 4 1103 1108 1106 1105
		f 4 -2280 2281 -2185 2282
		mu 0 4 1106 1108 1111 1107
		f 4 2283 -2205 -2212 -2281
		mu 0 4 1106 1125 1104 1105
		f 4 -2283 -2187 2284 -2284
		mu 0 4 1106 1107 1126 1125
		f 4 -2277 -2179 -2183 -2282
		mu 0 4 1108 1109 1110 1111
		f 4 -2271 -2172 -2180 -2276
		mu 0 4 1112 1113 1114 1109
		f 4 -2265 -2165 -2173 -2270
		mu 0 4 1115 1116 1117 1113
		f 4 2285 -2156 -2162 2286
		mu 0 4 1122 1121 1118 1123
		f 4 -2258 -2254 -2154 -2286
		mu 0 4 1122 1119 1120 1121
		f 4 -2287 -2166 -2264 -2259
		mu 0 4 1122 1123 1116 1124
		f 4 -2285 -2189 -2200 -2206
		mu 0 4 1125 1126 1127 1128
		f 4 -2176 -2169 -1199 -1187
		mu 0 4 1129 1130 1131 1132
		f 4 -2249 -2129 -2136 -2142
		mu 0 4 1133 1134 1135 1136
		f 4 -1643 -1315 -1329 -1337
		mu 0 4 1137 1138 1139 1140
		f 4 -1541 -1210 2287 -1257
		mu 0 4 1141 1142 1144 1143
		f 4 -2288 -1205 -1519 -1255
		mu 0 4 1143 1144 1145 1146;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7774C35F-4F21-C4EA-6FAD-A28944096907";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A19491FD-4867-E39F-08F7-13853E87D3DB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2D45B0B0-45E9-F8C6-5559-10B2A652DFC8";
createNode displayLayerManager -n "layerManager";
	rename -uid "F55A90B1-4B73-83DD-3AC8-A4B6BFCD7B8B";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "4639AAB6-4BEC-DFBF-FA29-0D98DA094379";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0B56148A-46B4-76D2-0268-CA89A0C7A0AD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4740383C-4155-0745-2F04-B2A4EFE024AC";
	setAttr ".g" yes;
createNode phong -n "Merged_PM3D_Sphere3D2_ncl1_2";
	rename -uid "7D030E91-4D77-2D76-0039-76BBF6A905B7";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "ChapeauSG1";
	rename -uid "4C0E963C-4692-6BC6-522C-6AB35871AC42";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "A75AA91C-4C0A-B9DB-76E1-8CB4FF69F161";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "0EDDC43D-48C0-CFCB-80E0-4399CEC5610E";
	setAttr ".version" -type "string" "5.3.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "E6B8F107-4417-E7B6-3BE5-6A8A265E6CAF";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "13DB4A4E-4F79-7FD1-C331-9F956880C8A7";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "993E9B0D-4654-5940-33A0-DB8B44F66731";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "519EDFDA-44B0-6ED9-BB9B-3C84B10CB578";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 339\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1116\n            -height 723\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 723\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8BBB5ED5-48CD-3663-36D3-59BEFBC8EBF4";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "RootFat";
	rename -uid "7F30EDAA-4F7E-8949-0A23-8383125DC281";
createNode multiplyDivide -n "HatFat";
	rename -uid "E19C8EBC-488F-C35E-0FAD-6BB620502BBC";
createNode objectSet -n "ControlSet";
	rename -uid "3FEF3E49-4BF5-25A1-DA0E-638DFF2B3DFD";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "5AC7B25C-4F31-C8E3-80D8-838A143242BE";
	setAttr ".ihi" 0;
createNode objectSet -n "AllSet";
	rename -uid "9F2171A3-46FA-113E-F5E6-CA9B7FD1F51F";
	setAttr ".ihi" 0;
	setAttr -s 52 ".dsm";
	setAttr -s 2 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "272D823A-4C94-D8CD-1916-3092E029E3B6";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "214887E1-452B-3395-20B8-179B932736F7";
	setAttr ".ihi" 0;
createNode dagPose -n "buildPose";
	rename -uid "1FFABEFA-405C-ECEA-0CDF-3E94263CBE77";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;";
createNode displayLayer -n "Mesh";
	rename -uid "1505C602-421D-C275-754D-ECA9531D1E6A";
	setAttr ".do" 1;
createNode displayLayer -n "Skeleton";
	rename -uid "F236CC20-4F21-7CA1-A4E8-FB8CBA4F2530";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode displayLayer -n "CTRL";
	rename -uid "DA2EC201-4BA9-9168-E0D0-2B8DD3627792";
	setAttr ".do" 3;
createNode skinCluster -n "skinCluster1";
	rename -uid "F4DA3B1B-429B-09E0-9234-1BA16A058D2C";
	setAttr ".skm" 2;
	setAttr -s 1146 ".wl";
	setAttr ".wl[0:499].w"
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
		1 0 1;
	setAttr ".wl[500:999].w"
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
		1 0 1;
	setAttr ".wl[1000:1145].w"
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
		1 0 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" -3.4587664600280154e-16 -8.1916726629274357e-17 0.99999999999999956 -0
		 0.90381758325501615 -0.42791795498560425 3.3011298145498389e-16 0 0.4279179549856042 0.90381758325501615 3.4054961015882906e-16 -0
		 -1.7889902775710812e-16 -3.7785768283441649e-16 -3.6332360275586685e-15 1;
	setAttr ".pm[1]" -type "matrix" -3.4587664600280154e-16 -8.1916726629274357e-17 0.99999999999999956 -0
		 0.90381758325501615 -0.42791795498560425 3.3011298145498389e-16 0 0.4279179549856042 0.90381758325501615 3.4054961015882906e-16 -0
		 -4.8026396791290349 0 -3.6332360275586678e-15 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "BEDDFE17-4868-9B22-6768-AEADB595A558";
	setAttr -s 4 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 4 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -6.2416278923116422e-08 -3.9507122462367774e-08
		 1.1698460442760271e-17 0 3.6332360275586701e-15 0 4.1806852382047819e-16 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.59747760522583682 0.37818055344922302 0.59747760522583682 0.37818050121606972 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 4.8026396791290358 -3.7785768172020337e-16
		 -7.8886090522101181e-31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 4 ".m";
	setAttr -s 4 ".p";
	setAttr -s 4 ".g[0:3]" yes yes no no;
	setAttr ".bp" yes;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "C392D1BB-46BB-4A1F-331E-A58242537326";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".ft" 1;
	setAttr ".fv" -type "string" "FBX201300";
	setAttr ".exp" -type "string" "C:/Users/cajv.paris/Desktop/PFE/Personnages/MC/Low_V02/Rigg/Chapeau/Export";
	setAttr ".exf" -type "string" "MC_Chapeau";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "CE0CE8C9-4BE6-45E1-9F43-2CAD89D0F689";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "0A23E4BD-48AE-5D06-7683-31AADFFBDA74";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
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
connectAttr "RootFat.oy" "|Group|FitSkeleton|Root.fatFrontAbs";
connectAttr "RootFat.oz" "|Group|FitSkeleton|Root.fatWidthAbs";
connectAttr "|Group|FitSkeleton|Root.s" "Hat.is";
connectAttr "HatFat.oy" "Hat.fatFrontAbs";
connectAttr "HatFat.oz" "Hat.fatWidthAbs";
connectAttr "CTRL.di" "MotionSystem.do";
connectAttr "MotionSystem.v" "MainShape.v";
connectAttr "MainScaleMultiplyDivide.o" "FKSystem.s";
connectAttr "Main.fkVis" "FKSystem.v";
connectAttr "FKOffsetRoot_M_parentConstraint1.ctx" "FKOffsetRoot_M.tx";
connectAttr "FKOffsetRoot_M_parentConstraint1.cty" "FKOffsetRoot_M.ty";
connectAttr "FKOffsetRoot_M_parentConstraint1.ctz" "FKOffsetRoot_M.tz";
connectAttr "FKOffsetRoot_M_parentConstraint1.crx" "FKOffsetRoot_M.rx";
connectAttr "FKOffsetRoot_M_parentConstraint1.cry" "FKOffsetRoot_M.ry";
connectAttr "FKOffsetRoot_M_parentConstraint1.crz" "FKOffsetRoot_M.rz";
connectAttr "FKRoot_M.s" "FKXRoot_M.is";
connectAttr "FKOffsetRoot_M.ro" "FKOffsetRoot_M_parentConstraint1.cro";
connectAttr "FKOffsetRoot_M.pim" "FKOffsetRoot_M_parentConstraint1.cpim";
connectAttr "FKOffsetRoot_M.rp" "FKOffsetRoot_M_parentConstraint1.crp";
connectAttr "FKOffsetRoot_M.rpt" "FKOffsetRoot_M_parentConstraint1.crt";
connectAttr "RootX_M.t" "FKOffsetRoot_M_parentConstraint1.tg[0].tt";
connectAttr "RootX_M.rp" "FKOffsetRoot_M_parentConstraint1.tg[0].trp";
connectAttr "RootX_M.rpt" "FKOffsetRoot_M_parentConstraint1.tg[0].trt";
connectAttr "RootX_M.r" "FKOffsetRoot_M_parentConstraint1.tg[0].tr";
connectAttr "RootX_M.ro" "FKOffsetRoot_M_parentConstraint1.tg[0].tro";
connectAttr "RootX_M.s" "FKOffsetRoot_M_parentConstraint1.tg[0].ts";
connectAttr "RootX_M.pm" "FKOffsetRoot_M_parentConstraint1.tg[0].tpm";
connectAttr "FKOffsetRoot_M_parentConstraint1.w0" "FKOffsetRoot_M_parentConstraint1.tg[0].tw"
		;
connectAttr "MainScaleMultiplyDivide.o" "IKSystem.s";
connectAttr "Main.ikVis" "IKSystem.v";
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
connectAttr "MainScaleMultiplyDivide.o" "FKIKSystem.s";
connectAttr "Main.fkIkVis" "FKIKSystem.v";
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
connectAttr "HeadEnd_M.t" "LegLockConstrained_pointConstraint1.tg[0].tt";
connectAttr "HeadEnd_M.rp" "LegLockConstrained_pointConstraint1.tg[0].trp";
connectAttr "HeadEnd_M.rpt" "LegLockConstrained_pointConstraint1.tg[0].trt";
connectAttr "HeadEnd_M.pm" "LegLockConstrained_pointConstraint1.tg[0].tpm";
connectAttr "LegLockConstrained_pointConstraint1.w0" "LegLockConstrained_pointConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrained.ro" "LegLockConstrained_orientConstraint1.cro";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_orientConstraint1.cpim"
		;
connectAttr "HeadEnd_M.r" "LegLockConstrained_orientConstraint1.tg[0].tr";
connectAttr "HeadEnd_M.ro" "LegLockConstrained_orientConstraint1.tg[0].tro";
connectAttr "HeadEnd_M.pm" "LegLockConstrained_orientConstraint1.tg[0].tpm";
connectAttr "HeadEnd_M.jo" "LegLockConstrained_orientConstraint1.tg[0].tjo";
connectAttr "LegLockConstrained_orientConstraint1.w0" "LegLockConstrained_orientConstraint1.tg[0].tw"
		;
connectAttr "MainScaleMultiplyDivide.o" "TwistSystem.s";
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
connectAttr "HeadEnd_M.pim" "Root_M_pointConstraint1.cpim";
connectAttr "HeadEnd_M.rp" "Root_M_pointConstraint1.crp";
connectAttr "HeadEnd_M.rpt" "Root_M_pointConstraint1.crt";
connectAttr "FKXRoot_M.t" "Root_M_pointConstraint1.tg[0].tt";
connectAttr "FKXRoot_M.rp" "Root_M_pointConstraint1.tg[0].trp";
connectAttr "FKXRoot_M.rpt" "Root_M_pointConstraint1.tg[0].trt";
connectAttr "FKXRoot_M.pm" "Root_M_pointConstraint1.tg[0].tpm";
connectAttr "Root_M_pointConstraint1.w0" "Root_M_pointConstraint1.tg[0].tw";
connectAttr "HeadEnd_M.ro" "Root_M_orientConstraint1.cro";
connectAttr "HeadEnd_M.pim" "Root_M_orientConstraint1.cpim";
connectAttr "HeadEnd_M.jo" "Root_M_orientConstraint1.cjo";
connectAttr "HeadEnd_M.is" "Root_M_orientConstraint1.is";
connectAttr "FKXRoot_M.r" "Root_M_orientConstraint1.tg[0].tr";
connectAttr "FKXRoot_M.ro" "Root_M_orientConstraint1.tg[0].tro";
connectAttr "FKXRoot_M.pm" "Root_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M.jo" "Root_M_orientConstraint1.tg[0].tjo";
connectAttr "Root_M_orientConstraint1.w0" "Root_M_orientConstraint1.tg[0].tw";
connectAttr "MainScaleMultiplyDivide.o" "DynamicSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DrivingSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "|Group|Root.s";
connectAttr "Skeleton.di" "|Group|Root.do";
connectAttr "Main.jointVis" "HeadEnd_M.v";
connectAttr "FKRoot_M.sx" "HeadEnd_M.sx";
connectAttr "FKRoot_M.sy" "HeadEnd_M.sy";
connectAttr "FKRoot_M.sz" "HeadEnd_M.sz";
connectAttr "Root_M_orientConstraint1.crx" "HeadEnd_M.rx";
connectAttr "Root_M_orientConstraint1.cry" "HeadEnd_M.ry";
connectAttr "Root_M_orientConstraint1.crz" "HeadEnd_M.rz";
connectAttr "Root_M_pointConstraint1.ctx" "HeadEnd_M.tx";
connectAttr "Root_M_pointConstraint1.cty" "HeadEnd_M.ty";
connectAttr "Root_M_pointConstraint1.ctz" "HeadEnd_M.tz";
connectAttr "HeadEnd_M.s" "Hat_M.is";
connectAttr "Mesh.di" "Geometry.do";
connectAttr "skinCluster1.og[0]" "ChapeauShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ChapeauSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ChapeauSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_2.oc" "ChapeauSG1.ss";
connectAttr "ChapeauShape.iog" "ChapeauSG1.dsm" -na;
connectAttr "ChapeauSG1.msg" "materialInfo2.sg";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_2.msg" "materialInfo2.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "|Group|FitSkeleton|Root.fat" "RootFat.i1y";
connectAttr "|Group|FitSkeleton|Root.fat" "RootFat.i1z";
connectAttr "|Group|FitSkeleton|Root.fatFront" "RootFat.i2y";
connectAttr "|Group|FitSkeleton|Root.fatWidth" "RootFat.i2z";
connectAttr "Hat.fat" "HatFat.i1y";
connectAttr "Hat.fat" "HatFat.i1z";
connectAttr "Hat.fatFront" "HatFat.i2y";
connectAttr "Hat.fatWidth" "HatFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "HeadEnd_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrained_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "HeadEnd_M.iog" "AllSet.dsm" -na;
connectAttr "Hat_M.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "IKStatic_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_scaleConstraint1.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "GlobalFollowMain.iog" "AllSet.dsm" -na;
connectAttr "RootFollowMain.iog" "AllSet.dsm" -na;
connectAttr "IKHandleFollowMain.iog" "AllSet.dsm" -na;
connectAttr "IKMessure.iog" "AllSet.dsm" -na;
connectAttr "IKCurve.iog" "AllSet.dsm" -na;
connectAttr "IKStatic.iog" "AllSet.dsm" -na;
connectAttr "IKFollow.iog" "AllSet.dsm" -na;
connectAttr "IKPoleVector.iog" "AllSet.dsm" -na;
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
connectAttr "|Group|Root.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "Main.s" "MainScaleMultiplyDivide.i1";
connectAttr "layerManager.dli[1]" "Mesh.id";
connectAttr "layerManager.dli[2]" "Skeleton.id";
connectAttr "layerManager.dli[3]" "CTRL.id";
connectAttr "ChapeauShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "ChapeauShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "HeadEnd_M.wm" "skinCluster1.ma[0]";
connectAttr "Hat_M.wm" "skinCluster1.ma[1]";
connectAttr "HeadEnd_M.liw" "skinCluster1.lw[0]";
connectAttr "Hat_M.liw" "skinCluster1.lw[1]";
connectAttr "HeadEnd_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "Hat_M.obcc" "skinCluster1.ifcl[1]";
connectAttr "HeadEnd_M.msg" "skinCluster1.ptt";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "|Group|Root.msg" "bindPose1.m[1]";
connectAttr "HeadEnd_M.msg" "bindPose1.m[2]";
connectAttr "Hat_M.msg" "bindPose1.m[3]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "HeadEnd_M.bps" "bindPose1.wm[2]";
connectAttr "Hat_M.bps" "bindPose1.wm[3]";
connectAttr "ChapeauSG1.pa" ":renderPartition.st" -na;
connectAttr "Merged_PM3D_Sphere3D2_ncl1_2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of MC_Chapeau_Skin_Final.ma
