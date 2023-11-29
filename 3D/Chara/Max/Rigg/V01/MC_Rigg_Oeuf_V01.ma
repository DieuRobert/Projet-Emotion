//Maya ASCII 2023 scene
//Name: MC_Oeuf_Skin_Final.ma
//Last modified: Fri, Nov 24, 2023 10:27:29 AM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Education v2009 (Build: 22621)";
fileInfo "UUID" "CC27F077-4E26-B667-616B-9F957058FC26";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "58E52880-4A53-793D-240F-579F9087974E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 12.82860235824554 155.35386885386404 254.01256837847521 ;
	setAttr ".r" -type "double3" -30.938352727836449 -5.0000020272330854 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "52B7EA76-4E50-BCCE-05D5-50A181EAD4E8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 292.91231575691353;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 21.268050148151815 -4.76837158203125e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "39EB03C2-40CC-06E2-2360-388B36784F56";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -9.6663425472519009 1000.1 10.419526270223953 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1E1823FD-4D12-CBEB-B084-B5BD34C53D6F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 978.83194985184821;
	setAttr ".ow" 43.271496347626247;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 21.268050148151815 -4.76837158203125e-07 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6E5D1D94-403D-2DF7-9FA2-078325E5C6A6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.4666558778465042 12.316764194150171 1000.3261168023599 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "357EA0C5-4265-FFB4-1A1E-2A9B12276C17";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.3261172791971;
	setAttr ".ow" 117.36386963263516;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 21.268050148151815 -4.76837158203125e-07 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E7927739-4CBF-228C-18BF-DCBBFEF55EE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.3261168024677 10.695067998623276 6.9794966058073191 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "C985F987-48DE-F0ED-849F-3291177C7799";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.3261168024677;
	setAttr ".ow" 66.944755712846842;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 21.268050148151815 -4.76837158203125e-07 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Group";
	rename -uid "662830DF-45E4-DE76-E23A-DE99A0177711";
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
	rename -uid "7E36290A-4C3B-9BA6-A421-27BA5E578C28";
	addAttr -ci true -k true -sn "visGeo" -ln "visGeo" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGeoType" -ln "visGeoType" -min 0 -max 3 -en "cylinders:boxes:spheres:bones" 
		-at "enum";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visSpheres" -ln "visSpheres" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
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
	addAttr -ci true -sn "preRebuildScript" -ln "preRebuildScript" -dt "string";
	addAttr -ci true -sn "postRebuildScript" -ln "postRebuildScript" -dt "string";
	setAttr -l on ".v" no;
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	rename -uid "4E6B9474-41C2-0BEF-D098-99A7B6FB3FB4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode joint -n "Root" -p "FitSkeleton";
	rename -uid "F5FA8CF0-406B-9C15-04C0-E3A039D4BE5C";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 43.49507388888513 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90 0 90 ;
	setAttr ".radi" 1.3196784207367429;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "EggEnd" -p "Root";
	rename -uid "8CCA44C9-4834-9758-4A51-79B59459BEFC";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 43.49507388888513 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 43.49507388888513 0 0 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 2;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode joint -n "Cup" -p "Root";
	rename -uid "EFEA687F-4352-7708-8122-318D7377AF2A";
	addAttr -ci true -k true -sn "noMirror" -ln "noMirror" -dv 1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "noMirrorLeft" -ln "noMirrorLeft" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 43.49507388888513 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatFront" -ln "fatFront" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatWidth" -ln "fatWidth" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatFrontAbs" -ln "fatFrontAbs" -at "double";
	addAttr -ci true -sn "fatWidthAbs" -ln "fatWidthAbs" -at "double";
	setAttr ".t" -type "double3" 19.54286503035787 11.824397097456902 -9.4562613137219369 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90 -90 0 ;
	setAttr ".radi" 1.3196784207367429;
	setAttr -k on ".fat";
	setAttr -k on ".fatFront";
	setAttr -k on ".fatWidth";
createNode transform -n "MotionSystem" -p "Group";
	rename -uid "D41EB685-4A8A-4B41-D635-859772ECD76A";
createNode transform -n "MainSystem" -p "MotionSystem";
	rename -uid "59ECC4D8-4CE8-25C9-A1CA-D1984A314AA4";
createNode transform -n "Main" -p "MainSystem";
	rename -uid "F1B1EDA2-4E1B-44BB-2C24-3C954E7FF6C7";
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
	setAttr -l on ".height" 43.49507388888513;
	setAttr -l on ".version" 6;
createNode nurbsCurve -n "MainShape" -p "Main";
	rename -uid "102E6B1A-45FD-2111-F25A-618E665E0004";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		15.67223249782449 9.596474681976946e-16 -15.672232497824492
		1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-15.67223249782449 9.5964746819769441e-16 -15.672232497824488
		-22.163883751087763 7.0354712380120549e-32 -1.1489796475049661e-15
		-15.67223249782449 -9.596474681976946e-16 15.67223249782449
		-2.2201713939206451e-15 -1.3571464646221832e-15 22.163883751087766
		15.67223249782449 -9.5964746819769441e-16 15.672232497824488
		22.163883751087763 -1.8507358420220198e-31 3.022481001559918e-15
		15.67223249782449 9.596474681976946e-16 -15.672232497824492
		1.3571464646221824e-15 1.3571464646221824e-15 -22.163883751087752
		-15.67223249782449 9.5964746819769441e-16 -15.672232497824488
		;
createNode transform -n "FKSystem" -p "MotionSystem";
	rename -uid "6A59FEFC-4E79-FB76-1DAC-6FBC5A53C513";
createNode transform -n "FKFollowRoot" -p "FKSystem";
	rename -uid "2E8FDADC-469F-A000-9BDE-739A3002762A";
createNode parentConstraint -n "FKFollowRoot_parentConstraint1" -p "FKFollowRoot";
	rename -uid "4FF633CB-43F7-950B-A353-FCBDA3793B1B";
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
	setAttr -k on ".w0";
createNode transform -n "FKOffsetRoot_M" -p "FKFollowRoot";
	rename -uid "5AA08A99-4A7E-6819-24E3-46BFFDCB9355";
	setAttr ".r" -type "double3" 90 0 90 ;
createNode transform -n "FKExtraRoot_M" -p "FKOffsetRoot_M";
	rename -uid "9AA96EDD-4AEC-683C-C60E-0787C1D4BEF1";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FKRoot_M" -p "FKExtraRoot_M";
	rename -uid "6F5E11BA-4D5B-2EE9-E42B-72BF965BE866";
	setAttr ".sech" no;
	setAttr ".smd" 2;
createNode nurbsCurve -n "FKRoot_MShape" -p "FKRoot_M";
	rename -uid "40D8EEF1-42C0-32D5-4756-7FB00BC0BD6D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".gtag[0].gtagnm" -type "string" "tempCluster";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "cv[0:7]";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 -51.124866485595703 -51.124866485595703
		0 8.2488811788128391e-15 -72.301483154296875
		0 51.124866485595703 -51.124866485595703
		-2.8973537843013028e-14 72.301483154296875 -2.2535504685212635e-14
		0 51.124866485595703 51.124866485595703
		0 2.4346351012159186e-14 72.301483154296875
		0 -51.124866485595703 51.124866485595703
		2.8973537843013028e-14 -72.301483154296875 3.88331199336657e-14
		0 -51.124866485595703 -51.124866485595703
		0 8.2488811788128391e-15 -72.301483154296875
		0 51.124866485595703 -51.124866485595703
		

		"gtag" 1
		"tempCluster" 1 "cv[0:7]";
createNode joint -n "FKXRoot_M" -p "FKRoot_M";
	rename -uid "2C03C84B-432A-5B33-35DA-7DB5F4FCE466";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".ds" 2;
createNode transform -n "IKSystem" -p "MotionSystem";
	rename -uid "3D894CEE-4BC3-8503-B1D1-47AAF69E5235";
createNode transform -n "IKJoints" -p "IKSystem";
	rename -uid "CE2384A2-413A-6F95-4991-4BA2C4EBE2BC";
createNode transform -n "IKHandle" -p "IKSystem";
	rename -uid "97EC86EC-46B5-F096-F6CC-45BBE3C3FE78";
createNode transform -n "IKHandleFollowMain" -p "IKHandle";
	rename -uid "C5A214CF-495A-F306-EC83-809972850917";
createNode parentConstraint -n "IKHandleFollowMain_parentConstraint1" -p "IKHandleFollowMain";
	rename -uid "38966B76-4B49-365B-320D-B18B19E33594";
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
	rename -uid "C7CBB8D6-4CDB-5409-F17F-DFA6796F3D7D";
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
createNode transform -n "IKFollow" -p "IKSystem";
	rename -uid "50B4FE1F-46DA-4E2D-CC21-DA90C11BAF7F";
createNode transform -n "IKStatic" -p "IKSystem";
	rename -uid "F49FE738-41C7-FE3E-C312-3BAECBB19E95";
createNode parentConstraint -n "IKStatic_parentConstraint1" -p "IKStatic";
	rename -uid "A4EBE4E4-4B7F-3F9F-0F48-33BDF1FF8B57";
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
	rename -uid "1BDB4A2B-4ECC-D249-F315-0184C937B863";
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
	rename -uid "BB383908-48A1-3A62-B1B5-EF88ED0052C3";
	setAttr ".it" no;
createNode transform -n "IKMessure" -p "IKSystem";
	rename -uid "E3E3E00E-4349-5470-8C1D-CB8CB960DCEF";
createNode transform -n "FKIKSystem" -p "MotionSystem";
	rename -uid "CEE7011D-4973-9AFF-3282-1A81D76C885A";
createNode transform -n "BendSystem" -p "MotionSystem";
	rename -uid "5C727EFB-4030-F0A8-9CC9-88BA8BD06BFB";
	setAttr -l on ".it" no;
createNode transform -n "AimSystem" -p "MotionSystem";
	rename -uid "AAE706EF-4BEF-4221-BF16-1A8070AD07BC";
createNode transform -n "RootSystem" -p "MotionSystem";
	rename -uid "EA176154-46CD-7DED-8EDA-16A50577E6AD";
createNode transform -n "RootFollowMain" -p "RootSystem";
	rename -uid "E140199D-45C4-F556-70A6-5D85EF5F7EB3";
createNode parentConstraint -n "RootFollowMain_parentConstraint1" -p "RootFollowMain";
	rename -uid "65BCAAF0-4BD1-C5BB-7A1F-C2A92A566546";
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
	rename -uid "9FB042E2-496E-DFD7-CFAC-6FA467158719";
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
	rename -uid "799E4359-4B93-4E39-85C1-03B9785730D0";
createNode transform -n "RootExtraX_M" -p "RootOffsetX_M";
	rename -uid "B200C22A-4163-B806-0AE7-34B1E7584026";
	setAttr -l on -k off ".v";
	setAttr ".sech" no;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "RootX_M" -p "RootExtraX_M";
	rename -uid "CA5C9056-4E5D-286C-B524-1785224BF26B";
	setAttr ".sech" no;
	setAttr ".ro" 3;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "RootX_MShape" -p "RootX_M";
	rename -uid "39A4E3CE-4E1A-A0DD-38BD-E580B107FE2A";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 39 0 no 3
		40 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39
		40
		-1.0662262533618168e-12 0 0
		-8.9079721173436316e-06 0 -73.802535478647513
		-7.1689469985015393 0 -73.802537119107569
		-7.1689469985015393 0 -84.197962483365032
		-20.006512813716938 0 -84.197962483365032
		0 0 -104.20441805449586
		20.006512813716938 0 -84.197962483365032
		7.1689469985015393 0 -84.197962483365032
		7.1689469985015393 0 -73.802537119107569
		8.9079719040983793e-06 0 -73.802538759567639
		0 0 0
		73.80251272463434 0 3.7423319601878365e-09
		73.802522808461049 0 -7.1689814334947419
		84.198005415304593 0 -7.1689814334947419
		84.198005415304593 0 -20.006459148792469
		104.20440374384935 0 4.6276057676706666e-14
		84.198005415304593 0 20.006459148792469
		84.198005415304593 0 7.1689814334947419
		73.802522808461049 0 7.1689814334947419
		73.802532892287729 0 -3.7423319081260077e-09
		0 0 0
		-2.7354538855015248e-05 0 73.802535766687143
		7.1689469985015393 0 73.802537119107569
		7.1689469985015393 0 84.197962483365032
		20.006512813716938 0 84.197962483365032
		0 0 104.20441805449586
		-20.006512813716938 0 84.197962483365032
		-7.1689469985015393 0 84.197962483365032
		-7.1689469985015393 0 73.802537119107569
		2.7354539068260502e-05 0 73.802538471527981
		0 0 0
		-73.802506720188674 0 -3.5199106560079646e-10
		-73.802522808461049 0 7.1689814334947419
		-84.198005415304593 0 7.1689814334947419
		-84.198005415304593 0 20.006459148792469
		-104.20440374384935 0 0
		-84.198005415304593 0 -20.006459148792469
		-84.198005415304593 0 -7.1689814334947419
		-73.802522808461049 0 -7.1689814334947419
		-73.802538896733424 0 3.5199106560079646e-10
		;
createNode transform -n "LegLockConstrained" -p "RootSystem";
	rename -uid "CAEB9226-43A8-EFC2-C86C-77BE114BA6BA";
createNode pointConstraint -n "LegLockConstrained_pointConstraint1" -p "LegLockConstrained";
	rename -uid "BC0FD606-4C09-464A-4BA8-FFA846728684";
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
	setAttr -k on ".w0";
createNode orientConstraint -n "LegLockConstrained_orientConstraint1" -p "LegLockConstrained";
	rename -uid "B3711890-4F04-9DBA-68C0-499B2FF33429";
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
	setAttr ".lr" -type "double3" 90 1.0495830448829606e-13 90 ;
	setAttr ".rsrr" -type "double3" 90 1.0495830448829606e-13 90 ;
	setAttr -k on ".w0";
createNode transform -n "TwistSystem" -p "MotionSystem";
	rename -uid "19315DCA-4EEF-1861-0C6C-DEB290C95A38";
createNode transform -n "GlobalSystem" -p "MotionSystem";
	rename -uid "0FF17D9C-49EB-8084-E898-44BB407040F9";
createNode transform -n "GlobalFollowMain" -p "GlobalSystem";
	rename -uid "80ADD27E-4362-9486-ADC8-A898011B1D17";
createNode parentConstraint -n "GlobalFollowMain_parentConstraint1" -p "GlobalFollowMain";
	rename -uid "EEA1E4A0-4A3E-6112-F7E5-40B29469D1BE";
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
	rename -uid "CE95DC7A-4C0C-A8B1-6FD8-369EA36DAF2D";
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
	rename -uid "A170CD54-41F7-8042-A738-E79C3C423E19";
createNode pointConstraint -n "Root_M_pointConstraint1" -p "ConstraintSystem";
	rename -uid "DAB8C829-4DDC-83BD-5351-989C8D66EC5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Root_M_orientConstraint1" -p "ConstraintSystem";
	rename -uid "E7CD5BEB-4732-19E3-E549-5383B14F30F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FKXRoot_MW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr ".r" -type "double3" 90 0 90 ;
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.5044781640848633e-06 -2.504478164084859e-06 1.1198709516423853e-13 ;
	setAttr ".rsrr" -type "double3" -2.5044781640848633e-06 -2.5044781640848586e-06 
		1.1198709516423853e-13 ;
	setAttr -k on ".w0";
createNode transform -n "DynamicSystem" -p "MotionSystem";
	rename -uid "BC13E8A9-46F2-9D5D-4214-21B0CE8B3391";
createNode transform -n "DrivingSystem" -p "MotionSystem";
	rename -uid "73C74049-40DA-E706-516A-928858AA9A1A";
createNode transform -n "DeformationSystem" -p "Group";
	rename -uid "BE6AAD0F-44F3-97EE-D36E-18917DB14A68";
createNode joint -n "Reference_M" -p "DeformationSystem";
	rename -uid "8BC8EBFE-49A5-42A5-8113-31A1E8F3BAD3";
	addAttr -ci true -sn "fat" -ln "fat" -dv 43.49507388888513 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000002504478161 0 90.000002504478161 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-16 1 -1.8318679906315083e-15 0
		 5.5511151231257827e-17 1.8873791418627661e-15 1 0 1 -5.5511151231257827e-17 0 0 0 0 0 1;
	setAttr ".liw" yes;
createNode joint -n "EggEnd_M" -p "Reference_M";
	rename -uid "9F6BE74F-48E2-E69E-5564-3C828287F6C5";
	addAttr -ci true -sn "fat" -ln "fat" -dv 43.49507388888513 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 43.49507388888513 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1.1102230246251565e-16 1 -1.8318679906315083e-15 0
		 5.5511151231257827e-17 1.8873791418627661e-15 1 0 1 -5.5511151231257827e-17 0 0 4.8289232489212719e-15 43.49507388888513 -7.9677233607200988e-14 1;
	setAttr ".liw" yes;
createNode joint -n "SecondCup_R" -p "Reference_M";
	rename -uid "FF20DE31-4B80-74A9-CB11-56A4515971AE";
	addAttr -ci true -sn "fat" -ln "fat" -dv 43.49507388888513 -at "double";
	addAttr -ci true -sn "fatFront" -ln "fatFront" -dv 1 -at "double";
	addAttr -ci true -sn "fatWidth" -ln "fatWidth" -dv 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 19.54286503035787 11.824397097456902 -9.4562613137219369 ;
	setAttr ".r" -type "double3" 2.5044781672654136e-06 -1.1516764998472845e-13 2.5044781672654136e-06 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.000002504478161 -90.000002504478161 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 -5.551115123126118e-17 -1.7763568394002505e-15 0
		 1.1102230246251565e-16 1 -1.8318679906315083e-15 0 1.8318679906315083e-15 1.8873791418627661e-15 1 0
		 -9.4562613137219333 19.542865030357891 11.824397097456867 1;
	setAttr ".liw" yes;
createNode transform -n "Geometry" -p "Group";
	rename -uid "2CEF2260-415A-1AAC-EFDD-848096E156DB";
	setAttr -l on ".it" no;
createNode transform -n "geo" -p "Geometry";
	rename -uid "9B60538F-42B8-9D44-7018-FCBDE6150A6E";
createNode transform -n "Oeuf" -p "geo";
	rename -uid "3C44B0FA-492B-2167-0DC9-82901214FE75";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "OeufShape" -p "Oeuf";
	rename -uid "6806FA7E-4660-F29D-5192-729F92D36757";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vcs" 2;
createNode mesh -n "OeufShapeOrig" -p "Oeuf";
	rename -uid "CA263C36-46AB-83E4-CFAA-E987AB61F2DD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1264 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
		 0 0 0 -1.4903031e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
	setAttr ".uvst[0].uvsp[1000:1249]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
	setAttr ".uvst[0].uvsp[1250:1263]" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1264 ".vt";
	setAttr ".vt[0:165]"  -1.04095602 12.63282299 13.93069744 0.94505697 12.6288414 13.90421009
		 -1.030030012 10.86608601 13.90669727 0.95923299 10.86268711 13.907691 -1.043190002 9.11678982 13.7854023
		 0.96825099 9.10653114 13.82161236 -2.14724493 37.47187805 9.42077732 -0.81133801 37.48804092 9.58444405
		 0.53311503 37.44350815 9.57660103 1.85676801 37.34251022 9.39557743 -3.54408193 36.33893204 9.6949501
		 -2.20858693 36.39947891 10.049074173 -0.83138102 36.40775299 10.22443771 0.55713397 36.36019135 10.21215057
		 1.92486298 36.25519943 10.0043506622 3.245543 36.10689926 9.6225996 -3.63602209 35.18055344 10.21769047
		 -2.26185703 35.22193527 10.58513927 -0.84546298 35.21635437 10.76074409 0.58085901 35.15810013 10.72564507
		 1.98524296 35.060176849 10.50300312 3.34138298 34.92798996 10.10378647 -5.047360897 33.90378189 10.091412544
		 -3.71815395 33.94337845 10.6447401 -2.30545712 33.95201111 11.0060071945 -0.853778 33.92998123 11.17483616
		 0.608073 33.87639236 11.14761353 2.047533035 33.79203796 10.91677856 3.43543792 33.68619919 10.50107765
		 4.74063206 33.56946945 9.92548943 -3.82003689 32.64409256 10.99015427 -2.35335493 32.62345123 11.35664368
		 -0.858742 32.59231567 11.53602028 0.64805698 32.54475403 11.52275372 2.13254595 32.47727203 11.29150295
		 3.56577611 32.39860153 10.85567856 -3.96568203 31.30877304 11.34635544 -2.42297602 31.26272583 11.69851589
		 -0.86335999 31.22149277 11.8759613 0.70070201 31.17827415 11.86777592 2.24155903 31.12709236 11.64484215
		 3.73049307 31.069906235 11.20213604 -4.13978195 29.94595146 11.69117069 -2.50541997 29.87921333 12.037818909
		 -0.87077498 29.82862473 12.20800114 0.75497901 29.78632545 12.19452858 2.35350299 29.7456131 11.96682262
		 3.89834595 29.70460129 11.51388168 -2.60612893 28.47947311 12.3810339 -0.888502 28.42154312 12.54761696
		 0.80761099 28.37755394 12.51585484 2.46739292 28.34296989 12.26945686 -0.92908299 26.99922562 12.86995697
		 0.847179 26.95275688 12.81467056 -0.97836602 25.55435753 13.1448698 0.87847102 25.50770378 13.078192711
		 -1.09880197 21.019773483 13.69431114 0.91930902 20.98608208 13.61473083 -3.18433189 19.44976425 13.64160824
		 -1.12263298 19.42886162 13.80150032 0.91494 19.40165901 13.71372032 -3.18335009 17.80968094 13.71359253
		 -1.12749505 17.7924881 13.86651993 0.91391098 17.77275276 13.78328896 2.89626098 17.7565136 13.49382019
		 -5.14027786 16.14465141 13.34655952 -3.14383006 16.12853813 13.7484417 -1.10452402 16.1110096 13.90621376
		 0.92369801 16.098901749 13.84117794 2.9010241 16.095317841 13.56810665 4.80852985 16.09670639 13.074799538
		 -5.046021938 14.43042374 13.32133198 -3.076122999 14.40475845 13.74076462 -1.068369031 14.38653564 13.91955471
		 0.93432999 14.38039589 13.87667465 2.90115404 14.38811111 13.61943817 4.80551815 14.40660667 13.13090038
		 -6.82482719 12.73867416 12.55840111 -4.95849705 12.68790054 13.26856995 -3.020308971 12.65341568 13.72746754
		 2.90428209 12.64357758 13.64645863 4.80442476 12.67513657 13.14549923 6.60885286 12.71942139 12.39144993
		 -6.72249699 11.02324295 12.3914814 -4.91305208 10.9492979 13.12770939 -2.99603391 10.89372444 13.64384747
		 2.92863202 10.88475513 13.65076637 4.8337388 10.93039322 13.13155937 6.635921 10.99373245 12.36712646
		 -4.88017893 9.25258636 12.88144302 -3.0079450607 9.16892719 13.45749378 2.95932794 9.14042091 13.55266857
		 4.87366295 9.20595646 13.020811081 -4.87005186 7.63562489 12.51973534 -3.022341013 7.51905584 13.10705185
		 -1.053902984 7.44255495 13.43564129 0.97201902 7.42521381 13.47629166 2.97698903 7.46626091 13.23126793
		 4.89359283 7.5499568 12.71769142 -0.746301 39.30183029 8.085833549 0.50647599 39.26005173 8.10744572
		 -3.33463097 38.33441544 8.41929436 -2.079691887 38.4273262 8.7122488 -0.78441101 38.45367432 8.86732388
		 0.514036 38.4127121 8.8689661 1.78603697 38.31147766 8.7070837 3.008161068 38.15899658 8.38509846
		 -4.66379976 37.2791214 8.598773 -3.44188309 37.39774704 9.091558456 3.13487911 37.19163895 9.045355797
		 4.34681702 36.99724579 8.53136635 -5.99093723 36.090065002 8.49972343 -4.81115389 36.23329163 9.17383862
		 4.49903202 35.92375183 9.082128525 5.66856384 35.71490479 8.39769554 -6.1615839 34.95026779 8.98706913
		 -4.939991 35.093769073 9.67634201 4.62665987 34.76402283 9.54398632 5.83140993 34.55656433 8.84609604
		 -7.18523407 33.82118988 8.78357601 -6.25883293 33.85923767 9.42811203 5.91040277 33.45624161 9.23875999
		 6.79332495 33.3696785 8.5865593 -6.5274291 32.69269562 9.62666607 -5.21986914 32.65629959 10.41315079
		 4.92634106 32.32643127 10.23559475 6.19680786 32.29613876 9.43699646 -6.81993914 31.37471771 9.94007206
		 -5.43008423 31.34000969 10.74538326 5.14907885 31.017210007 10.55660439 6.480793 30.97937393 9.72127724
		 -7.18327379 30.05305481 10.29788685 -5.69506979 30.00011062622 11.093054771 5.36922121 29.66731262 10.84769726
		 6.74257898 29.63347244 9.98513508 -7.5400548 28.71261024 10.55884838 -5.9730258 28.63176727 11.38484001
		 -4.32939816 28.55772209 12.017612457 4.068330765 28.31498528 11.79140568 5.58990717 28.29595566 11.092262268
		 7.0024490356 28.28439522 10.19406128 -6.28366709 27.23308182 11.63356304 -4.55806494 27.14554214 12.32827187
		 -2.74011588 27.062429428 12.71500778 2.57333493 26.92129898 12.53962708 4.23660517 26.9040184 12.029210091
		 5.82010794 26.90608978 11.28237343 -6.61524916 25.78835106 11.82357216 -4.7816 25.6934166 12.56454372
		 -2.879879 25.61722565 12.9903183 2.67297292 25.47724915 12.78064632 4.4032011 25.46486855 12.23776627
		 6.061420918 25.48099518 11.42857647 -6.8882432 24.27149773 12.019475937 -4.97452497 24.19958496 12.7712183
		 -2.9993 24.13482094 13.20514107 -1.023519993 24.079406738 13.36998177 0.903947 24.03571701 13.30225658
		 2.76269388 24.0042457581 12.9974041 4.55430412 23.98589897 12.43555069 6.27268696 23.98453522 11.59350777
		 -7.068348885 22.6992054 12.19125843 -5.1098218 22.65931129 12.94565868 -3.090178967 22.61312866 13.38101959
		 -1.063235998 22.56896782 13.5507164 0.918796 22.53001595 13.4814291;
	setAttr ".vt[166:331]" 2.83064508 22.49736595 13.17485523 4.67366409 22.46964073 12.60859966
		 6.44065094 22.44517899 11.7558918 -7.16178799 21.077009201 12.33930683 -5.18903923 21.07493782 13.094655991
		 -3.15284204 21.051418304 13.52906799 2.86981606 20.95401573 13.30697346 4.75093317 20.91926956 12.74680328
		 6.55543518 20.87353325 11.89981556 -7.18051577 19.42703819 12.47415733 -5.21491909 19.45534706 13.21140862
		 2.88891006 19.37456703 13.40985107 4.79209089 19.34080124 12.86664391 6.6171279 19.28321648 12.043940544
		 -7.130445 17.79945946 12.61074734 -5.19561291 17.8155117 13.30122375 4.80486298 17.73806763 12.9792366
		 6.61997986 17.70541763 12.20604134 -8.83443069 16.15535736 11.74180603 -7.0621562 16.15410423 12.68027496
		 6.61894798 16.095825195 12.33038902 8.29366875 16.090517044 11.33938789 -8.70973206 14.49902344 11.70396137
		 -6.96135521 14.464674 12.66153145 6.61586809 14.43178654 12.39251041 8.2979641 14.46250343 11.40823555
		 -8.51210976 12.79468155 11.55358505 8.28725243 12.77308464 11.40070629 -8.33927727 11.10424614 11.37019253
		 8.3018713 11.067851067 11.37720776 -8.16547966 9.47859001 11.079491615 -6.6154542 9.35986328 12.083152771
		 6.67038202 9.29413033 12.25358582 8.30811119 9.39952087 11.27543068 -8.032150269 7.97115088 10.6957798
		 -6.54713392 7.78461981 11.68928337 6.67197418 7.66661215 11.951231 8.27542591 7.83163404 10.98823547
		 -4.83892298 6.15458393 11.9546566 -3.027416945 5.99727821 12.53847885 -1.06080997 5.88811493 12.85604858
		 0.97554398 5.87177801 12.88133335 2.98012209 5.93319416 12.64686584 4.86637878 6.046065807 12.13905621
		 -4.79394817 4.88705492 11.20371723 -3.039902925 4.6614728 11.74163628 -1.068596959 4.50766516 12.0061531067
		 0.98480499 4.48790407 12.030351639 2.99273109 4.59278679 11.83081913 4.82543707 4.76259804 11.37078762
		 -0.685709 40.033321381 7.24811888 0.521815 39.97499466 7.31344604 1.67461395 39.85908508 7.20538902
		 -4.37807512 38.93461227 7.33431482 -3.2541461 39.12881088 7.67969799 -2.0082139969 39.26493835 7.926157
		 1.72215104 39.15654755 7.966084 2.88042808 39.0068702698 7.65136003 4.029926777 38.73313141 7.28082085
		 -5.4781518 38.098781586 7.39132881 -4.48890305 38.20432281 7.98513603 4.16121721 37.96115112 7.93224192
		 5.15952396 37.79747009 7.32975721 -5.80764198 37.12651443 7.93003607 5.48742294 36.77838516 7.85116005
		 -7.051568985 35.9320755 7.7037611 6.72203302 35.50511169 7.59926796 -7.34921598 34.67326736 8.14930534
		 7.0050859451 34.22820663 8.0082416534 -8.001329422 33.77459717 8.022089005 7.6045742 33.29631805 7.84153414
		 -7.77502298 32.86115265 8.58880806 7.39344788 32.40594482 8.39987278 -8.12002373 31.4023304 8.92062569
		 7.71165609 30.94962883 8.69660091 -8.51516533 30.06344986 9.28241062 7.99109507 29.58782196 8.94712162
		 -8.87450123 28.74116516 9.50902843 8.25795174 28.26377678 9.1358614 -9.26498032 27.44824409 9.61600876
		 -7.90632915 27.34775352 10.7227726 7.29048395 26.93483162 10.31273746 8.56936073 26.98426628 9.19179821
		 -8.36193562 25.94198418 10.78253078 7.63749695 25.55726051 10.3212738 -8.69552517 24.3556385 10.95090485
		 7.89880323 24.0065536499 10.44653225 -8.92098427 22.73161888 11.11679459 8.10714245 22.42344475 10.5931282
		 -9.036030769 21.050834656 11.25601959 8.26295853 20.80773735 10.73313046 -9.063297272 19.32868004 11.408535
		 8.35920143 19.16311264 10.89837646 -10.43839741 17.66872406 10.43546391 -8.92774105 17.75115585 11.63917446
		 8.30368328 17.64633369 11.17306519 9.76490498 17.5634079 9.95533085 -10.32350922 16.15100288 10.54555511
		 9.76867008 16.089796066 10.14219666 -10.20386219 14.53120041 10.4834938 9.80888939 14.50054932 10.19797897
		 -9.99016476 12.84822083 10.31847572 9.80834675 12.83076763 10.1867342 -9.75874901 11.17438412 10.14749432
		 9.80458641 11.13805008 10.18091488 -9.49123764 9.57518673 9.92442989 9.74317741 9.48861313 10.13010311
		 -9.22708225 8.12736607 9.63045502 9.59240913 7.9762001 9.92412663 -7.917943 6.63898087 10.071399689
		 -6.44594479 6.32379913 11.095890045 6.58021784 6.17602015 11.34096336 8.19134521 6.4593339 10.35948753
		 -6.19488001 4.93684912 10.24865437 -4.86156178 4.08612299 10.40206432 -3.095505953 3.58555007 10.67717648
		 3.059381962 3.498914 10.77362061 4.90622902 3.94704008 10.56520653 6.33207321 4.76622009 10.46880245
		 -1.090124011 3.32261705 10.86365032 1.0093430281 3.29592109 10.89230919 -0.59534597 40.6409874 6.38137579
		 0.57755297 40.54016113 6.51340294 -4.39330721 39.41388702 6.70556688 -3.22372198 39.78920746 6.8487401
		 -1.91061103 40.0067634583 7.034179211 1.719383 40.30125427 6.57562494 2.69509411 39.80137634 6.7886281
		 4.030280113 39.2523613 6.63938379 -5.27700901 38.80828094 6.78417587 4.95572281 38.54801178 6.72367907
		 -6.21488619 38.096775055 6.68477917 5.90737915 37.75761414 6.62265396 -6.96567106 36.89742279 7.035898209
		 6.64805698 36.49064255 6.95573521 -7.74362707 35.96229553 6.94680405 7.41297388 35.50944138 6.85058022
		 -8.25580406 34.83162689 7.074090004 7.91022587 34.35818481 6.95600986 -8.72024345 33.73628998 7.17529488
		 8.33527946 33.24339676 7.016363144 -8.91528416 32.58574295 7.4377861 8.54329967 32.1084404 7.27034378
		 -9.28649426 31.29892349 7.75066614 8.83219814 30.81252861 7.52367401 -9.70254898 30.0076770782 8.099534988
		 9.097131729 29.49575424 7.75583601 -10.013210297 28.7095089 8.37499809 9.3099308 28.19431114 7.9797802
		 -10.18305397 27.43190765 8.69976711 9.4119339 26.93852997 8.25319767 -9.96054554 26.23693466 9.31224632
		 9.1504221 25.79707146 8.8270731 -10.30991459 24.43257332 9.54169941 9.39928341 24.043148041 8.98183632
		 -10.55787468 22.74586105 9.69960976 9.62677193 22.40643883 9.11894608 -10.70837593 20.99524879 9.79180336
		 9.8348732 20.73298454 9.22949791 -10.84776402 19.029165268 9.88399792 10.068685532 18.86378479 9.34633636
		 -11.38250256 17.69371986 9.38128853 10.70121479 17.58745956 8.89935589 -11.51222515 16.18734932 9.19731808
		 10.97161102 16.12900925 8.80369663 -11.46508884 14.57583427 9.048650742;
	setAttr ".vt[332:497]" 11.1108799 14.55112267 8.77726269 -11.25910664 12.8984108 8.87510586
		 11.14700317 12.88637829 8.75400066 -10.96413803 11.22260094 8.7319994 11.13901615 11.18887329 8.78177547
		 -10.56000614 9.61546516 8.6228323 10.95474052 9.52405357 8.82239246 -9.99965668 8.15084839 8.62937832
		 10.47791195 7.99257517 8.90890312 -9.057414055 6.95376682 8.99588966 9.47010326 6.75929594 9.2930584
		 -7.80238199 5.50638103 9.14420033 -6.69663286 4.22993279 8.88444996 6.90234423 4.027399063 9.10431385
		 8.10808754 5.29340076 9.41788197 -5.111341 3.26756406 9.030884743 -3.21687603 2.64196205 9.22770119
		 -1.13076103 2.296139 9.38114071 1.048917055 2.27142906 9.40339279 3.19694805 2.53041697 9.33250046
		 5.19022417 3.10642505 9.18940639 -3.263901 40.40335846 5.80064392 -1.68413198 40.73223495 5.93885708
		 -0.57827002 41.035335541 5.66121912 0.64842701 41.021617889 5.61559916 1.88678002 40.78655624 5.62301302
		 3.090920925 40.34169388 5.65700006 -4.59366703 39.9328804 5.68442106 4.34383011 39.74900436 5.59501219
		 -5.76924896 39.28174973 5.59309006 5.49931192 38.99843597 5.5266428 -6.99428797 38.43051529 5.36175299
		 6.7165699 38.057811737 5.30467796 -7.80830622 37.21315002 5.69873905 7.50466108 36.77783966 5.63038111
		 -8.51766205 36.085361481 5.80114508 8.19626808 35.6124649 5.72195721 -9.07821846 34.90670395 5.89693308
		 8.72569275 34.41255569 5.79378986 -9.51571369 33.70160675 5.99566078 9.15460396 33.20375061 5.87178898
		 -9.84399891 32.45705414 6.14783478 9.48929214 31.97543526 6.020105839 -10.29589462 31.19333458 6.38993883
		 9.80064106 30.69426155 6.19950199 -10.72126675 29.90384865 6.65315819 10.069117546 29.38909721 6.38323689
		 -11.012619972 28.59597969 6.92722988 10.28112125 28.082630157 6.57454777 -11.23561954 27.26903152 7.23615599
		 10.42445469 26.78102493 6.80262709 -11.36423397 25.89474678 7.59793806 10.49239922 25.45720291 7.093135834
		 -11.63862038 24.34136009 7.85311413 10.69143677 23.94781685 7.27134609 -11.87070465 22.74160576 7.98857784
		 10.91503334 22.40026093 7.387537 -12.03707695 21.082740784 8.021102905 11.13871479 20.81697845 7.44417191
		 -12.20540524 19.38439178 7.97527122 11.39776325 19.20473099 7.43242502 -12.42672729 17.83498764 7.7357192
		 11.75794029 17.72654343 7.2672658 -12.53106976 16.26249695 7.54283524 12.032588959 16.20761871 7.17235899
		 -12.490201 14.62746239 7.37511587 12.21408176 14.61030579 7.12580395 -12.28382397 12.93870163 7.21192598
		 12.28654385 12.93527794 7.098895073 -11.9472084 11.24483109 7.090524197 12.29316902 11.21902847 7.1334939
		 -11.47000694 9.59605217 7.027141094 12.047290802 9.50817585 7.1963129 -10.81650925 8.029231071 7.050962925
		 11.4611063 7.86761999 7.29199505 -9.90337658 6.5562911 7.15965223 10.48743057 6.34027195 7.42410612
		 -8.73792076 5.050922871 7.13269711 9.20168495 4.80831003 7.38038301 -7.35806894 3.51318002 6.76483011
		 -5.39065981 2.50250602 7.20381403 -3.35429502 1.81361496 7.43639183 3.33997989 1.69460297 7.52530718
		 5.517272 2.31095099 7.35197687 7.671978 3.27855396 6.95791912 -1.17711401 1.43720198 7.56601906
		 1.086971045 1.39403296 7.59783792 -3.47691011 40.94309235 4.57337618 -2.025846004 41.29713058 4.6215539
		 -0.67017299 41.50234222 4.54899502 0.68889701 41.48608017 4.50868988 2.039196968 41.2519989 4.48738813
		 3.35968709 40.81848907 4.46483707 -4.83887291 40.4346199 4.48618603 4.64636517 40.21718597 4.40513086
		 -7.14119911 39.021644592 4.31866312 -6.072824001 39.7785759 4.39401913 5.84240198 39.47639465 4.33182621
		 6.891541 38.65028 4.26716995 -7.81860399 38.3469696 4.33398294 7.55254793 37.934021 4.283813
		 -8.56042004 37.31508255 4.44819403 8.27365208 36.85950089 4.39426804 -9.23199654 36.16496658 4.51687908
		 8.92450047 35.68179703 4.45586681 -9.79979324 34.94711685 4.57973099 9.45865154 34.44663239 4.49650288
		 -10.2348814 33.67791367 4.63113213 9.89635754 33.1841774 4.54022503 -10.63629246 32.39015198 4.7256279
		 10.28115845 31.90652657 4.62360287 -11.090230942 31.10124016 4.88252878 10.60567188 30.60827065 4.73019505
		 -11.50635719 29.79508209 5.053578854 10.87252712 29.29620934 4.84530687 -11.80888081 28.47002029 5.25914097
		 11.098315239 27.97971916 4.97416496 -12.089118958 27.11870956 5.51233816 11.28580761 26.65680313 5.12135601
		 -12.32522678 25.71745682 5.76443386 11.46355534 25.30521774 5.28385592 -12.59438705 24.25106621 5.96522617
		 11.68331623 23.87970161 5.40831804 -12.80639553 22.7250824 6.055531025 11.90909481 22.40591812 5.48437023
		 -12.97288418 21.14451599 6.052247047 12.12706184 20.89467049 5.50600719 -13.13167286 19.5360775 5.98348713
		 12.36297131 19.36190033 5.47475481 -13.26143074 17.94675446 5.82606602 12.63462925 17.84135056 5.3921442
		 -13.31950855 16.33542633 5.66114521 12.88774872 16.28526115 5.32549191 -13.26333618 14.67559433 5.5078721
		 13.086896896 14.66550827 5.28539085 -13.045050621 12.96910667 5.36213017 13.18032074 12.97343636 5.25733995
		 -12.70014477 11.25348854 5.26065302 13.19278336 11.23871613 5.28028011 -12.20248318 9.56417084 5.21419287
		 12.93948364 9.4941206 5.33508492 -11.5214529 7.92644501 5.22261286 12.33326721 7.77931023 5.40784502
		 -10.62276554 6.3557291 5.25300503 11.3505373 6.14990711 5.45890284 -9.52669525 4.85481501 5.22854185
		 10.12250328 4.61507893 5.42581081 -8.30870628 3.52417111 5.12562418 -7.20278311 2.6824019 5.137465
		 -5.46692801 1.804932 5.29414511 7.51974297 2.44608903 5.28112078 8.75414371 3.27852988 5.29240513
		 -3.43447495 1.13864195 5.42309618 -1.21929896 0.74503601 5.5114398 1.10106695 0.71260899 5.53048086
		 3.41225505 1.011095047 5.49328423 5.6005578 1.61531103 5.40215302 -3.68938899 41.40202332 3.24575996
		 -2.22123003 41.76026535 3.28316498 -0.750925 41.93641281 3.26691198 0.716649 41.90762329 3.24222302
		 2.16441011 41.67025375 3.214818 3.56930709 41.23344421 3.17182398 -6.38403988 40.18642426 3.048980951
		 -5.090006828 40.87494278 3.16142011 4.91458321 40.62457657 3.096232891;
	setAttr ".vt[498:663]" 6.1722641 39.86330032 2.99613309 -7.480937 39.3560524 3.05410099
		 7.25512886 38.97953033 3.013422012 -8.35329342 38.46245575 3.075393915 8.11434746 38.042751312 3.039767981
		 -9.12590313 37.40278244 3.10756803 8.86697292 36.94706726 3.071094036 -9.80047989 36.22602081 3.12365103
		 9.52085018 35.74888229 3.083734035 -10.3617878 34.97098541 3.13311505 10.049512863 34.48394394 3.078499079
		 -10.81162453 33.66474152 3.13734293 10.49676704 33.18737793 3.078176022 -11.24769974 32.34749222 3.17096996
		 10.88894558 31.87842941 3.098540068 -11.67632008 31.025842667 3.22896791 11.21545029 30.55837822 3.13606405
		 -12.048217773 29.69607925 3.306319 11.48246765 29.23309326 3.18243194 -12.36233425 28.3581295 3.4389379
		 11.70693874 27.90996552 3.23724794 -12.66253281 27.00047874451 3.62078404 11.91590309 26.58232307 3.30399799
		 -12.9234333 25.60707855 3.77920198 12.13113499 25.23666954 3.37626505 -13.17843246 24.18259048 3.90504289
		 12.36701488 23.85251045 3.43496609 -13.3870821 22.70859528 3.96081996 12.59193802 22.42618752 3.46501708
		 -13.54240036 21.18034172 3.94142008 12.79771614 20.9589653 3.46058512 -13.67333984 19.6119957 3.87125993
		 13.012997627 19.45822525 3.42846107 -13.7681036 18.018218994 3.75216198 13.25252342 17.92887878 3.38014507
		 -13.81311512 16.38910103 3.6241641 13.49261189 16.35235786 3.33845496 -13.74926281 14.71099663 3.497159
		 13.66781044 14.70733833 3.30577803 -13.53771496 12.99050522 3.37704802 13.7428894 12.99719048 3.28024197
		 -13.20238304 11.25842667 3.2951231 13.77403545 11.2548666 3.29432607 -12.70902061 9.54170609 3.25706792
		 13.52300835 9.49899578 3.32875109 -12.027684212 7.86175299 3.25216389 12.9100008 7.75601387 3.36833596
		 -11.13288498 6.24279499 3.25167203 11.94917297 6.074361801 3.38881612 -10.037272453 4.71749401 3.22553396
		 10.70361042 4.51597595 3.35532498 -8.76782417 3.35620904 3.175879 -7.33113623 2.25964403 3.15894198
		 7.6626091 2.047918081 3.24508595 9.26767445 3.14339089 3.28297091 -5.55509806 1.33878195 3.19389105
		 -3.50634003 0.65661401 3.23842406 -1.26123703 0.26665401 3.27539897 1.098253012 0.225421 3.29071212
		 3.45513201 0.54191798 3.28101707 5.68279791 1.16930699 3.25740004 -0.81104201 42.29306412 1.87650895
		 0.73969501 42.25365448 1.86144698 -5.28994608 41.22233963 1.74631298 -3.86026192 41.75959396 1.845595
		 -2.35542798 42.12179184 1.87806797 2.26337695 42.0079536438 1.83901298 3.73094702 41.57221985 1.79875302
		 5.12435818 40.9641571 1.70246303 -6.6895771 40.51078415 1.474388 6.49393082 40.182827 1.43799603
		 -7.81719589 39.56971359 1.66952705 7.60750914 39.19192505 1.639094 -8.73223019 38.59009171 1.70485401
		 8.51148701 38.17416763 1.67895305 -9.52358627 37.49246979 1.69015396 9.28039169 37.045822144 1.664662
		 -10.19575977 36.28414917 1.65125799 9.93499279 35.82373047 1.62552798 -10.75229931 34.99917984 1.60641098
		 10.46323776 34.53570938 1.57231295 -11.20740986 33.66699982 1.559955 10.90670586 33.21610641 1.52091002
		 -11.62588406 32.32178879 1.52667499 11.29697132 31.88609505 1.48182499 -12.010772705 30.97235298 1.49867296
		 11.60620213 30.54906273 1.45130301 -12.3196516 29.6185627 1.48751199 11.85346985 29.2132206 1.42711306
		 -12.60238647 28.26496887 1.52379405 12.075005531 27.88405228 1.41110301 -12.88959789 26.90566826 1.60454202
		 12.28815842 26.55675697 1.40168595 -13.16417313 25.53499413 1.68379998 12.51131344 25.22167206 1.39636004
		 -13.39668655 24.13751221 1.73775101 12.75199604 23.86213684 1.39019406 -13.57628727 22.69368553 1.74888897
		 12.96974754 22.46431923 1.37448204 -13.71985245 21.19768333 1.72066498 13.15856457 21.021150589 1.34724295
		 -13.8393259 19.65182686 1.66375995 13.35619736 19.53359604 1.31577098 -13.94586086 18.062553406 1.58597696
		 13.56633091 17.99611282 1.28557503 -13.99321461 16.42337608 1.49925101 13.7730751 16.39903831 1.26158595
		 -13.92572594 14.73204803 1.40357399 13.91931915 14.73398399 1.24336898 -13.73645401 13.0033931732 1.311396
		 13.97565556 13.013106346 1.22705603 -13.42885399 11.26299191 1.24901795 13.99321461 11.26945496 1.231426
		 -12.96493244 9.53204346 1.21745002 13.74530792 9.51761627 1.24592495 -12.30196953 7.83062887 1.20116401
		 13.15309811 7.77499294 1.25719595 -11.41385365 6.18699789 1.17771995 12.19857597 6.086877823 1.24609303
		 -10.30977058 4.63913202 1.13181603 10.97697639 4.50272799 1.19696903 -8.99712658 3.23940492 1.066162944
		 -7.45401287 2.050002098 1.0032190084 7.76780319 1.89923298 1.034618974 9.48980522 3.093746901 1.11302197
		 -5.6384201 1.085425019 0.96143299 -3.5754199 0.38226801 0.93976301 -1.30632603 0.016821001 0.93447101
		 1.078536034 -0.026373001 0.942644 3.46711302 0.32493299 0.95873499 5.73075008 0.97678298 0.98579401
		 -0.85260701 42.50564575 0.40587401 0.758187 42.46720505 0.398047 -5.34329081 41.47403336 0.42581001
		 -3.9725461 41.98071289 0.424826 -2.44888711 42.34259796 0.41726801 2.336972 42.22332382 0.39504299
		 3.83162093 41.78514862 0.39448199 5.17179918 41.20912933 0.393188 -6.37238407 40.9518013 0.41995201
		 6.17856503 40.63661957 0.388111 -8.10665512 39.62703705 0.37382099 -7.30104017 40.32662201 0.40185499
		 7.094210148 39.9747467 0.37332401 7.89719582 39.2495079 0.34986499 -8.95340157 38.68165207 0.316825
		 8.74521255 38.28065109 0.29817 -9.72657776 37.57245636 0.231498 9.49731064 37.14759064 0.215285
		 -10.38851547 36.34140015 0.12966301 10.14190865 35.9090271 0.116016 -10.93141556 35.030799866 0.023965999
		 10.66637039 34.60424805 0.010476 -11.37656212 33.677742 -0.079012997 11.10681629 33.26907349 -0.092542998
		 -11.74896812 32.30896378 -0.178608 11.4783659 31.9262867 -0.190277 -12.057383537 30.93873596 -0.27935499
		 11.75697231 30.57979012 -0.28358001 -12.30887794 29.57119942 -0.36926001 11.97492218 29.23810387 -0.37294799
		 -12.55566692 28.21098328 -0.42109701 12.17220497 27.9066906 -0.458323 -12.80696392 26.85862923 -0.43352401
		 12.36524391 26.5813427 -0.54097402 -13.040138245 25.50029755 -0.442772;
	setAttr ".vt[664:829]" 12.57653427 25.25234985 -0.61884201 -13.23566914 24.11487389 -0.46005601
		 12.80272484 23.90415192 -0.687859 -13.38947392 22.68618011 -0.49008 13.0043382645 22.51836777 -0.74669403
		 -13.51893711 21.20565987 -0.527435 13.17655945 21.082826614 -0.79276597 -13.64440441 19.67057037 -0.56853598
		 13.35938644 19.59445572 -0.82251602 -13.79264545 18.086893082 -0.60836297 13.55230522 18.045597076 -0.83712
		 -13.85758591 16.44107819 -0.652704 13.72267723 16.42836189 -0.84222001 -13.79410553 14.74048233 -0.71488303
		 13.84415722 14.74828529 -0.84453899 -13.63605404 13.0085659027 -0.77926999 13.88700104 13.021789551 -0.85136998
		 -13.37314701 11.267519 -0.82375503 13.86816597 11.28076744 -0.85547501 -12.95011044 9.53472233 -0.85107398
		 13.63275719 9.54065132 -0.85799199 -12.31978416 7.82956219 -0.87758398 13.051544189 7.82013512 -0.86721897
		 -11.46110153 6.18125391 -0.921152 12.13244343 6.15669298 -0.899499 -10.37798119 4.62987804 -0.99382198
		 10.95351219 4.58995914 -0.97246599 -9.065868378 3.22603202 -1.096228004 -7.51186085 2.010406017 -1.21354795
		 7.76053095 1.96378899 -1.21136606 9.50587654 3.16631508 -1.088431954 -5.69531488 1.028610945 -1.32171202
		 -3.62647605 0.34363899 -1.39913201 -1.35306001 0.0043660002 -1.43281198 1.041566968 0 -1.42576802
		 3.44666505 0.357979 -1.38038301 5.71713209 1.032058954 -1.30746305 -4.093152046 42.016178131 -1.031306028
		 -2.52512908 42.39957428 -1.082782984 -0.88268697 42.5624733 -1.10765195 0.77271301 42.50637817 -1.11159098
		 2.38929796 42.24542999 -1.095008969 3.92279506 41.78927994 -1.051288009 -6.90109205 40.6566925 -0.672086
		 -5.54398823 41.44111252 -0.92880201 5.34253216 41.1514473 -0.95267999 6.68989277 40.32504654 -0.69654799
		 -8.059392929 39.72356033 -0.92938799 7.84433985 39.36288834 -0.948542 -8.9315424 38.77524567 -1.075497985
		 8.72425842 38.39864731 -1.090013981 -9.69793701 37.65297699 -1.23969698 9.47673893 37.26010132 -1.24915802
		 -10.35721016 36.40127563 -1.41011703 10.12194157 36.0063819885 -1.41395104 -10.89810276 35.071834564 -1.57482302
		 10.64165211 34.68740845 -1.573686 -11.32325935 33.70524216 -1.73092902 11.0662117 33.34424973 -1.72667897
		 -11.65137863 32.32709885 -1.88737905 11.41269016 31.99762726 -1.87736595 -11.90031242 30.94959068 -2.050499916
		 11.65675831 30.65008736 -2.0248909 -12.099161148 29.57866859 -2.21335196 11.8357563 29.30868912 -2.17140603
		 -12.27830029 28.22003746 -2.347929 11.99577236 27.97797012 -2.31983709 -12.45003605 26.86791992 -2.44661593
		 12.15519428 26.65442085 -2.46949697 -12.60892677 25.50860786 -2.53385496 12.33598232 25.32666588 -2.61400604
		 -12.73477173 24.12020683 -2.60855389 12.53732395 23.97716713 -2.74076104 -12.85259533 22.68915749 -2.67273498
		 12.72461987 22.58799553 -2.83898711 -12.98224545 21.20833969 -2.72216201 12.88930321 21.14522362 -2.90220189
		 -13.13101196 19.672369 -2.75390601 13.067864418 19.64504242 -2.93314004 -13.29880905 18.085416794 -2.76762509
		 13.24869156 18.080541611 -2.93647003 -13.39302731 16.43714523 -2.78102803 13.3951931 16.44716835 -2.92529798
		 -13.35951424 14.73462868 -2.8100071 13.47317314 14.75224304 -2.91051197 -13.24518681 13.0058746338 -2.84544206
		 13.51268101 13.023960114 -2.9109509 -13.036196709 11.27132797 -2.87357903 13.48002148 11.28744125 -2.92303109
		 -12.66247082 9.5469656 -2.89613605 13.22847366 9.56347656 -2.9358561 -12.077936172 7.85303307 -2.92730498
		 12.6632967 7.87786722 -2.95061493 -11.26968956 6.22142076 -2.98272705 11.79968071 6.26470184 -2.98433805
		 -10.24233246 4.70002699 -3.075489044 10.69212627 4.75893784 -3.062890053 -8.99698353 3.33700609 -3.21538806
		 -7.495646 2.14241791 -3.39459109 7.64590979 2.22361994 -3.37662792 9.32954884 3.38687396 -3.20868897
		 -5.70406294 1.19270205 -3.5667851 -3.65625405 0.54043001 -3.69431996 -1.39887595 0.232169 -3.75047493
		 0.99117202 0.292382 -3.72428012 3.39031601 0.66676098 -3.64158511 5.64267683 1.32789004 -3.51912189
		 -4.15708303 41.86420441 -2.52693295 -2.5677309 42.24806213 -2.59535694 -0.89758599 42.41641998 -2.62743902
		 0.78487098 42.36477661 -2.626472 2.42101192 42.1015358 -2.597121 3.96237302 41.63853455 -2.53872609
		 -5.6044488 41.28224182 -2.43025398 5.3756938 40.99701691 -2.44725895 -7.99427605 39.62462997 -2.33931398
		 -6.89503717 40.51006699 -2.32694793 6.65293694 40.1864357 -2.34451509 7.75303984 39.27734375 -2.35276389
		 -8.67815208 38.87308121 -2.44179893 8.44412804 38.51819229 -2.45215392 -9.42023277 37.73968887 -2.6933639
		 9.18012905 37.37921524 -2.69567299 -10.077895164 36.45915985 -2.940449 9.81249428 36.10167694 -2.93073797
		 -10.61423016 35.11151886 -3.16273308 10.33413029 34.77235794 -3.14261198 -11.026749611 33.74333954 -3.36234808
		 10.7517271 33.43299484 -3.33422995 -11.32279682 32.37197876 -3.5617981 11.066153526 32.095214844 -3.5230751
		 -11.52613926 31.003118515 -3.77205396 11.27040863 30.7580719 -3.71204996 -11.66869354 29.64066696 -3.99029398
		 11.41163635 29.42311096 -3.90552592 -11.78665543 28.28856277 -4.21010017 11.52895069 28.095815659 -4.10617018
		 -11.87412262 26.93757439 -4.40484381 11.64537334 26.77389145 -4.31254292 -11.93497562 25.57203484 -4.57507801
		 11.78278923 25.44184494 -4.51477003 -11.99211121 24.16466522 -4.70404291 11.94898891 24.075128555 -4.68769121
		 -12.072984695 22.71172142 -4.79369593 12.12611389 22.66284752 -4.82201004 -12.2055912 21.20987701 -4.85709095
		 12.30153942 21.19631958 -4.91108322 -12.38181782 19.65779495 -4.88572216 12.48935032 19.67292786 -4.95353603
		 -12.56251144 18.062057495 -4.87126493 12.66664314 18.090873718 -4.94921589 -12.67331123 16.41257095 -4.84811211
		 12.80005074 16.44847107 -4.92954779 -12.67490005 14.71584702 -4.83664179 12.84953403 14.74792671 -4.90586615
		 -12.60663795 12.99794769 -4.84244299 12.8807478 13.021454811 -4.90725994 -12.43304062 11.27662468 -4.85099602
		 12.84313297 11.29132462 -4.92973089 -12.092930794 9.56989002 -4.86075115 12.57907104 9.58764076 -4.94179821
		 -11.55828476 7.8986578 -4.88416719 12.034012794 7.94124317 -4.941998 -10.82464218 6.29901409 -4.93365288
		 11.25619602 6.39190102 -4.94784689 -9.90709782 4.83548784 -5.024748802;
	setAttr ".vt[830:995]" -8.80599499 3.59703708 -5.1865921 9.011399269 3.75931692 -5.13557386
		 10.23576832 4.987113 -4.9860568 -7.39366484 2.49751997 -5.42719793 -5.66125107 1.60310495 -5.67435217
		 5.5037961 1.88960695 -5.54808521 7.41904211 2.71929407 -5.340518 -3.65702105 0.99395198 -5.85746622
		 -1.43062699 0.74587899 -5.92502308 0.93142998 0.86432099 -5.86717892 3.29453802 1.27459896 -5.72402382
		 -4.17438984 41.51719284 -3.97297597 -2.57835197 41.89070129 -4.063010216 -0.89365399 42.065223694 -4.10074186
		 0.79748499 42.023334503 -4.092473984 2.43120098 41.76948166 -4.053443909 3.95097709 41.31738663 -3.98959208
		 -5.56861115 40.96528625 -3.86624789 5.31257105 40.7095108 -3.89014792 -6.77968693 40.18955994 -3.80201006
		 6.51935005 39.89890289 -3.82504106 -8.0020065308 39.16202927 -3.60117888 7.75344992 38.84163666 -3.61405301
		 -8.84514427 37.83721542 -4.090157986 8.59587765 37.51600266 -4.087645054 -9.52675247 36.49751282 -4.43168688
		 9.26689053 36.18645096 -4.41136694 -10.072219849 35.13083267 -4.70959187 9.80268574 34.84085846 -4.67204714
		 -10.48890781 33.78243637 -4.93149424 10.21631432 33.52017593 -4.87796688 -10.75675583 32.43973541 -5.15644789
		 10.50191975 32.20933914 -5.089351177 -10.90564632 31.094789505 -5.40248489 10.66986942 30.89425278 -5.31417799
		 -10.99598408 29.74577332 -5.67494917 10.76676464 29.56973648 -5.54499102 -11.057758331 28.40515518 -5.97250795
		 10.83028412 28.24918938 -5.78389978 -11.077662468 27.065368652 -6.26437807 10.87728405 26.93402672 -6.032445908
		 -11.064948082 25.70147896 -6.53988886 10.93651676 25.59879112 -6.287148 -11.072999001 24.25905418 -6.73283195
		 11.057508469 24.19198227 -6.49645519 -11.1310606 22.76052284 -6.85926104 11.2193327 22.73070145 -6.66086721
		 -11.25464725 21.20977783 -6.93523693 11.39586067 21.21217346 -6.77433205 -11.43730927 19.61592865 -6.95174217
		 11.59240437 19.64218903 -6.83122492 -11.62962246 18.012388229 -6.8794961 11.80610561 18.057170868 -6.82249498
		 -11.74874592 16.36952591 -6.79968691 11.93553066 16.42034912 -6.79727221 -11.78792286 14.689785 -6.74848795
		 11.96373272 14.72888374 -6.77891922 -11.74511814 12.98923969 -6.7213459 11.99853134 13.013664246 -6.79466486
		 -11.59226894 11.2874794 -6.70464897 11.96432781 11.29736519 -6.82502699 -11.28056812 9.60385418 -6.69177389
		 11.70201397 9.62076187 -6.820858 -10.78953075 7.95889616 -6.69013596 11.16427898 8.023288727 -6.77038002
		 -10.12234688 6.3904748 -6.70219994 10.44808292 6.54974079 -6.70159388 -9.32016373 4.99537516 -6.72916794
		 -8.5209198 4.077054977 -6.86716318 8.61102009 4.33374882 -6.75230122 9.54867935 5.22374821 -6.64827299
		 -7.23898077 3.12835598 -7.19075823 -5.56116104 2.31340694 -7.53792191 -3.60939193 1.74910998 -7.79019213
		 3.16704106 2.16961002 -7.55449486 5.30056477 2.74856901 -7.30327177 7.15104103 3.45373607 -7.025984764
		 -1.43357897 1.56378102 -7.86354113 0.87006998 1.728791 -7.77189398 -0.86213499 41.50868225 -5.47183323
		 0.82131398 41.49508667 -5.45053101 -5.46162987 40.54174805 -5.12491989 -4.19214201 40.95459366 -5.28608179
		 -2.55566502 41.30447388 -5.42785978 2.43560195 41.254879 -5.398633 3.91246891 40.80413437 -5.34528685
		 5.16727781 40.32504654 -5.1787281 -6.35382891 39.84867477 -5.28740215 -5.48658609 40.096858978 -5.87455082
		 5.14572382 39.90393829 -5.97827291 6.07150507 39.60351944 -5.33552408 -7.28517008 39.02406311 -5.1971302
		 7.03238821 38.7530899 -5.22393179 -8.06315136 37.80345917 -5.51864195 7.8461318 37.53550339 -5.52701616
		 -8.73074341 36.47059631 -5.86871195 8.51980686 36.21387863 -5.85238314 -9.27971554 35.08518219 -6.19403315
		 9.062008858 34.84843826 -6.15196991 -9.73182201 33.80498886 -6.37931108 9.50999928 33.58986664 -6.31730986
		 -9.97190475 32.52560425 -6.61450481 9.76452541 32.3369751 -6.53640795 -10.059887886 31.22712517 -6.90495682
		 9.869133 31.063257217 -6.79676199 -10.10495853 29.89030266 -7.22683716 9.91041946 29.74496651 -7.052028179
		 -10.12005424 28.55916214 -7.57334709 9.92116928 28.42848969 -7.31194878 -10.06973362 27.24312973 -7.93757391
		 9.89182281 27.12997246 -7.59970093 -9.93484306 25.91189003 -8.34080124 9.80478859 25.82024384 -7.93597221
		 -9.91322517 24.38929367 -8.59796524 9.86876011 24.3244648 -8.16231918 -9.95519161 22.81557655 -8.76212883
		 10.0011520386 22.78123856 -8.34393883 -10.058016777 21.18250084 -8.85432434 10.15820789 21.17760086 -8.48547173
		 -10.22772026 19.49176788 -8.86255836 10.34379387 19.50872421 -8.56569862 -10.50297737 17.92141151 -8.69595718
		 10.63350582 17.95357704 -8.49212456 -10.66285992 16.31526756 -8.57335472 10.78034306 16.35112953 -8.45910263
		 -10.71741962 14.66246986 -8.49019241 10.82549763 14.69075203 -8.46542358 -10.68552876 12.98519516 -8.4355011
		 10.88058281 12.99556541 -8.52033043 -10.53697395 11.30833054 -8.38394928 10.87504959 11.28791332 -8.5768013
		 -10.24646759 9.65338707 -8.33655739 10.58086681 9.67798615 -8.50600243 -9.78875923 8.037096024 -8.29573059
		 10.06050396 8.16170216 -8.37943268 -9.14565563 6.473773 -8.24136925 9.36902142 6.69074678 -8.23731232
		 -8.33570385 4.93812609 -8.073366165 -7.11264706 4.10610819 -8.5741787 6.97491598 4.44313478 -8.40484619
		 8.39639091 5.20037699 -7.98421717 -5.40759706 3.35377789 -9.087394714 -3.48687601 2.8331461 -9.40018082
		 -1.39077997 2.66600299 -9.49503326 0.820669 2.84550095 -9.38527489 3.02968502 3.28423595 -9.11903
		 5.10830784 3.82538605 -8.80842781 -0.78193402 40.76620102 -6.68942118 0.86840701 40.805439 -6.63217115
		 2.456846 40.59196091 -6.55068302 -4.38908195 40.12519073 -6.42456913 -2.46889806 40.48343277 -6.67624092
		 2.49382305 39.99350357 -7.30696678 3.91879201 40.0072479248 -6.63425493 -6.40978003 39.072219849 -6.20742512
		 -5.50543785 39.60500717 -6.45427895 5.20405102 39.42001343 -6.57099295 6.17814589 38.84677124 -6.26950407
		 -7.074865818 37.73961258 -6.75379992 6.91250086 37.52017212 -6.78563499 -7.72809982 36.40558243 -7.16500711
		 7.5869441 36.20097733 -7.1673789 -8.25362873 34.88506699 -7.6495719 8.12287998 34.7062149 -7.62364817
		 -8.8566227 33.80828857 -7.61478186 -8.12363529 33.88304138 -8.36715126;
	setAttr ".vt[996:1161]" 8.023023605 33.73727036 -8.32956886 8.70707417 33.63645935 -7.5631938
		 -9.037922859 32.63737106 -7.87085199 8.89545631 32.48573303 -7.797575 -9.0012407303 31.42189407 -8.24344254
		 8.85989475 31.28981972 -8.12415123 -9.013338089 30.056241989 -8.60054016 8.85809422 29.93662262 -8.39776039
		 -9.011837006 28.71491814 -8.94851875 8.84919834 28.60451508 -8.65096283 -8.91062737 27.43910217 -9.32478523
		 -7.94212198 27.4990921 -10.20763969 7.79807711 27.41094398 -9.81005478 8.75896931 27.3399868 -8.94026184
		 -8.42224789 26.29089546 -9.94466782 8.2958889 26.20784569 -9.49228096 -8.43488884 24.51729965 -10.17873383
		 8.36965847 24.45631599 -9.67253685 -8.4886198 22.85261726 -10.37745285 8.47438908 22.81309509 -9.85245323
		 -8.56862354 21.12459373 -10.52511787 8.57301331 21.10349464 -10.028999329 -8.67818546 19.16145134 -10.64522743
		 8.67358971 19.15584373 -10.23040009 -9.26611042 17.80073738 -10.22494316 -8.23905945 17.79776001 -11.18302155
		 8.17228985 17.78866768 -10.8158474 9.2855072 17.80887413 -9.9097023 -9.43857193 16.26377487 -10.088804245
		 9.44184875 16.27620506 -9.88550854 -9.47765827 14.64358902 -10.0082893372 9.48292065 14.65574646 -9.92549324
		 -9.43662643 12.99030685 -9.93721962 9.51046371 12.99461079 -9.98329544 -9.30086327 11.33910847 -9.85469246
		 9.48025703 11.32868767 -10.012584686 -9.045043945 9.71873569 -9.76487923 9.24728012 9.76052761 -9.92209435
		 -8.62988853 8.15840244 -9.6823616 8.81068993 8.3183136 -9.76067924 -7.98594522 6.7052598 -9.6210556
		 8.097663879 6.96196699 -9.6053791 -7.13803387 5.41028023 -9.55297661 -5.15072012 4.71630192 -10.33333969
		 -3.28589606 4.1556282 -10.68560028 2.86103106 4.56414509 -10.41438866 4.88311815 5.13052607 -10.10454369
		 7.049222946 5.7058382 -9.46978188 -1.30098903 3.97786593 -10.79045105 0.77982599 4.1459651 -10.67722511
		 -0.63077599 39.93348694 -7.71922684 0.93612498 40.041385651 -7.59242201 -5.50238323 38.88618088 -7.085803986
		 -4.052586079 39.13973618 -7.536695 -2.042341948 39.43453979 -7.91322279 -0.60503602 39.21252823 -8.39002609
		 0.97370499 39.14845657 -8.42861557 2.55729508 39.059120178 -8.19151688 4.04818821 38.92855835 -7.71802521
		 5.35501719 38.68831253 -7.19273901 -5.82376003 37.53225327 -7.90808916 -4.12260914 37.91052628 -8.47404671
		 4.19373989 37.74187088 -8.58767891 5.76773596 37.3567009 -7.97816515 -6.57606983 36.43542862 -8.17719269
		 -5.58886385 36.52728653 -8.75159645 5.58840418 36.38811493 -8.80795479 6.51901102 36.2730217 -8.21350861
		 -6.94191885 35.18323135 -8.6484127 -5.65229082 35.33413696 -9.37212372 5.66678619 35.22434235 -9.40727997
		 6.89249182 35.043628693 -8.65818405 -7.063830853 34.018676758 -9.15460396 7.019474983 33.90194702 -9.13889885
		 -8.072174072 32.79352188 -8.83722305 -7.22305298 32.86718369 -9.47371101 -5.88902807 32.86514664 -10.25319672
		 5.86951113 32.78627777 -10.20592117 7.16626978 32.76424789 -9.41962624 7.97725582 32.67007065 -8.77142715
		 -7.67231894 31.7784214 -9.42060947 -6.09858799 31.59830284 -10.49376106 6.037277222 31.52169037 -10.37755966
		 7.58116198 31.67451859 -9.31138802 -7.72220993 30.21027374 -9.77763557 -6.21557379 30.19898605 -10.7854538
		 6.11297083 30.12304306 -10.58403015 7.59966087 30.11337852 -9.56915855 -7.79724503 28.80971527 -10.061531067
		 -6.32315016 28.8120594 -11.046602249 -4.65856886 28.78689003 -11.82044792 4.52285624 28.72843933 -11.57090187
		 6.18403292 28.73564529 -10.74633217 7.65377712 28.71687698 -9.75171661 -6.45971107 27.4440403 -11.22172165
		 -4.76577711 27.39267159 -12.04488945 -2.94707704 27.35596466 -12.58803558 2.76156092 27.31752205 -12.37454796
		 4.594697 27.3335495 -11.72387886 6.30759192 27.36911392 -10.84003353 -6.66254091 26.054634094 -11.29443741
		 -4.87598991 25.96306038 -12.21692276 -3.01582408 25.91856384 -12.79493046 2.79224205 25.88190842 -12.54723358
		 4.68770409 25.90761185 -11.84310532 6.51472187 25.98500443 -10.84422112 -6.74646807 24.48775101 -11.46662712
		 -4.94936705 24.45480347 -12.40669823 -3.067435026 24.4315567 -12.99841118 -1.12467098 24.41485977 -13.24528313
		 0.84857303 24.40321159 -13.15018082 2.81907797 24.39873314 -12.72408867 4.75489092 24.40651131 -11.98811054
		 6.62307787 24.43130875 -10.96708107 -6.80848598 22.87880325 -11.66754341 -4.99759102 22.89156723 -12.60304642
		 -3.10043907 22.89474297 -13.19521904 -1.14337003 22.89032745 -13.44290924 0.84588099 22.8801918 -13.3445816
		 2.83696508 22.86639786 -12.90864182 4.80025101 22.8512764 -12.16193962 6.69949293 22.83425713 -11.13313675
		 -6.85019207 21.2150631 -11.84489441 -5.02155304 21.27970505 -12.78956604 -3.11431694 21.31053162 -13.37952614
		 2.83986211 21.2844429 -13.089314461 4.81583309 21.24556732 -12.35323715 6.742764 21.18227768 -11.32726097
		 -6.84544086 19.4986515 -12.014726639 -5.0069317818 19.63225174 -12.95675659 2.82560611 19.66075897 -13.26022911
		 4.78702402 19.60040855 -12.54816628 6.71974516 19.47376823 -11.55413055 -6.69011593 17.91200829 -12.24460602
		 -4.9344492 17.99383163 -13.092812538 4.71274996 17.96529961 -12.75063896 6.53323412 17.88778114 -11.85524178
		 -8.13404846 16.26040077 -11.29397011 -6.58853388 16.30247879 -12.33561134 6.42940378 16.28179932 -12.060110092
		 8.041376114 16.25292015 -11.037939072 -8.087467194 14.64582253 -11.27951431 -6.51694298 14.66367054 -12.32318878
		 6.38625717 14.64927101 -12.18052864 8.0060272217 14.6428566 -11.15287018 -8.018614769 13.0037651062 -11.20138359
		 7.98802996 13.0078716278 -11.20288086 -7.90060091 11.36990929 -11.080774307 7.92571688 11.39416122 -11.16992188
		 -7.71610117 9.77489281 -10.93158722 -6.28900814 9.78491592 -11.82379723 6.21487284 9.89288712 -11.90062046
		 7.76479721 9.86926842 -11.033243179 -7.40686417 8.26535797 -10.76619339 -6.30510521 8.25942802 -11.43982124
		 6.21306896 8.4720726 -11.49616814 7.47578716 8.46299171 -10.85387421 -6.733253 6.95371723 -10.67681313
		 -4.51801109 6.34683514 -11.51350784 -2.88335395 6.67760992 -12.17098045 2.59994292 6.94435215 -12.021120071
		 4.29060793 6.67306995 -11.37273026 6.6718998 7.20564699 -10.69409943 -3.00026106834 5.56561422 -11.66067123
		 -1.17712402 5.38981199 -11.75138092 0.75082898 5.53132677 -11.64762115;
	setAttr ".vt[1162:1263]" 2.63710499 5.89753103 -11.44112968 -2.35012603 38.11146164 -8.89385033
		 -0.69192398 38.09885788 -9.18899918 0.96850598 38.045070648 -9.22752571 2.60833406 37.93729782 -9.017461777
		 -4.11447716 36.70774078 -9.28711891 -2.4522531 36.83067322 -9.69218636 -0.75379598 36.85860825 -9.93530846
		 0.95020503 36.8259964 -9.96185303 2.61849308 36.73751068 -9.76317787 4.1947608 36.58861542 -9.3614502
		 -4.156847 35.454216 -9.94421577 -2.51122093 35.53386688 -10.35752869 -0.79510403 35.56030273 -10.58443642
		 0.93612599 35.53998184 -10.6000061 2.63008904 35.47608566 -10.39814568 4.22888899 35.36959076 -9.99169922
		 -5.74794006 34.10668945 -9.87908936 -4.22881794 34.17196274 -10.47977257 -2.56754494 34.21475983 -10.90710831
		 -0.829337 34.22856522 -11.12666321 0.92702597 34.21403885 -11.12939835 2.647892 34.17253494 -10.91324615
		 4.27740383 34.10606766 -10.48844528 5.75529003 34.017139435 -9.88199234 -4.32972383 32.87018585 -10.90582085
		 -2.63367701 32.87735367 -11.35215759 -0.86628902 32.87733078 -11.57727814 0.91997701 32.86559296 -11.56867409
		 2.673455 32.84281921 -11.32804298 4.34231901 32.81350708 -10.86517143 -4.45255518 31.54337502 -11.23976326
		 -2.71273708 31.52342796 -11.72699165 -0.909742 31.51169205 -11.95907211 0.91064399 31.50042915 -11.93549156
		 2.70116711 31.49023247 -11.66135979 4.41923523 31.48894119 -11.14256477 -4.56002712 30.17142105 -11.55158043
		 -2.79142499 30.14892006 -12.050880432 -0.95745498 30.13222313 -12.28219414 0.89518899 30.12031364 -12.24090004
		 2.71934509 30.11401176 -11.93422508 4.47124195 30.11525154 -11.37555122 -2.86952901 28.76076508 -12.33766747
		 -1.0072660446 28.74043465 -12.57020569 0.87783098 28.72756958 -12.51145172 2.73702192 28.72351456 -12.17105865
		 -1.054836988 27.33134079 -12.820961 0.86295003 27.3180809 -12.74855804 -1.094993949 25.89335823 -13.038492203
		 0.85347098 25.88050652 -12.95220184 -1.15044904 21.31725502 -13.62001991 0.84327102 21.30744171 -13.51796341
		 -3.10347009 19.68612671 -13.538517 -1.14479399 19.70041656 -13.77343559 0.84104002 19.6909523 -13.67567635
		 -3.062977076 18.035634995 -13.64595413 -1.12371302 18.048301697 -13.88222122 0.84365302 18.040622711 -13.80454826
		 2.80160308 18.013839722 -13.41557693 -4.86205387 16.34307861 -13.15595055 -3.011174917 16.36577988 -13.69210052
		 -1.090186954 16.3718586 -13.93069839 0.85687298 16.36504745 -13.8698864 2.78904104 16.34745789 -13.52482224
		 4.66160488 16.31861687 -12.90565109 -4.79248524 14.67986107 -13.1257534 -2.9559021 14.68777466 -13.66249084
		 -1.051903963 14.6878624 -13.91433907 0.87576801 14.6825161 -13.87584496 2.78508902 14.67336082 -13.56115723
		 4.63652897 14.66145134 -12.99363327 -6.44550085 13.016231537 -12.23435402 -4.72665501 13.020500183 -13.021645546
		 -2.90294695 13.020549774 -13.55086136 2.77842498 13.012833595 -13.52409744 4.61151886 13.012982368 -12.98763084
		 6.35567713 13.013504028 -12.21230125 -6.36013317 11.3833313 -12.06539917 -4.66520882 11.37862968 -12.83242989
		 -2.86086011 11.38039207 -13.3521347 2.75588608 11.39207554 -13.37335968 4.57023001 11.40121937 -12.86549187
		 6.29898882 11.4125576 -12.12964439 -4.62289381 9.75361824 -12.54862213 -2.8410151 9.77206421 -13.059752464
		 2.71444607 9.83567619 -13.075351715 4.50901699 9.84949493 -12.58486557 -4.60469389 8.11432838 -12.13881683
		 -2.849998 8.19007206 -12.66807175 -1.021911979 8.2629261 -12.90252495 0.82846099 8.32160091 -12.87813568
		 2.65877008 8.34979725 -12.61525917 4.44287014 8.32746887 -12.11390877 -1.080116987 6.77746916 -12.38924217
		 0.77753901 6.88197994 -12.32213402 -1.017645955 13.017907143 -13.81572342 0.88951802 13.014570236 -13.80655861
		 -0.99663299 11.38427353 -13.61868858 0.888237 11.38690376 -13.63043022 -0.996059 9.79950333 -13.31511688
		 0.86757398 9.82174587 -13.31798744;
	setAttr -s 2552 ".ed";
	setAttr ".ed[0:165]"  1 0 0 0 2 0 2 3 0 3 1 0 2 4 0 4 5 0 5 3 0 6 108 0 108 10 0
		 10 11 0 11 6 0 7 6 0 11 12 0 12 7 0 8 7 0 12 13 0 13 8 0 9 8 0 13 14 0 14 9 0 15 109 0
		 109 9 0 14 15 0 10 16 0 16 17 0 17 11 0 17 18 0 18 12 0 18 19 0 19 13 0 19 20 0 20 14 0
		 20 21 0 21 15 0 16 116 0 116 22 0 22 23 0 23 16 0 23 24 0 24 17 0 24 25 0 25 18 0
		 25 26 0 26 19 0 26 27 0 27 20 0 27 28 0 28 21 0 29 117 0 117 21 0 28 29 0 22 124 0
		 124 30 0 30 23 0 30 31 0 31 24 0 31 32 0 32 25 0 32 33 0 33 26 0 33 34 0 34 27 0
		 34 35 0 35 28 0 35 125 0 125 29 0 30 36 0 36 37 0 37 31 0 37 38 0 38 32 0 38 39 0
		 39 33 0 39 40 0 40 34 0 40 41 0 41 35 0 36 42 0 42 43 0 43 37 0 43 44 0 44 38 0 44 45 0
		 45 39 0 45 46 0 46 40 0 46 47 0 47 41 0 42 137 0 137 48 0 48 43 0 48 49 0 49 44 0
		 49 50 0 50 45 0 50 51 0 51 46 0 51 138 0 138 47 0 48 143 0 143 52 0 52 49 0 52 53 0
		 53 50 0 53 144 0 144 51 0 52 54 0 54 55 0 55 53 0 56 171 0 171 58 0 58 59 0 59 56 0
		 57 56 0 59 60 0 60 57 0 58 61 0 61 62 0 62 59 0 62 63 0 63 60 0 64 177 0 177 60 0
		 63 64 0 61 181 0 181 65 0 65 66 0 66 61 0 66 67 0 67 62 0 67 68 0 68 63 0 68 69 0
		 69 64 0 70 182 0 182 64 0 69 70 0 65 71 0 71 72 0 72 66 0 72 73 0 73 67 0 73 74 0
		 74 68 0 74 75 0 75 69 0 75 76 0 76 70 0 71 189 0 189 77 0 77 78 0 78 71 0 78 79 0
		 79 72 0 79 0 0 0 73 0 1 74 0 80 75 0 1 80 0 80 81 0 81 76 0 82 190 0 190 76 0 81 82 0
		 77 83 0 83 84 0;
	setAttr ".ed[166:331]" 84 78 0 84 85 0 85 79 0 85 2 0 3 86 0 86 80 0 86 87 0
		 87 81 0 87 88 0 88 82 0 83 197 0 197 89 0 89 84 0 89 90 0 90 85 0 90 4 0 5 91 0 91 86 0
		 91 92 0 92 87 0 92 198 0 198 88 0 89 93 0 93 94 0 94 90 0 94 95 0 95 4 0 95 96 0
		 96 5 0 96 97 0 97 91 0 97 98 0 98 92 0 99 221 0 221 102 0 102 103 0 103 99 0 100 99 0
		 103 104 0 104 100 0 105 222 0 222 100 0 104 105 0 101 226 0 226 107 0 107 108 0 108 101 0
		 102 101 0 6 102 0 7 103 0 8 104 0 9 105 0 109 106 0 106 105 0 110 227 0 227 106 0
		 109 110 0 107 229 0 229 111 0 111 112 0 112 107 0 112 10 0 113 110 0 15 113 0 114 230 0
		 230 110 0 113 114 0 111 115 0 115 116 0 116 112 0 117 113 0 117 118 0 118 114 0 115 233 0
		 233 119 0 119 120 0 120 115 0 120 22 0 121 118 0 29 121 0 122 234 0 234 118 0 121 122 0
		 119 237 0 237 123 0 123 120 0 123 124 0 125 126 0 126 121 0 126 238 0 238 122 0 123 127 0
		 127 128 0 128 124 0 128 36 0 41 129 0 129 125 0 129 130 0 130 126 0 127 131 0 131 132 0
		 132 128 0 132 42 0 47 133 0 133 129 0 133 134 0 134 130 0 131 135 0 135 136 0 136 132 0
		 136 137 0 138 139 0 139 133 0 139 140 0 140 134 0 135 246 0 246 141 0 141 136 0 141 142 0
		 142 137 0 142 143 0 144 145 0 145 138 0 145 146 0 146 139 0 146 247 0 247 140 0 141 147 0
		 147 148 0 148 142 0 148 149 0 149 143 0 149 54 0 55 150 0 150 144 0 150 151 0 151 145 0
		 151 152 0 152 146 0 147 153 0 153 154 0 154 148 0 154 155 0 155 149 0 155 156 0 156 54 0
		 156 157 0 157 55 0 157 158 0 158 150 0 158 159 0 159 151 0 159 160 0 160 152 0 153 161 0
		 161 162 0 162 154 0 162 163 0 163 155 0 163 164 0 164 156 0 164 165 0 165 157 0 165 166 0
		 166 158 0 166 167 0;
	setAttr ".ed[332:497]" 167 159 0 167 168 0 168 160 0 161 169 0 169 170 0 170 162 0
		 170 171 0 171 163 0 56 164 0 57 165 0 172 166 0 57 172 0 172 173 0 173 167 0 173 174 0
		 174 168 0 169 175 0 175 176 0 176 170 0 176 58 0 177 172 0 177 178 0 178 173 0 178 179 0
		 179 174 0 175 180 0 180 181 0 181 176 0 182 178 0 182 183 0 183 179 0 180 260 0 260 184 0
		 184 185 0 185 180 0 185 65 0 186 183 0 70 186 0 187 261 0 261 183 0 186 187 0 184 188 0
		 188 189 0 189 185 0 190 186 0 190 191 0 191 187 0 188 192 0 192 77 0 193 191 0 82 193 0
		 192 194 0 194 83 0 88 195 0 195 193 0 194 196 0 196 197 0 198 199 0 199 195 0 196 200 0
		 200 201 0 201 197 0 201 93 0 98 202 0 202 198 0 202 203 0 203 199 0 201 276 0 276 204 0
		 204 93 0 204 205 0 205 94 0 205 206 0 206 95 0 206 207 0 207 96 0 207 208 0 208 97 0
		 208 209 0 209 98 0 209 277 0 277 202 0 204 210 0 210 211 0 211 205 0 211 212 0 212 206 0
		 212 213 0 213 207 0 213 214 0 214 208 0 214 215 0 215 209 0 99 216 0 216 291 0 291 221 0
		 100 217 0 217 216 0 222 218 0 218 217 0 223 293 0 293 218 0 222 223 0 219 295 0 295 225 0
		 225 226 0 226 219 0 220 219 0 101 220 0 221 220 0 106 223 0 227 224 0 224 223 0 228 296 0
		 296 224 0 227 228 0 225 229 0 230 228 0 229 299 0 299 231 0 231 111 0 114 232 0 232 300 0
		 300 230 0 231 233 0 234 232 0 233 235 0 235 237 0 238 236 0 236 234 0 237 239 0 239 127 0
		 130 240 0 240 238 0 239 241 0 241 131 0 134 242 0 242 240 0 241 243 0 243 135 0 140 244 0
		 244 242 0 243 245 0 245 246 0 247 248 0 248 244 0 245 317 0 317 249 0 249 246 0 249 147 0
		 152 250 0 250 247 0 250 318 0 318 248 0 249 251 0 251 153 0 160 252 0 252 250 0 251 253 0
		 253 161 0 168 254 0 254 252 0 253 255 0 255 169 0 174 256 0 256 254 0;
	setAttr ".ed[498:663]" 255 257 0 257 175 0 179 258 0 258 256 0 257 325 0 325 259 0
		 259 260 0 260 257 0 261 258 0 262 326 0 326 258 0 261 262 0 259 263 0 263 184 0 264 262 0
		 187 264 0 263 265 0 265 188 0 191 266 0 266 264 0 265 267 0 267 192 0 193 268 0 268 266 0
		 267 269 0 269 194 0 195 270 0 270 268 0 269 271 0 271 196 0 199 272 0 272 270 0 271 273 0
		 273 200 0 203 274 0 274 272 0 273 341 0 341 275 0 275 200 0 275 276 0 277 278 0 278 203 0
		 278 342 0 342 274 0 275 343 0 343 279 0 279 276 0 279 210 0 215 284 0 284 277 0 284 346 0
		 346 278 0 279 280 0 280 210 0 280 281 0 281 211 0 281 285 0 285 212 0 285 286 0 286 213 0
		 282 214 0 286 282 0 282 283 0 283 215 0 283 284 0 216 287 0 287 354 0 354 291 0 217 288 0
		 288 287 0 218 292 0 292 288 0 293 292 0 219 289 0 289 295 0 220 290 0 290 289 0 291 290 0
		 224 294 0 294 293 0 296 294 0 295 297 0 297 225 0 228 298 0 298 296 0 297 299 0 300 298 0
		 299 301 0 301 231 0 232 302 0 302 300 0 301 303 0 303 233 0 234 304 0 304 302 0 303 305 0
		 305 235 0 236 306 0 306 304 0 305 307 0 307 237 0 238 308 0 308 306 0 307 309 0 309 239 0
		 240 310 0 310 308 0 309 311 0 311 241 0 242 312 0 312 310 0 311 313 0 313 243 0 244 314 0
		 314 312 0 315 245 0 313 315 0 248 316 0 316 314 0 315 317 0 318 316 0 317 319 0 319 251 0
		 252 320 0 320 318 0 319 321 0 321 253 0 254 322 0 322 320 0 321 323 0 323 255 0 256 324 0
		 324 322 0 323 325 0 326 324 0 325 327 0 327 259 0 262 328 0 328 326 0 327 329 0 329 263 0
		 264 330 0 330 328 0 329 331 0 331 265 0 266 332 0 332 330 0 331 333 0 333 267 0 268 334 0
		 334 332 0 333 335 0 335 269 0 270 336 0 336 334 0 335 337 0 337 271 0 272 338 0 338 336 0
		 339 273 0 337 339 0 274 340 0 340 338 0 339 341 0 342 340 0 341 343 0;
	setAttr ".ed[664:829]" 346 342 0 343 344 0 344 279 0 344 347 0 347 280 0 347 348 0
		 348 281 0 348 349 0 349 285 0 286 350 0 350 351 0 351 282 0 351 352 0 352 283 0 345 284 0
		 352 345 0 345 346 0 349 350 0 287 355 0 355 354 0 356 355 0 288 356 0 292 357 0 357 356 0
		 359 289 0 290 353 0 353 359 0 354 353 0 293 358 0 358 357 0 294 360 0 360 358 0 361 295 0
		 359 361 0 296 362 0 362 360 0 361 363 0 363 297 0 298 364 0 364 362 0 363 365 0 365 299 0
		 300 366 0 366 364 0 367 301 0 365 367 0 302 368 0 368 366 0 367 369 0 369 303 0 304 370 0
		 370 368 0 369 371 0 371 305 0 306 372 0 372 370 0 373 307 0 371 373 0 308 374 0 374 372 0
		 373 375 0 375 309 0 310 376 0 376 374 0 375 377 0 377 311 0 312 378 0 378 376 0 377 379 0
		 379 313 0 314 380 0 380 378 0 381 315 0 379 381 0 316 382 0 382 380 0 381 383 0 383 317 0
		 318 384 0 384 382 0 385 319 0 383 385 0 320 386 0 386 384 0 385 387 0 387 321 0 322 388 0
		 388 386 0 387 389 0 389 323 0 324 390 0 390 388 0 389 391 0 391 325 0 326 392 0 392 390 0
		 391 393 0 393 327 0 328 394 0 394 392 0 393 395 0 395 329 0 330 396 0 396 394 0 395 397 0
		 397 331 0 332 398 0 398 396 0 397 399 0 399 333 0 334 400 0 400 398 0 399 401 0 401 335 0
		 336 402 0 402 400 0 401 403 0 403 337 0 338 404 0 404 402 0 405 339 0 403 405 0 340 406 0
		 406 404 0 407 341 0 405 407 0 342 408 0 408 406 0 407 409 0 409 343 0 346 410 0 410 408 0
		 409 411 0 411 344 0 411 412 0 412 347 0 352 415 0 415 416 0 416 345 0 416 410 0 412 413 0
		 413 348 0 413 417 0 417 349 0 417 418 0 418 350 0 414 351 0 418 414 0 414 415 0 420 419 0
		 419 353 0 354 420 0 421 420 0 355 421 0 422 421 0 356 422 0 423 422 0 357 423 0 424 423 0
		 358 424 0 425 359 0 419 425 0 360 426 0 426 424 0 427 363 0 361 428 0;
	setAttr ".ed[830:995]" 428 427 0 425 428 0 362 429 0 429 426 0 364 430 0 430 429 0
		 427 431 0 431 363 0 364 432 0 432 430 0 431 433 0 433 365 0 366 434 0 434 432 0 433 435 0
		 435 367 0 368 436 0 436 434 0 435 437 0 437 369 0 370 438 0 438 436 0 437 439 0 439 371 0
		 372 440 0 440 438 0 441 373 0 439 441 0 374 442 0 442 440 0 441 443 0 443 375 0 376 444 0
		 444 442 0 443 445 0 445 377 0 378 446 0 446 444 0 447 379 0 445 447 0 380 448 0 448 446 0
		 447 449 0 449 381 0 382 450 0 450 448 0 449 451 0 451 383 0 384 452 0 452 450 0 453 385 0
		 451 453 0 386 454 0 454 452 0 453 455 0 455 387 0 388 456 0 456 454 0 455 457 0 457 389 0
		 390 458 0 458 456 0 457 459 0 459 391 0 392 460 0 460 458 0 459 461 0 461 393 0 394 462 0
		 462 460 0 461 463 0 463 395 0 396 464 0 464 462 0 463 465 0 465 397 0 398 466 0 466 464 0
		 465 467 0 467 399 0 400 468 0 468 466 0 467 469 0 469 401 0 402 470 0 470 468 0 469 471 0
		 471 403 0 404 472 0 472 470 0 473 405 0 471 473 0 406 474 0 474 472 0 475 407 0 473 475 0
		 408 476 0 476 474 0 475 477 0 477 409 0 410 478 0 478 476 0 477 479 0 479 411 0 416 483 0
		 483 478 0 479 480 0 480 411 0 480 481 0 481 412 0 481 484 0 484 413 0 484 485 0 485 417 0
		 418 486 0 486 487 0 487 414 0 487 488 0 488 415 0 482 416 0 488 482 0 482 483 0 485 486 0
		 490 489 0 489 419 0 420 490 0 491 490 0 421 491 0 492 491 0 422 492 0 493 492 0 423 493 0
		 494 493 0 424 494 0 495 428 0 425 496 0 496 495 0 489 496 0 426 497 0 497 494 0 429 498 0
		 498 497 0 499 427 0 495 499 0 430 500 0 500 498 0 499 501 0 501 431 0 432 502 0 502 500 0
		 501 503 0 503 433 0 434 504 0 504 502 0 503 505 0 505 435 0 436 506 0 506 504 0 505 507 0
		 507 437 0 438 508 0 508 506 0 507 509 0 509 439 0 440 510 0 510 508 0;
	setAttr ".ed[996:1161]" 509 511 0 511 441 0 442 512 0 512 510 0 511 513 0 513 443 0
		 444 514 0 514 512 0 513 515 0 515 445 0 446 516 0 516 514 0 517 447 0 515 517 0 448 518 0
		 518 516 0 517 519 0 519 449 0 450 520 0 520 518 0 521 451 0 519 521 0 452 522 0 522 520 0
		 521 523 0 523 453 0 454 524 0 524 522 0 523 525 0 525 455 0 456 526 0 526 524 0 525 527 0
		 527 457 0 458 528 0 528 526 0 527 529 0 529 459 0 460 530 0 530 528 0 529 531 0 531 461 0
		 462 532 0 532 530 0 531 533 0 533 463 0 464 534 0 534 532 0 533 535 0 535 465 0 466 536 0
		 536 534 0 535 537 0 537 467 0 468 538 0 538 536 0 537 539 0 539 469 0 470 540 0 540 538 0
		 539 541 0 541 471 0 472 542 0 542 540 0 543 473 0 541 543 0 474 544 0 544 542 0 545 475 0
		 543 545 0 476 546 0 546 544 0 545 547 0 547 477 0 478 548 0 548 546 0 547 549 0 549 479 0
		 483 552 0 552 548 0 549 550 0 550 480 0 550 553 0 553 481 0 553 554 0 554 484 0 488 558 0
		 558 551 0 551 482 0 551 552 0 554 555 0 555 485 0 555 556 0 556 486 0 556 557 0 557 487 0
		 557 558 0 561 496 0 489 562 0 562 561 0 563 562 0 490 563 0 491 559 0 559 563 0 492 560 0
		 560 559 0 493 564 0 564 560 0 565 564 0 494 565 0 497 566 0 566 565 0 567 495 0 561 567 0
		 498 568 0 568 566 0 569 499 0 567 569 0 500 570 0 570 568 0 571 501 0 569 571 0 502 572 0
		 572 570 0 571 573 0 573 503 0 504 574 0 574 572 0 575 505 0 573 575 0 506 576 0 576 574 0
		 575 577 0 577 507 0 508 578 0 578 576 0 577 579 0 579 509 0 510 580 0 580 578 0 579 581 0
		 581 511 0 512 582 0 582 580 0 581 583 0 583 513 0 514 584 0 584 582 0 583 585 0 585 515 0
		 516 586 0 586 584 0 585 587 0 587 517 0 518 588 0 588 586 0 587 589 0 589 519 0 520 590 0
		 590 588 0 589 591 0 591 521 0 522 592 0 592 590 0 591 593 0 593 523 0;
	setAttr ".ed[1162:1327]" 524 594 0 594 592 0 593 595 0 595 525 0 526 596 0 596 594 0
		 595 597 0 597 527 0 528 598 0 598 596 0 597 599 0 599 529 0 530 600 0 600 598 0 599 601 0
		 601 531 0 532 602 0 602 600 0 601 603 0 603 533 0 534 604 0 604 602 0 603 605 0 605 535 0
		 536 606 0 606 604 0 605 607 0 607 537 0 538 608 0 608 606 0 607 609 0 609 539 0 540 610 0
		 610 608 0 609 611 0 611 541 0 542 612 0 612 610 0 611 613 0 613 543 0 544 614 0 614 612 0
		 613 615 0 615 545 0 546 616 0 616 614 0 615 617 0 617 547 0 548 618 0 618 616 0 617 619 0
		 619 549 0 552 622 0 622 618 0 619 620 0 620 550 0 620 623 0 623 553 0 558 628 0 628 621 0
		 621 551 0 621 622 0 623 624 0 624 554 0 624 625 0 625 555 0 625 626 0 626 556 0 626 627 0
		 627 557 0 627 628 0 630 629 0 629 559 0 560 630 0 632 631 0 631 561 0 562 632 0 633 632 0
		 563 633 0 629 633 0 564 634 0 634 630 0 635 634 0 565 635 0 636 635 0 566 636 0 631 637 0
		 637 567 0 638 636 0 568 638 0 640 639 0 639 569 0 567 640 0 637 707 0 707 640 0 641 710 0
		 710 638 0 568 641 0 570 642 0 642 641 0 643 571 0 639 643 0 572 644 0 644 642 0 643 645 0
		 645 573 0 574 646 0 646 644 0 647 575 0 645 647 0 576 648 0 648 646 0 647 649 0 649 577 0
		 578 650 0 650 648 0 649 651 0 651 579 0 580 652 0 652 650 0 651 653 0 653 581 0 582 654 0
		 654 652 0 653 655 0 655 583 0 584 656 0 656 654 0 655 657 0 657 585 0 586 658 0 658 656 0
		 657 659 0 659 587 0 588 660 0 660 658 0 659 661 0 661 589 0 590 662 0 662 660 0 661 663 0
		 663 591 0 592 664 0 664 662 0 663 665 0 665 593 0 594 666 0 666 664 0 665 667 0 667 595 0
		 596 668 0 668 666 0 667 669 0 669 597 0 598 670 0 670 668 0 669 671 0 671 599 0 600 672 0
		 672 670 0 673 601 0 671 673 0 602 674 0 674 672 0 673 675 0 675 603 0;
	setAttr ".ed[1328:1493]" 604 676 0 676 674 0 675 677 0 677 605 0 606 678 0 678 676 0
		 677 679 0 679 607 0 608 680 0 680 678 0 679 681 0 681 609 0 610 682 0 682 680 0 681 683 0
		 683 611 0 612 684 0 684 682 0 683 685 0 685 613 0 614 686 0 686 684 0 685 687 0 687 615 0
		 616 688 0 688 686 0 687 689 0 689 617 0 618 690 0 690 688 0 689 691 0 691 619 0 622 694 0
		 694 690 0 691 692 0 692 620 0 692 695 0 695 623 0 628 700 0 700 693 0 693 621 0 693 694 0
		 695 696 0 696 624 0 696 697 0 697 625 0 697 698 0 698 626 0 698 699 0 699 627 0 699 700 0
		 701 708 0 708 631 0 632 701 0 702 701 0 633 702 0 703 702 0 629 703 0 704 703 0 630 704 0
		 634 705 0 705 704 0 706 705 0 635 706 0 636 709 0 709 706 0 708 707 0 710 709 0 711 639 0
		 707 711 0 642 712 0 712 710 0 713 643 0 711 713 0 644 714 0 714 712 0 713 715 0 715 645 0
		 646 716 0 716 714 0 715 717 0 717 647 0 718 716 0 648 718 0 717 719 0 719 649 0 720 718 0
		 650 720 0 719 721 0 721 651 0 652 722 0 722 720 0 721 723 0 723 653 0 654 724 0 724 722 0
		 723 725 0 725 655 0 656 726 0 726 724 0 725 727 0 727 657 0 658 728 0 728 726 0 727 729 0
		 729 659 0 730 728 0 660 730 0 729 731 0 731 661 0 732 730 0 662 732 0 731 733 0 733 663 0
		 664 734 0 734 732 0 733 735 0 735 665 0 666 736 0 736 734 0 735 737 0 737 667 0 668 738 0
		 738 736 0 737 739 0 739 669 0 670 740 0 740 738 0 739 741 0 741 671 0 672 742 0 742 740 0
		 741 743 0 743 673 0 744 742 0 674 744 0 743 745 0 745 675 0 746 744 0 676 746 0 745 747 0
		 747 677 0 678 748 0 748 746 0 747 749 0 749 679 0 680 750 0 750 748 0 749 751 0 751 681 0
		 682 752 0 752 750 0 751 753 0 753 683 0 684 754 0 754 752 0 753 755 0 755 685 0 686 756 0
		 756 754 0 755 757 0 757 687 0 688 758 0 758 756 0 757 759 0 759 689 0;
	setAttr ".ed[1494:1659]" 690 760 0 760 758 0 759 761 0 761 691 0 694 764 0 764 760 0
		 761 762 0 762 692 0 762 765 0 765 695 0 700 770 0 770 763 0 763 693 0 763 764 0 765 766 0
		 766 696 0 766 767 0 767 697 0 767 768 0 768 698 0 768 769 0 769 699 0 769 770 0 772 771 0
		 771 701 0 702 772 0 773 772 0 703 773 0 774 773 0 704 774 0 775 774 0 705 775 0 776 775 0
		 706 776 0 777 780 0 780 707 0 708 777 0 771 777 0 709 778 0 778 776 0 710 781 0 781 778 0
		 780 779 0 779 711 0 712 782 0 782 781 0 779 783 0 783 713 0 784 782 0 714 784 0 783 785 0
		 785 715 0 786 784 0 716 786 0 785 787 0 787 717 0 718 788 0 788 786 0 789 719 0 787 789 0
		 720 790 0 790 788 0 789 791 0 791 721 0 722 792 0 792 790 0 791 793 0 793 723 0 724 794 0
		 794 792 0 793 795 0 795 725 0 726 796 0 796 794 0 795 797 0 797 727 0 728 798 0 798 796 0
		 797 799 0 799 729 0 730 800 0 800 798 0 799 801 0 801 731 0 732 802 0 802 800 0 801 803 0
		 803 733 0 734 804 0 804 802 0 803 805 0 805 735 0 736 806 0 806 804 0 805 807 0 807 737 0
		 738 808 0 808 806 0 807 809 0 809 739 0 740 810 0 810 808 0 809 811 0 811 741 0 742 812 0
		 812 810 0 811 813 0 813 743 0 744 814 0 814 812 0 813 815 0 815 745 0 816 814 0 746 816 0
		 815 817 0 817 747 0 818 816 0 748 818 0 817 819 0 819 749 0 750 820 0 820 818 0 819 821 0
		 821 751 0 752 822 0 822 820 0 821 823 0 823 753 0 754 824 0 824 822 0 823 825 0 825 755 0
		 826 824 0 756 826 0 825 827 0 827 757 0 758 828 0 828 826 0 827 829 0 829 759 0 760 832 0
		 832 828 0 829 830 0 830 761 0 830 833 0 833 762 0 836 831 0 831 764 0 763 836 0 831 832 0
		 833 834 0 834 765 0 834 837 0 837 766 0 840 835 0 835 770 0 769 840 0 835 836 0 837 838 0
		 838 767 0 838 839 0 839 768 0 839 840 0 842 841 0 841 771 0 772 842 0;
	setAttr ".ed[1660:1825]" 843 842 0 773 843 0 844 843 0 774 844 0 845 844 0 775 845 0
		 846 845 0 776 846 0 847 777 0 841 847 0 778 848 0 848 846 0 849 851 0 851 779 0 780 849 0
		 847 849 0 781 850 0 850 848 0 782 852 0 852 850 0 851 783 0 784 852 0 851 853 0 853 785 0
		 854 852 0 786 854 0 853 855 0 855 787 0 856 854 0 788 856 0 855 857 0 857 789 0 858 856 0
		 790 858 0 857 859 0 859 791 0 860 858 0 792 860 0 859 861 0 861 793 0 862 860 0 794 862 0
		 861 863 0 863 795 0 864 862 0 796 864 0 863 865 0 865 797 0 866 864 0 798 866 0 865 867 0
		 867 799 0 800 868 0 868 866 0 867 869 0 869 801 0 802 870 0 870 868 0 869 871 0 871 803 0
		 804 872 0 872 870 0 871 873 0 873 805 0 874 872 0 806 874 0 873 875 0 875 807 0 876 874 0
		 808 876 0 875 877 0 877 809 0 878 876 0 810 878 0 877 879 0 879 811 0 880 878 0 812 880 0
		 879 881 0 881 813 0 882 880 0 814 882 0 881 883 0 883 815 0 816 884 0 884 882 0 883 885 0
		 885 817 0 886 884 0 818 886 0 885 887 0 887 819 0 888 886 0 820 888 0 887 889 0 889 821 0
		 890 888 0 822 890 0 889 891 0 891 823 0 892 890 0 824 892 0 891 893 0 893 825 0 826 894 0
		 894 892 0 893 895 0 895 827 0 896 894 0 828 896 0 895 897 0 897 829 0 832 900 0 900 896 0
		 897 898 0 898 830 0 898 901 0 901 833 0 836 906 0 906 899 0 899 831 0 899 900 0 901 902 0
		 902 834 0 902 903 0 903 837 0 903 907 0 907 838 0 908 904 0 904 840 0 839 908 0 904 905 0
		 905 835 0 905 906 0 907 908 0 909 913 0 913 842 0 843 909 0 910 909 0 844 910 0 845 914 0
		 914 910 0 912 911 0 911 847 0 841 912 0 913 912 0 915 914 0 846 915 0 848 916 0 916 915 0
		 917 849 0 911 917 0 850 920 0 920 916 0 917 921 0 921 851 0 922 920 0 852 922 0 921 923 0
		 923 853 0 924 922 0 854 924 0 925 855 0 923 925 0 856 926 0 926 924 0;
	setAttr ".ed[1826:1991]" 925 927 0 927 857 0 858 928 0 928 926 0 927 929 0 929 859 0
		 930 928 0 860 930 0 929 931 0 931 861 0 862 932 0 932 930 0 931 933 0 933 863 0 864 934 0
		 934 932 0 933 935 0 935 865 0 866 936 0 936 934 0 935 937 0 937 867 0 868 938 0 938 936 0
		 937 939 0 939 869 0 940 938 0 870 940 0 939 941 0 941 871 0 942 940 0 872 942 0 941 943 0
		 943 873 0 874 944 0 944 942 0 943 945 0 945 875 0 876 946 0 946 944 0 945 947 0 947 877 0
		 878 948 0 948 946 0 947 949 0 949 879 0 880 950 0 950 948 0 949 951 0 951 881 0 952 950 0
		 882 952 0 951 953 0 953 883 0 954 952 0 884 954 0 953 955 0 955 885 0 956 954 0 886 956 0
		 955 957 0 957 887 0 888 958 0 958 956 0 957 959 0 959 889 0 890 960 0 960 958 0 959 961 0
		 961 891 0 892 962 0 962 960 0 961 963 0 963 893 0 964 962 0 894 964 0 963 965 0 965 895 0
		 896 966 0 966 964 0 965 967 0 967 897 0 970 966 0 900 970 0 967 898 0 967 968 0 968 901 0
		 968 971 0 971 902 0 976 969 0 969 906 0 905 976 0 969 970 0 970 899 0 971 972 0 972 903 0
		 972 973 0 973 907 0 973 974 0 974 908 0 974 975 0 975 904 0 975 976 0 909 977 0 977 981 0
		 981 913 0 978 977 0 910 978 0 914 979 0 979 978 0 915 983 0 983 979 0 911 918 0 918 917 0
		 912 980 0 980 918 0 981 980 0 916 919 0 919 983 0 920 919 0 917 984 0 984 921 0 985 984 0
		 918 985 0 980 985 0 986 983 0 919 986 0 987 986 0 920 987 0 922 987 0 984 988 0 988 923 0
		 989 987 0 924 989 0 988 990 0 990 925 0 991 989 0 926 991 0 990 992 0 992 927 0 993 991 0
		 928 993 0 992 994 0 994 929 0 997 993 0 930 997 0 994 998 0 998 931 0 999 997 0 932 999 0
		 998 1000 0 1000 933 0 1001 999 0 934 1001 0 1000 1002 0 1002 935 0 1003 1001 0 936 1003 0
		 1002 1004 0 1004 937 0 1005 1003 0 938 1005 0 1004 1006 0 1006 939 0 940 1009 0 1009 1005 0;
	setAttr ".ed[1992:2157]" 1006 1010 0 1010 941 0 1011 1009 0 942 1011 0 1010 1012 0
		 1012 943 0 1013 1011 0 944 1013 0 1012 1014 0 1014 945 0 1015 1013 0 946 1015 0 1014 1016 0
		 1016 947 0 1017 1015 0 948 1017 0 1016 1018 0 1018 949 0 1019 1017 0 950 1019 0 1018 1020 0
		 1020 951 0 1023 1019 0 952 1023 0 1020 1024 0 1024 953 0 954 1025 0 1025 1023 0 1024 1026 0
		 1026 955 0 1027 1025 0 956 1027 0 1026 1028 0 1028 957 0 1029 1027 0 958 1029 0 1028 1030 0
		 1030 959 0 1031 1029 0 960 1031 0 1030 1032 0 1032 961 0 1033 1031 0 962 1033 0 1032 1034 0
		 1034 963 0 964 1035 0 1035 1033 0 1034 1036 0 1036 965 0 1037 1035 0 966 1037 0 1036 1038 0
		 1038 967 0 1043 1037 0 970 1043 0 1038 968 0 1038 1039 0 1039 971 0 1039 1040 0 1040 972 0
		 1040 1044 0 1044 973 0 1045 1041 0 1041 975 0 974 1045 0 1041 1042 0 1042 976 0 1042 1043 0
		 1043 969 0 1044 1045 0 977 1046 0 1046 1050 0 1050 981 0 1047 1046 0 978 1047 0 979 982 0
		 982 1047 0 983 982 0 1048 984 0 985 1048 0 1049 1048 0 980 1049 0 1050 1049 0 1053 1052 0
		 1052 1047 0 982 1053 0 1054 1053 0 983 1054 0 986 1055 0 1055 1054 0 987 1055 0 1048 1056 0
		 1056 988 0 1059 1055 0 989 1059 0 1056 1060 0 1060 990 0 1063 1059 0 991 1063 0 1060 1064 0
		 1064 992 0 1067 1063 0 993 1067 0 992 995 0 995 994 0 1064 1068 0 1068 995 0 1069 1067 0
		 993 996 0 996 1069 0 997 996 0 1070 998 0 995 1070 0 1068 1071 0 1071 1070 0 1075 1074 0
		 1074 1069 0 996 1075 0 999 1075 0 1070 1076 0 1076 1000 0 1079 1075 0 1001 1079 0
		 1076 1080 0 1080 1002 0 1083 1079 0 1003 1083 0 1080 1084 0 1084 1004 0 1089 1083 0
		 1005 1089 0 1007 1006 0 1084 1007 0 1084 1085 0 1085 1090 0 1090 1007 0 1095 1088 0
		 1088 1089 0 1089 1008 0 1008 1095 0 1009 1008 0 1007 1010 0 1090 1096 0 1096 1010 0
		 1101 1095 0 1008 1011 0 1011 1101 0 1096 1102 0 1102 1012 0 1109 1101 0 1013 1109 0
		 1102 1110 0 1110 1014 0 1117 1109 0 1015 1117 0 1110 1118 0 1118 1016 0 1123 1117 0
		 1017 1123 0 1118 1124 0 1124 1018 0 1128 1123 0 1019 1128 0 1018 1021 0 1021 1020 0;
	setAttr ".ed[2158:2323]" 1124 1129 0 1129 1021 0 1132 1128 0 1019 1022 0 1022 1132 0
		 1023 1022 0 1021 1133 0 1133 1024 0 1129 1134 0 1134 1133 0 1136 1135 0 1135 1132 0
		 1022 1136 0 1025 1136 0 1133 1137 0 1137 1026 0 1140 1136 0 1027 1140 0 1137 1141 0
		 1141 1028 0 1142 1140 0 1029 1142 0 1141 1143 0 1143 1030 0 1144 1142 0 1031 1144 0
		 1143 1145 0 1145 1032 0 1148 1144 0 1033 1148 0 1145 1149 0 1149 1034 0 1152 1148 0
		 1035 1152 0 1149 1153 0 1153 1036 0 1158 1152 0 1037 1158 0 1153 1038 0 1153 1154 0
		 1154 1039 0 1154 1159 0 1159 1040 0 1162 1157 0 1157 1042 0 1041 1162 0 1157 1158 0
		 1158 1043 0 1159 1160 0 1160 1044 0 1160 1161 0 1161 1045 0 1161 1162 0 1046 1051 0
		 1051 1050 0 1052 1051 0 1049 1057 0 1057 1056 0 1050 1163 0 1163 1057 0 1164 1163 0
		 1051 1164 0 1165 1164 0 1052 1165 0 1166 1165 0 1053 1166 0 1054 1058 0 1058 1166 0
		 1059 1058 0 1056 1061 0 1061 1060 0 1057 1167 0 1167 1061 0 1163 1168 0 1168 1167 0
		 1172 1171 0 1171 1166 0 1058 1172 0 1059 1062 0 1062 1172 0 1063 1062 0 1061 1065 0
		 1065 1064 0 1167 1173 0 1173 1065 0 1178 1172 0 1062 1066 0 1066 1178 0 1067 1066 0
		 1065 1179 0 1179 1068 0 1173 1180 0 1180 1179 0 1186 1185 0 1185 1178 0 1066 1186 0
		 1069 1186 0 1072 1071 0 1179 1072 0 1180 1187 0 1187 1072 0 1192 1185 0 1186 1073 0
		 1073 1192 0 1074 1073 0 1071 1076 0 1072 1077 0 1077 1076 0 1187 1193 0 1193 1077 0
		 1198 1192 0 1073 1078 0 1078 1198 0 1074 1079 0 1079 1078 0 1077 1081 0 1081 1080 0
		 1193 1199 0 1199 1081 0 1204 1198 0 1078 1082 0 1082 1204 0 1083 1082 0 1081 1085 0
		 1086 1085 0 1199 1086 0 1199 1200 0 1200 1205 0 1205 1086 0 1208 1203 0 1203 1204 0
		 1204 1087 0 1087 1208 0 1082 1088 0 1088 1087 0 1086 1091 0 1091 1090 0 1092 1091 0
		 1205 1092 0 1205 1206 0 1206 1209 0 1209 1092 0 1210 1207 0 1207 1208 0 1208 1093 0
		 1093 1210 0 1087 1094 0 1094 1093 0 1095 1094 0 1091 1097 0 1097 1096 0 1092 1098 0
		 1098 1097 0 1209 1211 0 1211 1098 0 1212 1210 0 1093 1099 0 1099 1212 0 1094 1100 0
		 1100 1099 0 1101 1100 0 1097 1103 0 1103 1102 0 1098 1104 0 1104 1103 0 1105 1104 0;
	setAttr ".ed[2324:2489]" 1211 1105 0 1211 1212 0 1212 1106 0 1106 1105 0 1099 1107 0
		 1107 1106 0 1100 1108 0 1108 1107 0 1109 1108 0 1103 1111 0 1111 1110 0 1104 1112 0
		 1112 1111 0 1105 1113 0 1113 1112 0 1106 1114 0 1114 1113 0 1107 1115 0 1115 1114 0
		 1108 1116 0 1116 1115 0 1117 1116 0 1111 1119 0 1119 1118 0 1112 1120 0 1120 1119 0
		 1113 1213 0 1213 1120 0 1214 1213 0 1114 1214 0 1115 1121 0 1121 1214 0 1116 1122 0
		 1122 1121 0 1123 1122 0 1119 1125 0 1125 1124 0 1120 1215 0 1215 1125 0 1213 1216 0
		 1216 1215 0 1217 1214 0 1121 1126 0 1126 1217 0 1122 1127 0 1127 1126 0 1128 1127 0
		 1125 1130 0 1130 1129 0 1215 1218 0 1218 1130 0 1221 1220 0 1220 1217 0 1126 1221 0
		 1127 1131 0 1131 1221 0 1132 1131 0 1130 1222 0 1222 1134 0 1218 1223 0 1223 1222 0
		 1227 1226 0 1226 1221 0 1131 1227 0 1135 1227 0 1134 1138 0 1138 1137 0 1222 1228 0
		 1228 1138 0 1233 1227 0 1135 1139 0 1139 1233 0 1140 1139 0 1138 1234 0 1234 1141 0
		 1228 1235 0 1235 1234 0 1239 1238 0 1238 1233 0 1139 1239 0 1142 1239 0 1234 1240 0
		 1240 1143 0 1245 1239 0 1144 1245 0 1146 1145 0 1240 1146 0 1240 1241 0 1241 1246 0
		 1246 1146 0 1249 1244 0 1244 1245 0 1245 1147 0 1147 1249 0 1148 1147 0 1146 1150 0
		 1150 1149 0 1246 1250 0 1250 1150 0 1255 1249 0 1147 1151 0 1151 1255 0 1152 1151 0
		 1150 1153 0 1250 1154 0 1250 1251 0 1251 1155 0 1155 1154 0 1251 1252 0 1252 1256 0
		 1256 1155 0 1257 1253 0 1253 1254 0 1254 1156 0 1156 1257 0 1254 1255 0 1255 1157 0
		 1157 1156 0 1151 1158 0 1155 1159 0 1256 1160 0 1256 1257 0 1257 1161 0 1156 1162 0
		 1164 1169 0 1169 1168 0 1165 1170 0 1170 1169 0 1171 1170 0 1168 1174 0 1174 1173 0
		 1169 1175 0 1175 1174 0 1170 1176 0 1176 1175 0 1171 1177 0 1177 1176 0 1178 1177 0
		 1174 1181 0 1181 1180 0 1175 1182 0 1182 1181 0 1176 1183 0 1183 1182 0 1177 1184 0
		 1184 1183 0 1185 1184 0 1181 1188 0 1188 1187 0 1182 1189 0 1189 1188 0 1183 1190 0
		 1190 1189 0 1184 1191 0 1191 1190 0 1192 1191 0 1188 1194 0 1194 1193 0 1189 1195 0
		 1195 1194 0 1190 1196 0 1196 1195 0 1191 1197 0 1197 1196 0 1198 1197 0 1194 1200 0;
	setAttr ".ed[2490:2551]" 1195 1201 0 1201 1200 0 1196 1202 0 1202 1201 0 1197 1203 0
		 1203 1202 0 1201 1206 0 1202 1207 0 1207 1206 0 1210 1209 0 1217 1216 0 1216 1219 0
		 1219 1218 0 1220 1219 0 1219 1224 0 1224 1223 0 1220 1225 0 1225 1224 0 1226 1225 0
		 1223 1229 0 1229 1228 0 1224 1230 0 1230 1229 0 1225 1231 0 1231 1230 0 1226 1232 0
		 1232 1231 0 1233 1232 0 1229 1236 0 1236 1235 0 1230 1258 0 1258 1236 0 1259 1258 0
		 1231 1259 0 1232 1237 0 1237 1259 0 1238 1237 0 1235 1241 0 1236 1242 0 1242 1241 0
		 1258 1260 0 1260 1242 0 1261 1259 0 1237 1243 0 1243 1261 0 1238 1244 0 1244 1243 0
		 1242 1247 0 1247 1246 0 1260 1262 0 1262 1247 0 1263 1261 0 1243 1248 0 1248 1263 0
		 1249 1248 0 1247 1251 0 1262 1252 0 1262 1263 0 1263 1253 0 1253 1252 0 1248 1254 0
		 1261 1260 0;
	setAttr -s 5104 ".n";
	setAttr ".n[0:165]" -type "float3"  0.071831003 0.0093029998 0.99737298 -0.044551998
		 -0.0041339998 0.998999 -0.066823997 -0.041154001 0.996916 0.064607002 -0.022969 0.99764597
		 0.064607002 -0.022969 0.99764597 -0.066823997 -0.041154001 0.996916 -0.092459001
		 -0.135093 0.98650998 0.058329999 -0.124096 0.99055398 -0.17202801 0.54979002 0.817397
		 -0.29893401 0.536066 0.78947598 -0.31013501 0.45196399 0.83638799 -0.181385 0.45925701
		 0.869587 -0.042523 0.55294901 0.832129 -0.17202801 0.54979002 0.817397 -0.181385
		 0.45925701 0.869587 -0.045756001 0.45988101 0.886801 0.088757999 0.54672199 0.83259702
		 -0.042523 0.55294901 0.832129 -0.045756001 0.45988101 0.886801 0.095784999 0.448726
		 0.88852102 0.218565 0.531183 0.81858099 0.088757999 0.54672199 0.83259702 0.095784999
		 0.448726 0.88852102 0.231786 0.43518299 0.869995 0.353412 0.422492 0.83462602 0.34401101
		 0.51375401 0.78594702 0.218565 0.531183 0.81858099 0.231786 0.43518299 0.869995 -0.181385
		 0.45925701 0.869587 -0.31013501 0.45196399 0.83638799 -0.31440699 0.369533 0.87440997
		 -0.18239599 0.36429 0.91325003 -0.045756001 0.45988101 0.886801 -0.181385 0.45925701
		 0.869587 -0.18239599 0.36429 0.91325003 -0.038066 0.35816899 0.93287998 0.095784999
		 0.448726 0.88852102 -0.045756001 0.45988101 0.886801 -0.038066 0.35816899 0.93287998
		 0.104125 0.352411 0.930035 0.231786 0.43518299 0.869995 0.095784999 0.448726 0.88852102
		 0.104125 0.352411 0.930035 0.233539 0.34796399 0.90795398 0.353412 0.422492 0.83462602
		 0.231786 0.43518299 0.869995 0.233539 0.34796399 0.90795398 0.354298 0.34344 0.86978298
		 -0.31440699 0.369533 0.87440997 -0.434205 0.36790901 0.82225901 -0.41935 0.306463
		 0.854532 -0.30679399 0.297584 0.90405798 -0.18239599 0.36429 0.91325003 -0.31440699
		 0.369533 0.87440997 -0.30679399 0.297584 0.90405798 -0.173085 0.28592601 0.94249099
		 -0.038066 0.35816899 0.93287998 -0.18239599 0.36429 0.91325003 -0.173085 0.28592601
		 0.94249099 -0.039220002 0.283308 0.95822698 0.104125 0.352411 0.930035 -0.038066
		 0.35816899 0.93287998 -0.039220002 0.283308 0.95822698 0.098513 0.29264301 0.95113403
		 0.233539 0.34796399 0.90795398 0.104125 0.352411 0.930035 0.098513 0.29264301 0.95113403
		 0.231805 0.29609099 0.92660499 0.354298 0.34344 0.86978298 0.233539 0.34796399 0.90795398
		 0.231805 0.29609099 0.92660499 0.35142201 0.295275 0.88843399 0.45578301 0.294366
		 0.84000599 0.463875 0.34056699 0.81782299 0.354298 0.34344 0.86978298 0.35142201
		 0.295275 0.88843399 -0.41935 0.306463 0.854532 -0.42737499 0.28283501 0.858693 -0.29807299
		 0.27169201 0.915061 -0.30679399 0.297584 0.90405798 -0.173085 0.28592601 0.94249099
		 -0.30679399 0.297584 0.90405798 -0.29807299 0.27169201 0.915061 -0.171121 0.25269899
		 0.95229203 -0.039220002 0.283308 0.95822698 -0.173085 0.28592601 0.94249099 -0.171121
		 0.25269899 0.95229203 -0.046948999 0.25048101 0.96698201 0.098513 0.29264301 0.95113403
		 -0.039220002 0.283308 0.95822698 -0.046948999 0.25048101 0.96698201 0.088593997 0.25970799
		 0.96161503 0.231805 0.29609099 0.92660499 0.098513 0.29264301 0.95113403 0.088593997
		 0.25970799 0.96161503 0.227403 0.27200899 0.93504 0.35142201 0.295275 0.88843399
		 0.231805 0.29609099 0.92660499 0.227403 0.27200899 0.93504 0.35264 0.27910101 0.89316702
		 0.35264 0.27910101 0.89316702 0.463844 0.28191 0.83986598 0.45578301 0.294366 0.84000599
		 0.35142201 0.295275 0.88843399 -0.171121 0.25269899 0.95229203 -0.29807299 0.27169201
		 0.915061 -0.28433901 0.27251199 0.91917801 -0.156371 0.246099 0.95654798 -0.046948999
		 0.25048101 0.96698201 -0.171121 0.25269899 0.95229203 -0.156371 0.246099 0.95654798
		 -0.046207 0.2362 0.97060502 0.088593997 0.25970799 0.96161503 -0.046948999 0.25048101
		 0.96698201 -0.046207 0.2362 0.97060502 0.079301998 0.238775 0.96783203 0.227403 0.27200899
		 0.93504 0.088593997 0.25970799 0.96161503 0.079301998 0.238775 0.96783203 0.216272
		 0.250765 0.94357997 0.35264 0.27910101 0.89316702 0.227403 0.27200899 0.93504 0.216272
		 0.250765 0.94357997 0.34691 0.26279601 0.90032899 -0.156371 0.246099 0.95654798 -0.28433901
		 0.27251199 0.91917801 -0.26499301 0.26149499 0.92811602 -0.142848 0.244581 0.95904899
		 -0.046207 0.2362 0.97060502 -0.156371 0.246099 0.95654798 -0.142848 0.244581 0.95904899
		 -0.040047001 0.233417 0.97155201 0.079301998 0.238775 0.96783203 -0.046207 0.2362
		 0.97060502 -0.040047001 0.233417 0.97155201 0.07846 0.227587 0.97059202 0.216272
		 0.250765 0.94357997 0.079301998 0.238775 0.96783203 0.07846 0.227587 0.97059202 0.211658
		 0.230262 0.94983202 0.34691 0.26279601 0.90032899 0.216272 0.250765 0.94357997 0.211658
		 0.230262 0.94983202 0.34343401 0.23652799 0.90890503 -0.26499301 0.26149499 0.92811602
		 -0.264146 0.25129801 0.93116897 -0.138319 0.242385 0.96026897 -0.142848 0.244581
		 0.95904899 -0.040047001 0.233417 0.97155201 -0.142848 0.244581 0.95904899 -0.138319
		 0.242385 0.96026897 -0.031614002 0.22830801 0.97307497 0.07846 0.227587 0.97059202
		 -0.040047001 0.233417 0.97155201 -0.031614002 0.22830801 0.97307497 0.085674003 0.21566901
		 0.97270101 0.211658 0.230262 0.94983202 0.07846 0.227587 0.97059202 0.085674003 0.21566901
		 0.97270101 0.215883 0.21019 0.95352799 0.215883 0.21019 0.95352799 0.34765801 0.210131
		 0.91377199 0.34343401 0.23652799 0.90890503 0.211658 0.230262 0.94983202 -0.138319
		 0.242385 0.96026897 -0.135428 0.21866 0.96635801;
	setAttr ".n[166:331]" -type "float3"  -0.020936999 0.204513 0.97864002 -0.031614002
		 0.22830801 0.97307497 0.085674003 0.21566901 0.97270101 -0.031614002 0.22830801 0.97307497
		 -0.020936999 0.204513 0.97864002 0.096390001 0.19368599 0.97631699 0.096390001 0.19368599
		 0.97631699 0.224333 0.186707 0.95646 0.215883 0.21019 0.95352799 0.085674003 0.21566901
		 0.97270101 0.096390001 0.19368599 0.97631699 -0.020936999 0.204513 0.97864002 -0.018105
		 0.16933601 0.98539197 0.101351 0.165933 0.98091501 -0.019681999 0.079966001 0.99660301
		 -0.14339601 0.085488997 0.98596603 -0.14211801 0.057585999 0.98817301 -0.016937001
		 0.053427 0.99842799 0.098082997 0.073572002 0.99245501 -0.019681999 0.079966001 0.99660301
		 -0.016937001 0.053427 0.99842799 0.097733997 0.051970001 0.993855 -0.016937001 0.053427
		 0.99842799 -0.14211801 0.057585999 0.98817301 -0.13740499 0.030170999 0.99005502
		 -0.016716 0.031449001 0.99936599 0.097733997 0.051970001 0.993855 -0.016937001 0.053427
		 0.99842799 -0.016716 0.031449001 0.99936599 0.092504002 0.038642 0.99496198 0.202548
		 0.047951002 0.97809798 0.213956 0.058749001 0.97507501 0.097733997 0.051970001 0.993855
		 0.092504002 0.038642 0.99496198 -0.13740499 0.030170999 0.99005502 -0.26903099 0.033229001
		 0.96255797 -0.263042 -0.0058929999 0.96476698 -0.137329 0.00358 0.99051899 -0.016716
		 0.031449001 0.99936599 -0.13740499 0.030170999 0.99005502 -0.137329 0.00358 0.99051899
		 -0.022679999 0.015172 0.99962801 0.092504002 0.038642 0.99496198 -0.016716 0.031449001
		 0.99936599 -0.022679999 0.015172 0.99962801 0.084186003 0.027926 0.996059 0.202548
		 0.047951002 0.97809798 0.092504002 0.038642 0.99496198 0.084186003 0.027926 0.996059
		 0.193433 0.036844 0.98042101 0.31556201 0.043216001 0.94792002 0.32696801 0.062162999
		 0.94298899 0.202548 0.047951002 0.97809798 0.193433 0.036844 0.98042101 -0.137329
		 0.00358 0.99051899 -0.263042 -0.0058929999 0.96476698 -0.26798499 -0.035813998 0.96275699
		 -0.148835 -0.011258 0.98879802 -0.022679999 0.015172 0.99962801 -0.137329 0.00358
		 0.99051899 -0.148835 -0.011258 0.98879802 -0.033829998 0.0064170002 0.99940699 0.084186003
		 0.027926 0.996059 -0.022679999 0.015172 0.99962801 -0.033829998 0.0064170002 0.99940699
		 0.075369999 0.018573999 0.99698299 0.193433 0.036844 0.98042101 0.084186003 0.027926
		 0.996059 0.075369999 0.018573999 0.99698299 0.18897501 0.022462999 0.98172498 0.31556201
		 0.043216001 0.94792002 0.193433 0.036844 0.98042101 0.18897501 0.022462999 0.98172498
		 0.313362 0.019242 0.94943899 -0.26798499 -0.035813998 0.96275699 -0.404062 -0.060646001
		 0.91271901 -0.43488401 -0.100405 0.894871 -0.294438 -0.064281002 0.95350599 -0.148835
		 -0.011258 0.98879802 -0.26798499 -0.035813998 0.96275699 -0.294438 -0.064281002 0.95350599
		 -0.166996 -0.031012001 0.98547 -0.033829998 0.0064170002 0.99940699 -0.148835 -0.011258
		 0.98879802 -0.166996 -0.031012001 0.98547 -0.044551998 -0.0041339998 0.998999 -0.044551998
		 -0.0041339998 0.998999 0.071831003 0.0093029998 0.99737298 0.075369999 0.018573999
		 0.99698299 -0.033829998 0.0064170002 0.99940699 0.19276799 0.010286 0.98119003 0.18897501
		 0.022462999 0.98172498 0.075369999 0.018573999 0.99698299 0.071831003 0.0093029998
		 0.99737298 0.313362 0.019242 0.94943899 0.18897501 0.022462999 0.98172498 0.19276799
		 0.010286 0.98119003 0.32080901 0.002784 0.94713998 0.44799399 -0.0039880001 0.89402801
		 0.44212601 0.014897 0.89682901 0.313362 0.019242 0.94943899 0.32080901 0.002784 0.94713998
		 -0.294438 -0.064281002 0.95350599 -0.43488401 -0.100405 0.894871 -0.456559 -0.151601
		 0.87668198 -0.32004899 -0.113293 0.940602 -0.166996 -0.031012001 0.98547 -0.294438
		 -0.064281002 0.95350599 -0.32004899 -0.113293 0.940602 -0.197694 -0.076420002 0.97728002
		 -0.066823997 -0.041154001 0.996916 -0.044551998 -0.0041339998 0.998999 -0.166996
		 -0.031012001 0.98547 -0.197694 -0.076420002 0.97728002 0.071831003 0.0093029998 0.99737298
		 0.064607002 -0.022969 0.99764597 0.196752 -0.023150999 0.98018003 0.19276799 0.010286
		 0.98119003 0.32080901 0.002784 0.94713998 0.19276799 0.010286 0.98119003 0.196752
		 -0.023150999 0.98018003 0.327786 -0.0274 0.94435501 0.44799399 -0.0039880001 0.89402801
		 0.32080901 0.002784 0.94713998 0.327786 -0.0274 0.94435501 0.452086 -0.027763 0.89154202
		 -0.456559 -0.151601 0.87668198 -0.48121601 -0.210557 0.85093898 -0.358623 -0.172958
		 0.91732001 -0.32004899 -0.113293 0.940602 -0.197694 -0.076420002 0.97728002 -0.32004899
		 -0.113293 0.940602 -0.358623 -0.172958 0.91732001 -0.23174299 -0.151053 0.96097797
		 -0.092459001 -0.135093 0.98650998 -0.066823997 -0.041154001 0.996916 -0.197694 -0.076420002
		 0.97728002 -0.23174299 -0.151053 0.96097797 0.064607002 -0.022969 0.99764597 0.058329999
		 -0.124096 0.99055398 0.202347 -0.116461 0.97236401 0.196752 -0.023150999 0.98018003
		 0.327786 -0.0274 0.94435501 0.196752 -0.023150999 0.98018003 0.202347 -0.116461 0.97236401
		 0.33244899 -0.108809 0.93682301 0.33244899 -0.108809 0.93682301 0.45524099 -0.105579
		 0.88408601 0.452086 -0.027763 0.89154202 0.327786 -0.0274 0.94435501 -0.23174299
		 -0.151053 0.96097797 -0.358623 -0.172958 0.91732001 -0.37674901 -0.270089 0.88606501
		 -0.237625 -0.26899299 0.93336898 -0.23174299 -0.151053 0.96097797 -0.237625 -0.26899299
		 0.93336898 -0.094903 -0.27488601 0.95678198 -0.092459001 -0.135093 0.98650998 0.058329999
		 -0.124096 0.99055398 -0.092459001 -0.135093 0.98650998 -0.094903 -0.27488601 0.95678198
		 0.050264999 -0.27867001 0.95907098 0.050264999 -0.27867001 0.95907098 0.191237 -0.26562899
		 0.94491798 0.202347 -0.116461 0.97236401 0.058329999 -0.124096 0.99055398;
	setAttr ".n[332:497]" -type "float3"  0.33244899 -0.108809 0.93682301 0.202347
		 -0.116461 0.97236401 0.191237 -0.26562899 0.94491798 0.328852 -0.25453201 0.90943402
		 -0.048780002 0.716429 0.69595301 -0.15836699 0.72690803 0.66822499 -0.16196699 0.63921303
		 0.75178099 -0.0429 0.63727599 0.76944101 0.075685002 0.70335799 0.70679498 -0.048780002
		 0.716429 0.69595301 -0.0429 0.63727599 0.76944101 0.082975 0.62740898 0.774257 0.21002799
		 0.61470199 0.76028299 0.20693199 0.688941 0.69464999 0.075685002 0.70335799 0.70679498
		 0.082975 0.62740898 0.774257 -0.27799401 0.62505198 0.72940302 -0.39881 0.599114
		 0.69427198 -0.42418799 0.51752102 0.74312598 -0.29893401 0.536066 0.78947598 -0.16196699
		 0.63921303 0.75178099 -0.27799401 0.62505198 0.72940302 -0.29893401 0.536066 0.78947598
		 -0.17202801 0.54979002 0.817397 -0.17202801 0.54979002 0.817397 -0.042523 0.55294901
		 0.832129 -0.0429 0.63727599 0.76944101 -0.16196699 0.63921303 0.75178099 -0.042523
		 0.55294901 0.832129 0.088757999 0.54672199 0.83259702 0.082975 0.62740898 0.774257
		 -0.0429 0.63727599 0.76944101 0.088757999 0.54672199 0.83259702 0.218565 0.531183
		 0.81858099 0.21002799 0.61470199 0.76028299 0.082975 0.62740898 0.774257 0.34401101
		 0.51375401 0.78594702 0.326285 0.604083 0.72706401 0.21002799 0.61470199 0.76028299
		 0.218565 0.531183 0.81858099 0.461128 0.492892 0.73784697 0.43578699 0.57711798 0.69067001
		 0.326285 0.604083 0.72706401 0.34401101 0.51375401 0.78594702 -0.42418799 0.51752102
		 0.74312598 -0.53988802 0.50811601 0.67107397 -0.53358001 0.43814901 0.72340697 -0.42954201
		 0.442458 0.78722602 -0.29893401 0.536066 0.78947598 -0.42418799 0.51752102 0.74312598
		 -0.42954201 0.442458 0.78722602 -0.31013501 0.45196399 0.83638799 0.46317601 0.41348699
		 0.783898 0.461128 0.492892 0.73784697 0.34401101 0.51375401 0.78594702 0.353412 0.422492
		 0.83462602 0.55837601 0.40952101 0.72146201 0.56481701 0.481664 0.67005998 0.461128
		 0.492892 0.73784697 0.46317601 0.41348699 0.783898 -0.42954201 0.442458 0.78722602
		 -0.53358001 0.43814901 0.72340697 -0.54184198 0.37756601 0.75089997 -0.434205 0.36790901
		 0.82225901 -0.31440699 0.369533 0.87440997 -0.31013501 0.45196399 0.83638799 -0.42954201
		 0.442458 0.78722602 -0.434205 0.36790901 0.82225901 0.353412 0.422492 0.83462602
		 0.354298 0.34344 0.86978298 0.463875 0.34056699 0.81782299 0.46317601 0.41348699
		 0.783898 0.55837601 0.40952101 0.72146201 0.46317601 0.41348699 0.783898 0.463875
		 0.34056699 0.81782299 0.56296098 0.34067601 0.75300401 -0.54184198 0.37756601 0.75089997
		 -0.63380498 0.391377 0.66716999 -0.611112 0.319267 0.72430003 -0.504816 0.310049
		 0.80562401 -0.434205 0.36790901 0.82225901 -0.54184198 0.37756601 0.75089997 -0.504816
		 0.310049 0.80562401 -0.41935 0.306463 0.854532 0.54214901 0.293466 0.78737003 0.56296098
		 0.34067601 0.75300401 0.463875 0.34056699 0.81782299 0.45578301 0.294366 0.84000599
		 0.61811298 0.288856 0.731094 0.65016598 0.34217501 0.67838001 0.56296098 0.34067601
		 0.75300401 0.54214901 0.293466 0.78737003 -0.611112 0.319267 0.72430003 -0.65729302
		 0.275408 0.70151001 -0.54167902 0.285265 0.79070097 -0.504816 0.310049 0.80562401
		 -0.504816 0.310049 0.80562401 -0.54167902 0.285265 0.79070097 -0.42737499 0.28283501
		 0.858693 -0.41935 0.306463 0.854532 0.463844 0.28191 0.83986598 0.56698102 0.28138599
		 0.77418 0.54214901 0.293466 0.78737003 0.45578301 0.294366 0.84000599 0.56698102
		 0.28138599 0.77418 0.66460401 0.270309 0.69658798 0.61811298 0.288856 0.731094 0.54214901
		 0.293466 0.78737003 -0.42737499 0.28283501 0.858693 -0.54167902 0.285265 0.79070097
		 -0.52470499 0.32991901 0.78475398 -0.41685301 0.29468 0.859882 -0.28433901 0.27251199
		 0.91917801 -0.29807299 0.27169201 0.915061 -0.42737499 0.28283501 0.858693 -0.41685301
		 0.29468 0.859882 0.35264 0.27910101 0.89316702 0.34691 0.26279601 0.90032899 0.463204
		 0.27135599 0.84368801 0.463844 0.28191 0.83986598 0.56698102 0.28138599 0.77418 0.463844
		 0.28191 0.83986598 0.463204 0.27135599 0.84368801 0.56933397 0.276106 0.77435398
		 -0.41685301 0.29468 0.859882 -0.52470499 0.32991901 0.78475398 -0.50620699 0.322817
		 0.79971498 -0.39067599 0.28499299 0.875301 -0.26499301 0.26149499 0.92811602 -0.28433901
		 0.27251199 0.91917801 -0.41685301 0.29468 0.859882 -0.39067599 0.28499299 0.875301
		 0.34691 0.26279601 0.90032899 0.34343401 0.23652799 0.90890503 0.46396801 0.242853
		 0.85191298 0.463204 0.27135599 0.84368801 0.56933397 0.276106 0.77435398 0.463204
		 0.27135599 0.84368801 0.46396801 0.242853 0.85191298 0.57349497 0.247981 0.780774
		 -0.39067599 0.28499299 0.875301 -0.50620699 0.322817 0.79971498 -0.51629502 0.265852
		 0.81410199 -0.389651 0.255712 0.88475102 -0.39067599 0.28499299 0.875301 -0.389651
		 0.255712 0.88475102 -0.264146 0.25129801 0.93116897 -0.26499301 0.26149499 0.92811602
		 0.34765801 0.210131 0.91377199 0.469017 0.21157201 0.85747302 0.46396801 0.242853
		 0.85191298 0.34343401 0.23652799 0.90890503 0.57349497 0.247981 0.780774 0.46396801
		 0.242853 0.85191298 0.469017 0.21157201 0.85747302 0.57941401 0.213137 0.78667098
		 -0.51629502 0.265852 0.81410199 -0.53499502 0.22445799 0.814493 -0.40963101 0.22878
		 0.88309801 -0.389651 0.255712 0.88475102 -0.264146 0.25129801 0.93116897 -0.389651
		 0.255712 0.88475102 -0.40963101 0.22878 0.88309801 -0.27481401 0.22202 0.93551302
		 -0.264146 0.25129801 0.93116897 -0.27481401 0.22202 0.93551302;
	setAttr ".n[498:663]" -type "float3"  -0.135428 0.21866 0.96635801 -0.138319
		 0.242385 0.96026897 0.224333 0.186707 0.95646 0.35560799 0.185252 0.91609198 0.34765801
		 0.210131 0.91377199 0.215883 0.21019 0.95352799 0.469017 0.21157201 0.85747302 0.34765801
		 0.210131 0.91377199 0.35560799 0.185252 0.91609198 0.48030001 0.18293799 0.85781401
		 0.48030001 0.18293799 0.85781401 0.59283 0.17471901 0.78614599 0.57941401 0.213137
		 0.78667098 0.469017 0.21157201 0.85747302 -0.27481401 0.22202 0.93551302 -0.40963101
		 0.22878 0.88309801 -0.42515501 0.201766 0.88234502 -0.28557399 0.181849 0.94094503
		 -0.135428 0.21866 0.96635801 -0.27481401 0.22202 0.93551302 -0.28557399 0.181849
		 0.94094503 -0.142216 0.175676 0.97412199 -0.018105 0.16933601 0.98539197 -0.020936999
		 0.204513 0.97864002 -0.135428 0.21866 0.96635801 -0.142216 0.175676 0.97412199 0.096390001
		 0.19368599 0.97631699 0.101351 0.165933 0.98091501 0.23064101 0.16544899 0.95886999
		 0.224333 0.186707 0.95646 0.35560799 0.185252 0.91609198 0.224333 0.186707 0.95646
		 0.23064101 0.16544899 0.95886999 0.36522701 0.167281 0.915766 0.48030001 0.18293799
		 0.85781401 0.35560799 0.185252 0.91609198 0.36522701 0.167281 0.915766 0.498992 0.167842
		 0.85019702 -0.28557399 0.181849 0.94094503 -0.42515501 0.201766 0.88234502 -0.42745101
		 0.16841599 0.88821298 -0.283528 0.14965101 0.94721502 -0.142216 0.175676 0.97412199
		 -0.28557399 0.181849 0.94094503 -0.283528 0.14965101 0.94721502 -0.14432099 0.137548
		 0.97992402 -0.142216 0.175676 0.97412199 -0.14432099 0.137548 0.97992402 -0.021212
		 0.135267 0.99058199 -0.018105 0.16933601 0.98539197 0.101351 0.165933 0.98091501
		 -0.018105 0.16933601 0.98539197 -0.021212 0.135267 0.99058199 0.099687003 0.13485201
		 0.985838 0.099687003 0.13485201 0.985838 0.23055001 0.139594 0.96299601 0.23064101
		 0.16544899 0.95886999 0.101351 0.165933 0.98091501 0.36522701 0.167281 0.915766 0.23064101
		 0.16544899 0.95886999 0.23055001 0.139594 0.96299601 0.36805001 0.146906 0.918127
		 0.498992 0.167842 0.85019702 0.36522701 0.167281 0.915766 0.36805001 0.146906 0.918127
		 0.5043 0.154597 0.84957701 -0.283528 0.14965101 0.94721502 -0.42745101 0.16841599
		 0.88821298 -0.427228 0.12622 0.89529002 -0.28219 0.117925 0.95208299 -0.14432099
		 0.137548 0.97992402 -0.283528 0.14965101 0.94721502 -0.28219 0.117925 0.95208299
		 -0.14455999 0.1105 0.983307 -0.021212 0.135267 0.99058199 -0.14432099 0.137548 0.97992402
		 -0.14455999 0.1105 0.983307 -0.022701999 0.105937 0.99411398 0.099687003 0.13485201
		 0.985838 -0.021212 0.135267 0.99058199 -0.022701999 0.105937 0.99411398 0.097436003
		 0.10193 0.990008 0.23055001 0.139594 0.96299601 0.099687003 0.13485201 0.985838 0.097436003
		 0.10193 0.990008 0.22675499 0.10622 0.96814197 0.36805001 0.146906 0.918127 0.23055001
		 0.139594 0.96299601 0.22675499 0.10622 0.96814197 0.36476699 0.117141 0.92370099
		 0.5043 0.154597 0.84957701 0.36805001 0.146906 0.918127 0.36476699 0.117141 0.92370099
		 0.503245 0.12985501 0.85433197 -0.28219 0.117925 0.95208299 -0.427228 0.12622 0.89529002
		 -0.42984799 0.092386 0.89816201 -0.28287601 0.088496 0.95506501 -0.14455999 0.1105
		 0.983307 -0.28219 0.117925 0.95208299 -0.28287601 0.088496 0.95506501 -0.14339601
		 0.085488997 0.98596603 -0.022701999 0.105937 0.99411398 -0.14455999 0.1105 0.983307
		 -0.14339601 0.085488997 0.98596603 -0.019681999 0.079966001 0.99660301 -0.019681999
		 0.079966001 0.99660301 0.098082997 0.073572002 0.99245501 0.097436003 0.10193 0.990008
		 -0.022701999 0.105937 0.99411398 0.221541 0.077284999 0.97208399 0.22675499 0.10622
		 0.96814197 0.097436003 0.10193 0.990008 0.098082997 0.073572002 0.99245501 0.36476699
		 0.117141 0.92370099 0.22675499 0.10622 0.96814197 0.221541 0.077284999 0.97208399
		 0.356949 0.090190999 0.92975998 0.503245 0.12985501 0.85433197 0.36476699 0.117141
		 0.92370099 0.356949 0.090190999 0.92975998 0.49712801 0.106196 0.86115402 -0.28287601
		 0.088496 0.95506501 -0.42984799 0.092386 0.89816201 -0.42507601 0.070670001 0.90239501
		 -0.28021401 0.061278 0.95797998 -0.14339601 0.085488997 0.98596603 -0.28287601 0.088496
		 0.95506501 -0.28021401 0.061278 0.95797998 -0.14211801 0.057585999 0.98817301 0.098082997
		 0.073572002 0.99245501 0.097733997 0.051970001 0.993855 0.213956 0.058749001 0.97507501
		 0.221541 0.077284999 0.97208399 0.356949 0.090190999 0.92975998 0.221541 0.077284999
		 0.97208399 0.213956 0.058749001 0.97507501 0.34466401 0.074216001 0.93578798 0.49712801
		 0.106196 0.86115402 0.356949 0.090190999 0.92975998 0.34466401 0.074216001 0.93578798
		 0.48456299 0.093935996 0.86969799 -0.28021401 0.061278 0.95797998 -0.42507601 0.070670001
		 0.90239501 -0.40706101 0.042739 0.91240001 -0.26903099 0.033229001 0.96255797 -0.13740499
		 0.030170999 0.99005502 -0.14211801 0.057585999 0.98817301 -0.28021401 0.061278 0.95797998
		 -0.26903099 0.033229001 0.96255797 0.32696801 0.062162999 0.94298899 0.34466401 0.074216001
		 0.93578798 0.213956 0.058749001 0.97507501 0.202548 0.047951002 0.97809798 0.48456299
		 0.093935996 0.86969799 0.34466401 0.074216001 0.93578798 0.32696801 0.062162999 0.94298899
		 0.45889699 0.079787001 0.88489997 -0.40706101 0.042739 0.91240001 -0.55013001 0.047881
		 0.83370501 -0.547539 -0.020039 0.83653998 -0.39844099 -0.006236 0.91717303 -0.26903099
		 0.033229001 0.96255797 -0.40706101 0.042739 0.91240001 -0.39844099 -0.006236 0.91717303
		 -0.263042 -0.0058929999 0.96476698;
	setAttr ".n[664:829]" -type "float3"  0.44524801 0.050363 0.89398998 0.45889699
		 0.079787001 0.88489997 0.32696801 0.062162999 0.94298899 0.31556201 0.043216001 0.94792002
		 0.56961602 0.059526999 0.81975198 0.581945 0.103365 0.80663198 0.45889699 0.079787001
		 0.88489997 0.44524801 0.050363 0.89398998 -0.39844099 -0.006236 0.91717303 -0.547539
		 -0.020039 0.83653998 -0.556234 -0.099555999 0.825041 -0.404062 -0.060646001 0.91271901
		 -0.26798499 -0.035813998 0.96275699 -0.263042 -0.0058929999 0.96476698 -0.39844099
		 -0.006236 0.91717303 -0.404062 -0.060646001 0.91271901 0.31556201 0.043216001 0.94792002
		 0.313362 0.019242 0.94943899 0.44212601 0.014897 0.89682901 0.44524801 0.050363 0.89398998
		 0.56961602 0.059526999 0.81975198 0.44524801 0.050363 0.89398998 0.44212601 0.014897
		 0.89682901 0.56614798 0.014139 0.82418299 -0.404062 -0.060646001 0.91271901 -0.556234
		 -0.099555999 0.825041 -0.57506001 -0.141968 0.80569899 -0.43488401 -0.100405 0.894871
		 0.56756198 -0.0068720002 0.82330197 0.56614798 0.014139 0.82418299 0.44212601 0.014897
		 0.89682901 0.44799399 -0.0039880001 0.89402801 -0.456559 -0.151601 0.87668198 -0.43488401
		 -0.100405 0.894871 -0.57506001 -0.141968 0.80569899 -0.59085 -0.17437799 0.78771102
		 0.44799399 -0.0039880001 0.89402801 0.452086 -0.027763 0.89154202 0.56852198 -0.027017999
		 0.82222402 0.56756198 -0.0068720002 0.82330197 -0.59085 -0.17437799 0.78771102 -0.595716
		 -0.22440299 0.77121103 -0.48121601 -0.210557 0.85093898 -0.456559 -0.151601 0.87668198
		 0.45524099 -0.105579 0.88408601 0.56990099 -0.102648 0.81527698 0.56852198 -0.027017999
		 0.82222402 0.452086 -0.027763 0.89154202 -0.48121601 -0.210557 0.85093898 -0.595716
		 -0.22440299 0.77121103 -0.60345697 -0.31297299 0.73340899 -0.50087798 -0.292817 0.81448102
		 -0.37674901 -0.270089 0.88606501 -0.358623 -0.172958 0.91732001 -0.48121601 -0.210557
		 0.85093898 -0.50087798 -0.292817 0.81448102 0.33244899 -0.108809 0.93682301 0.328852
		 -0.25453201 0.90943402 0.45661399 -0.262043 0.85019797 0.45524099 -0.105579 0.88408601
		 0.56990099 -0.102648 0.81527698 0.45524099 -0.105579 0.88408601 0.45661399 -0.262043
		 0.85019797 0.56861103 -0.26516601 0.77869701 -0.37674901 -0.270089 0.88606501 -0.50087798
		 -0.292817 0.81448102 -0.51846999 -0.436194 0.735475 -0.38788101 -0.406757 0.82710201
		 -0.237625 -0.26899299 0.93336898 -0.37674901 -0.270089 0.88606501 -0.38788101 -0.406757
		 0.82710201 -0.23863199 -0.417483 0.876791 -0.094903 -0.27488601 0.95678198 -0.237625
		 -0.26899299 0.93336898 -0.23863199 -0.417483 0.876791 -0.090363003 -0.43573001 0.89552999
		 0.050264999 -0.27867001 0.95907098 -0.094903 -0.27488601 0.95678198 -0.090363003
		 -0.43573001 0.89552999 0.051306002 -0.44089299 0.896092 0.191237 -0.26562899 0.94491798
		 0.050264999 -0.27867001 0.95907098 0.051306002 -0.44089299 0.896092 0.187759 -0.42948601
		 0.88334 0.328852 -0.25453201 0.90943402 0.191237 -0.26562899 0.94491798 0.187759
		 -0.42948601 0.88334 0.334699 -0.416614 0.84522802 0.328852 -0.25453201 0.90943402
		 0.334699 -0.416614 0.84522802 0.46487299 -0.44553599 0.76510799 0.45661399 -0.262043
		 0.85019797 -0.23863199 -0.417483 0.876791 -0.38788101 -0.406757 0.82710201 -0.39631799
		 -0.54837298 0.73635602 -0.226926 -0.59101099 0.77408701 -0.090363003 -0.43573001
		 0.89552999 -0.23863199 -0.417483 0.876791 -0.226926 -0.59101099 0.77408701 -0.082829997
		 -0.61066902 0.78754199 0.051306002 -0.44089299 0.896092 -0.090363003 -0.43573001
		 0.89552999 -0.082829997 -0.61066902 0.78754199 0.046932999 -0.61011702 0.79092002
		 0.187759 -0.42948601 0.88334 0.051306002 -0.44089299 0.896092 0.046932999 -0.61011702
		 0.79092002 0.17709599 -0.596591 0.78276199 0.334699 -0.416614 0.84522802 0.187759
		 -0.42948601 0.88334 0.17709599 -0.596591 0.78276199 0.33754 -0.56058002 0.75618601
		 -0.048780002 0.716429 0.69595301 -0.060137998 0.787489 0.613388 -0.166887 0.80600798
		 0.56788999 -0.15836699 0.72690803 0.66822499 -0.048780002 0.716429 0.69595301 0.075685002
		 0.70335799 0.70679498 0.068653002 0.77636802 0.62652999 -0.060137998 0.787489 0.613388
		 0.20693199 0.688941 0.69464999 0.21030501 0.75497299 0.62111801 0.068653002 0.77636802
		 0.62652999 0.075685002 0.70335799 0.70679498 0.319327 0.691118 0.64837199 0.33277601
		 0.76611102 0.54984897 0.21030501 0.75497299 0.62111801 0.20693199 0.688941 0.69464999
		 -0.38280401 0.68545997 0.61935902 -0.49928701 0.68420899 0.53157401 -0.50958699 0.58847302
		 0.627711 -0.39881 0.599114 0.69427198 -0.26129499 0.717269 0.64594901 -0.38280401
		 0.68545997 0.61935902 -0.39881 0.599114 0.69427198 -0.27799401 0.62505198 0.72940302
		 -0.27799401 0.62505198 0.72940302 -0.16196699 0.63921303 0.75178099 -0.15836699 0.72690803
		 0.66822499 -0.26129499 0.717269 0.64594901 0.21002799 0.61470199 0.76028299 0.326285
		 0.604083 0.72706401 0.319327 0.691118 0.64837199 0.20693199 0.688941 0.69464999 0.43578699
		 0.57711798 0.69067001 0.42291799 0.66222298 0.61854702 0.319327 0.691118 0.64837199
		 0.326285 0.604083 0.72706401 0.537175 0.56208402 0.62889099 0.52764499 0.65810502
		 0.53711098 0.42291799 0.66222298 0.61854702 0.43578699 0.57711798 0.69067001 -0.39881
		 0.599114 0.69427198 -0.50958699 0.58847302 0.627711 -0.53988802 0.50811601 0.67107397
		 -0.42418799 0.51752102 0.74312598 0.56481701 0.481664 0.67005998 0.537175 0.56208402
		 0.62889099 0.43578699 0.57711798 0.69067001 0.461128 0.492892 0.73784697 -0.53358001
		 0.43814901 0.72340697 -0.53988802 0.50811601 0.67107397 -0.62420899 0.52140999 0.58180201
		 -0.61460501 0.43530601 0.65785301 0.55837601 0.40952101 0.72146201 0.63256598 0.40651199
		 0.65924799;
	setAttr ".n[830:995]" -type "float3"  0.64327002 0.492542 0.58617997 0.56481701
		 0.481664 0.67005998 -0.54184198 0.37756601 0.75089997 -0.53358001 0.43814901 0.72340697
		 -0.61460501 0.43530601 0.65785301 -0.63380498 0.391377 0.66716999 0.55837601 0.40952101
		 0.72146201 0.56296098 0.34067601 0.75300401 0.65016598 0.34217501 0.67838001 0.63256598
		 0.40651199 0.65924799 -0.611112 0.319267 0.72430003 -0.63380498 0.391377 0.66716999
		 -0.68418598 0.31974599 0.65547901 -0.65729302 0.275408 0.70151001 0.65016598 0.34217501
		 0.67838001 0.61811298 0.288856 0.731094 0.66460401 0.270309 0.69658798 0.70062 0.28947899
		 0.65217602 -0.52470499 0.32991901 0.78475398 -0.54167902 0.285265 0.79070097 -0.65729302
		 0.275408 0.70151001 -0.63015997 0.33979899 0.69816601 0.56698102 0.28138599 0.77418
		 0.56933397 0.276106 0.77435398 0.66669202 0.275846 0.69240898 0.66460401 0.270309
		 0.69658798 -0.50620699 0.322817 0.79971498 -0.52470499 0.32991901 0.78475398 -0.63015997
		 0.33979899 0.69816601 -0.62332702 0.333143 0.70744598 0.56933397 0.276106 0.77435398
		 0.57349497 0.247981 0.780774 0.67326301 0.25070301 0.69560301 0.66669202 0.275846
		 0.69240898 -0.51629502 0.265852 0.81410199 -0.50620699 0.322817 0.79971498 -0.62332702
		 0.333143 0.70744598 -0.63667703 0.274468 0.720631 0.57349497 0.247981 0.780774 0.57941401
		 0.213137 0.78667098 0.68029797 0.216893 0.700109 0.67326301 0.25070301 0.69560301
		 -0.63667703 0.274468 0.720631 -0.64316899 0.22133 0.73303998 -0.53499502 0.22445799
		 0.814493 -0.51629502 0.265852 0.81410199 0.59283 0.17471901 0.78614599 0.68743801
		 0.160042 0.70839 0.68029797 0.216893 0.700109 0.57941401 0.213137 0.78667098 -0.64316899
		 0.22133 0.73303998 -0.71097702 0.20540801 0.67254698 -0.56867301 0.210618 0.79514199
		 -0.53499502 0.22445799 0.814493 -0.42515501 0.201766 0.88234502 -0.40963101 0.22878
		 0.88309801 -0.53499502 0.22445799 0.814493 -0.56867301 0.210618 0.79514199 0.48030001
		 0.18293799 0.85781401 0.498992 0.167842 0.85019702 0.62544602 0.164777 0.76266998
		 0.59283 0.17471901 0.78614599 0.62544602 0.164777 0.76266998 0.74277198 0.145411
		 0.65356398 0.68743801 0.160042 0.70839 0.59283 0.17471901 0.78614599 -0.42745101
		 0.16841599 0.88821298 -0.42515501 0.201766 0.88234502 -0.56867301 0.210618 0.79514199
		 -0.57097501 0.182763 0.80036598 0.498992 0.167842 0.85019702 0.5043 0.154597 0.84957701
		 0.63100398 0.16040801 0.75901502 0.62544602 0.164777 0.76266998 -0.427228 0.12622
		 0.89529002 -0.42745101 0.16841599 0.88821298 -0.57097501 0.182763 0.80036598 -0.57469702
		 0.133752 0.80736202 0.5043 0.154597 0.84957701 0.503245 0.12985501 0.85433197 0.63230002
		 0.140246 0.76192403 0.63100398 0.16040801 0.75901502 -0.42984799 0.092386 0.89816201
		 -0.427228 0.12622 0.89529002 -0.57469702 0.133752 0.80736202 -0.58225501 0.093588002
		 0.80760199 0.503245 0.12985501 0.85433197 0.49712801 0.106196 0.86115402 0.62991202
		 0.120533 0.76725602 0.63230002 0.140246 0.76192403 -0.42507601 0.070670001 0.90239501
		 -0.42984799 0.092386 0.89816201 -0.58225501 0.093588002 0.80760199 -0.58070201 0.075074002
		 0.81064802 0.49712801 0.106196 0.86115402 0.48456299 0.093935996 0.86969799 0.62035203
		 0.115938 0.77570802 0.62991202 0.120533 0.76725602 -0.58070201 0.075074002 0.81064802
		 -0.73504901 0.087066002 0.67240101 -0.67685002 0.045588002 0.73470801 -0.55013001
		 0.047881 0.83370501 -0.40706101 0.042739 0.91240001 -0.42507601 0.070670001 0.90239501
		 -0.58070201 0.075074002 0.81064802 -0.55013001 0.047881 0.83370501 0.48456299 0.093935996
		 0.86969799 0.45889699 0.079787001 0.88489997 0.581945 0.103365 0.80663198 0.62035203
		 0.115938 0.77570802 0.68381 0.131933 0.71763301 0.74152702 0.152731 0.65330702 0.62035203
		 0.115938 0.77570802 0.581945 0.103365 0.80663198 -0.55013001 0.047881 0.83370501
		 -0.67685002 0.045588002 0.73470801 -0.68852401 -0.040383998 0.72408801 -0.547539
		 -0.020039 0.83653998 0.68549001 0.067277998 0.724967 0.68381 0.131933 0.71763301
		 0.581945 0.103365 0.80663198 0.56961602 0.059526999 0.81975198 -0.556234 -0.099555999
		 0.825041 -0.547539 -0.020039 0.83653998 -0.68852401 -0.040383998 0.72408801 -0.69071698
		 -0.118756 0.71330702 0.56961602 0.059526999 0.81975198 0.56614798 0.014139 0.82418299
		 0.68267101 0.018293999 0.730497 0.68549001 0.067277998 0.724967 -0.57506001 -0.141968
		 0.80569899 -0.556234 -0.099555999 0.825041 -0.69071698 -0.118756 0.71330702 -0.69201201
		 -0.16217101 0.70343399 0.56614798 0.014139 0.82418299 0.56756198 -0.0068720002 0.82330197
		 0.679331 -0.0045929998 0.73381698 0.68267101 0.018293999 0.730497 -0.59085 -0.17437799
		 0.78771102 -0.57506001 -0.141968 0.80569899 -0.69201201 -0.16217101 0.70343399 -0.70027697
		 -0.189604 0.688232 0.56756198 -0.0068720002 0.82330197 0.56852198 -0.027017999 0.82222402
		 0.67535102 -0.025658 0.73705 0.679331 -0.0045929998 0.73381698 -0.595716 -0.22440299
		 0.77121103 -0.59085 -0.17437799 0.78771102 -0.70027697 -0.189604 0.688232 -0.70234603
		 -0.23648 0.67140698 0.56852198 -0.027017999 0.82222402 0.56990099 -0.102648 0.81527698
		 0.678689 -0.104582 0.72694099 0.67535102 -0.025658 0.73705 -0.60345697 -0.31297299
		 0.73340899 -0.595716 -0.22440299 0.77121103 -0.70234603 -0.23648 0.67140698 -0.69580698
		 -0.33936501 0.63299501 0.56990099 -0.102648 0.81527698 0.56861103 -0.26516601 0.77869701
		 0.67006898 -0.27811301 0.68822998 0.678689 -0.104582 0.72694099 -0.60345697 -0.31297299
		 0.73340899 -0.69580698 -0.33936501 0.63299501 -0.71101201 -0.48923501 0.505086 -0.621548
		 -0.458011 0.63553399;
	setAttr ".n[996:1161]" -type "float3"  -0.50087798 -0.292817 0.81448102 -0.60345697
		 -0.31297299 0.73340899 -0.621548 -0.458011 0.63553399 -0.51846999 -0.436194 0.735475
		 0.56861103 -0.26516601 0.77869701 0.45661399 -0.262043 0.85019797 0.46487299 -0.44553599
		 0.76510799 0.57367098 -0.45796299 0.67909598 0.56861103 -0.26516601 0.77869701 0.57367098
		 -0.45796299 0.67909598 0.67634797 -0.48502699 0.55434799 0.67006898 -0.27811301 0.68822998
		 -0.621548 -0.458011 0.63553399 -0.641222 -0.57979798 0.502662 -0.54031497 -0.57825398
		 0.611296 -0.51846999 -0.436194 0.735475 -0.39631799 -0.54837298 0.73635602 -0.38788101
		 -0.406757 0.82710201 -0.51846999 -0.436194 0.735475 -0.54031497 -0.57825398 0.611296
		 0.334699 -0.416614 0.84522802 0.33754 -0.56058002 0.75618601 0.48187 -0.59535199
		 0.64292902 0.46487299 -0.44553599 0.76510799 0.48187 -0.59535199 0.64292902 0.59189397
		 -0.59750998 0.54096502 0.57367098 -0.45796299 0.67909598 0.46487299 -0.44553599 0.76510799
		 -0.39631799 -0.54837298 0.73635602 -0.54031497 -0.57825398 0.611296 -0.39053801 -0.70987201
		 0.58614099 -0.39053801 -0.70987201 0.58614099 -0.22789501 -0.75119197 0.61949599
		 -0.226926 -0.59101099 0.77408701 -0.39631799 -0.54837298 0.73635602 -0.082829997
		 -0.61066902 0.78754199 -0.226926 -0.59101099 0.77408701 -0.22789501 -0.75119197 0.61949599
		 -0.087384 -0.76082301 0.643049 0.046932999 -0.61011702 0.79092002 -0.082829997 -0.61066902
		 0.78754199 -0.087384 -0.76082301 0.643049 0.046404 -0.76291299 0.64483398 0.17887001
		 -0.75151801 0.635001 0.17709599 -0.596591 0.78276199 0.046932999 -0.61011702 0.79092002
		 0.046404 -0.76291299 0.64483398 0.17887001 -0.75151801 0.635001 0.33598799 -0.72224897
		 0.60453999 0.33754 -0.56058002 0.75618601 0.17709599 -0.596591 0.78276199 0.48187
		 -0.59535199 0.64292902 0.33754 -0.56058002 0.75618601 0.33598799 -0.72224897 0.60453999
		 -0.060137998 0.787489 0.613388 -0.062761001 0.845792 0.52980798 -0.17952099 0.86399698
		 0.47040501 -0.166887 0.80600798 0.56788999 -0.060137998 0.787489 0.613388 0.068653002
		 0.77636802 0.62652999 0.079889998 0.84586298 0.52738303 -0.062761001 0.845792 0.52980798
		 0.068653002 0.77636802 0.62652999 0.21030501 0.75497299 0.62111801 0.221919 0.82794398
		 0.51503402 0.079889998 0.84586298 0.52738303 0.21030501 0.75497299 0.62111801 0.33277601
		 0.76611102 0.54984897 0.221919 0.82794398 0.51503402 -0.38280401 0.68545997 0.61935902
		 -0.38279301 0.76741201 0.51434201 -0.49928701 0.68420899 0.53157401 -0.38280401 0.68545997
		 0.61935902 -0.26129499 0.717269 0.64594901 -0.262375 0.79795599 0.54260999 -0.38279301
		 0.76741201 0.51434201 -0.26129499 0.717269 0.64594901 -0.15836699 0.72690803 0.66822499
		 -0.166887 0.80600798 0.56788999 -0.262375 0.79795599 0.54260999 0.319327 0.691118
		 0.64837199 0.42291799 0.66222298 0.61854702 0.42445499 0.738415 0.524005 0.33277601
		 0.76611102 0.54984897 0.42291799 0.66222298 0.61854702 0.52764499 0.65810502 0.53711098
		 0.42445499 0.738415 0.524005 -0.50958699 0.58847302 0.627711 -0.49928701 0.68420899
		 0.53157401 -0.59364599 0.59586501 0.54086 0.52764499 0.65810502 0.53711098 0.537175
		 0.56208402 0.62889099 0.61557603 0.567976 0.546323 -0.53988802 0.50811601 0.67107397
		 -0.50958699 0.58847302 0.627711 -0.59364599 0.59586501 0.54086 -0.62420899 0.52140999
		 0.58180201 0.61557603 0.567976 0.546323 0.537175 0.56208402 0.62889099 0.56481701
		 0.481664 0.67005998 0.64327002 0.492542 0.58617997 -0.61460501 0.43530601 0.65785301
		 -0.62420899 0.52140999 0.58180201 -0.69252598 0.44302401 0.56933099 0.63256598 0.40651199
		 0.65924799 0.703345 0.416374 0.576141 0.64327002 0.492542 0.58617997 -0.63380498
		 0.391377 0.66716999 -0.61460501 0.43530601 0.65785301 -0.69252598 0.44302401 0.56933099
		 -0.71628797 0.37468299 0.58868003 0.63256598 0.40651199 0.65924799 0.65016598 0.34217501
		 0.67838001 0.72866499 0.340067 0.59447598 0.703345 0.416374 0.576141 -0.68418598
		 0.31974599 0.65547901 -0.63380498 0.391377 0.66716999 -0.71628797 0.37468299 0.58868003
		 -0.76551098 0.31558499 0.56071198 0.65016598 0.34217501 0.67838001 0.70062 0.28947899
		 0.65217602 0.75766701 0.29457599 0.58238 0.72866499 0.340067 0.59447598 -0.65729302
		 0.275408 0.70151001 -0.68418598 0.31974599 0.65547901 -0.76551098 0.31558499 0.56071198
		 -0.749623 0.31195199 0.58373898 0.70062 0.28947899 0.65217602 0.66460401 0.270309
		 0.69658798 0.745161 0.27875999 0.605829 0.75766701 0.29457599 0.58238 -0.63015997
		 0.33979899 0.69816601 -0.65729302 0.275408 0.70151001 -0.749623 0.31195199 0.58373898
		 -0.71920598 0.370496 0.58777201 0.66460401 0.270309 0.69658798 0.66669202 0.275846
		 0.69240898 0.75174803 0.271063 0.60116601 0.745161 0.27875999 0.605829 -0.62332702
		 0.333143 0.70744598 -0.63015997 0.33979899 0.69816601 -0.71920598 0.370496 0.58777201
		 -0.72875601 0.34687901 0.59041399 0.66669202 0.275846 0.69240898 0.67326301 0.25070301
		 0.69560301 0.762631 0.243543 0.59923398 0.75174803 0.271063 0.60116601 -0.63667703
		 0.274468 0.720631 -0.62332702 0.333143 0.70744598 -0.72875601 0.34687901 0.59041399
		 -0.74707502 0.27987099 0.602952 0.67326301 0.25070301 0.69560301 0.68029797 0.216893
		 0.700109 0.774212 0.21134201 0.59659898 0.762631 0.243543 0.59923398 -0.75994098
		 0.21617299 0.61299098 -0.64316899 0.22133 0.73303998 -0.63667703 0.274468 0.720631
		 -0.74707502 0.27987099 0.602952 0.68029797 0.216893 0.700109 0.68743801 0.160042
		 0.70839 0.78634 0.15870599 0.59706002 0.774212 0.21134201 0.59659898 -0.71097702
		 0.20540801 0.67254698 -0.64316899 0.22133 0.73303998 -0.75994098 0.21617299 0.61299098;
	setAttr ".n[1162:1327]" -type "float3"  0.68743801 0.160042 0.70839 0.74277198
		 0.145411 0.65356398 0.78634 0.15870599 0.59706002 -0.57097501 0.182763 0.80036598
		 -0.56867301 0.210618 0.79514199 -0.71097702 0.20540801 0.67254698 -0.71128303 0.196583
		 0.67485702 0.62544602 0.164777 0.76266998 0.63100398 0.16040801 0.75901502 0.74265099
		 0.16030601 0.65020901 0.74277198 0.145411 0.65356398 -0.57469702 0.133752 0.80736202
		 -0.57097501 0.182763 0.80036598 -0.71128303 0.196583 0.67485702 -0.72087801 0.133056
		 0.68017 0.63100398 0.16040801 0.75901502 0.63230002 0.140246 0.76192403 0.74461502
		 0.146705 0.651173 0.74265099 0.16030601 0.65020901 -0.58225501 0.093588002 0.80760199
		 -0.57469702 0.133752 0.80736202 -0.72087801 0.133056 0.68017 -0.72965401 0.090535998
		 0.67779601 0.63230002 0.140246 0.76192403 0.62991202 0.120533 0.76725602 0.74574298
		 0.134902 0.65243298 0.74461502 0.146705 0.651173 -0.58070201 0.075074002 0.81064802
		 -0.58225501 0.093588002 0.80760199 -0.72965401 0.090535998 0.67779601 -0.73504901
		 0.087066002 0.67240101 0.62991202 0.120533 0.76725602 0.62035203 0.115938 0.77570802
		 0.74152702 0.152731 0.65330702 0.74574298 0.134902 0.65243298 -0.67685002 0.045588002
		 0.73470801 -0.73504901 0.087066002 0.67240101 -0.80310303 0.044199999 0.59419799
		 0.74152702 0.152731 0.65330702 0.68381 0.131933 0.71763301 0.790856 0.14304 0.595052
		 -0.67685002 0.045588002 0.73470801 -0.80310303 0.044199999 0.59419799 -0.80572999
		 -0.041689999 0.59081399 -0.68852401 -0.040383998 0.72408801 0.790856 0.14304 0.595052
		 0.68381 0.131933 0.71763301 0.68549001 0.067277998 0.724967 0.79100001 0.082345001
		 0.60624897 -0.69071698 -0.118756 0.71330702 -0.68852401 -0.040383998 0.72408801 -0.80572999
		 -0.041689999 0.59081399 -0.80158001 -0.11909 0.58590698 0.79100001 0.082345001 0.60624897
		 0.68549001 0.067277998 0.724967 0.68267101 0.018293999 0.730497 0.78639001 0.033082001
		 0.616844 -0.69201201 -0.16217101 0.70343399 -0.69071698 -0.118756 0.71330702 -0.80158001
		 -0.11909 0.58590698 -0.79467201 -0.173647 0.58167303 0.68267101 0.018293999 0.730497
		 0.679331 -0.0045929998 0.73381698 0.77974802 0.007365 0.62605 0.78639001 0.033082001
		 0.616844 -0.70027697 -0.189604 0.688232 -0.69201201 -0.16217101 0.70343399 -0.79467201
		 -0.173647 0.58167303 -0.79675299 -0.213121 0.56547701 0.679331 -0.0045929998 0.73381698
		 0.67535102 -0.025658 0.73705 0.77457601 -0.031442001 0.63169801 0.77974802 0.007365
		 0.62605 -0.70234603 -0.23648 0.67140698 -0.70027697 -0.189604 0.688232 -0.79675299
		 -0.213121 0.56547701 -0.79643297 -0.26817501 0.54201102 0.67535102 -0.025658 0.73705
		 0.678689 -0.104582 0.72694099 0.77948701 -0.136912 0.61127299 0.77457601 -0.031442001
		 0.63169801 -0.78361601 -0.37270799 0.497026 -0.69580698 -0.33936501 0.63299501 -0.70234603
		 -0.23648 0.67140698 -0.79643297 -0.26817501 0.54201102 0.678689 -0.104582 0.72694099
		 0.67006898 -0.27811301 0.68822998 0.76712602 -0.31699401 0.557702 0.77948701 -0.136912
		 0.61127299 -0.71101201 -0.48923501 0.505086 -0.69580698 -0.33936501 0.63299501 -0.78361601
		 -0.37270799 0.497026 0.67006898 -0.27811301 0.68822998 0.67634797 -0.48502699 0.55434799
		 0.76712602 -0.31699401 0.557702 -0.621548 -0.458011 0.63553399 -0.71101201 -0.48923501
		 0.505086 -0.641222 -0.57979798 0.502662 0.57367098 -0.45796299 0.67909598 0.59189397
		 -0.59750998 0.54096502 0.67634797 -0.48502699 0.55434799 -0.54031497 -0.57825398
		 0.611296 -0.641222 -0.57979798 0.502662 -0.55394 -0.68945301 0.46669599 -0.39053801
		 -0.70987201 0.58614099 -0.54031497 -0.57825398 0.611296 -0.55394 -0.68945301 0.46669599
		 -0.405976 -0.79049999 0.458579 -0.22789501 -0.75119197 0.61949599 -0.39053801 -0.70987201
		 0.58614099 -0.405976 -0.79049999 0.458579 -0.247623 -0.84162802 0.47994301 -0.087384
		 -0.76082301 0.643049 -0.22789501 -0.75119197 0.61949599 -0.247623 -0.84162802 0.47994301
		 -0.095395997 -0.863078 0.49597999 0.17887001 -0.75151801 0.635001 0.046404 -0.76291299
		 0.64483398 0.052411001 -0.86431998 0.50020403 0.196615 -0.84982097 0.48902601 0.33598799
		 -0.72224897 0.60453999 0.17887001 -0.75151801 0.635001 0.196615 -0.84982097 0.48902601
		 0.35432899 -0.804353 0.47693601 0.49697801 -0.71451199 0.492428 0.48187 -0.59535199
		 0.64292902 0.33598799 -0.72224897 0.60453999 0.35432899 -0.804353 0.47693601 0.59189397
		 -0.59750998 0.54096502 0.48187 -0.59535199 0.64292902 0.49697801 -0.71451199 0.492428
		 -0.095395997 -0.863078 0.49597999 0.052411001 -0.86431998 0.50020403 0.046404 -0.76291299
		 0.64483398 -0.087384 -0.76082301 0.643049 -0.17952099 0.86399698 0.47040501 -0.062761001
		 0.845792 0.52980798 -0.052896999 0.90289801 0.42658901 0.097278997 0.89799398 0.42911899
		 -0.052896999 0.90289801 0.42658901 -0.062761001 0.845792 0.52980798 0.079889998 0.84586298
		 0.52738303 0.079889998 0.84586298 0.52738303 0.221919 0.82794398 0.51503402 0.235009
		 0.87054801 0.43234 0.097278997 0.89799398 0.42911899 -0.39594799 0.80150801 0.44811901
		 -0.38279301 0.76741201 0.51434201 -0.262375 0.79795599 0.54260999 -0.27245599 0.84556299
		 0.45912001 -0.262375 0.79795599 0.54260999 -0.166887 0.80600798 0.56788999 -0.17952099
		 0.86399698 0.47040501 -0.27245599 0.84556299 0.45912001 0.221919 0.82794398 0.51503402
		 0.33277601 0.76611102 0.54984897 0.350272 0.81713003 0.45783001 0.235009 0.87054801
		 0.43234 0.33277601 0.76611102 0.54984897 0.42445499 0.738415 0.524005 0.45225599
		 0.76664102 0.455769 0.350272 0.81713003 0.45783001 -0.51391101 0.72151798 0.46401301
		 -0.49928701 0.68420899 0.53157401 -0.38279301 0.76741201 0.51434201 -0.39594799 0.80150801
		 0.44811901;
	setAttr ".n[1328:1493]" -type "float3"  0.52764499 0.65810502 0.53711098 0.54939502
		 0.68986702 0.47143301 0.45225599 0.76664102 0.455769 0.42445499 0.738415 0.524005
		 -0.59364599 0.59586501 0.54086 -0.49928701 0.68420899 0.53157401 -0.51391101 0.72151798
		 0.46401301 -0.60892397 0.62462002 0.48893899 0.54939502 0.68986702 0.47143301 0.52764499
		 0.65810502 0.53711098 0.61557603 0.567976 0.546323 0.63258398 0.594455 0.49644899
		 -0.62420899 0.52140999 0.58180201 -0.59364599 0.59586501 0.54086 -0.60892397 0.62462002
		 0.48893899 -0.67801201 0.53488898 0.50417697 0.61557603 0.567976 0.546323 0.64327002
		 0.492542 0.58617997 0.69296902 0.50682002 0.51276499 0.63258398 0.594455 0.49644899
		 -0.74350399 0.45173901 0.49308699 -0.69252598 0.44302401 0.56933099 -0.62420899 0.52140999
		 0.58180201 -0.67801201 0.53488898 0.50417697 0.703345 0.416374 0.576141 0.75212997
		 0.42317501 0.50519598 0.69296902 0.50682002 0.51276499 0.64327002 0.492542 0.58617997
		 -0.69252598 0.44302401 0.56933099 -0.74350399 0.45173901 0.49308699 -0.78267401 0.36862299
		 0.50153702 -0.71628797 0.37468299 0.58868003 0.75212997 0.42317501 0.50519598 0.703345
		 0.416374 0.576141 0.72866499 0.340067 0.59447598 0.78853101 0.34538001 0.50885397
		 -0.76551098 0.31558499 0.56071198 -0.71628797 0.37468299 0.58868003 -0.78267401 0.36862299
		 0.50153702 -0.82109898 0.30603099 0.48181 0.78853101 0.34538001 0.50885397 0.72866499
		 0.340067 0.59447598 0.75766701 0.29457599 0.58238 0.81003499 0.300556 0.503497 -0.80810201
		 0.32823801 0.48911199 -0.749623 0.31195199 0.58373898 -0.76551098 0.31558499 0.56071198
		 -0.82109898 0.30603099 0.48181 0.75766701 0.29457599 0.58238 0.745161 0.27875999
		 0.605829 0.812922 0.27622899 0.512694 0.81003499 0.300556 0.503497 -0.749623 0.31195199
		 0.58373898 -0.80810201 0.32823801 0.48911199 -0.79816097 0.36856201 0.476551 -0.71920598
		 0.370496 0.58777201 0.812922 0.27622899 0.512694 0.745161 0.27875999 0.605829 0.75174803
		 0.271063 0.60116601 0.82451802 0.255716 0.50475699 -0.71920598 0.370496 0.58777201
		 -0.79816097 0.36856201 0.476551 -0.82387501 0.323598 0.46531099 -0.72875601 0.34687901
		 0.59041399 0.82451802 0.255716 0.50475699 0.75174803 0.271063 0.60116601 0.762631
		 0.243543 0.59923398 0.83851498 0.2255 0.49602601 -0.72875601 0.34687901 0.59041399
		 -0.82387501 0.323598 0.46531099 -0.84355801 0.26768899 0.46556801 -0.74707502 0.27987099
		 0.602952 0.83851498 0.2255 0.49602601 0.762631 0.243543 0.59923398 0.774212 0.21134201
		 0.59659898 0.84898198 0.194666 0.491258 -0.84505302 0.229864 0.48275 -0.75994098
		 0.21617299 0.61299098 -0.74707502 0.27987099 0.602952 -0.84355801 0.26768899 0.46556801
		 0.774212 0.21134201 0.59659898 0.78634 0.15870599 0.59706002 0.85268098 0.166435
		 0.49521199 0.84898198 0.194666 0.491258 -0.71097702 0.20540801 0.67254698 -0.75994098
		 0.21617299 0.61299098 -0.84505302 0.229864 0.48275 -0.82593 0.22282401 0.51787102
		 0.78634 0.15870599 0.59706002 0.74277198 0.145411 0.65356398 0.83618402 0.16531099
		 0.52294201 0.85268098 0.166435 0.49521199 -0.830607 0.197901 0.52050698 -0.71128303
		 0.196583 0.67485702 -0.71097702 0.20540801 0.67254698 -0.82593 0.22282401 0.51787102
		 0.74277198 0.145411 0.65356398 0.74265099 0.16030601 0.65020901 0.83433503 0.165976
		 0.52567798 0.83618402 0.16531099 0.52294201 -0.71128303 0.196583 0.67485702 -0.830607
		 0.197901 0.52050698 -0.84413701 0.130032 0.52012002 -0.72087801 0.133056 0.68017
		 0.83433503 0.165976 0.52567798 0.74265099 0.16030601 0.65020901 0.74461502 0.146705
		 0.651173 0.83747202 0.148672 0.52586699 -0.72087801 0.133056 0.68017 -0.84413701
		 0.130032 0.52012002 -0.850986 0.082783997 0.51862299 -0.72965401 0.090535998 0.67779601
		 0.83747202 0.148672 0.52586699 0.74461502 0.146705 0.651173 0.74574298 0.134902 0.65243298
		 0.84122902 0.134436 0.5237 -0.72965401 0.090535998 0.67779601 -0.850986 0.082783997
		 0.51862299 -0.85817599 0.058141001 0.51005298 -0.73504901 0.087066002 0.67240101
		 0.84122902 0.134436 0.5237 0.74574298 0.134902 0.65243298 0.74152702 0.152731 0.65330702
		 0.84391397 0.139439 0.51804 -0.80310303 0.044199999 0.59419799 -0.73504901 0.087066002
		 0.67240101 -0.85817599 0.058141001 0.51005298 -0.882994 0.027202001 0.46859601 0.84391397
		 0.139439 0.51804 0.74152702 0.152731 0.65330702 0.790856 0.14304 0.595052 0.86271203
		 0.140582 0.485762 -0.80572999 -0.041689999 0.59081399 -0.80310303 0.044199999 0.59419799
		 -0.882994 0.027202001 0.46859601 -0.89051402 -0.033388 0.45372999 0.790856 0.14304
		 0.595052 0.79100001 0.082345001 0.60624897 0.869012 0.105255 0.483466 0.86271203
		 0.140582 0.485762 -0.80158001 -0.11909 0.58590698 -0.80572999 -0.041689999 0.59081399
		 -0.89051402 -0.033388 0.45372999 -0.88739097 -0.110568 0.44756201 0.79100001 0.082345001
		 0.60624897 0.78639001 0.033082001 0.616844 0.86813998 0.056302998 0.49311599 0.869012
		 0.105255 0.483466 -0.80158001 -0.11909 0.58590698 -0.88739097 -0.110568 0.44756201
		 -0.87857699 -0.17830899 0.44306701 -0.79467201 -0.173647 0.58167303 0.86813998 0.056302998
		 0.49311599 0.78639001 0.033082001 0.616844 0.77974802 0.007365 0.62605 0.86404097
		 0.021291001 0.50297201 -0.79467201 -0.173647 0.58167303 -0.87857699 -0.17830899 0.44306701
		 -0.87001997 -0.23575599 0.432996 -0.79675299 -0.213121 0.56547701 0.86404097 0.021291001
		 0.50297201 0.77974802 0.007365 0.62605 0.77457601 -0.031442001 0.63169801 0.86195099
		 -0.045821998 0.50491703 -0.79675299 -0.213121 0.56547701 -0.87001997 -0.23575599
		 0.432996;
	setAttr ".n[1494:1659]" -type "float3"  -0.85582799 -0.30606401 0.41699299 -0.79643297
		 -0.26817501 0.54201102 0.86195099 -0.045821998 0.50491703 0.77457601 -0.031442001
		 0.63169801 0.77948701 -0.136912 0.61127299 0.85279101 -0.188694 0.486972 -0.82360601
		 -0.407262 0.39473 -0.78361601 -0.37270799 0.497026 -0.79643297 -0.26817501 0.54201102
		 -0.85582799 -0.30606401 0.41699299 0.77948701 -0.136912 0.61127299 0.76712602 -0.31699401
		 0.557702 0.81234199 -0.36742899 0.45287499 0.85279101 -0.188694 0.486972 -0.75695598
		 -0.51732999 0.399234 -0.71101201 -0.48923501 0.505086 -0.78361601 -0.37270799 0.497026
		 -0.82360601 -0.407262 0.39473 0.76712602 -0.31699401 0.557702 0.67634797 -0.48502699
		 0.55434799 0.728163 -0.52504802 0.44057199 0.81234199 -0.36742899 0.45287499 -0.71101201
		 -0.48923501 0.505086 -0.75695598 -0.51732999 0.399234 -0.67652398 -0.61784703 0.40072599
		 -0.641222 -0.57979798 0.502662 0.59189397 -0.59750998 0.54096502 0.63163698 -0.64607799
		 0.428507 0.728163 -0.52504802 0.44057199 0.67634797 -0.48502699 0.55434799 -0.55394
		 -0.68945301 0.46669599 -0.641222 -0.57979798 0.502662 -0.67652398 -0.61784703 0.40072599
		 -0.56342298 -0.73019201 0.38648999 -0.405976 -0.79049999 0.458579 -0.55394 -0.68945301
		 0.46669599 -0.56342298 -0.73019201 0.38648999 -0.41498399 -0.833143 0.36559799 0.49697801
		 -0.71451199 0.492428 0.35432899 -0.804353 0.47693601 0.36126801 -0.85363102 0.37523299
		 0.51070702 -0.75879699 0.40423399 0.63163698 -0.64607799 0.428507 0.59189397 -0.59750998
		 0.54096502 0.49697801 -0.71451199 0.492428 0.51070702 -0.75879699 0.40423399 -0.41498399
		 -0.833143 0.36559799 -0.25752801 -0.89353597 0.36779299 -0.247623 -0.84162802 0.47994301
		 -0.405976 -0.79049999 0.458579 -0.095395997 -0.863078 0.49597999 -0.247623 -0.84162802
		 0.47994301 -0.25752801 -0.89353597 0.36779299 -0.100698 -0.92269403 0.37215 0.052411001
		 -0.86431998 0.50020403 -0.095395997 -0.863078 0.49597999 -0.100698 -0.92269403 0.37215
		 0.056129999 -0.92595297 0.373445 0.20793299 -0.90546799 0.36998901 0.196615 -0.84982097
		 0.48902601 0.052411001 -0.86431998 0.50020403 0.056129999 -0.92595297 0.373445 0.20793299
		 -0.90546799 0.36998901 0.36126801 -0.85363102 0.37523299 0.35432899 -0.804353 0.47693601
		 0.196615 -0.84982097 0.48902601 -0.17702 0.90525699 0.38622999 -0.28704801 0.87500602
		 0.38983101 -0.27245599 0.84556299 0.45912001 -0.17952099 0.86399698 0.47040501 -0.050218001
		 0.93353599 0.35495001 -0.17702 0.90525699 0.38622999 -0.17952099 0.86399698 0.47040501
		 -0.052896999 0.90289801 0.42658901 0.094068997 0.93180501 0.35055599 -0.050218001
		 0.93353599 0.35495001 -0.052896999 0.90289801 0.42658901 0.097278997 0.89799398 0.42911899
		 0.231912 0.90424401 0.35855201 0.094068997 0.93180501 0.35055599 0.097278997 0.89799398
		 0.42911899 0.235009 0.87054801 0.43234 0.352137 0.85735297 0.37542701 0.231912 0.90424401
		 0.35855201 0.235009 0.87054801 0.43234 0.350272 0.81713003 0.45783001 -0.39934701
		 0.83036298 0.38861099 -0.39594799 0.80150801 0.44811901 -0.27245599 0.84556299 0.45912001
		 -0.28704801 0.87500602 0.38983101 0.45225599 0.76664102 0.455769 0.45472401 0.80300599
		 0.38523799 0.352137 0.85735297 0.37542701 0.350272 0.81713003 0.45783001 -0.588094
		 0.70017701 0.40484199 -0.60892397 0.62462002 0.48893899 -0.51391101 0.72151798 0.46401301
		 -0.50125301 0.76992899 0.394912 -0.50125301 0.76992899 0.394912 -0.51391101 0.72151798
		 0.46401301 -0.39594799 0.80150801 0.44811901 -0.39934701 0.83036298 0.38861099 0.54939502
		 0.68986702 0.47143301 0.54150301 0.74093002 0.39723599 0.45472401 0.80300599 0.38523799
		 0.45225599 0.76664102 0.455769 0.54939502 0.68986702 0.47143301 0.63258398 0.594455
		 0.49644899 0.61593997 0.67004299 0.41431901 0.54150301 0.74093002 0.39723599 -0.60892397
		 0.62462002 0.48893899 -0.588094 0.70017701 0.40484199 -0.683851 0.60019702 0.414864
		 0.61593997 0.67004299 0.41431901 0.63258398 0.594455 0.49644899 0.700351 0.57093197
		 0.42842099 -0.67801201 0.53488898 0.50417697 -0.60892397 0.62462002 0.48893899 -0.683851
		 0.60019702 0.414864 -0.74631703 0.518417 0.417438 0.700351 0.57093197 0.42842099
		 0.63258398 0.594455 0.49644899 0.69296902 0.50682002 0.51276499 0.75426102 0.492621
		 0.43406799 -0.74350399 0.45173901 0.49308699 -0.67801201 0.53488898 0.50417697 -0.74631703
		 0.518417 0.417438 -0.800017 0.441302 0.40648001 0.69296902 0.50682002 0.51276499
		 0.75212997 0.42317501 0.50519598 0.80500197 0.41338 0.42554501 0.75426102 0.492621
		 0.43406799 -0.78267401 0.36862299 0.50153702 -0.74350399 0.45173901 0.49308699 -0.800017
		 0.441302 0.40648001 -0.84346402 0.35849899 0.40005901 0.80500197 0.41338 0.42554501
		 0.75212997 0.42317501 0.50519598 0.78853101 0.34538001 0.50885397 0.84125602 0.34150001
		 0.41912699 -0.82109898 0.30603099 0.48181 -0.78267401 0.36862299 0.50153702 -0.84346402
		 0.35849899 0.40005901 -0.86845398 0.30635101 0.38979 0.78853101 0.34538001 0.50885397
		 0.81003499 0.300556 0.503497 0.86072803 0.29931501 0.41177401 0.84125602 0.34150001
		 0.41912699 -0.86024803 0.32398 0.39371499 -0.80810201 0.32823801 0.48911199 -0.82109898
		 0.30603099 0.48181 -0.86845398 0.30635101 0.38979 0.81003499 0.300556 0.503497 0.812922
		 0.27622899 0.512694 0.87176901 0.27019399 0.40867299 0.86072803 0.29931501 0.41177401
		 -0.79816097 0.36856201 0.476551 -0.80810201 0.32823801 0.48911199 -0.86024803 0.32398
		 0.39371499 -0.86919498 0.33713299 0.36172199 0.812922 0.27622899 0.512694 0.82451802
		 0.255716 0.50475699 0.88641798 0.234704 0.39897001 0.87176901 0.27019399 0.40867299
		 -0.82387501 0.323598 0.46531099 -0.79816097 0.36856201 0.476551;
	setAttr ".n[1660:1825]" -type "float3"  -0.86919498 0.33713299 0.36172199 -0.89499301
		 0.29263401 0.33667901 0.82451802 0.255716 0.50475699 0.83851498 0.2255 0.49602601
		 0.89911097 0.20443501 0.38704801 0.88641798 0.234704 0.39897001 -0.90755302 0.25482699
		 0.333781 -0.84355801 0.26768899 0.46556801 -0.82387501 0.323598 0.46531099 -0.89499301
		 0.29263401 0.33667901 0.83851498 0.2255 0.49602601 0.84898198 0.194666 0.491258 0.90764397
		 0.181693 0.378378 0.89911097 0.20443501 0.38704801 -0.84355801 0.26768899 0.46556801
		 -0.90755302 0.25482699 0.333781 -0.91025501 0.233518 0.34191301 -0.84505302 0.229864
		 0.48275 0.90764397 0.181693 0.378378 0.84898198 0.194666 0.491258 0.85268098 0.166435
		 0.49521199 0.91021597 0.168127 0.378472 -0.84505302 0.229864 0.48275 -0.91025501
		 0.233518 0.34191301 -0.909477 0.21631899 0.355046 -0.82593 0.22282401 0.51787102
		 0.91021597 0.168127 0.378472 0.85268098 0.166435 0.49521199 0.83618402 0.16531099
		 0.52294201 0.905406 0.16980501 0.38911 -0.91856998 0.181844 0.350945 -0.830607 0.197901
		 0.52050698 -0.82593 0.22282401 0.51787102 -0.909477 0.21631899 0.355046 0.83618402
		 0.16531099 0.52294201 0.83433503 0.165976 0.52567798 0.90517497 0.16615599 0.39121699
		 0.905406 0.16980501 0.38911 -0.84413701 0.130032 0.52012002 -0.830607 0.197901 0.52050698
		 -0.91856998 0.181844 0.350945 -0.92910099 0.12297 0.348782 0.83433503 0.165976 0.52567798
		 0.83747202 0.148672 0.52586699 0.90903503 0.147884 0.38959599 0.90517497 0.16615599
		 0.39121699 -0.850986 0.082783997 0.51862299 -0.84413701 0.130032 0.52012002 -0.92910099
		 0.12297 0.348782 -0.93389899 0.087425001 0.34668201 0.83747202 0.148672 0.52586699
		 0.84122902 0.134436 0.5237 0.91298902 0.13491499 0.38503101 0.90903503 0.147884 0.38959599
		 -0.85817599 0.058141001 0.51005298 -0.850986 0.082783997 0.51862299 -0.93389899 0.087425001
		 0.34668201 -0.93877101 0.060720999 0.33915001 0.84122902 0.134436 0.5237 0.84391397
		 0.139439 0.51804 0.91543603 0.138079 0.37803701 0.91298902 0.13491499 0.38503101
		 -0.882994 0.027202001 0.46859601 -0.85817599 0.058141001 0.51005298 -0.93877101 0.060720999
		 0.33915001 -0.94713002 0.023356 0.31999999 0.84391397 0.139439 0.51804 0.86271203
		 0.140582 0.485762 0.921776 0.139678 0.36169001 0.91543603 0.138079 0.37803701 -0.882994
		 0.027202001 0.46859601 -0.94713002 0.023356 0.31999999 -0.95029402 -0.029596001 0.30994499
		 -0.89051402 -0.033388 0.45372999 0.921776 0.139678 0.36169001 0.86271203 0.140582
		 0.485762 0.869012 0.105255 0.483466 0.926274 0.1199 0.35726899 -0.88739097 -0.110568
		 0.44756201 -0.89051402 -0.033388 0.45372999 -0.95029402 -0.029596001 0.30994499 -0.94659799
		 -0.104276 0.305087 0.926274 0.1199 0.35726899 0.869012 0.105255 0.483466 0.86813998
		 0.056302998 0.49311599 0.93134898 0.074943997 0.35633299 -0.87857699 -0.17830899
		 0.44306701 -0.88739097 -0.110568 0.44756201 -0.94659799 -0.104276 0.305087 -0.93633801
		 -0.176043 0.30377701 0.86813998 0.056302998 0.49311599 0.86404097 0.021291001 0.50297201
		 0.933828 0.028323 0.35659999 0.93134898 0.074943997 0.35633299 -0.87001997 -0.23575599
		 0.432996 -0.87857699 -0.17830899 0.44306701 -0.93633801 -0.176043 0.30377701 -0.92163801
		 -0.24126901 0.30393001 0.86404097 0.021291001 0.50297201 0.86195099 -0.045821998
		 0.50491703 0.93168598 -0.056473002 0.35884801 0.933828 0.028323 0.35659999 -0.85582799
		 -0.30606401 0.41699299 -0.87001997 -0.23575599 0.432996 -0.92163801 -0.24126901 0.30393001
		 -0.89815098 -0.321621 0.29980901 0.86195099 -0.045821998 0.50491703 0.85279101 -0.188694
		 0.486972 0.912512 -0.213863 0.34868801 0.93168598 -0.056473002 0.35884801 -0.85931897
		 -0.419559 0.29247499 -0.82360601 -0.407262 0.39473 -0.85582799 -0.30606401 0.41699299
		 -0.89815098 -0.321621 0.29980901 0.85279101 -0.188694 0.486972 0.81234199 -0.36742899
		 0.45287499 0.857898 -0.39546999 0.32804599 0.912512 -0.213863 0.34868801 -0.801862
		 -0.520172 0.29400501 -0.75695598 -0.51732999 0.399234 -0.82360601 -0.407262 0.39473
		 -0.85931897 -0.419559 0.29247499 0.81234199 -0.36742899 0.45287499 0.728163 -0.52504802
		 0.44057199 0.77815002 -0.54187 0.31758401 0.857898 -0.39546999 0.32804599 -0.75695598
		 -0.51732999 0.399234 -0.801862 -0.520172 0.29400501 -0.73303902 -0.61238599 0.29603699
		 -0.67652398 -0.61784703 0.40072599 0.728163 -0.52504802 0.44057199 0.63163698 -0.64607799
		 0.428507 0.69695401 -0.648018 0.307129 0.77815002 -0.54187 0.31758401 -0.67652398
		 -0.61784703 0.40072599 -0.73303902 -0.61238599 0.29603699 -0.648458 -0.70565301 0.28558001
		 -0.56342298 -0.73019201 0.38648999 0.63163698 -0.64607799 0.428507 0.51070702 -0.75879699
		 0.40423399 0.603275 -0.74321997 0.28928301 0.69695401 -0.648018 0.307129 -0.56342298
		 -0.73019201 0.38648999 -0.648458 -0.70565301 0.28558001 -0.50910902 -0.81415099 0.27922499
		 -0.50910902 -0.81415099 0.27922499 -0.38238299 -0.883075 0.27195901 -0.41498399 -0.833143
		 0.36559799 -0.56342298 -0.73019201 0.38648999 -0.25752801 -0.89353597 0.36779299
		 -0.41498399 -0.833143 0.36559799 -0.38238299 -0.883075 0.27195901 -0.24617299 -0.93206602
		 0.26580301 -0.100698 -0.92269403 0.37215 -0.25752801 -0.89353597 0.36779299 -0.24617299
		 -0.93206602 0.26580301 -0.096396998 -0.959768 0.26372901 0.20793299 -0.90546799 0.36998901
		 0.056129999 -0.92595297 0.373445 0.056375999 -0.96353501 0.26157501 0.19701201 -0.94476402
		 0.26192901 0.36126801 -0.85363102 0.37523299 0.20793299 -0.90546799 0.36998901 0.19701201
		 -0.94476402 0.26192901 0.330152 -0.90570998 0.26587501 0.455551 -0.84534502 0.279044;
	setAttr ".n[1826:1991]" -type "float3"  0.51070702 -0.75879699 0.40423399 0.36126801
		 -0.85363102 0.37523299 0.330152 -0.90570998 0.26587501 0.603275 -0.74321997 0.28928301
		 0.51070702 -0.75879699 0.40423399 0.455551 -0.84534502 0.279044 -0.096396998 -0.959768
		 0.26372901 0.056375999 -0.96353501 0.26157501 0.056129999 -0.92595297 0.373445 -0.100698
		 -0.92269403 0.37215 -0.17264999 0.93738002 0.30250701 -0.29224601 0.90412098 0.31169999
		 -0.28704801 0.87500602 0.38983101 -0.17702 0.90525699 0.38622999 -0.044039 0.957344
		 0.285575 -0.17264999 0.93738002 0.30250701 -0.17702 0.90525699 0.38622999 -0.050218001
		 0.93353599 0.35495001 0.092252001 0.95587099 0.278927 -0.044039 0.957344 0.285575
		 -0.050218001 0.93353599 0.35495001 0.094068997 0.93180501 0.35055599 0.22711299 0.93122298
		 0.285034 0.092252001 0.95587099 0.278927 0.094068997 0.93180501 0.35055599 0.231912
		 0.90424401 0.35855201 0.35032901 0.88739699 0.29966101 0.22711299 0.93122298 0.285034
		 0.231912 0.90424401 0.35855201 0.352137 0.85735297 0.37542701 -0.51975101 0.796287
		 0.30949301 -0.50125301 0.76992899 0.394912 -0.39934701 0.83036298 0.38861099 -0.40939301
		 0.85672802 0.31371099 -0.40939301 0.85672802 0.31371099 -0.39934701 0.83036298 0.38861099
		 -0.28704801 0.87500602 0.38983101 -0.29224601 0.90412098 0.31169999 0.45472401 0.80300599
		 0.38523799 0.45902699 0.83214498 0.31117401 0.35032901 0.88739699 0.29966101 0.352137
		 0.85735297 0.37542701 0.45472401 0.80300599 0.38523799 0.54150301 0.74093002 0.39723599
		 0.55351502 0.77177501 0.31302401 0.45902699 0.83214498 0.31117401 -0.62436301 0.71791297
		 0.30784899 -0.588094 0.70017701 0.40484199 -0.50125301 0.76992899 0.394912 -0.51975101
		 0.796287 0.30949301 0.54150301 0.74093002 0.39723599 0.61593997 0.67004299 0.41431901
		 0.64440203 0.69506103 0.31880599 0.55351502 0.77177501 0.31302401 -0.683851 0.60019702
		 0.414864 -0.588094 0.70017701 0.40484199 -0.62436301 0.71791297 0.30784899 -0.72340399
		 0.61766702 0.30850101 0.64440203 0.69506103 0.31880599 0.61593997 0.67004299 0.41431901
		 0.700351 0.57093197 0.42842099 0.73626697 0.59313899 0.32572699 -0.74631703 0.518417
		 0.417438 -0.683851 0.60019702 0.414864 -0.72340399 0.61766702 0.30850101 -0.794824
		 0.52104002 0.31108099 0.700351 0.57093197 0.42842099 0.75426102 0.492621 0.43406799
		 0.80198199 0.49806201 0.329786 0.73626697 0.59313899 0.32572699 -0.800017 0.441302
		 0.40648001 -0.74631703 0.518417 0.417438 -0.794824 0.52104002 0.31108099 -0.84818703
		 0.43425101 0.30332199 0.80198199 0.49806201 0.329786 0.75426102 0.492621 0.43406799
		 0.80500197 0.41338 0.42554501 0.85222203 0.41012701 0.32482901 -0.84346402 0.35849899
		 0.40005901 -0.800017 0.441302 0.40648001 -0.84818703 0.43425101 0.30332199 -0.88933402
		 0.35264799 0.29107401 0.80500197 0.41338 0.42554501 0.84125602 0.34150001 0.41912699
		 0.88711798 0.33730301 0.31503901 0.85222203 0.41012701 0.32482901 -0.84346402 0.35849899
		 0.40005901 -0.88933402 0.35264799 0.29107401 -0.90661001 0.31027499 0.28598699 -0.86845398
		 0.30635101 0.38979 0.88711798 0.33730301 0.31503901 0.84125602 0.34150001 0.41912699
		 0.86072803 0.29931501 0.41177401 0.90544498 0.29406601 0.306097 -0.86845398 0.30635101
		 0.38979 -0.90661001 0.31027499 0.28598699 -0.91073602 0.30797699 0.27515399 -0.86024803
		 0.32398 0.39371499 0.90544498 0.29406601 0.306097 0.86072803 0.29931501 0.41177401
		 0.87176901 0.27019399 0.40867299 0.91979098 0.257952 0.29571301 -0.86024803 0.32398
		 0.39371499 -0.91073602 0.30797699 0.27515399 -0.92570102 0.29177701 0.240714 -0.86919498
		 0.33713299 0.36172199 0.91979098 0.257952 0.29571301 0.87176901 0.27019399 0.40867299
		 0.88641798 0.234704 0.39897001 0.93443 0.21857101 0.28118801 -0.86919498 0.33713299
		 0.36172199 -0.92570102 0.29177701 0.240714 -0.94444501 0.25881299 0.202583 -0.89499301
		 0.29263401 0.33667901 0.93443 0.21857101 0.28118801 0.88641798 0.234704 0.39897001
		 0.89911097 0.20443501 0.38704801 0.94567198 0.185693 0.26687801 -0.95238203 0.239114
		 0.18919 -0.90755302 0.25482699 0.333781 -0.89499301 0.29263401 0.33667901 -0.94444501
		 0.25881299 0.202583 0.89911097 0.20443501 0.38704801 0.90764397 0.181693 0.378378
		 0.95194799 0.167417 0.25644901 0.94567198 0.185693 0.26687801 -0.91025501 0.233518
		 0.34191301 -0.90755302 0.25482699 0.333781 -0.95238203 0.239114 0.18919 -0.95830899
		 0.218263 0.184403 0.90764397 0.181693 0.378378 0.91021597 0.168127 0.378472 0.95351601
		 0.164435 0.25252399 0.95194799 0.167417 0.25644901 -0.96234399 0.195264 0.189119
		 -0.909477 0.21631899 0.355046 -0.91025501 0.233518 0.34191301 -0.95830899 0.218263
		 0.184403 0.91021597 0.168127 0.378472 0.905406 0.16980501 0.38911 0.95247698 0.169542
		 0.253068 0.95351601 0.164435 0.25252399 -0.909477 0.21631899 0.355046 -0.96234399
		 0.195264 0.189119 -0.96958399 0.166347 0.17954201 -0.91856998 0.181844 0.350945 0.95247698
		 0.169542 0.253068 0.905406 0.16980501 0.38911 0.90517497 0.16615599 0.39121699 0.95344698
		 0.16431101 0.25286499 -0.91856998 0.181844 0.350945 -0.96958399 0.166347 0.17954201
		 -0.97736198 0.120594 0.173842 -0.92910099 0.12297 0.348782 0.95344698 0.16431101
		 0.25286499 0.90517497 0.16615599 0.39121699 0.90903503 0.147884 0.38959599 0.95757902
		 0.144741 0.249183 -0.92910099 0.12297 0.348782 -0.97736198 0.120594 0.173842 -0.98164201
		 0.085818999 0.17033499 -0.93389899 0.087425001 0.34668201 0.95757902 0.144741 0.249183
		 0.90903503 0.147884 0.38959599 0.91298902 0.13491499 0.38503101 0.96096802 0.13334499
		 0.242405;
	setAttr ".n[1992:2157]" -type "float3"  -0.93389899 0.087425001 0.34668201 -0.98164201
		 0.085818999 0.17033499 -0.98477602 0.060538001 0.162947 -0.93877101 0.060720999 0.33915001
		 0.96096802 0.13334499 0.242405 0.91298902 0.13491499 0.38503101 0.91543603 0.138079
		 0.37803701 0.96201903 0.138146 0.235447 -0.93877101 0.060720999 0.33915001 -0.98477602
		 0.060538001 0.162947 -0.98663002 0.030515 0.16009399 -0.94713002 0.023356 0.31999999
		 0.96201903 0.138146 0.235447 0.91543603 0.138079 0.37803701 0.921776 0.139678 0.36169001
		 0.96410799 0.14238501 0.224104 -0.95029402 -0.029596001 0.30994499 -0.94713002 0.023356
		 0.31999999 -0.98663002 0.030515 0.16009399 -0.98705101 -0.017914001 0.1594 0.96410799
		 0.14238501 0.224104 0.921776 0.139678 0.36169001 0.926274 0.1199 0.35726899 0.96931797
		 0.120002 0.214527 -0.94659799 -0.104276 0.305087 -0.95029402 -0.029596001 0.30994499
		 -0.98705101 -0.017914001 0.1594 -0.98331398 -0.091128998 0.157443 0.926274 0.1199
		 0.35726899 0.93134898 0.074943997 0.35633299 0.97685403 0.069357 0.20235001 0.96931797
		 0.120002 0.214527 -0.94659799 -0.104276 0.305087 -0.98331398 -0.091128998 0.157443
		 -0.97267503 -0.16370399 0.164636 -0.93633801 -0.176043 0.30377701 0.97685403 0.069357
		 0.20235001 0.93134898 0.074943997 0.35633299 0.933828 0.028323 0.35659999 0.98059601
		 0.029527999 0.193801 -0.93633801 -0.176043 0.30377701 -0.97267503 -0.16370399 0.164636
		 -0.95625401 -0.235797 0.173144 -0.92163801 -0.24126901 0.30393001 0.98059601 0.029527999
		 0.193801 0.933828 0.028323 0.35659999 0.93168598 -0.056473002 0.35884801 0.97939599
		 -0.058882002 0.19317301 -0.92163801 -0.24126901 0.30393001 -0.95625401 -0.235797
		 0.173144 -0.92896903 -0.32354701 0.179818 -0.89815098 -0.321621 0.29980901 0.97939599
		 -0.058882002 0.19317301 0.93168598 -0.056473002 0.35884801 0.912512 -0.213863 0.34868801
		 0.95466 -0.2318 0.18679699 -0.88707298 -0.424119 0.182276 -0.85931897 -0.419559 0.29247499
		 -0.89815098 -0.321621 0.29980901 -0.92896903 -0.32354701 0.179818 0.912512 -0.213863
		 0.34868801 0.857898 -0.39546999 0.32804599 0.89542401 -0.40839401 0.177288 0.95466
		 -0.2318 0.18679699 -0.82997602 -0.52694899 0.18293101 -0.801862 -0.520172 0.29400501
		 -0.85931897 -0.419559 0.29247499 -0.88707298 -0.424119 0.182276 0.857898 -0.39546999
		 0.32804599 0.77815002 -0.54187 0.31758401 0.81389099 -0.554932 0.172139 0.89542401
		 -0.40839401 0.177288 -0.801862 -0.520172 0.29400501 -0.82997602 -0.52694899 0.18293101
		 -0.75886798 -0.62643701 0.17803501 -0.73303902 -0.61238599 0.29603699 0.69695401
		 -0.648018 0.307129 0.72482997 -0.66906601 0.164233 0.81389099 -0.554932 0.172139
		 0.77815002 -0.54187 0.31758401 -0.73303902 -0.61238599 0.29603699 -0.75886798 -0.62643701
		 0.17803501 -0.66108 -0.73229003 0.163478 -0.648458 -0.70565301 0.28558001 0.603275
		 -0.74321997 0.28928301 0.62052602 -0.77097899 0.14331301 0.72482997 -0.66906601 0.164233
		 0.69695401 -0.648018 0.307129 -0.66108 -0.73229003 0.163478 -0.52560502 -0.83559299
		 0.159758 -0.50910902 -0.81415099 0.27922499 -0.648458 -0.70565301 0.28558001 -0.38238299
		 -0.883075 0.27195901 -0.50910902 -0.81415099 0.27922499 -0.52560502 -0.83559299 0.159758
		 -0.38410699 -0.90823799 0.16602901 -0.24617299 -0.93206602 0.26580301 -0.38238299
		 -0.883075 0.27195901 -0.38410699 -0.90823799 0.16602901 -0.24179 -0.95553201 0.168807
		 0.330152 -0.90570998 0.26587501 0.33455399 -0.93123198 0.144502 0.476881 -0.867809
		 0.139612 0.455551 -0.84534502 0.279044 0.476881 -0.867809 0.139612 0.62052602 -0.77097899
		 0.14331301 0.603275 -0.74321997 0.28928301 0.455551 -0.84534502 0.279044 -0.24179
		 -0.95553201 0.168807 -0.093842998 -0.98294199 0.15817399 -0.096396998 -0.959768 0.26372901
		 -0.24617299 -0.93206602 0.26580301 -0.093842998 -0.98294199 0.15817399 0.05734 -0.98569399
		 0.15848801 0.056375999 -0.96353501 0.26157501 -0.096396998 -0.959768 0.26372901 0.05734
		 -0.98569399 0.15848801 0.200443 -0.96831602 0.148949 0.19701201 -0.94476402 0.26192901
		 0.056375999 -0.96353501 0.26157501 0.200443 -0.96831602 0.148949 0.33455399 -0.93123198
		 0.144502 0.330152 -0.90570998 0.26587501 0.19701201 -0.94476402 0.26192901 -0.418084
		 0.87852001 0.231103 -0.40939301 0.85672802 0.31371099 -0.29224601 0.90412098 0.31169999
		 -0.29487899 0.929784 0.22033601 -0.17058 0.96288002 0.20920099 -0.29487899 0.929784
		 0.22033601 -0.29224601 0.90412098 0.31169999 -0.17264999 0.93738002 0.30250701 -0.17058
		 0.96288002 0.20920099 -0.17264999 0.93738002 0.30250701 -0.044039 0.957344 0.285575
		 -0.040683001 0.97968698 0.196365 -0.044039 0.957344 0.285575 0.092252001 0.95587099
		 0.278927 0.092933998 0.97668499 0.193517 -0.040683001 0.97968698 0.196365 0.092252001
		 0.95587099 0.278927 0.22711299 0.93122298 0.285034 0.221595 0.954256 0.200729 0.092933998
		 0.97668499 0.193517 0.343795 0.91431302 0.214094 0.221595 0.954256 0.200729 0.22711299
		 0.93122298 0.285034 0.35032901 0.88739699 0.29966101 0.35032901 0.88739699 0.29966101
		 0.45902699 0.83214498 0.31117401 0.461018 0.857265 0.229259 0.343795 0.91431302 0.214094
		 -0.53807801 0.808873 0.237059 -0.51975101 0.796287 0.30949301 -0.40939301 0.85672802
		 0.31371099 -0.418084 0.87852001 0.231103 0.45902699 0.83214498 0.31117401 0.55351502
		 0.77177501 0.31302401 0.568753 0.78737098 0.237838 0.461018 0.857265 0.229259 -0.65372401
		 0.72231001 0.225641 -0.62436301 0.71791297 0.30784899 -0.51975101 0.796287 0.30949301
		 -0.53807801 0.808873 0.237059 0.64440203 0.69506103 0.31880599 0.671956 0.70290899
		 0.233226;
	setAttr ".n[2158:2323]" -type "float3"  0.568753 0.78737098 0.237838 0.55351502
		 0.77177501 0.31302401 -0.75387502 0.62140399 0.213377 -0.72340399 0.61766702 0.30850101
		 -0.62436301 0.71791297 0.30784899 -0.65372401 0.72231001 0.225641 0.73626697 0.59313899
		 0.32572699 0.76651299 0.600218 0.22846501 0.671956 0.70290899 0.233226 0.64440203
		 0.69506103 0.31880599 -0.72340399 0.61766702 0.30850101 -0.75387502 0.62140399 0.213377
		 -0.82871699 0.521231 0.20383 -0.794824 0.52104002 0.31108099 0.76651299 0.600218
		 0.22846501 0.73626697 0.59313899 0.32572699 0.80198199 0.49806201 0.329786 0.836631
		 0.50169498 0.21989 -0.88317102 0.42885301 0.18998601 -0.84818703 0.43425101 0.30332199
		 -0.794824 0.52104002 0.31108099 -0.82871699 0.521231 0.20383 0.85222203 0.41012701
		 0.32482901 0.887748 0.41068599 0.20794199 0.836631 0.50169498 0.21989 0.80198199
		 0.49806201 0.329786 -0.84818703 0.43425101 0.30332199 -0.88317102 0.42885301 0.18998601
		 -0.92033201 0.34963399 0.175341 -0.88933402 0.35264799 0.29107401 0.887748 0.41068599
		 0.20794199 0.85222203 0.41012701 0.32482901 0.88711798 0.33730301 0.31503901 0.92101699
		 0.33525401 0.19832601 -0.88933402 0.35264799 0.29107401 -0.92033201 0.34963399 0.175341
		 -0.93891197 0.30140299 0.166134 -0.90661001 0.31027499 0.28598699 0.92101699 0.33525401
		 0.19832601 0.88711798 0.33730301 0.31503901 0.90544498 0.29406601 0.306097 0.938694
		 0.28894901 0.188051 -0.90661001 0.31027499 0.28598699 -0.93891197 0.30140299 0.166134
		 -0.949884 0.28003201 0.13892999 -0.91073602 0.30797699 0.27515399 0.938694 0.28894901
		 0.188051 0.90544498 0.29406601 0.306097 0.91979098 0.257952 0.29571301 0.95355701
		 0.24553999 0.17446899 -0.91073602 0.30797699 0.27515399 -0.949884 0.28003201 0.13892999
		 -0.96423 0.24603499 0.098623 -0.92570102 0.29177701 0.240714 0.95355701 0.24553999
		 0.17446899 0.91979098 0.257952 0.29571301 0.93443 0.21857101 0.28118801 0.96787602
		 0.198351 0.154511 -0.92570102 0.29177701 0.240714 -0.96423 0.24603499 0.098623 -0.97495502
		 0.21362001 0.061882999 -0.94444501 0.25881299 0.202583 0.96787602 0.198351 0.154511
		 0.93443 0.21857101 0.28118801 0.94567198 0.185693 0.26687801 0.97614902 0.169672
		 0.135445 -0.94444501 0.25881299 0.202583 -0.97495502 0.21362001 0.061882999 -0.97745299
		 0.207122 0.041060999 -0.95238203 0.239114 0.18919 0.97614902 0.169672 0.135445 0.94567198
		 0.185693 0.26687801 0.95194799 0.167417 0.25644901 0.97954601 0.159108 0.123182 -0.95238203
		 0.239114 0.18919 -0.97745299 0.207122 0.041060999 -0.97877598 0.203045 0.027764 -0.95830899
		 0.218263 0.184403 0.97954601 0.159108 0.123182 0.95194799 0.167417 0.25644901 0.95351601
		 0.164435 0.25252399 0.980443 0.16003899 0.114538 -0.95830899 0.218263 0.184403 -0.97877598
		 0.203045 0.027764 -0.98318797 0.18119401 0.022595 -0.96234399 0.195264 0.189119 0.95247698
		 0.169542 0.253068 0.97961801 0.16815799 0.109874 0.980443 0.16003899 0.114538 0.95351601
		 0.164435 0.25252399 -0.96234399 0.195264 0.189119 -0.98318797 0.18119401 0.022595
		 -0.98955202 0.143775 0.010745 -0.96958399 0.166347 0.17954201 0.97961801 0.16815799
		 0.109874 0.95247698 0.169542 0.253068 0.95344698 0.16431101 0.25286499 0.981067 0.162273
		 0.105714 -0.96958399 0.166347 0.17954201 -0.98955202 0.143775 0.010745 -0.994012
		 0.109269 -1.6e-05 -0.97736198 0.120594 0.173842 0.981067 0.162273 0.105714 0.95344698
		 0.16431101 0.25286499 0.95757902 0.144741 0.249183 0.98521 0.139487 0.099522002 -0.97736198
		 0.120594 0.173842 -0.994012 0.109269 -1.6e-05 -0.99625897 0.086282 -0.0047419998
		 -0.98164201 0.085818999 0.17033499 0.98521 0.139487 0.099522002 0.95757902 0.144741
		 0.249183 0.96096802 0.13334499 0.242405 0.98747802 0.128373 0.091692001 -0.98164201
		 0.085818999 0.17033499 -0.99625897 0.086282 -0.0047419998 -0.997379 0.072137997 -0.0055479999
		 -0.98477602 0.060538001 0.162947 0.98747802 0.128373 0.091692001 0.96096802 0.13334499
		 0.242405 0.96201903 0.138146 0.235447 0.98770303 0.131413 0.084693998 -0.98663002
		 0.030515 0.16009399 -0.98477602 0.060538001 0.162947 -0.997379 0.072137997 -0.0055479999
		 -0.99886101 0.047288001 0.0063669998 0.98770303 0.131413 0.084693998 0.96201903 0.138146
		 0.235447 0.96410799 0.14238501 0.224104 0.98872799 0.130218 0.073886998 -0.98705101
		 -0.017914001 0.1594 -0.98663002 0.030515 0.16009399 -0.99886101 0.047288001 0.0063669998
		 -0.99992502 -0.00661 0.010317 0.96410799 0.14238501 0.224104 0.96931797 0.120002
		 0.214527 0.99268299 0.106684 0.056566998 0.98872799 0.130218 0.073886998 -0.98705101
		 -0.017914001 0.1594 -0.99992502 -0.00661 0.010317 -0.99710101 -0.075413004 0.010088
		 -0.98331398 -0.091128998 0.157443 0.99268299 0.106684 0.056566998 0.96931797 0.120002
		 0.214527 0.97685403 0.069357 0.20235001 0.99731898 0.059232 0.042959999 -0.98331398
		 -0.091128998 0.157443 -0.99710101 -0.075413004 0.010088 -0.98949802 -0.14274099 0.022791
		 -0.97267503 -0.16370399 0.164636 0.99731898 0.059232 0.042959999 0.97685403 0.069357
		 0.20235001 0.98059601 0.029527999 0.193801 0.99916297 0.021190999 0.034977 -0.97267503
		 -0.16370399 0.164636 -0.98949802 -0.14274099 0.022791 -0.97517198 -0.21781699 0.039949
		 -0.95625401 -0.235797 0.173144 0.99916297 0.021190999 0.034977 0.98059601 0.029527999
		 0.193801 0.97939599 -0.058882002 0.19317301 0.99759698 -0.065619998 0.022219 -0.95625401
		 -0.235797 0.173144 -0.97517198 -0.21781699 0.039949 -0.94837201 -0.31214499 0.056187
		 -0.92896903 -0.32354701 0.179818;
	setAttr ".n[2324:2489]" -type "float3"  0.99759698 -0.065619998 0.022219 0.97939599
		 -0.058882002 0.19317301 0.95466 -0.2318 0.18679699 0.97207397 -0.233529 0.023158001
		 -0.92896903 -0.32354701 0.179818 -0.94837201 -0.31214499 0.056187 -0.90485299 -0.42037499
		 0.067277998 -0.88707298 -0.424119 0.182276 0.97207397 -0.233529 0.023158001 0.95466
		 -0.2318 0.18679699 0.89542401 -0.40839401 0.177288 0.91136599 -0.41088399 0.024235999
		 -0.88707298 -0.424119 0.182276 -0.90485299 -0.42037499 0.067277998 -0.84522498 -0.52922201
		 0.074286997 -0.82997602 -0.52694899 0.18293101 0.81389099 -0.554932 0.172139 0.83221197
		 -0.55389702 0.024932001 0.91136599 -0.41088399 0.024235999 0.89542401 -0.40839401
		 0.177288 -0.82997602 -0.52694899 0.18293101 -0.84522498 -0.52922201 0.074286997 -0.76971
		 -0.63393497 0.075317003 -0.75886798 -0.62643701 0.17803501 0.72482997 -0.66906601
		 0.164233 0.74039501 -0.671444 0.031275 0.83221197 -0.55389702 0.024932001 0.81389099
		 -0.554932 0.172139 -0.75886798 -0.62643701 0.17803501 -0.76971 -0.63393497 0.075317003
		 -0.66835397 -0.74061799 0.069195002 -0.66108 -0.73229003 0.163478 0.62052602 -0.77097899
		 0.14331301 0.62880701 -0.77697498 0.03019 0.74039501 -0.671444 0.031275 0.72482997
		 -0.66906601 0.164233 -0.66835397 -0.74061799 0.069195002 -0.53695899 -0.84069002
		 0.070114002 -0.52560502 -0.83559299 0.159758 -0.66108 -0.73229003 0.163478 -0.52560502
		 -0.83559299 0.159758 -0.53695899 -0.84069002 0.070114002 -0.39286101 -0.91652203
		 0.075153999 -0.38410699 -0.90823799 0.16602901 0.33455399 -0.93123198 0.144502 0.343108
		 -0.93879098 0.030805999 0.48981899 -0.87139899 0.027213 0.476881 -0.867809 0.139612
		 0.48981899 -0.87139899 0.027213 0.62880701 -0.77697498 0.03019 0.62052602 -0.77097899
		 0.14331301 0.476881 -0.867809 0.139612 -0.39286101 -0.91652203 0.075153999 -0.23845901
		 -0.96851403 0.071539 -0.24179 -0.95553201 0.168807 -0.38410699 -0.90823799 0.16602901
		 -0.23845901 -0.96851403 0.071539 -0.087361 -0.99453902 0.057108 -0.093842998 -0.98294199
		 0.15817399 -0.24179 -0.95553201 0.168807 -0.087361 -0.99453902 0.057108 0.064104997
		 -0.99684203 0.046873 0.05734 -0.98569399 0.15848801 -0.093842998 -0.98294199 0.15817399
		 0.064104997 -0.99684203 0.046873 0.21029299 -0.97689301 0.038166001 0.200443 -0.96831602
		 0.148949 0.05734 -0.98569399 0.15848801 0.21029299 -0.97689301 0.038166001 0.343108
		 -0.93879098 0.030805999 0.33455399 -0.93123198 0.144502 0.200443 -0.96831602 0.148949
		 0.088134997 0.99244601 0.085341997 -0.038121 0.995143 0.090755999 -0.040683001 0.97968698
		 0.196365 0.092933998 0.97668499 0.193517 -0.285447 0.95228601 0.10804 -0.39176899
		 0.91323501 0.111889 -0.418084 0.87852001 0.231103 -0.29487899 0.929784 0.22033601
		 -0.164463 0.98114997 0.101476 -0.285447 0.95228601 0.10804 -0.29487899 0.929784 0.22033601
		 -0.17058 0.96288002 0.20920099 -0.164463 0.98114997 0.101476 -0.17058 0.96288002
		 0.20920099 -0.040683001 0.97968698 0.196365 -0.038121 0.995143 0.090755999 0.221595
		 0.954256 0.200729 0.21590699 0.97244298 0.087975003 0.088134997 0.99244601 0.085341997
		 0.092933998 0.97668499 0.193517 0.33541799 0.93737102 0.093969002 0.21590699 0.97244298
		 0.087975003 0.221595 0.954256 0.200729 0.343795 0.91431302 0.214094 0.43761799 0.893695
		 0.098999001 0.33541799 0.93737102 0.093969002 0.343795 0.91431302 0.214094 0.461018
		 0.857265 0.229259 -0.418084 0.87852001 0.231103 -0.39176899 0.91323501 0.111889 -0.52094001
		 0.84662098 0.108884 -0.53807801 0.808873 0.237059 0.55612499 0.824314 0.105977 0.43761799
		 0.893695 0.098999001 0.461018 0.857265 0.229259 0.568753 0.78737098 0.237838 -0.58718097
		 0.80162102 0.112352 -0.70422101 0.70184499 0.107174 -0.65372401 0.72231001 0.225641
		 -0.53807801 0.808873 0.237059 -0.58718097 0.80162102 0.112352 -0.53807801 0.808873
		 0.237059 -0.52094001 0.84662098 0.108884 -0.56270403 0.82609898 -0.030414 0.607355
		 0.78702801 0.108196 0.58182502 0.812581 -0.034533001 0.55612499 0.824314 0.105977
		 0.568753 0.78737098 0.237838 0.671956 0.70290899 0.233226 0.71418601 0.69109398 0.111025
		 0.607355 0.78702801 0.108196 0.568753 0.78737098 0.237838 -0.78482801 0.612073 0.097020999
		 -0.75387502 0.62140399 0.213377 -0.65372401 0.72231001 0.225641 -0.70422101 0.70184499
		 0.107174 0.76651299 0.600218 0.22846501 0.79426003 0.597633 0.109482 0.71418601 0.69109398
		 0.111025 0.671956 0.70290899 0.233226 -0.75387502 0.62140399 0.213377 -0.78482801
		 0.612073 0.097020999 -0.852615 0.51652801 0.079034999 -0.82871699 0.521231 0.20383
		 0.79426003 0.597633 0.109482 0.76651299 0.600218 0.22846501 0.836631 0.50169498 0.21989
		 0.860964 0.49976 0.094768003 -0.90377897 0.42321 0.063855 -0.88317102 0.42885301
		 0.18998601 -0.82871699 0.521231 0.20383 -0.852615 0.51652801 0.079034999 0.887748
		 0.41068599 0.20794199 0.90810299 0.410927 0.080548003 0.860964 0.49976 0.094768003
		 0.836631 0.50169498 0.21989 -0.88317102 0.42885301 0.18998601 -0.90377897 0.42321
		 0.063855 -0.93765599 0.34382901 0.050827999 -0.92033201 0.34963399 0.175341 0.90810299
		 0.410927 0.080548003 0.887748 0.41068599 0.20794199 0.92101699 0.33525401 0.19832601
		 0.93871599 0.33761001 0.069514997 -0.92033201 0.34963399 0.175341 -0.93765599 0.34382901
		 0.050827999 -0.95782799 0.28494501 0.03703 -0.93891197 0.30140299 0.166134 0.93871599
		 0.33761001 0.069514997 0.92101699 0.33525401 0.19832601 0.938694 0.28894901 0.188051
		 0.95655501 0.28567401 0.058253001 -0.93891197 0.30140299 0.166134 -0.95782799 0.28494501
		 0.03703;
	setAttr ".n[2490:2655]" -type "float3"  -0.97057098 0.240693 0.0076219998 -0.949884
		 0.28003201 0.13892999 0.95655501 0.28567401 0.058253001 0.938694 0.28894901 0.188051
		 0.95355701 0.24553999 0.17446899 0.971838 0.232024 0.041182 -0.949884 0.28003201
		 0.13892999 -0.97057098 0.240693 0.0076219998 -0.97878999 0.20238701 -0.031761002
		 -0.96423 0.24603499 0.098623 0.971838 0.232024 0.041182 0.95355701 0.24553999 0.17446899
		 0.96787602 0.198351 0.154511 0.98341298 0.180326 0.019543 -0.96423 0.24603499 0.098623
		 -0.97878999 0.20238701 -0.031761002 -0.98136401 0.182408 -0.060433999 -0.97495502
		 0.21362001 0.061882999 0.98341298 0.180326 0.019543 0.96787602 0.198351 0.154511
		 0.97614902 0.169672 0.135445 0.988141 0.153547 -0.00079000002 -0.97495502 0.21362001
		 0.061882999 -0.98136401 0.182408 -0.060433999 -0.97971499 0.181889 -0.084119 -0.97745299
		 0.207122 0.041060999 0.988141 0.153547 -0.00079000002 0.97614902 0.169672 0.135445
		 0.97954601 0.159108 0.123182 0.98907298 0.14640599 -0.01732 -0.97745299 0.207122
		 0.041060999 -0.97971499 0.181889 -0.084119 -0.97851402 0.17574801 -0.107809 -0.97877598
		 0.203045 0.027764 0.98907298 0.14640599 -0.01732 0.97954601 0.159108 0.123182 0.980443
		 0.16003899 0.114538 0.987876 0.1523 -0.030088 -0.97877598 0.203045 0.027764 -0.97851402
		 0.17574801 -0.107809 -0.97944802 0.154293 -0.129908 -0.98318797 0.18119401 0.022595
		 0.97961801 0.16815799 0.109874 0.985825 0.163224 -0.038826 0.987876 0.1523 -0.030088
		 0.980443 0.16003899 0.114538 -0.98318797 0.18119401 0.022595 -0.97944802 0.154293
		 -0.129908 -0.98086298 0.124281 -0.149874 -0.98955202 0.143775 0.010745 0.985825 0.163224
		 -0.038826 0.97961801 0.16815799 0.109874 0.981067 0.162273 0.105714 0.98655301 0.15656599
		 -0.046907999 -0.98955202 0.143775 0.010745 -0.98086298 0.124281 -0.149874 -0.98197198
		 0.099339001 -0.160822 -0.994012 0.109269 -1.6e-05 0.98655301 0.15656599 -0.046907999
		 0.981067 0.162273 0.105714 0.98521 0.139487 0.099522002 0.989645 0.133127 -0.053667001
		 -0.994012 0.109269 -1.6e-05 -0.98197198 0.099339001 -0.160822 -0.98276299 0.087319002
		 -0.16295099 -0.99625897 0.086282 -0.0047419998 0.989645 0.133127 -0.053667001 0.98521
		 0.139487 0.099522002 0.98747802 0.128373 0.091692001 0.99078101 0.121845 -0.059222002
		 -0.99625897 0.086282 -0.0047419998 -0.98276299 0.087319002 -0.16295099 -0.98341298
		 0.090387002 -0.15725701 -0.997379 0.072137997 -0.0055479999 0.99078101 0.121845 -0.059222002
		 0.98747802 0.128373 0.091692001 0.98770303 0.131413 0.084693998 0.99028802 0.123446
		 -0.063963003 -0.98683298 0.068954997 -0.14630499 -0.99886101 0.047288001 0.0063669998
		 -0.997379 0.072137997 -0.0055479999 -0.98341298 0.090387002 -0.15725701 0.98872799
		 0.130218 0.073886998 0.99083298 0.114142 -0.072260998 0.99028802 0.123446 -0.063963003
		 0.98770303 0.131413 0.084693998 -0.99886101 0.047288001 0.0063669998 -0.98683298
		 0.068954997 -0.14630499 -0.99030203 0.0048520002 -0.138846 -0.99992502 -0.00661 0.010317
		 0.99083298 0.114142 -0.072260998 0.98872799 0.130218 0.073886998 0.99268299 0.106684
		 0.056566998 0.99217701 0.088018999 -0.088536002 -0.99992502 -0.00661 0.010317 -0.99030203
		 0.0048520002 -0.138846 -0.98936301 -0.058949001 -0.132985 -0.99710101 -0.075413004
		 0.010088 0.99217701 0.088018999 -0.088536002 0.99268299 0.106684 0.056566998 0.99731898
		 0.059232 0.042959999 0.99314898 0.048193 -0.106457 -0.99710101 -0.075413004 0.010088
		 -0.98936301 -0.058949001 -0.132985 -0.98638803 -0.115904 -0.116643 -0.98949802 -0.14274099
		 0.022791 0.99314898 0.048193 -0.106457 0.99731898 0.059232 0.042959999 0.99916297
		 0.021190999 0.034977 0.99377501 0.0072309999 -0.111168 -0.98949802 -0.14274099 0.022791
		 -0.98638803 -0.115904 -0.116643 -0.97712898 -0.191012 -0.093452998 -0.97517198 -0.21781699
		 0.039949 0.99377501 0.0072309999 -0.111168 0.99916297 0.021190999 0.034977 0.99759698
		 -0.065619998 0.022219 0.98983902 -0.072058998 -0.122585 -0.97517198 -0.21781699 0.039949
		 -0.97712898 -0.191012 -0.093452998 -0.95401299 -0.29118699 -0.071203001 -0.94837201
		 -0.31214499 0.056187 0.98983902 -0.072058998 -0.122585 0.99759698 -0.065619998 0.022219
		 0.97207397 -0.233529 0.023158001 0.96610397 -0.227562 -0.121898 -0.94837201 -0.31214499
		 0.056187 -0.95401299 -0.29118699 -0.071203001 -0.913131 -0.40436801 -0.051746 -0.90485299
		 -0.42037499 0.067277998 0.96610397 -0.227562 -0.121898 0.97207397 -0.233529 0.023158001
		 0.91136599 -0.41088399 0.024235999 0.90857702 -0.40141001 -0.115575 -0.90485299 -0.42037499
		 0.067277998 -0.913131 -0.40436801 -0.051746 -0.85494399 -0.51761103 -0.033907 -0.84522498
		 -0.52922201 0.074286997 0.83221197 -0.55389702 0.024932001 0.83580798 -0.53955901
		 -0.10149 0.90857702 -0.40141001 -0.115575 0.91136599 -0.41088399 0.024235999 -0.84522498
		 -0.52922201 0.074286997 -0.85494399 -0.51761103 -0.033907 -0.77731401 -0.62874299
		 -0.02156 -0.76971 -0.63393497 0.075317003 0.74039501 -0.671444 0.031275 0.75111097
		 -0.65407199 -0.089565001 0.83580798 -0.53955901 -0.10149 0.83221197 -0.55389702 0.024932001
		 -0.76971 -0.63393497 0.075317003 -0.77731401 -0.62874299 -0.02156 -0.67523903 -0.73740703
		 -0.016832 -0.66835397 -0.74061799 0.069195002 0.62880701 -0.77697498 0.03019 0.63677502
		 -0.76732898 -0.075658001 0.75111097 -0.65407199 -0.089565001 0.74039501 -0.671444
		 0.031275 -0.67523903 -0.73740703 -0.016832 -0.54667503 -0.83725297 -0.012419 -0.53695899
		 -0.84069002 0.070114002 -0.66835397 -0.74061799 0.069195002 -0.53695899 -0.84069002
		 0.070114002 -0.54667503 -0.83725297 -0.012419 -0.394835 -0.918612 -0.016039001 -0.39286101
		 -0.91652203 0.075153999;
	setAttr ".n[2656:2821]" -type "float3"  0.343108 -0.93879098 0.030805999 0.35048801
		 -0.93317997 -0.079582997 0.49272099 -0.86674303 -0.077352002 0.48981899 -0.87139899
		 0.027213 0.49272099 -0.86674303 -0.077352002 0.63677502 -0.76732898 -0.075658001
		 0.62880701 -0.77697498 0.03019 0.48981899 -0.87139899 0.027213 -0.394835 -0.918612
		 -0.016039001 -0.230188 -0.972709 -0.029183 -0.23845901 -0.96851403 0.071539 -0.39286101
		 -0.91652203 0.075153999 -0.230188 -0.972709 -0.029183 -0.073596001 -0.99630201 -0.044342
		 -0.087361 -0.99453902 0.057108 -0.23845901 -0.96851403 0.071539 -0.073596001 -0.99630201
		 -0.044342 0.074051 -0.99484098 -0.069334999 0.064104997 -0.99684203 0.046873 -0.087361
		 -0.99453902 0.057108 0.074051 -0.99484098 -0.069334999 0.216755 -0.97326797 -0.075937003
		 0.21029299 -0.97689301 0.038166001 0.064104997 -0.99684203 0.046873 0.216755 -0.97326797
		 -0.075937003 0.35048801 -0.93317997 -0.079582997 0.343108 -0.93879098 0.030805999
		 0.21029299 -0.97689301 0.038166001 -0.303417 0.952676 -0.018634001 -0.43778601 0.89885002
		 -0.020329 -0.39176899 0.91323501 0.111889 -0.285447 0.95228601 0.10804 -0.16826101
		 0.985443 -0.024285 -0.303417 0.952676 -0.018634001 -0.285447 0.95228601 0.10804 -0.164463
		 0.98114997 0.101476 -0.032607999 0.99905002 -0.028904 -0.16826101 0.985443 -0.024285
		 -0.164463 0.98114997 0.101476 -0.038121 0.995143 0.090755999 0.096518002 0.994789
		 -0.032838002 -0.032607999 0.99905002 -0.028904 -0.038121 0.995143 0.090755999 0.088134997
		 0.99244601 0.085341997 0.21590699 0.97244298 0.087975003 0.22245 0.97437102 -0.033411
		 0.096518002 0.994789 -0.032838002 0.088134997 0.99244601 0.085341997 0.348524 0.93677801
		 -0.031288002 0.22245 0.97437102 -0.033411 0.21590699 0.97244298 0.087975003 0.33541799
		 0.93737102 0.093969002 0.43761799 0.893695 0.098999001 0.47068 0.88172197 -0.032056998
		 0.348524 0.93677801 -0.031288002 0.33541799 0.93737102 0.093969002 -0.39176899 0.91323501
		 0.111889 -0.43778601 0.89885002 -0.020329 -0.56270403 0.82609898 -0.030414 -0.52094001
		 0.84662098 0.108884 0.43761799 0.893695 0.098999001 0.55612499 0.824314 0.105977
		 0.58182502 0.812581 -0.034533001 0.47068 0.88172197 -0.032056998 -0.67633098 0.73604
		 -0.028666999 -0.70422101 0.70184499 0.107174 -0.58718097 0.80162102 0.112352 -0.56270403
		 0.82609898 -0.030414 0.607355 0.78702801 0.108196 0.71418601 0.69109398 0.111025
		 0.68432498 0.72860098 -0.028997 0.58182502 0.812581 -0.034533001 -0.78116101 0.623366
		 -0.034685001 -0.78482801 0.612073 0.097020999 -0.70422101 0.70184499 0.107174 -0.67633098
		 0.73604 -0.028666999 0.79426003 0.597633 0.109482 0.78719598 0.61581898 -0.032988999
		 0.68432498 0.72860098 -0.028997 0.71418601 0.69109398 0.111025 -0.78482801 0.612073
		 0.097020999 -0.78116101 0.623366 -0.034685001 -0.852045 0.52007598 -0.059505999 -0.852615
		 0.51652801 0.079034999 0.78719598 0.61581898 -0.032988999 0.79426003 0.597633 0.109482
		 0.860964 0.49976 0.094768003 0.85906798 0.50910097 -0.053096 -0.852615 0.51652801
		 0.079034999 -0.852045 0.52007598 -0.059505999 -0.90049601 0.428404 -0.074676 -0.90377897
		 0.42321 0.063855 0.90522599 0.41889101 -0.071386002 0.85906798 0.50910097 -0.053096
		 0.860964 0.49976 0.094768003 0.90810299 0.410927 0.080548003 -0.90377897 0.42321
		 0.063855 -0.90049601 0.428404 -0.074676 -0.93480998 0.34499601 -0.084307 -0.93765599
		 0.34382901 0.050827999 0.93639702 0.34159601 -0.080454998 0.90522599 0.41889101 -0.071386002
		 0.90810299 0.410927 0.080548003 0.93871599 0.33761001 0.069514997 -0.93765599 0.34382901
		 0.050827999 -0.93480998 0.34499601 -0.084307 -0.95698398 0.273626 -0.096492 -0.95782799
		 0.28494501 0.03703 0.93639702 0.34159601 -0.080454998 0.93871599 0.33761001 0.069514997
		 0.95655501 0.28567401 0.058253001 0.95462102 0.28383201 -0.090214998 -0.95782799
		 0.28494501 0.03703 -0.95698398 0.273626 -0.096492 -0.96909302 0.21662401 -0.118039
		 -0.97057098 0.240693 0.0076219998 0.95462102 0.28383201 -0.090214998 0.95655501 0.28567401
		 0.058253001 0.971838 0.232024 0.041182 0.96847397 0.22428501 -0.108416 -0.97057098
		 0.240693 0.0076219998 -0.96909302 0.21662401 -0.118039 -0.97370601 0.17581999 -0.144861
		 -0.97878999 0.20238701 -0.031761002 0.96847397 0.22428501 -0.108416 0.971838 0.232024
		 0.041182 0.98341298 0.180326 0.019543 0.97719198 0.16795699 -0.12994801 -0.97878999
		 0.20238701 -0.031761002 -0.97370601 0.17581999 -0.144861 -0.97359502 0.15325899 -0.16918799
		 -0.98136401 0.182408 -0.060433999 0.97719198 0.16795699 -0.12994801 0.98341298 0.180326
		 0.019543 0.988141 0.153547 -0.00079000002 0.97883302 0.14060099 -0.148716 -0.97359502
		 0.15325899 -0.16918799 -0.97060502 0.142334 -0.194079 -0.97971499 0.181889 -0.084119
		 -0.98136401 0.182408 -0.060433999 0.97682399 0.136112 -0.165194 0.97883302 0.14060099
		 -0.148716 0.988141 0.153547 -0.00079000002 0.98907298 0.14640599 -0.01732 -0.97851402
		 0.17574801 -0.107809 -0.97971499 0.181889 -0.084119 -0.97060502 0.142334 -0.194079
		 -0.96542901 0.133091 -0.22412799 0.97326702 0.144679 -0.178379 0.97682399 0.136112
		 -0.165194 0.98907298 0.14640599 -0.01732 0.987876 0.1523 -0.030088 -0.96542901 0.133091
		 -0.22412799 -0.96018702 0.114518 -0.25480899 -0.97944802 0.154293 -0.129908 -0.97851402
		 0.17574801 -0.107809 0.985825 0.163224 -0.038826 0.96910399 0.15755101 -0.189779
		 0.97326702 0.144679 -0.178379 0.987876 0.1523 -0.030088 -0.97944802 0.154293 -0.129908
		 -0.96018702 0.114518 -0.25480899 -0.95549399 0.096313 -0.27884501 -0.98086298 0.124281
		 -0.149874 0.96910399 0.15755101 -0.189779 0.985825 0.163224 -0.038826;
	setAttr ".n[2822:2987]" -type "float3"  0.98655301 0.15656599 -0.046907999 0.96766502
		 0.15374599 -0.19996899 -0.98086298 0.124281 -0.149874 -0.95549399 0.096313 -0.27884501
		 -0.95233101 0.092280999 -0.290773 -0.98197198 0.099339001 -0.160822 0.96766502 0.15374599
		 -0.19996899 0.98655301 0.15656599 -0.046907999 0.989645 0.133127 -0.053667001 0.96993399
		 0.1322 -0.20433199 -0.98197198 0.099339001 -0.160822 -0.95233101 0.092280999 -0.290773
		 -0.95257801 0.095684998 -0.28885901 -0.98276299 0.087319002 -0.16295099 0.96993399
		 0.1322 -0.20433199 0.989645 0.133127 -0.053667001 0.99078101 0.121845 -0.059222002
		 0.97178102 0.119841 -0.203172 -0.98276299 0.087319002 -0.16295099 -0.95257801 0.095684998
		 -0.28885901 -0.954822 0.100858 -0.279542 -0.98341298 0.090387002 -0.15725701 0.97178102
		 0.119841 -0.203172 0.99078101 0.121845 -0.059222002 0.99028802 0.123446 -0.063963003
		 0.97233802 0.116289 -0.202575 -0.98341298 0.090387002 -0.15725701 -0.954822 0.100858
		 -0.279542 -0.95760298 0.079875 -0.27679801 -0.98683298 0.068954997 -0.14630499 0.972996
		 0.099082999 -0.208473 0.97233802 0.116289 -0.202575 0.99028802 0.123446 -0.063963003
		 0.99083298 0.114142 -0.072260998 -0.98683298 0.068954997 -0.14630499 -0.95760298
		 0.079875 -0.27679801 -0.96214598 0.020868 -0.27173501 -0.99030203 0.0048520002 -0.138846
		 0.97352803 0.063948996 -0.219439 0.972996 0.099082999 -0.208473 0.99083298 0.114142
		 -0.072260998 0.99217701 0.088018999 -0.088536002 -0.99030203 0.0048520002 -0.138846
		 -0.96214598 0.020868 -0.27173501 -0.96446198 -0.036642998 -0.26166701 -0.98936301
		 -0.058949001 -0.132985 0.97352803 0.063948996 -0.219439 0.99217701 0.088018999 -0.088536002
		 0.99314898 0.048193 -0.106457 0.970788 0.032322001 -0.23774999 -0.98936301 -0.058949001
		 -0.132985 -0.96446198 -0.036642998 -0.26166701 -0.96586102 -0.085680999 -0.24448
		 -0.98638803 -0.115904 -0.116643 0.970788 0.032322001 -0.23774999 0.99314898 0.048193
		 -0.106457 0.99377501 0.0072309999 -0.111168 0.97057199 0.002788 -0.240796 -0.98638803
		 -0.115904 -0.116643 -0.96586102 -0.085680999 -0.24448 -0.96140301 -0.15867101 -0.224786
		 -0.97712898 -0.191012 -0.093452998 0.97057199 0.002788 -0.240796 0.99377501 0.0072309999
		 -0.111168 0.98983902 -0.072058998 -0.122585 0.96680301 -0.077651002 -0.24343701 -0.97712898
		 -0.191012 -0.093452998 -0.96140301 -0.15867101 -0.224786 -0.94346398 -0.261278 -0.20398299
		 -0.95401299 -0.29118699 -0.071203001 0.96680301 -0.077651002 -0.24343701 0.98983902
		 -0.072058998 -0.122585 0.96610397 -0.227562 -0.121898 0.94307703 -0.223914 -0.245905
		 -0.95401299 -0.29118699 -0.071203001 -0.94346398 -0.261278 -0.20398299 -0.90908498
		 -0.37606901 -0.179268 -0.913131 -0.40436801 -0.051746 0.94307703 -0.223914 -0.245905
		 0.96610397 -0.227562 -0.121898 0.90857702 -0.40141001 -0.115575 0.89329702 -0.38346601
		 -0.234466 -0.913131 -0.40436801 -0.051746 -0.90908498 -0.37606901 -0.179268 -0.85743499
		 -0.49210799 -0.15044799 -0.85494399 -0.51761103 -0.033907 0.83580798 -0.53955901
		 -0.10149 0.82992899 -0.51696903 -0.20967001 0.89329702 -0.38346601 -0.234466 0.90857702
		 -0.40141001 -0.115575 -0.85494399 -0.51761103 -0.033907 -0.85743499 -0.49210799 -0.15044799
		 -0.784329 -0.60810101 -0.122642 -0.77731401 -0.62874299 -0.02156 0.75111097 -0.65407199
		 -0.089565001 0.75151199 -0.62971199 -0.196703 0.82992899 -0.51696903 -0.20967001
		 0.83580798 -0.53955901 -0.10149 -0.77731401 -0.62874299 -0.02156 -0.784329 -0.60810101
		 -0.122642 -0.68416297 -0.72115701 -0.108877 -0.67523903 -0.73740703 -0.016832 0.63677502
		 -0.76732898 -0.075658001 0.63970703 -0.74542803 -0.187382 0.75151199 -0.62971199
		 -0.196703 0.75111097 -0.65407199 -0.089565001 -0.68416297 -0.72115701 -0.108877 -0.55060703
		 -0.82734001 -0.111089 -0.54667503 -0.83725297 -0.012419 -0.67523903 -0.73740703 -0.016832
		 -0.54667503 -0.83725297 -0.012419 -0.55060703 -0.82734001 -0.111089 -0.390322 -0.91236103
		 -0.123475 -0.394835 -0.918612 -0.016039001 0.35048801 -0.93317997 -0.079582997 0.34754401
		 -0.91551 -0.202621 0.490655 -0.84904099 -0.195926 0.49272099 -0.86674303 -0.077352002
		 0.490655 -0.84904099 -0.195926 0.63970703 -0.74542803 -0.187382 0.63677502 -0.76732898
		 -0.075658001 0.49272099 -0.86674303 -0.077352002 -0.390322 -0.91236103 -0.123475
		 -0.22129101 -0.96521097 -0.139274 -0.230188 -0.972709 -0.029183 -0.394835 -0.918612
		 -0.016039001 -0.22129101 -0.96521097 -0.139274 -0.053635001 -0.98537701 -0.161726
		 -0.073596001 -0.99630201 -0.044342 -0.230188 -0.972709 -0.029183 -0.053635001 -0.98537701
		 -0.161726 0.093021996 -0.97689497 -0.192415 0.074051 -0.99484098 -0.069334999 -0.073596001
		 -0.99630201 -0.044342 0.093021996 -0.97689497 -0.192415 0.221274 -0.95260203 -0.208773
		 0.216755 -0.97326797 -0.075937003 0.074051 -0.99484098 -0.069334999 0.221274 -0.95260203
		 -0.208773 0.34754401 -0.91551 -0.202621 0.35048801 -0.93317997 -0.079582997 0.216755
		 -0.97326797 -0.075937003 -0.169687 0.971937 -0.162928 -0.30705801 0.93965 -0.15091
		 -0.303417 0.952676 -0.018634001 -0.16826101 0.985443 -0.024285 -0.035840001 0.98586702
		 -0.163653 -0.169687 0.971937 -0.162928 -0.16826101 0.985443 -0.024285 -0.032607999
		 0.99905002 -0.028904 0.094701998 0.98281097 -0.158475 -0.035840001 0.98586702 -0.163653
		 -0.032607999 0.99905002 -0.028904 0.096518002 0.994789 -0.032838002 0.224213 0.96266198
		 -0.151696 0.094701998 0.98281097 -0.158475 0.096518002 0.994789 -0.032838002 0.22245
		 0.97437102 -0.033411 0.35289699 0.924348 -0.14506599 0.224213 0.96266198 -0.151696
		 0.22245 0.97437102 -0.033411 0.348524 0.93677801 -0.031288002 -0.447157 0.88353097
		 -0.13937201 -0.56774402 0.81068701 -0.143015 -0.56270403 0.82609898 -0.030414 -0.43778601
		 0.89885002 -0.020329;
	setAttr ".n[2988:3153]" -type "float3"  -0.447157 0.88353097 -0.13937201 -0.43778601
		 0.89885002 -0.020329 -0.303417 0.952676 -0.018634001 -0.30705801 0.93965 -0.15091
		 0.47068 0.88172197 -0.032056998 0.478122 0.86778897 -0.135434 0.35289699 0.924348
		 -0.14506599 0.348524 0.93677801 -0.031288002 0.58182502 0.812581 -0.034533001 0.58392799
		 0.79951298 -0.140736 0.478122 0.86778897 -0.135434 0.47068 0.88172197 -0.032056998
		 -0.56774402 0.81068701 -0.143015 -0.66078001 0.73154902 -0.167943 -0.67633098 0.73604
		 -0.028666999 -0.56270403 0.82609898 -0.030414 0.68432498 0.72860098 -0.028997 0.66689903
		 0.72668499 -0.164847 0.58392799 0.79951298 -0.140736 0.58182502 0.812581 -0.034533001
		 -0.67633098 0.73604 -0.028666999 -0.66078001 0.73154902 -0.167943 -0.76602697 0.61477
		 -0.187778 -0.78116101 0.623366 -0.034685001 0.76838398 0.61169797 -0.188182 0.66689903
		 0.72668499 -0.164847 0.68432498 0.72860098 -0.028997 0.78719598 0.61581898 -0.032988999
		 -0.78116101 0.623366 -0.034685001 -0.76602697 0.61477 -0.187778 -0.82544702 0.522681
		 -0.213172 -0.852045 0.52007598 -0.059505999 0.83182901 0.51299298 -0.211891 0.76838398
		 0.61169797 -0.188182 0.78719598 0.61581898 -0.032988999 0.85906798 0.50910097 -0.053096
		 -0.852045 0.52007598 -0.059505999 -0.82544702 0.522681 -0.213172 -0.871189 0.43607
		 -0.22555099 -0.90049601 0.428404 -0.074676 0.83182901 0.51299298 -0.211891 0.85906798
		 0.50910097 -0.053096 0.90522599 0.41889101 -0.071386002 0.87628102 0.426377 -0.224355
		 -0.90645099 0.35276401 -0.232173 -0.93480998 0.34499601 -0.084307 -0.90049601 0.428404
		 -0.074676 -0.871189 0.43607 -0.22555099 0.93639702 0.34159601 -0.080454998 0.907103
		 0.35374001 -0.228104 0.87628102 0.426377 -0.224355 0.90522599 0.41889101 -0.071386002
		 -0.93480998 0.34499601 -0.084307 -0.90645099 0.35276401 -0.232173 -0.93183202 0.27543101
		 -0.236275 -0.95698398 0.273626 -0.096492 0.907103 0.35374001 -0.228104 0.93639702
		 0.34159601 -0.080454998 0.95462102 0.28383201 -0.090214998 0.92872 0.28726101 -0.234437
		 -0.95698398 0.273626 -0.096492 -0.93183202 0.27543101 -0.236275 -0.944888 0.209782
		 -0.251353 -0.96909302 0.21662401 -0.118039 0.92872 0.28726101 -0.234437 0.95462102
		 0.28383201 -0.090214998 0.96847397 0.22428501 -0.108416 0.94251502 0.218473 -0.25285301
		 -0.96909302 0.21662401 -0.118039 -0.944888 0.209782 -0.251353 -0.94775897 0.163039
		 -0.27417499 -0.97370601 0.17581999 -0.144861 0.94251502 0.218473 -0.25285301 0.96847397
		 0.22428501 -0.108416 0.97719198 0.16795699 -0.12994801 0.948461 0.161641 -0.272569
		 -0.97370601 0.17581999 -0.144861 -0.94775897 0.163039 -0.27417499 -0.94554299 0.138293
		 -0.29465899 -0.97359502 0.15325899 -0.16918799 0.948461 0.161641 -0.272569 0.97719198
		 0.16795699 -0.12994801 0.97883302 0.14060099 -0.148716 0.947528 0.134921 -0.28980401
		 -0.97359502 0.15325899 -0.16918799 -0.94554299 0.138293 -0.29465899 -0.94275898 0.119399
		 -0.31136701 -0.97060502 0.142334 -0.194079 0.97682399 0.136112 -0.165194 0.942747
		 0.13034099 -0.30698299 0.947528 0.134921 -0.28980401 0.97883302 0.14060099 -0.148716
		 -0.97060502 0.142334 -0.194079 -0.94275898 0.119399 -0.31136701 -0.93827897 0.095879003
		 -0.33232501 -0.96542901 0.133091 -0.22412799 0.942747 0.13034099 -0.30698299 0.97682399
		 0.136112 -0.165194 0.97326702 0.144679 -0.178379 0.93551701 0.139451 -0.324595 -0.96542901
		 0.133091 -0.22412799 -0.93827897 0.095879003 -0.33232501 -0.93150902 0.077969 -0.35526201
		 -0.96018702 0.114518 -0.25480899 0.93551701 0.139451 -0.324595 0.97326702 0.144679
		 -0.178379 0.96910399 0.15755101 -0.189779 0.927324 0.15187401 -0.342058 -0.96018702
		 0.114518 -0.25480899 -0.93150902 0.077969 -0.35526201 -0.92591298 0.073002003 -0.37061501
		 -0.95549399 0.096313 -0.27884501 0.927324 0.15187401 -0.342058 0.96910399 0.15755101
		 -0.189779 0.96766502 0.15374599 -0.19996899 0.92236203 0.153162 -0.35466799 -0.95549399
		 0.096313 -0.27884501 -0.92591298 0.073002003 -0.37061501 -0.92193502 0.086168997
		 -0.377639 -0.95233101 0.092280999 -0.290773 0.92236203 0.153162 -0.35466799 0.96766502
		 0.15374599 -0.19996899 0.96993399 0.1322 -0.20433199 0.922943 0.140827 -0.35825199
		 -0.95233101 0.092280999 -0.290773 -0.92193502 0.086168997 -0.377639 -0.92018801 0.104425
		 -0.37729299 -0.95257801 0.095684998 -0.28885901 0.922943 0.140827 -0.35825199 0.96993399
		 0.1322 -0.20433199 0.97178102 0.119841 -0.203172 0.92606199 0.12811901 -0.354958
		 -0.95257801 0.095684998 -0.28885901 -0.92018801 0.104425 -0.37729299 -0.921624 0.106181
		 -0.373276 -0.954822 0.100858 -0.279542 0.92606199 0.12811901 -0.354958 0.97178102
		 0.119841 -0.203172 0.97233802 0.116289 -0.202575 0.92916799 0.113561 -0.35178199
		 -0.954822 0.100858 -0.279542 -0.921624 0.106181 -0.373276 -0.92321402 0.078566 -0.37616801
		 -0.95760298 0.079875 -0.27679801 0.92916799 0.113561 -0.35178199 0.97233802 0.116289
		 -0.202575 0.972996 0.099082999 -0.208473 0.93373001 0.087389 -0.347148 -0.95760298
		 0.079875 -0.27679801 -0.92321402 0.078566 -0.37616801 -0.92502302 0.027148001 -0.378941
		 -0.96214598 0.020868 -0.27173501 0.93459702 0.046558 -0.35264799 0.93373001 0.087389
		 -0.347148 0.972996 0.099082999 -0.208473 0.97352803 0.063948996 -0.219439 -0.96214598
		 0.020868 -0.27173501 -0.92502302 0.027148001 -0.378941 -0.92869598 -0.018748 -0.370368
		 -0.96446198 -0.036642998 -0.26166701 0.93137401 0.019567 -0.36353701 0.93459702 0.046558
		 -0.35264799 0.97352803 0.063948996 -0.219439 0.970788 0.032322001 -0.23774999 -0.96446198
		 -0.036642998 -0.26166701 -0.92869598 -0.018748 -0.370368;
	setAttr ".n[3154:3319]" -type "float3"  -0.93077397 -0.063952997 -0.35995799
		 -0.96586102 -0.085680999 -0.24448 0.93137401 0.019567 -0.36353701 0.970788 0.032322001
		 -0.23774999 0.97057199 0.002788 -0.240796 0.93169397 0.00078300002 -0.36324301 -0.96586102
		 -0.085680999 -0.24448 -0.93077397 -0.063952997 -0.35995799 -0.92672902 -0.137005
		 -0.349861 -0.96140301 -0.15867101 -0.224786 0.93169397 0.00078300002 -0.36324301
		 0.97057199 0.002788 -0.240796 0.96680301 -0.077651002 -0.24343701 0.92923898 -0.078005001
		 -0.36115199 -0.96140301 -0.15867101 -0.224786 -0.92672902 -0.137005 -0.349861 -0.91266
		 -0.233045 -0.33577099 -0.94346398 -0.261278 -0.20398299 0.92923898 -0.078005001 -0.36115199
		 0.96680301 -0.077651002 -0.24343701 0.94307703 -0.223914 -0.245905 0.90728998 -0.217814
		 -0.359696 -0.91266 -0.233045 -0.33577099 -0.887712 -0.337226 -0.31344301 -0.90908498
		 -0.37606901 -0.179268 -0.94346398 -0.261278 -0.20398299 0.86473501 -0.35728899 -0.352956
		 0.90728998 -0.217814 -0.359696 0.94307703 -0.223914 -0.245905 0.89329702 -0.38346601
		 -0.234466 -0.887712 -0.337226 -0.31344301 -0.84978902 -0.44511601 -0.28236499 -0.85743499
		 -0.49210799 -0.15044799 -0.90908498 -0.37606901 -0.179268 0.82992899 -0.51696903
		 -0.20967001 0.80816603 -0.48700899 -0.33119401 0.86473501 -0.35728899 -0.352956 0.89329702
		 -0.38346601 -0.234466 -0.85743499 -0.49210799 -0.15044799 -0.84978902 -0.44511601
		 -0.28236499 -0.787633 -0.565552 -0.24451099 -0.784329 -0.60810101 -0.122642 0.75151199
		 -0.62971199 -0.196703 0.73376101 -0.60341001 -0.31223699 0.80816603 -0.48700899 -0.33119401
		 0.82992899 -0.51696903 -0.20967001 -0.784329 -0.60810101 -0.122642 -0.787633 -0.565552
		 -0.24451099 -0.68234801 -0.69403499 -0.22960401 -0.68416297 -0.72115701 -0.108877
		 -0.68416297 -0.72115701 -0.108877 -0.68234801 -0.69403499 -0.22960401 -0.54598498
		 -0.80117297 -0.244995 -0.55060703 -0.82734001 -0.111089 0.473326 -0.81332099 -0.338337
		 0.61860198 -0.71870798 -0.31747499 0.63970703 -0.74542803 -0.187382 0.490655 -0.84904099
		 -0.195926 0.61860198 -0.71870798 -0.31747499 0.73376101 -0.60341001 -0.31223699 0.75151199
		 -0.62971199 -0.196703 0.63970703 -0.74542803 -0.187382 -0.55060703 -0.82734001 -0.111089
		 -0.54598498 -0.80117297 -0.244995 -0.38606501 -0.88407099 -0.26338801 -0.390322 -0.91236103
		 -0.123475 -0.390322 -0.91236103 -0.123475 -0.38606501 -0.88407099 -0.26338801 -0.20655499
		 -0.93778402 -0.2791 -0.22129101 -0.96521097 -0.139274 0.227975 -0.90450799 -0.36040699
		 0.33816999 -0.870574 -0.357411 0.34754401 -0.91551 -0.202621 0.221274 -0.95260203
		 -0.208773 0.33816999 -0.870574 -0.357411 0.473326 -0.81332099 -0.338337 0.490655
		 -0.84904099 -0.195926 0.34754401 -0.91551 -0.202621 -0.20655499 -0.93778402 -0.2791
		 -0.027520999 -0.95108998 -0.30768499 -0.053635001 -0.98537701 -0.161726 -0.22129101
		 -0.96521097 -0.139274 -0.027520999 -0.95108998 -0.30768499 0.118838 -0.93461198 -0.33522901
		 0.093021996 -0.97689497 -0.192415 -0.053635001 -0.98537701 -0.161726 0.118838 -0.93461198
		 -0.33522901 0.227975 -0.90450799 -0.36040699 0.221274 -0.95260203 -0.208773 0.093021996
		 -0.97689497 -0.192415 -0.16834299 0.934986 -0.312188 -0.30013999 0.90706199 -0.29521799
		 -0.30705801 0.93965 -0.15091 -0.169687 0.971937 -0.162928 -0.040049002 0.95175499
		 -0.30423501 -0.16834299 0.934986 -0.312188 -0.169687 0.971937 -0.162928 -0.035840001
		 0.98586702 -0.163653 0.088857003 0.95224899 -0.292106 -0.040049002 0.95175499 -0.30423501
		 -0.035840001 0.98586702 -0.163653 0.094701998 0.98281097 -0.158475 0.218365 0.93445402
		 -0.281268 0.088857003 0.95224899 -0.292106 0.094701998 0.98281097 -0.158475 0.224213
		 0.96266198 -0.151696 0.345723 0.89773101 -0.27304599 0.218365 0.93445402 -0.281268
		 0.224213 0.96266198 -0.151696 0.35289699 0.924348 -0.14506599 -0.45201299 0.85371703
		 -0.25855801 -0.447157 0.88353097 -0.13937201 -0.30705801 0.93965 -0.15091 -0.30013999
		 0.90706199 -0.29521799 0.478122 0.86778897 -0.135434 0.48078501 0.84223902 -0.243884
		 0.345723 0.89773101 -0.27304599 0.35289699 0.924348 -0.14506599 -0.59135503 0.75724101
		 -0.277282 -0.691854 0.64997602 -0.31443501 -0.66078001 0.73154902 -0.167943 -0.56774402
		 0.81068701 -0.143015 -0.59135503 0.75724101 -0.277282 -0.56774402 0.81068701 -0.143015
		 -0.447157 0.88353097 -0.13937201 -0.45201299 0.85371703 -0.25855801 0.58392799 0.79951298
		 -0.140736 0.60481697 0.751333 -0.26399899 0.48078501 0.84223902 -0.243884 0.478122
		 0.86778897 -0.135434 0.66689903 0.72668499 -0.164847 0.69950998 0.64784402 -0.301635
		 0.60481697 0.751333 -0.26399899 0.58392799 0.79951298 -0.140736 -0.66078001 0.73154902
		 -0.167943 -0.691854 0.64997602 -0.31443501 -0.76602697 0.61477 -0.187778 0.69950998
		 0.64784402 -0.301635 0.66689903 0.72668499 -0.164847 0.76838398 0.61169797 -0.188182
		 -0.76602697 0.61477 -0.187778 -0.691854 0.64997602 -0.31443501 -0.76041698 0.54515398
		 -0.35295001 -0.82544702 0.522681 -0.213172 0.77223003 0.54046398 -0.33400601 0.69950998
		 0.64784402 -0.301635 0.76838398 0.61169797 -0.188182 0.83182901 0.51299298 -0.211891
		 -0.82544702 0.522681 -0.213172 -0.76041698 0.54515398 -0.35295001 -0.81077898 0.452575
		 -0.371232 -0.871189 0.43607 -0.22555099 0.82399499 0.44760901 -0.347388 0.77223003
		 0.54046398 -0.33400601 0.83182901 0.51299298 -0.211891 0.87628102 0.426377 -0.224355
		 -0.871189 0.43607 -0.22555099 -0.81077898 0.452575 -0.371232 -0.84899497 0.37026
		 -0.376982 -0.90645099 0.35276401 -0.232173 0.859712 0.368101 -0.35411301 0.82399499
		 0.44760901 -0.347388 0.87628102 0.426377 -0.224355 0.907103 0.35374001 -0.228104
		 -0.90645099 0.35276401 -0.232173 -0.84899497 0.37026 -0.376982;
	setAttr ".n[3320:3485]" -type "float3"  -0.88253897 0.28641999 -0.37294599 -0.93183202
		 0.27543101 -0.236275 0.88826799 0.29222399 -0.35438001 0.859712 0.368101 -0.35411301
		 0.907103 0.35374001 -0.228104 0.92872 0.28726101 -0.234437 -0.88253897 0.28641999
		 -0.37294599 -0.89844102 0.207156 -0.38715601 -0.944888 0.209782 -0.251353 -0.93183202
		 0.27543101 -0.236275 0.90223998 0.217676 -0.372264 0.88826799 0.29222399 -0.35438001
		 0.92872 0.28726101 -0.234437 0.94251502 0.218473 -0.25285301 -0.94775897 0.163039
		 -0.27417499 -0.944888 0.209782 -0.251353 -0.89844102 0.207156 -0.38715601 -0.898561
		 0.15855201 -0.40920499 0.90470898 0.15899999 -0.39524701 0.90223998 0.217676 -0.372264
		 0.94251502 0.218473 -0.25285301 0.948461 0.161641 -0.272569 -0.94554299 0.138293
		 -0.29465899 -0.94775897 0.163039 -0.27417499 -0.898561 0.15855201 -0.40920499 -0.89572501
		 0.140086 -0.42196399 0.90009999 0.128516 -0.416298 0.90470898 0.15899999 -0.39524701
		 0.948461 0.161641 -0.272569 0.947528 0.134921 -0.28980401 -0.89572501 0.140086 -0.42196399
		 -0.89316899 0.122379 -0.432749 -0.94275898 0.119399 -0.31136701 -0.94554299 0.138293
		 -0.29465899 0.942747 0.13034099 -0.30698299 0.89249301 0.117942 -0.43536901 0.90009999
		 0.128516 -0.416298 0.947528 0.134921 -0.28980401 -0.94275898 0.119399 -0.31136701
		 -0.89316899 0.122379 -0.432749 -0.88978601 0.095996998 -0.44616699 -0.93827897 0.095879003
		 -0.33232501 0.89249301 0.117942 -0.43536901 0.942747 0.13034099 -0.30698299 0.93551701
		 0.139451 -0.324595 0.88114202 0.122058 -0.45682701 -0.93827897 0.095879003 -0.33232501
		 -0.88978601 0.095996998 -0.44616699 -0.88343501 0.075718999 -0.46239501 -0.93150902
		 0.077969 -0.35526201 0.88114202 0.122058 -0.45682701 0.93551701 0.139451 -0.324595
		 0.927324 0.15187401 -0.342058 0.86392403 0.13870899 -0.484144 -0.88343501 0.075718999
		 -0.46239501 -0.88164198 0.070491999 -0.46662399 -0.92591298 0.073002003 -0.37061501
		 -0.93150902 0.077969 -0.35526201 0.85306001 0.14927 -0.50000799 0.86392403 0.13870899
		 -0.484144 0.927324 0.15187401 -0.342058 0.92236203 0.153162 -0.35466799 -0.92193502
		 0.086168997 -0.377639 -0.92591298 0.073002003 -0.37061501 -0.88164198 0.070491999
		 -0.46662399 -0.88006097 0.083456002 -0.46746901 0.84945601 0.14379799 -0.50768697
		 0.85306001 0.14927 -0.50000799 0.92236203 0.153162 -0.35466799 0.922943 0.140827
		 -0.35825199 -0.92018801 0.104425 -0.37729299 -0.92193502 0.086168997 -0.377639 -0.88006097
		 0.083456002 -0.46746901 -0.87628198 0.099206001 -0.47147501 0.849958 0.13082001 -0.51034999
		 0.84945601 0.14379799 -0.50768697 0.922943 0.140827 -0.35825199 0.92606199 0.12811901
		 -0.354958 -0.921624 0.106181 -0.373276 -0.92018801 0.104425 -0.37729299 -0.87628198
		 0.099206001 -0.47147501 -0.87373698 0.094149001 -0.4772 0.85133499 0.118501 -0.51106399
		 0.849958 0.13082001 -0.51034999 0.92606199 0.12811901 -0.354958 0.92916799 0.113561
		 -0.35178199 -0.921624 0.106181 -0.373276 -0.87373698 0.094149001 -0.4772 -0.87781799
		 0.061965 -0.474969 -0.92321402 0.078566 -0.37616801 0.86262 0.086617 -0.49838099
		 0.85133499 0.118501 -0.51106399 0.92916799 0.113561 -0.35178199 0.93373001 0.087389
		 -0.347148 -0.92321402 0.078566 -0.37616801 -0.87781799 0.061965 -0.474969 -0.87953299
		 0.023164 -0.475274 -0.92502302 0.027148001 -0.378941 0.86262 0.086617 -0.49838099
		 0.93373001 0.087389 -0.347148 0.93459702 0.046558 -0.35264799 0.867015 0.034554001
		 -0.49708301 -0.92502302 0.027148001 -0.378941 -0.87953299 0.023164 -0.475274 -0.881468
		 -0.011887 -0.47209501 -0.92869598 -0.018748 -0.370368 0.86907798 0.015694 -0.494427
		 0.867015 0.034554001 -0.49708301 0.93459702 0.046558 -0.35264799 0.93137401 0.019567
		 -0.36353701 -0.93077397 -0.063952997 -0.35995799 -0.92869598 -0.018748 -0.370368
		 -0.881468 -0.011887 -0.47209501 -0.88052702 -0.056699999 -0.47059199 0.87484598 0.00666
		 -0.484355 0.86907798 0.015694 -0.494427 0.93137401 0.019567 -0.36353701 0.93169397
		 0.00078300002 -0.36324301 -0.92672902 -0.137005 -0.349861 -0.93077397 -0.063952997
		 -0.35995799 -0.88052702 -0.056699999 -0.47059199 -0.87385899 -0.124019 -0.47009599
		 0.87771702 -0.073050998 -0.47357801 0.87484598 0.00666 -0.484355 0.93169397 0.00078300002
		 -0.36324301 0.92923898 -0.078005001 -0.36115199 -0.91266 -0.233045 -0.33577099 -0.92672902
		 -0.137005 -0.349861 -0.87385899 -0.124019 -0.47009599 -0.86137998 -0.20975199 -0.462632
		 0.849415 -0.215601 -0.48167399 0.87771702 -0.073050998 -0.47357801 0.92923898 -0.078005001
		 -0.36115199 0.90728998 -0.217814 -0.359696 -0.86137998 -0.20975199 -0.462632 -0.84125298
		 -0.301763 -0.44859001 -0.887712 -0.337226 -0.31344301 -0.91266 -0.233045 -0.33577099
		 0.86473501 -0.35728899 -0.352956 0.80360198 -0.346901 -0.48361501 0.849415 -0.215601
		 -0.48167399 0.90728998 -0.217814 -0.359696 -0.84125298 -0.301763 -0.44859001 -0.81018603
		 -0.39601299 -0.43217099 -0.84978902 -0.44511601 -0.28236499 -0.887712 -0.337226 -0.31344301
		 0.75365001 -0.45559099 -0.47376099 0.80360198 -0.346901 -0.48361501 0.86473501 -0.35728899
		 -0.352956 0.80816603 -0.48700899 -0.33119401 -0.81018603 -0.39601299 -0.43217099
		 -0.76327902 -0.49911499 -0.41023201 -0.787633 -0.565552 -0.24451099 -0.84978902 -0.44511601
		 -0.28236499 0.73376101 -0.60341001 -0.31223699 0.68797898 -0.55976701 -0.46189401
		 0.75365001 -0.45559099 -0.47376099 0.80816603 -0.48700899 -0.33119401 -0.76327902
		 -0.49911499 -0.41023201 -0.65914202 -0.63524199 -0.40249199 -0.68234801 -0.69403499
		 -0.22960401 -0.787633 -0.565552 -0.24451099 -0.68234801 -0.69403499 -0.22960401 -0.65914202
		 -0.63524199 -0.40249199 -0.532709 -0.733338 -0.42241701 -0.54598498 -0.80117297 -0.244995;
	setAttr ".n[3486:3651]" -type "float3"  0.473326 -0.81332099 -0.338337 0.44174501
		 -0.75303602 -0.487645 0.57200301 -0.67554897 -0.46523699 0.61860198 -0.71870798 -0.31747499
		 0.57200301 -0.67554897 -0.46523699 0.68797898 -0.55976701 -0.46189401 0.73376101
		 -0.60341001 -0.31223699 0.61860198 -0.71870798 -0.31747499 -0.532709 -0.733338 -0.42241701
		 -0.381421 -0.81069201 -0.44418001 -0.38606501 -0.88407099 -0.26338801 -0.54598498
		 -0.80117297 -0.244995 -0.38606501 -0.88407099 -0.26338801 -0.381421 -0.81069201 -0.44418001
		 -0.19367599 -0.86688697 -0.459344 -0.20655499 -0.93778402 -0.2791 -0.20655499 -0.93778402
		 -0.2791 -0.19367599 -0.86688697 -0.459344 -0.0020600001 -0.88068497 -0.47369799 -0.027520999
		 -0.95108998 -0.30768499 0.146093 -0.86001498 -0.48890799 0.24387901 -0.826096 -0.50802398
		 0.227975 -0.90450799 -0.36040699 0.118838 -0.93461198 -0.33522901 0.24387901 -0.826096
		 -0.50802398 0.32431901 -0.79559302 -0.51171201 0.33816999 -0.870574 -0.357411 0.227975
		 -0.90450799 -0.36040699 0.32431901 -0.79559302 -0.51171201 0.44174501 -0.75303602
		 -0.487645 0.473326 -0.81332099 -0.338337 0.33816999 -0.870574 -0.357411 -0.0020600001
		 -0.88068497 -0.47369799 0.146093 -0.86001498 -0.48890799 0.118838 -0.93461198 -0.33522901
		 -0.027520999 -0.95108998 -0.30768499 -0.053344 0.89158201 -0.44970599 -0.17023399
		 0.86460501 -0.47273499 -0.16834299 0.934986 -0.312188 -0.040049002 0.95175499 -0.30423501
		 0.078775004 0.899737 -0.42926401 -0.053344 0.89158201 -0.44970599 -0.040049002 0.95175499
		 -0.30423501 0.088857003 0.95224899 -0.292106 0.218365 0.93445402 -0.281268 0.21190301
		 0.88478798 -0.41502699 0.078775004 0.899737 -0.42926401 0.088857003 0.95224899 -0.292106
		 -0.270062 0.84725302 -0.457416 -0.42217299 0.82564801 -0.374268 -0.45201299 0.85371703
		 -0.25855801 -0.30013999 0.90706199 -0.29521799 -0.17023399 0.86460501 -0.47273499
		 -0.270062 0.84725302 -0.457416 -0.30013999 0.90706199 -0.29521799 -0.16834299 0.934986
		 -0.312188 0.32228699 0.84669501 -0.42336601 0.21190301 0.88478798 -0.41502699 0.218365
		 0.93445402 -0.281268 0.345723 0.89773101 -0.27304599 0.48078501 0.84223902 -0.243884
		 0.45614699 0.81741601 -0.351796 0.32228699 0.84669501 -0.42336601 0.345723 0.89773101
		 -0.27304599 -0.57861298 0.703843 -0.41208199 -0.59135503 0.75724101 -0.277282 -0.45201299
		 0.85371703 -0.25855801 -0.42217299 0.82564801 -0.374268 0.60481697 0.751333 -0.26399899
		 0.59127599 0.70759302 -0.38691801 0.45614699 0.81741601 -0.351796 0.48078501 0.84223902
		 -0.243884 -0.59135503 0.75724101 -0.277282 -0.57861298 0.703843 -0.41208199 -0.66850901
		 0.607261 -0.42933601 -0.691854 0.64997602 -0.31443501 0.67678601 0.61783701 -0.400298
		 0.59127599 0.70759302 -0.38691801 0.60481697 0.751333 -0.26399899 0.69950998 0.64784402
		 -0.301635 -0.691854 0.64997602 -0.31443501 -0.66850901 0.607261 -0.42933601 -0.70038199
		 0.52397603 -0.48467901 -0.76041698 0.54515398 -0.35295001 0.71881902 0.53186899 -0.447676
		 0.67678601 0.61783701 -0.400298 0.69950998 0.64784402 -0.301635 0.77223003 0.54046398
		 -0.33400601 -0.73712301 0.45421499 -0.50033802 -0.81077898 0.452575 -0.371232 -0.76041698
		 0.54515398 -0.35295001 -0.70038199 0.52397603 -0.48467901 0.82399499 0.44760901 -0.347388
		 0.76248401 0.45256099 -0.462392 0.71881902 0.53186899 -0.447676 0.77223003 0.54046398
		 -0.33400601 -0.81077898 0.452575 -0.371232 -0.73712301 0.45421499 -0.50033802 -0.76959401
		 0.386399 -0.50835103 -0.84899497 0.37026 -0.376982 0.76248401 0.45256099 -0.462392
		 0.82399499 0.44760901 -0.347388 0.859712 0.368101 -0.35411301 0.79509902 0.383311
		 -0.46998999 -0.84899497 0.37026 -0.376982 -0.76959401 0.386399 -0.50835103 -0.81582803
		 0.301673 -0.49337399 -0.88253897 0.28641999 -0.37294599 0.83609998 0.30379701 -0.45677599
		 0.79509902 0.383311 -0.46998999 0.859712 0.368101 -0.35411301 0.88826799 0.29222399
		 -0.35438001 -0.81582803 0.301673 -0.49337399 -0.83280098 0.210392 -0.51203299 -0.89844102
		 0.207156 -0.38715601 -0.88253897 0.28641999 -0.37294599 0.90223998 0.217676 -0.372264
		 0.84981298 0.212338 -0.48242101 0.83609998 0.30379701 -0.45677599 0.88826799 0.29222399
		 -0.35438001 -0.89844102 0.207156 -0.38715601 -0.83280098 0.210392 -0.51203299 -0.827824
		 0.166288 -0.53577697 -0.898561 0.15855201 -0.40920499 0.84981298 0.212338 -0.48242101
		 0.90223998 0.217676 -0.372264 0.90470898 0.15899999 -0.39524701 0.840608 0.150801
		 -0.52022803 -0.898561 0.15855201 -0.40920499 -0.827824 0.166288 -0.53577697 -0.82540101
		 0.15463801 -0.54295599 -0.89572501 0.140086 -0.42196399 0.840608 0.150801 -0.52022803
		 0.90470898 0.15899999 -0.39524701 0.90009999 0.128516 -0.416298 0.83209401 0.122218
		 -0.54100102 -0.89572501 0.140086 -0.42196399 -0.82540101 0.15463801 -0.54295599 -0.82287598
		 0.137104 -0.55143303 -0.89316899 0.122379 -0.432749 0.83209401 0.122218 -0.54100102
		 0.90009999 0.128516 -0.416298 0.89249301 0.117942 -0.43536901 0.82401597 0.11052
		 -0.555682 -0.82287598 0.137104 -0.55143303 -0.81755501 0.106844 -0.56585199 -0.88978601
		 0.095996998 -0.44616699 -0.89316899 0.122379 -0.432749 0.81077999 0.101737 -0.576442
		 0.82401597 0.11052 -0.555682 0.89249301 0.117942 -0.43536901 0.88114202 0.122058
		 -0.45682701 -0.88343501 0.075718999 -0.46239501 -0.88978601 0.095996998 -0.44616699
		 -0.81755501 0.106844 -0.56585199 -0.794294 0.095285997 -0.60001498 0.77729499 0.117555
		 -0.618056 0.81077999 0.101737 -0.576442 0.88114202 0.122058 -0.45682701 0.86392403
		 0.13870899 -0.484144 -0.794294 0.095285997 -0.60001498 -0.79414701 0.087062001 -0.601457
		 -0.88164198 0.070491999 -0.46662399 -0.88343501 0.075718999 -0.46239501 0.85306001
		 0.14927 -0.50000799 0.76190799 0.134288 -0.63361102;
	setAttr ".n[3652:3817]" -type "float3"  0.77729499 0.117555 -0.618056 0.86392403
		 0.13870899 -0.484144 -0.88164198 0.070491999 -0.46662399 -0.79414701 0.087062001
		 -0.601457 -0.79782802 0.083751999 -0.59704 -0.88006097 0.083456002 -0.46746901 0.76190799
		 0.134288 -0.63361102 0.85306001 0.14927 -0.50000799 0.84945601 0.14379799 -0.50768697
		 0.752909 0.13539 -0.64404798 -0.88006097 0.083456002 -0.46746901 -0.79782802 0.083751999
		 -0.59704 -0.796942 0.083420001 -0.59826797 -0.87628198 0.099206001 -0.47147501 0.752909
		 0.13539 -0.64404798 0.84945601 0.14379799 -0.50768697 0.849958 0.13082001 -0.51034999
		 0.747724 0.122513 -0.65260899 -0.87628198 0.099206001 -0.47147501 -0.796942 0.083420001
		 -0.59826797 -0.79394698 0.079056002 -0.602826 -0.87373698 0.094149001 -0.4772 0.747724
		 0.122513 -0.65260899 0.849958 0.13082001 -0.51034999 0.85133499 0.118501 -0.51106399
		 0.74603301 0.111338 -0.65653598 -0.87373698 0.094149001 -0.4772 -0.79394698 0.079056002
		 -0.602826 -0.81356698 0.05878 -0.578493 -0.87781799 0.061965 -0.474969 0.76846302
		 0.084831998 -0.63424599 0.74603301 0.111338 -0.65653598 0.85133499 0.118501 -0.51106399
		 0.86262 0.086617 -0.49838099 -0.87953299 0.023164 -0.475274 -0.87781799 0.061965
		 -0.474969 -0.81356698 0.05878 -0.578493 -0.81792998 0.017512999 -0.57505202 0.77645701
		 0.040541999 -0.62886399 0.76846302 0.084831998 -0.63424599 0.86262 0.086617 -0.49838099
		 0.867015 0.034554001 -0.49708301 -0.87953299 0.023164 -0.475274 -0.81792998 0.017512999
		 -0.57505202 -0.81586301 -0.018371001 -0.57795298 -0.881468 -0.011887 -0.47209501
		 0.78442001 0.034731999 -0.61925697 0.77645701 0.040541999 -0.62886399 0.867015 0.034554001
		 -0.49708301 0.86907798 0.015694 -0.494427 -0.881468 -0.011887 -0.47209501 -0.81586301
		 -0.018371001 -0.57795298 -0.81078899 -0.062054999 -0.58204001 -0.88052702 -0.056699999
		 -0.47059199 0.78442001 0.034731999 -0.61925697 0.86907798 0.015694 -0.494427 0.87484598
		 0.00666 -0.484355 0.78790498 0.031601999 -0.614986 -0.88052702 -0.056699999 -0.47059199
		 -0.81078899 -0.062054999 -0.58204001 -0.80157799 -0.123006 -0.5851 -0.87385899 -0.124019
		 -0.47009599 0.78790498 0.031601999 -0.614986 0.87484598 0.00666 -0.484355 0.87771702
		 -0.073050998 -0.47357801 0.78627402 -0.073683001 -0.613469 -0.87385899 -0.124019
		 -0.47009599 -0.80157799 -0.123006 -0.5851 -0.78943902 -0.19625001 -0.58161199 -0.86137998
		 -0.20975199 -0.462632 0.78627402 -0.073683001 -0.613469 0.87771702 -0.073050998 -0.47357801
		 0.849415 -0.215601 -0.48167399 0.75681198 -0.23568 -0.60966402 -0.78943902 -0.19625001
		 -0.58161199 -0.76858699 -0.28326401 -0.57361501 -0.84125298 -0.301763 -0.44859001
		 -0.86137998 -0.20975199 -0.462632 0.72028202 -0.346264 -0.60107797 0.75681198 -0.23568
		 -0.60966402 0.849415 -0.215601 -0.48167399 0.80360198 -0.346901 -0.48361501 -0.76858699
		 -0.28326401 -0.57361501 -0.72585702 -0.38141501 -0.572411 -0.81018603 -0.39601299
		 -0.43217099 -0.84125298 -0.301763 -0.44859001 0.75365001 -0.45559099 -0.47376099
		 0.66112202 -0.451489 -0.59922802 0.72028202 -0.346264 -0.60107797 0.80360198 -0.346901
		 -0.48361501 -0.72585702 -0.38141501 -0.572411 -0.658777 -0.48528999 -0.57489598 -0.76327902
		 -0.49911499 -0.41023201 -0.81018603 -0.39601299 -0.43217099 0.571338 -0.55767697
		 -0.60213703 0.66112202 -0.451489 -0.59922802 0.75365001 -0.45559099 -0.47376099 0.68797898
		 -0.55976701 -0.46189401 -0.76327902 -0.49911499 -0.41023201 -0.658777 -0.48528999
		 -0.57489598 -0.65914202 -0.63524199 -0.40249199 -0.65914202 -0.63524199 -0.40249199
		 -0.658777 -0.48528999 -0.57489598 -0.53134203 -0.59783697 -0.60022199 -0.532709 -0.733338
		 -0.42241701 -0.532709 -0.733338 -0.42241701 -0.53134203 -0.59783697 -0.60022199 -0.38072899
		 -0.67285699 -0.634278 -0.381421 -0.81069201 -0.44418001 0.32086799 -0.69740897 -0.64083099
		 0.429708 -0.65501398 -0.62153703 0.44174501 -0.75303602 -0.487645 0.32431901 -0.79559302
		 -0.51171201 0.429708 -0.65501398 -0.62153703 0.571338 -0.55767697 -0.60213703 0.57200301
		 -0.67554897 -0.46523699 0.44174501 -0.75303602 -0.487645 0.571338 -0.55767697 -0.60213703
		 0.68797898 -0.55976701 -0.46189401 0.57200301 -0.67554897 -0.46523699 -0.38072899
		 -0.67285699 -0.634278 -0.192331 -0.74401802 -0.63987899 -0.19367599 -0.86688697 -0.459344
		 -0.381421 -0.81069201 -0.44418001 -0.19367599 -0.86688697 -0.459344 -0.192331 -0.74401802
		 -0.63987899 0.0044140001 -0.77154398 -0.63616103 -0.0020600001 -0.88068497 -0.47369799
		 0.0044140001 -0.77154398 -0.63616103 0.159742 -0.75641602 -0.63428402 0.146093 -0.86001498
		 -0.48890799 -0.0020600001 -0.88068497 -0.47369799 0.159742 -0.75641602 -0.63428402
		 0.25218099 -0.728499 -0.63694203 0.24387901 -0.826096 -0.50802398 0.146093 -0.86001498
		 -0.48890799 0.25218099 -0.728499 -0.63694203 0.32086799 -0.69740897 -0.64083099 0.32431901
		 -0.79559302 -0.51171201 0.24387901 -0.826096 -0.50802398 -0.053344 0.89158201 -0.44970599
		 -0.070855998 0.81338501 -0.57739502 -0.18152501 0.767434 -0.61489302 -0.17023399
		 0.86460501 -0.47273499 0.068392999 0.82718903 -0.55774701 -0.070855998 0.81338501
		 -0.57739502 -0.053344 0.89158201 -0.44970599 0.078775004 0.899737 -0.42926401 0.21190301
		 0.88478798 -0.41502699 0.213668 0.81795299 -0.53413397 0.068392999 0.82718903 -0.55774701
		 0.078775004 0.899737 -0.42926401 0.32228699 0.84669501 -0.42336601 0.31714201 0.75213301
		 -0.57768202 0.213668 0.81795299 -0.53413397 0.21190301 0.88478798 -0.41502699 -0.57861298
		 0.703843 -0.41208199 -0.42217299 0.82564801 -0.374268 -0.40558201 0.75342798 -0.517542
		 -0.40558201 0.75342798 -0.517542 -0.42217299 0.82564801 -0.374268 -0.270062 0.84725302
		 -0.457416 -0.255344 0.74427599 -0.61713302 -0.18152501 0.767434 -0.61489302 -0.255344
		 0.74427599 -0.61713302 -0.270062 0.84725302 -0.457416;
	setAttr ".n[3818:3983]" -type "float3"  -0.17023399 0.86460501 -0.47273499 0.32228699
		 0.84669501 -0.42336601 0.45614699 0.81741601 -0.351796 0.43398699 0.76055002 -0.48292801
		 0.31714201 0.75213301 -0.57768202 0.45614699 0.81741601 -0.351796 0.59127599 0.70759302
		 -0.38691801 0.43398699 0.76055002 -0.48292801 -0.57861298 0.703843 -0.41208199 -0.575423
		 0.58086801 -0.57574397 -0.66850901 0.607261 -0.42933601 -0.407112 0.64865899 -0.64304101
		 -0.575423 0.58086801 -0.57574397 -0.57861298 0.703843 -0.41208199 -0.40558201 0.75342798
		 -0.517542 -0.407112 0.64865899 -0.64304101 -0.40558201 0.75342798 -0.517542 -0.255344
		 0.74427599 -0.61713302 0.44094899 0.67120701 -0.59585702 0.31714201 0.75213301 -0.57768202
		 0.43398699 0.76055002 -0.48292801 0.60004503 0.60208499 -0.52672499 0.44094899 0.67120701
		 -0.59585702 0.43398699 0.76055002 -0.48292801 0.59127599 0.70759302 -0.38691801 0.60004503
		 0.60208499 -0.52672499 0.59127599 0.70759302 -0.38691801 0.67678601 0.61783701 -0.400298
		 -0.66850901 0.607261 -0.42933601 -0.575423 0.58086801 -0.57574397 -0.59521198 0.515589
		 -0.61635298 -0.70038199 0.52397603 -0.48467901 0.62818199 0.52832502 -0.57119203
		 0.60004503 0.60208499 -0.52672499 0.67678601 0.61783701 -0.400298 0.71881902 0.53186899
		 -0.447676 -0.70038199 0.52397603 -0.48467901 -0.59521198 0.515589 -0.61635298 -0.64624101
		 0.458334 -0.61016601 -0.73712301 0.45421499 -0.50033802 0.68222898 0.46216801 -0.56653702
		 0.62818199 0.52832502 -0.57119203 0.71881902 0.53186899 -0.447676 0.76248401 0.45256099
		 -0.462392 -0.76959401 0.386399 -0.50835103 -0.73712301 0.45421499 -0.50033802 -0.64624101
		 0.458334 -0.61016601 -0.669752 0.40898901 -0.61980599 0.70638001 0.40720201 -0.57897699
		 0.68222898 0.46216801 -0.56653702 0.76248401 0.45256099 -0.462392 0.79509902 0.383311
		 -0.46998999 -0.76959401 0.386399 -0.50835103 -0.669752 0.40898901 -0.61980599 -0.74330997
		 0.317339 -0.58888602 -0.81582803 0.301673 -0.49337399 0.77473801 0.31260499 -0.54959899
		 0.70638001 0.40720201 -0.57897699 0.79509902 0.383311 -0.46998999 0.83609998 0.30379701
		 -0.45677599 -0.74330997 0.317339 -0.58888602 -0.75566 0.209288 -0.62062597 -0.83280098
		 0.210392 -0.51203299 -0.81582803 0.301673 -0.49337399 0.780137 0.193056 -0.59507698
		 0.77473801 0.31260499 -0.54959899 0.83609998 0.30379701 -0.45677599 0.84981298 0.212338
		 -0.48242101 -0.827824 0.166288 -0.53577697 -0.83280098 0.210392 -0.51203299 -0.75566
		 0.209288 -0.62062597 -0.73291397 0.178601 -0.65645897 0.74909103 0.141403 -0.64719999
		 0.780137 0.193056 -0.59507698 0.84981298 0.212338 -0.48242101 0.840608 0.150801 -0.52022803
		 -0.82540101 0.15463801 -0.54295599 -0.827824 0.166288 -0.53577697 -0.73291397 0.178601
		 -0.65645897 -0.730358 0.17484701 -0.660308 0.73989302 0.126669 -0.66069102 0.74909103
		 0.141403 -0.64719999 0.840608 0.150801 -0.52022803 0.83209401 0.122218 -0.54100102
		 -0.82287598 0.137104 -0.55143303 -0.82540101 0.15463801 -0.54295599 -0.730358 0.17484701
		 -0.660308 -0.72984701 0.15557 -0.66567302 0.73447299 0.111809 -0.66936398 0.73989302
		 0.126669 -0.66069102 0.83209401 0.122218 -0.54100102 0.82401597 0.11052 -0.555682
		 -0.72984701 0.15557 -0.66567302 -0.73158598 0.099238001 -0.67448699 -0.81755501 0.106844
		 -0.56585199 -0.82287598 0.137104 -0.55143303 0.81077999 0.101737 -0.576442 0.72865498
		 0.070905 -0.68120098 0.73447299 0.111809 -0.66936398 0.82401597 0.11052 -0.555682
		 -0.73158598 0.099238001 -0.67448699 -0.670012 0.087108999 -0.73722202 -0.794294 0.095285997
		 -0.60001498 -0.81755501 0.106844 -0.56585199 0.66352898 0.078001998 -0.74407297 0.72865498
		 0.070905 -0.68120098 0.81077999 0.101737 -0.576442 0.77729499 0.117555 -0.618056
		 -0.79414701 0.087062001 -0.601457 -0.794294 0.095285997 -0.60001498 -0.670012 0.087108999
		 -0.73722202 -0.66941798 0.105484 -0.73535901 0.65173602 0.113826 -0.749856 0.66352898
		 0.078001998 -0.74407297 0.77729499 0.117555 -0.618056 0.76190799 0.134288 -0.63361102
		 -0.79782802 0.083751999 -0.59704 -0.79414701 0.087062001 -0.601457 -0.66941798 0.105484
		 -0.73535901 -0.67599201 0.10117 -0.729931 0.64183098 0.119462 -0.75748402 0.65173602
		 0.113826 -0.749856 0.76190799 0.134288 -0.63361102 0.752909 0.13539 -0.64404798 -0.796942
		 0.083420001 -0.59826797 -0.79782802 0.083751999 -0.59704 -0.67599201 0.10117 -0.729931
		 -0.67975098 0.087734997 -0.72817701 0.63555402 0.113535 -0.76366299 0.64183098 0.119462
		 -0.75748402 0.752909 0.13539 -0.64404798 0.747724 0.122513 -0.65260899 -0.79394698
		 0.079056002 -0.602826 -0.796942 0.083420001 -0.59826797 -0.67975098 0.087734997 -0.72817701
		 -0.67888498 0.093322001 -0.72829002 0.630014 0.121185 -0.76707 0.63555402 0.113535
		 -0.76366299 0.747724 0.122513 -0.65260899 0.74603301 0.111338 -0.65653598 -0.79394698
		 0.079056002 -0.602826 -0.67888498 0.093322001 -0.72829002 -0.736408 0.063911997 -0.673513
		 -0.81356698 0.05878 -0.578493 0.68009102 0.094365999 -0.72702903 0.630014 0.121185
		 -0.76707 0.74603301 0.111338 -0.65653598 0.76846302 0.084831998 -0.63424599 -0.81356698
		 0.05878 -0.578493 -0.736408 0.063911997 -0.673513 -0.73242801 0.002356 -0.68084002
		 -0.81792998 0.017512999 -0.57505202 0.68009102 0.094365999 -0.72702903 0.76846302
		 0.084831998 -0.63424599 0.77645701 0.040541999 -0.62886399 0.68387997 0.046463002
		 -0.72811401 -0.81792998 0.017512999 -0.57505202 -0.73242801 0.002356 -0.68084002
		 -0.72730601 -0.032178 -0.68555897 -0.81586301 -0.018371001 -0.57795298 0.68918902
		 0.035975002 -0.72368801 0.68387997 0.046463002 -0.72811401 0.77645701 0.040541999
		 -0.62886399 0.78442001 0.034731999 -0.61925697 -0.81078899 -0.062054999 -0.58204001
		 -0.81586301 -0.018371001 -0.57795298;
	setAttr ".n[3984:4149]" -type "float3"  -0.72730601 -0.032178 -0.68555897 -0.71783501
		 -0.070598997 -0.69262397 0.679914 0.018645 -0.733055 0.68918902 0.035975002 -0.72368801
		 0.78442001 0.034731999 -0.61925697 0.78790498 0.031601999 -0.614986 -0.80157799 -0.123006
		 -0.5851 -0.81078899 -0.062054999 -0.58204001 -0.71783501 -0.070598997 -0.69262397
		 -0.70839798 -0.121417 -0.69529098 0.65740699 -0.067700997 -0.75048798 0.679914 0.018645
		 -0.733055 0.78790498 0.031601999 -0.614986 0.78627402 -0.073683001 -0.613469 -0.78943902
		 -0.19625001 -0.58161199 -0.80157799 -0.123006 -0.5851 -0.70839798 -0.121417 -0.69529098
		 -0.69928002 -0.184926 -0.69051403 0.64594001 -0.205198 -0.73529297 0.65740699 -0.067700997
		 -0.75048798 0.78627402 -0.073683001 -0.613469 0.75681198 -0.23568 -0.60966402 -0.69928002
		 -0.184926 -0.69051403 -0.68018401 -0.27155 -0.68088901 -0.76858699 -0.28326401 -0.57361501
		 -0.78943902 -0.19625001 -0.58161199 0.72028202 -0.346264 -0.60107797 0.62999701 -0.33792701
		 -0.69922 0.64594001 -0.205198 -0.73529297 0.75681198 -0.23568 -0.60966402 -0.68018401
		 -0.27155 -0.68088901 -0.62242001 -0.370352 -0.68951601 -0.72585702 -0.38141501 -0.572411
		 -0.76858699 -0.28326401 -0.57361501 0.55259597 -0.450656 -0.70110399 0.62999701 -0.33792701
		 -0.69922 0.72028202 -0.346264 -0.60107797 0.66112202 -0.451489 -0.59922802 -0.62242001
		 -0.370352 -0.68951601 -0.52764601 -0.466333 -0.71001703 -0.658777 -0.48528999 -0.57489598
		 -0.72585702 -0.38141501 -0.572411 0.44053301 -0.54840201 -0.71076399 0.55259597 -0.450656
		 -0.70110399 0.66112202 -0.451489 -0.59922802 0.571338 -0.55767697 -0.60213703 -0.658777
		 -0.48528999 -0.57489598 -0.52764601 -0.466333 -0.71001703 -0.53134203 -0.59783697
		 -0.60022199 -0.53134203 -0.59783697 -0.60022199 -0.52764601 -0.466333 -0.71001703
		 -0.39095199 -0.50665998 -0.76840901 -0.38072899 -0.67285699 -0.634278 -0.39095199
		 -0.50665998 -0.76840901 -0.206991 -0.60147101 -0.77161402 -0.192331 -0.74401802 -0.63987899
		 -0.38072899 -0.67285699 -0.634278 -0.192331 -0.74401802 -0.63987899 -0.206991 -0.60147101
		 -0.77161402 7.0000002e-05 -0.63793302 -0.77009201 0.0044140001 -0.77154398 -0.63616103
		 0.1577 -0.63377202 -0.75727397 0.25258899 -0.62121302 -0.741817 0.25218099 -0.728499
		 -0.63694203 0.159742 -0.75641602 -0.63428402 0.25258899 -0.62121302 -0.741817 0.32635501
		 -0.57905799 -0.74711698 0.32086799 -0.69740897 -0.64083099 0.25218099 -0.728499 -0.63694203
		 0.32635501 -0.57905799 -0.74711698 0.44053301 -0.54840201 -0.71076399 0.429708 -0.65501398
		 -0.62153703 0.32086799 -0.69740897 -0.64083099 0.44053301 -0.54840201 -0.71076399
		 0.571338 -0.55767697 -0.60213703 0.429708 -0.65501398 -0.62153703 7.0000002e-05 -0.63793302
		 -0.77009201 0.1577 -0.63377202 -0.75727397 0.159742 -0.75641602 -0.63428402 0.0044140001
		 -0.77154398 -0.63616103 -0.070855998 0.81338501 -0.57739502 -0.076274 0.73216701
		 -0.67684102 -0.195081 0.66457099 -0.72131002 -0.18152501 0.767434 -0.61489302 0.074771002
		 0.73518598 -0.673729 -0.076274 0.73216701 -0.67684102 -0.070855998 0.81338501 -0.57739502
		 0.068392999 0.82718903 -0.55774701 0.068392999 0.82718903 -0.55774701 0.213668 0.81795299
		 -0.53413397 0.21984901 0.71954399 -0.658728 0.074771002 0.73518598 -0.673729 0.213668
		 0.81795299 -0.53413397 0.31714201 0.75213301 -0.57768202 0.21984901 0.71954399 -0.658728
		 -0.417873 0.56382799 -0.712376 -0.575423 0.58086801 -0.57574397 -0.407112 0.64865899
		 -0.64304101 -0.27339599 0.63540298 -0.72216201 -0.417873 0.56382799 -0.712376 -0.407112
		 0.64865899 -0.64304101 -0.255344 0.74427599 -0.61713302 -0.195081 0.66457099 -0.72131002
		 -0.27339599 0.63540298 -0.72216201 -0.255344 0.74427599 -0.61713302 -0.18152501 0.767434
		 -0.61489302 0.217216 0.63137197 -0.74443698 0.079051003 0.632429 -0.77057397 0.074771002
		 0.73518598 -0.673729 0.21984901 0.71954399 -0.658728 0.33239001 0.638722 -0.69393897
		 0.217216 0.63137197 -0.74443698 0.21984901 0.71954399 -0.658728 0.31714201 0.75213301
		 -0.57768202 0.44094899 0.67120701 -0.59585702 0.47284099 0.58098501 -0.66247803 0.33239001
		 0.638722 -0.69393897 0.31714201 0.75213301 -0.57768202 0.60004503 0.60208499 -0.52672499
		 0.47284099 0.58098501 -0.66247803 0.44094899 0.67120701 -0.59585702 -0.59521198 0.515589
		 -0.61635298 -0.575423 0.58086801 -0.57574397 -0.417873 0.56382799 -0.712376 -0.450928
		 0.53406203 -0.71515203 0.495781 0.54142803 -0.67901099 0.47284099 0.58098501 -0.66247803
		 0.60004503 0.60208499 -0.52672499 0.62818199 0.52832502 -0.57119203 -0.59521198 0.515589
		 -0.61635298 -0.450928 0.53406203 -0.71515203 -0.54118103 0.476069 -0.69316798 -0.64624101
		 0.458334 -0.61016601 0.58389598 0.477043 -0.656883 0.495781 0.54142803 -0.67901099
		 0.62818199 0.52832502 -0.57119203 0.68222898 0.46216801 -0.56653702 -0.669752 0.40898901
		 -0.61980599 -0.64624101 0.458334 -0.61016601 -0.54118103 0.476069 -0.69316798 -0.55225301
		 0.40595001 -0.728163 0.592511 0.398332 -0.70018703 0.58389598 0.477043 -0.656883
		 0.68222898 0.46216801 -0.56653702 0.70638001 0.40720201 -0.57897699 -0.74330997 0.317339
		 -0.58888602 -0.669752 0.40898901 -0.61980599 -0.63559198 0.33877799 -0.69372302 -0.63559198
		 0.33877799 -0.69372302 -0.669752 0.40898901 -0.61980599 -0.55225301 0.40595001 -0.728163
		 -0.52732998 0.34128001 -0.77810699 0.56152999 0.32206601 -0.76220602 0.592511 0.398332
		 -0.70018703 0.70638001 0.40720201 -0.57897699 0.671974 0.326612 -0.664662 0.70638001
		 0.40720201 -0.57897699 0.77473801 0.31260499 -0.54959899 0.671974 0.326612 -0.664662
		 -0.661457 0.217434 -0.71777302 -0.75566 0.209288 -0.62062597 -0.74330997 0.317339
		 -0.58888602 -0.63559198 0.33877799 -0.69372302 -0.661457 0.217434 -0.71777302 -0.63559198
		 0.33877799 -0.69372302 -0.52732998 0.34128001 -0.77810699;
	setAttr ".n[4150:4315]" -type "float3"  -0.53365099 0.24119499 -0.81058103 0.68796098
		 0.186473 -0.70138198 0.55853897 0.203124 -0.804223 0.56152999 0.32206601 -0.76220602
		 0.671974 0.326612 -0.664662 0.68796098 0.186473 -0.70138198 0.671974 0.326612 -0.664662
		 0.77473801 0.31260499 -0.54959899 0.780137 0.193056 -0.59507698 -0.661457 0.217434
		 -0.71777302 -0.60767603 0.18531901 -0.77226102 -0.73291397 0.178601 -0.65645897 -0.75566
		 0.209288 -0.62062597 0.62518299 0.132118 -0.76921499 0.68796098 0.186473 -0.70138198
		 0.780137 0.193056 -0.59507698 0.74909103 0.141403 -0.64719999 -0.730358 0.17484701
		 -0.660308 -0.73291397 0.178601 -0.65645897 -0.60767603 0.18531901 -0.77226102 -0.61014301
		 0.19164599 -0.76876301 0.62308103 0.13012099 -0.771258 0.62518299 0.132118 -0.76921499
		 0.74909103 0.141403 -0.64719999 0.73989302 0.126669 -0.66069102 -0.72984701 0.15557
		 -0.66567302 -0.730358 0.17484701 -0.660308 -0.61014301 0.19164599 -0.76876301 -0.60987002
		 0.17216 -0.77357602 0.61746299 0.114703 -0.77819198 0.62308103 0.13012099 -0.771258
		 0.73989302 0.126669 -0.66069102 0.73447299 0.111809 -0.66936398 -0.60818398 0.114467
		 -0.78549999 -0.73158598 0.099238001 -0.67448699 -0.72984701 0.15557 -0.66567302 -0.60987002
		 0.17216 -0.77357602 -0.60818398 0.114467 -0.78549999 -0.60987002 0.17216 -0.77357602
		 -0.48002499 0.178551 -0.85889202 -0.49244699 0.13785 -0.85935599 0.50908601 0.09166
		 -0.85582101 0.49936801 0.115116 -0.85870898 0.61746299 0.114703 -0.77819198 0.61139399
		 0.075012997 -0.787763 0.73447299 0.111809 -0.66936398 0.72865498 0.070905 -0.68120098
		 0.61139399 0.075012997 -0.787763 0.61746299 0.114703 -0.77819198 -0.670012 0.087108999
		 -0.73722202 -0.73158598 0.099238001 -0.67448699 -0.60818398 0.114467 -0.78549999
		 -0.670012 0.087108999 -0.73722202 -0.60818398 0.114467 -0.78549999 -0.49244699 0.13785
		 -0.85935599 -0.52760398 0.120835 -0.84085298 0.53796703 0.093998 -0.83770901 0.50908601
		 0.09166 -0.85582101 0.61139399 0.075012997 -0.787763 0.66352898 0.078001998 -0.74407297
		 0.72865498 0.070905 -0.68120098 0.66352898 0.078001998 -0.74407297 0.61139399 0.075012997
		 -0.787763 -0.66941798 0.105484 -0.73535901 -0.670012 0.087108999 -0.73722202 -0.52760398
		 0.120835 -0.84085298 -0.53293502 0.122847 -0.83719099 0.53517997 0.108207 -0.83777899
		 0.53796703 0.093998 -0.83770901 0.66352898 0.078001998 -0.74407297 0.65173602 0.113826
		 -0.749856 -0.67599201 0.10117 -0.729931 -0.66941798 0.105484 -0.73535901 -0.53293502
		 0.122847 -0.83719099 -0.53498298 0.113719 -0.83717501 0.52962399 0.112709 -0.840711
		 0.53517997 0.108207 -0.83777899 0.65173602 0.113826 -0.749856 0.64183098 0.119462
		 -0.75748402 -0.67975098 0.087734997 -0.72817701 -0.67599201 0.10117 -0.729931 -0.53498298
		 0.113719 -0.83717501 -0.53867102 0.091909997 -0.837488 0.52593499 0.108845 -0.84353203
		 0.52962399 0.112709 -0.840711 0.64183098 0.119462 -0.75748402 0.63555402 0.113535
		 -0.76366299 -0.67888498 0.093322001 -0.72829002 -0.67975098 0.087734997 -0.72817701
		 -0.53867102 0.091909997 -0.837488 -0.53820801 0.075498 -0.83942401 0.51813501 0.103118
		 -0.84906 0.52593499 0.108845 -0.84353203 0.63555402 0.113535 -0.76366299 0.630014
		 0.121185 -0.76707 -0.736408 0.063911997 -0.673513 -0.67888498 0.093322001 -0.72829002
		 -0.61749899 0.059569001 -0.78431201 -0.61749899 0.059569001 -0.78431201 -0.67888498
		 0.093322001 -0.72829002 -0.53820801 0.075498 -0.83942401 -0.50189102 0.046369001
		 -0.86368698 0.489611 0.092895001 -0.86697799 0.51813501 0.103118 -0.84906 0.630014
		 0.121185 -0.76707 0.57624 0.100142 -0.811122 0.630014 0.121185 -0.76707 0.68009102
		 0.094365999 -0.72702903 0.57624 0.100142 -0.811122 -0.73242801 0.002356 -0.68084002
		 -0.736408 0.063911997 -0.673513 -0.61749899 0.059569001 -0.78431201 -0.619039 -0.0057299999
		 -0.785339 -0.619039 -0.0057299999 -0.785339 -0.61749899 0.059569001 -0.78431201 -0.50189102
		 0.046369001 -0.86368698 -0.494481 -0.0053349999 -0.86917198 0.58445901 0.055835001
		 -0.80949998 0.48360801 0.065719999 -0.872814 0.489611 0.092895001 -0.86697799 0.57624
		 0.100142 -0.811122 0.57624 0.100142 -0.811122 0.68009102 0.094365999 -0.72702903
		 0.68387997 0.046463002 -0.72811401 0.58445901 0.055835001 -0.80949998 -0.72730601
		 -0.032178 -0.68555897 -0.73242801 0.002356 -0.68084002 -0.619039 -0.0057299999 -0.785339
		 -0.615161 -0.044183999 -0.78716302 0.58833599 0.031397998 -0.80800599 0.58445901
		 0.055835001 -0.80949998 0.68387997 0.046463002 -0.72811401 0.68918902 0.035975002
		 -0.72368801 -0.71783501 -0.070598997 -0.69262397 -0.72730601 -0.032178 -0.68555897
		 -0.615161 -0.044183999 -0.78716302 -0.60655898 -0.082571 -0.790739 0.57697701 -0.0099769998
		 -0.81669998 0.58833599 0.031397998 -0.80800599 0.68918902 0.035975002 -0.72368801
		 0.679914 0.018645 -0.733055 -0.70839798 -0.121417 -0.69529098 -0.71783501 -0.070598997
		 -0.69262397 -0.60655898 -0.082571 -0.790739 -0.59522498 -0.12213 -0.79422402 0.55051702
		 -0.084048003 -0.83058202 0.57697701 -0.0099769998 -0.81669998 0.679914 0.018645 -0.733055
		 0.65740699 -0.067700997 -0.75048798 -0.69928002 -0.184926 -0.69051403 -0.70839798
		 -0.121417 -0.69529098 -0.59522498 -0.12213 -0.79422402 -0.58674097 -0.173462 -0.79097801
		 0.53311998 -0.171169 -0.82854301 0.55051702 -0.084048003 -0.83058202 0.65740699 -0.067700997
		 -0.75048798 0.64594001 -0.205198 -0.73529297 -0.68018401 -0.27155 -0.68088901 -0.69928002
		 -0.184926 -0.69051403 -0.58674097 -0.173462 -0.79097801 -0.57323402 -0.26958299 -0.77377498
		 0.514772 -0.31284499 -0.79821002 0.53311998 -0.171169 -0.82854301 0.64594001 -0.205198
		 -0.73529297 0.62999701 -0.33792701 -0.69922 -0.57323402 -0.26958299 -0.77377498;
	setAttr ".n[4316:4481]" -type "float3"  -0.47346801 -0.38794699 -0.790775 -0.62242001
		 -0.370352 -0.68951601 -0.68018401 -0.27155 -0.68088901 0.401214 -0.462814 -0.79046202
		 0.514772 -0.31284499 -0.79821002 0.62999701 -0.33792701 -0.69922 0.55259597 -0.450656
		 -0.70110399 -0.47346801 -0.38794699 -0.790775 -0.52764601 -0.466333 -0.71001703 -0.62242001
		 -0.370352 -0.68951601 -0.47346801 -0.38794699 -0.790775 -0.36164501 -0.38672501 -0.84832603
		 -0.39095199 -0.50665998 -0.76840901 -0.52764601 -0.466333 -0.71001703 -0.39095199
		 -0.50665998 -0.76840901 -0.36164501 -0.38672501 -0.84832603 -0.196896 -0.47403499
		 -0.85820901 -0.206991 -0.60147101 -0.77161402 0.23326901 -0.52635199 -0.81764197
		 0.30586299 -0.473131 -0.82619298 0.32635501 -0.57905799 -0.74711698 0.25258899 -0.62121302
		 -0.741817 0.30586299 -0.473131 -0.82619298 0.401214 -0.462814 -0.79046202 0.44053301
		 -0.54840201 -0.71076399 0.32635501 -0.57905799 -0.74711698 0.44053301 -0.54840201
		 -0.71076399 0.401214 -0.462814 -0.79046202 0.55259597 -0.450656 -0.70110399 -0.206991
		 -0.60147101 -0.77161402 -0.196896 -0.47403499 -0.85820901 -0.001511 -0.495819 -0.86842501
		 7.0000002e-05 -0.63793302 -0.77009201 -0.001511 -0.495819 -0.86842501 0.136987 -0.51031399
		 -0.84900802 0.1577 -0.63377202 -0.75727397 7.0000002e-05 -0.63793302 -0.77009201
		 0.136987 -0.51031399 -0.84900802 0.23326901 -0.52635199 -0.81764197 0.25258899 -0.62121302
		 -0.741817 0.1577 -0.63377202 -0.75727397 -0.195081 0.66457099 -0.72131002 -0.076274
		 0.73216701 -0.67684102 -0.073512003 0.62503099 -0.77713102 -0.076274 0.73216701 -0.67684102
		 0.074771002 0.73518598 -0.673729 0.079051003 0.632429 -0.77057397 -0.073512003 0.62503099
		 -0.77713102 -0.417873 0.56382799 -0.712376 -0.27339599 0.63540298 -0.72216201 -0.31125301
		 0.56035799 -0.767542 -0.450928 0.53406203 -0.71515203 -0.31125301 0.56035799 -0.767542
		 -0.27339599 0.63540298 -0.72216201 -0.195081 0.66457099 -0.72131002 -0.197138 0.57401502
		 -0.79475999 -0.072604999 0.55053997 -0.83164501 -0.197138 0.57401502 -0.79475999
		 -0.195081 0.66457099 -0.72131002 -0.073512003 0.62503099 -0.77713102 0.070166998
		 0.54909301 -0.83280998 -0.072604999 0.55053997 -0.83164501 -0.073512003 0.62503099
		 -0.77713102 0.079051003 0.632429 -0.77057397 0.2119 0.551687 -0.80668402 0.070166998
		 0.54909301 -0.83280998 0.079051003 0.632429 -0.77057397 0.217216 0.63137197 -0.74443698
		 0.217216 0.63137197 -0.74443698 0.33239001 0.638722 -0.69393897 0.35030401 0.55292201
		 -0.756019 0.2119 0.551687 -0.80668402 0.33239001 0.638722 -0.69393897 0.47284099
		 0.58098501 -0.66247803 0.495781 0.54142803 -0.67901099 0.35030401 0.55292201 -0.756019
		 -0.54118103 0.476069 -0.69316798 -0.450928 0.53406203 -0.71515203 -0.40346101 0.48521
		 -0.77575201 -0.40346101 0.48521 -0.77575201 -0.450928 0.53406203 -0.71515203 -0.31125301
		 0.56035799 -0.767542 -0.29323599 0.49399599 -0.818524 -0.29323599 0.49399599 -0.818524
		 -0.31125301 0.56035799 -0.767542 -0.197138 0.57401502 -0.79475999 -0.185996 0.49393699
		 -0.84937102 0.31887501 0.48623201 -0.81357098 0.19341999 0.48131299 -0.85494202 0.2119
		 0.551687 -0.80668402 0.35030401 0.55292201 -0.756019 0.35030401 0.55292201 -0.756019
		 0.495781 0.54142803 -0.67901099 0.43921801 0.485717 -0.75575602 0.31887501 0.48623201
		 -0.81357098 0.495781 0.54142803 -0.67901099 0.58389598 0.477043 -0.656883 0.43921801
		 0.485717 -0.75575602 -0.54118103 0.476069 -0.69316798 -0.40346101 0.48521 -0.77575201
		 -0.41768301 0.40605 -0.81281298 -0.55225301 0.40595001 -0.728163 -0.41768301 0.40605
		 -0.81281298 -0.40346101 0.48521 -0.77575201 -0.29323599 0.49399599 -0.818524 -0.29606599
		 0.41742501 -0.85912901 0.31403801 0.40110299 -0.86052102 0.31887501 0.48623201 -0.81357098
		 0.43921801 0.485717 -0.75575602 0.449498 0.394656 -0.801373 0.43921801 0.485717 -0.75575602
		 0.58389598 0.477043 -0.656883 0.592511 0.398332 -0.70018703 0.449498 0.394656 -0.801373
		 -0.52732998 0.34128001 -0.77810699 -0.55225301 0.40595001 -0.728163 -0.41768301 0.40605
		 -0.81281298 -0.41314599 0.34095401 -0.84442902 -0.41314599 0.34095401 -0.84442902
		 -0.41768301 0.40605 -0.81281298 -0.29606599 0.41742501 -0.85912901 -0.29883301 0.35032699
		 -0.887676 0.438088 0.31252301 -0.842857 0.312821 0.319536 -0.89445001 0.31403801
		 0.40110299 -0.86052102 0.449498 0.394656 -0.801373 0.449498 0.394656 -0.801373 0.592511
		 0.398332 -0.70018703 0.56152999 0.32206601 -0.76220602 0.438088 0.31252301 -0.842857
		 -0.42721799 0.27108699 -0.86255199 -0.53365099 0.24119499 -0.81058103 -0.52732998
		 0.34128001 -0.77810699 -0.41314599 0.34095401 -0.84442902 -0.42721799 0.27108699
		 -0.86255199 -0.41314599 0.34095401 -0.84442902 -0.29883301 0.35032699 -0.887676 -0.30723599
		 0.28835601 -0.90689403 0.32497299 0.245856 -0.91320699 0.312821 0.319536 -0.89445001
		 0.438088 0.31252301 -0.842857 0.447303 0.222572 -0.86624599 0.56152999 0.32206601
		 -0.76220602 0.55853897 0.203124 -0.804223 0.447303 0.222572 -0.86624599 0.438088
		 0.31252301 -0.842857 -0.60767603 0.18531901 -0.77226102 -0.661457 0.217434 -0.71777302
		 -0.53365099 0.24119499 -0.81058103 -0.53365099 0.24119499 -0.81058103 -0.42721799
		 0.27108699 -0.86255199 -0.466326 0.22776 -0.85478997 -0.60767603 0.18531901 -0.77226102
		 -0.466326 0.22776 -0.85478997 -0.42721799 0.27108699 -0.86255199 -0.30723599 0.28835601
		 -0.90689403 -0.326888 0.24621999 -0.91242498 0.35102701 0.19019499 -0.91684598 0.32497299
		 0.245856 -0.91320699 0.447303 0.222572 -0.86624599 0.486857 0.166251 -0.85751402
		 0.447303 0.222572 -0.86624599 0.55853897 0.203124 -0.804223 0.62518299 0.132118 -0.76921499
		 0.486857 0.166251 -0.85751402 0.68796098 0.186473 -0.70138198;
	setAttr ".n[4482:4647]" -type "float3"  0.62518299 0.132118 -0.76921499 0.55853897
		 0.203124 -0.804223 -0.60767603 0.18531901 -0.77226102 -0.466326 0.22776 -0.85478997
		 -0.476625 0.20789699 -0.85417098 -0.61014301 0.19164599 -0.76876301 -0.476625 0.20789699
		 -0.85417098 -0.466326 0.22776 -0.85478997 -0.326888 0.24621999 -0.91242498 -0.33548999
		 0.218133 -0.91644102 0.364786 0.156122 -0.91790903 0.35102701 0.19019499 -0.91684598
		 0.486857 0.166251 -0.85751402 0.49520901 0.139586 -0.85748702 0.486857 0.166251 -0.85751402
		 0.62518299 0.132118 -0.76921499 0.62308103 0.13012099 -0.771258 0.49520901 0.139586
		 -0.85748702 -0.61014301 0.19164599 -0.76876301 -0.476625 0.20789699 -0.85417098 -0.48002499
		 0.178551 -0.85889202 -0.60987002 0.17216 -0.77357602 -0.34140801 0.188743 -0.92076999
		 -0.48002499 0.178551 -0.85889202 -0.476625 0.20789699 -0.85417098 -0.33548999 0.218133
		 -0.91644102 -0.34140801 0.188743 -0.92076999 -0.33548999 0.218133 -0.91644102 -0.191466
		 0.22219101 -0.95601898 -0.194864 0.195705 -0.96110803 0.246824 0.15436199 -0.95668697
		 0.231631 0.179151 -0.95616502 0.364786 0.156122 -0.91790903 0.37826601 0.131529 -0.91630501
		 0.49520901 0.139586 -0.85748702 0.49936801 0.115116 -0.85870898 0.37826601 0.131529
		 -0.91630501 0.364786 0.156122 -0.91790903 0.49520901 0.139586 -0.85748702 0.62308103
		 0.13012099 -0.771258 0.61746299 0.114703 -0.77819198 0.49936801 0.115116 -0.85870898
		 -0.48002499 0.178551 -0.85889202 -0.34140801 0.188743 -0.92076999 -0.354617 0.156725
		 -0.92178297 -0.49244699 0.13785 -0.85935599 -0.199251 0.165644 -0.96584702 -0.354617
		 0.156725 -0.92178297 -0.34140801 0.188743 -0.92076999 -0.194864 0.195705 -0.96110803
		 -0.199251 0.165644 -0.96584702 -0.194864 0.195705 -0.96110803 -0.043799002 0.19018
		 -0.98077202 -0.039907001 0.163367 -0.98575801 0.115387 0.15099999 -0.981776 0.105131
		 0.176101 -0.978742 0.246824 0.15436199 -0.95668697 0.26197201 0.13165399 -0.95605302
		 0.37826601 0.131529 -0.91630501 0.393332 0.111056 -0.91266501 0.26197201 0.13165399
		 -0.95605302 0.246824 0.15436199 -0.95668697 0.37826601 0.131529 -0.91630501 0.49936801
		 0.115116 -0.85870898 0.50908601 0.09166 -0.85582101 0.393332 0.111056 -0.91266501
		 -0.49244699 0.13785 -0.85935599 -0.354617 0.156725 -0.92178297 -0.372605 0.13632999
		 -0.91792202 -0.52760398 0.120835 -0.84085298 -0.354617 0.156725 -0.92178297 -0.199251
		 0.165644 -0.96584702 -0.20757 0.14431199 -0.96751702 -0.372605 0.13632999 -0.91792202
		 -0.20757 0.14431199 -0.96751702 -0.199251 0.165644 -0.96584702 -0.039907001 0.163367
		 -0.98575801 -0.038763002 0.144776 -0.98870498 0.124626 0.134827 -0.98300099 0.115387
		 0.15099999 -0.981776 0.26197201 0.13165399 -0.95605302 0.27509299 0.119661 -0.953942
		 0.26197201 0.13165399 -0.95605302 0.393332 0.111056 -0.91266501 0.41136801 0.104255
		 -0.905487 0.27509299 0.119661 -0.953942 0.393332 0.111056 -0.91266501 0.50908601
		 0.09166 -0.85582101 0.53796703 0.093998 -0.83770901 0.41136801 0.104255 -0.905487
		 -0.52760398 0.120835 -0.84085298 -0.372605 0.13632999 -0.91792202 -0.37940401 0.13017599
		 -0.91602802 -0.53293502 0.122847 -0.83719099 -0.372605 0.13632999 -0.91792202 -0.20757
		 0.14431199 -0.96751702 -0.210898 0.13407999 -0.96826899 -0.37940401 0.13017599 -0.91602802
		 -0.037409998 0.133963 -0.99027997 -0.210898 0.13407999 -0.96826899 -0.20757 0.14431199
		 -0.96751702 -0.038763002 0.144776 -0.98870498 -0.038763002 0.144776 -0.98870498 0.124626
		 0.134827 -0.98300099 0.13045099 0.128243 -0.98312598 -0.037409998 0.133963 -0.99027997
		 0.27509299 0.119661 -0.953942 0.28304201 0.118269 -0.95178801 0.13045099 0.128243
		 -0.98312598 0.124626 0.134827 -0.98300099 0.27509299 0.119661 -0.953942 0.41136801
		 0.104255 -0.905487 0.41602299 0.109493 -0.90273798 0.28304201 0.118269 -0.95178801
		 0.41136801 0.104255 -0.905487 0.53796703 0.093998 -0.83770901 0.53517997 0.108207
		 -0.83777899 0.41602299 0.109493 -0.90273798 -0.53293502 0.122847 -0.83719099 -0.37940401
		 0.13017599 -0.91602802 -0.37864599 0.119284 -0.91782302 -0.53498298 0.113719 -0.83717501
		 -0.37940401 0.13017599 -0.91602802 -0.210898 0.13407999 -0.96826899 -0.211294 0.121602
		 -0.96982902 -0.37864599 0.119284 -0.91782302 -0.210898 0.13407999 -0.96826899 -0.037409998
		 0.133963 -0.99027997 -0.037103999 0.120322 -0.99204099 -0.211294 0.121602 -0.96982902
		 -0.037409998 0.133963 -0.99027997 0.13045099 0.128243 -0.98312598 0.13281401 0.116703
		 -0.98424602 -0.037103999 0.120322 -0.99204099 0.13045099 0.128243 -0.98312598 0.28304201
		 0.118269 -0.95178801 0.28544199 0.113509 -0.95165002 0.13281401 0.116703 -0.98424602
		 0.28304201 0.118269 -0.95178801 0.41602299 0.109493 -0.90273798 0.41579199 0.112266
		 -0.90250403 0.28544199 0.113509 -0.95165002 0.41602299 0.109493 -0.90273798 0.53517997
		 0.108207 -0.83777899 0.52962399 0.112709 -0.840711 0.41579199 0.112266 -0.90250403
		 -0.53498298 0.113719 -0.83717501 -0.37864599 0.119284 -0.91782302 -0.38023901 0.100863
		 -0.91937202 -0.53867102 0.091909997 -0.837488 -0.37864599 0.119284 -0.91782302 -0.211294
		 0.121602 -0.96982902 -0.20957799 0.104219 -0.97222197 -0.38023901 0.100863 -0.91937202
		 -0.20957799 0.104219 -0.97222197 -0.211294 0.121602 -0.96982902 -0.037103999 0.120322
		 -0.99204099 -0.034692999 0.103018 -0.99407399 0.131973 0.10216 -0.98597503 -0.034692999
		 0.103018 -0.99407399 -0.037103999 0.120322 -0.99204099 0.13281401 0.116703 -0.98424602
		 0.13281401 0.116703 -0.98424602 0.28544199 0.113509 -0.95165002 0.28132001 0.103636
		 -0.95400101 0.131973 0.10216 -0.98597503;
	setAttr ".n[4648:4813]" -type "float3"  0.28544199 0.113509 -0.95165002 0.41579199
		 0.112266 -0.90250403 0.41146901 0.105876 -0.90525299 0.28132001 0.103636 -0.95400101
		 0.41579199 0.112266 -0.90250403 0.52962399 0.112709 -0.840711 0.52593499 0.108845
		 -0.84353203 0.41146901 0.105876 -0.90525299 -0.53867102 0.091909997 -0.837488 -0.38023901
		 0.100863 -0.91937202 -0.37930399 0.075055003 -0.92222297 -0.53820801 0.075498 -0.83942401
		 -0.37930399 0.075055003 -0.92222297 -0.38023901 0.100863 -0.91937202 -0.20957799
		 0.104219 -0.97222197 -0.207569 0.076087996 -0.97525698 -0.207569 0.076087996 -0.97525698
		 -0.20957799 0.104219 -0.97222197 -0.034692999 0.103018 -0.99407399 -0.034738 0.079622
		 -0.99621999 0.128561 0.086680003 -0.98790598 0.131973 0.10216 -0.98597503 0.28132001
		 0.103636 -0.95400101 0.27552599 0.09223 -0.95685899 0.28132001 0.103636 -0.95400101
		 0.41146901 0.105876 -0.90525299 0.40330699 0.097553998 -0.90985 0.27552599 0.09223
		 -0.95685899 0.41146901 0.105876 -0.90525299 0.52593499 0.108845 -0.84353203 0.51813501
		 0.103118 -0.84906 0.40330699 0.097553998 -0.90985 -0.53820801 0.075498 -0.83942401
		 -0.37930399 0.075055003 -0.92222297 -0.361294 0.040502999 -0.93157202 -0.50189102
		 0.046369001 -0.86368698 -0.361294 0.040502999 -0.93157202 -0.37930399 0.075055003
		 -0.92222297 -0.207569 0.076087996 -0.97525698 -0.20323101 0.039604001 -0.97833002
		 0.26343599 0.073903002 -0.961842 0.118354 0.058446001 -0.99124998 0.128561 0.086680003
		 -0.98790598 0.27552599 0.09223 -0.95685899 0.27552599 0.09223 -0.95685899 0.40330699
		 0.097553998 -0.90985 0.38681701 0.085238002 -0.91820902 0.26343599 0.073903002 -0.961842
		 0.40330699 0.097553998 -0.90985 0.51813501 0.103118 -0.84906 0.489611 0.092895001
		 -0.86697799 0.38681701 0.085238002 -0.91820902 -0.494481 -0.0053349999 -0.86917198
		 -0.50189102 0.046369001 -0.86368698 -0.361294 0.040502999 -0.93157202 -0.35445601
		 -0.0058900001 -0.935054 -0.35445601 -0.0058900001 -0.935054 -0.361294 0.040502999
		 -0.93157202 -0.20323101 0.039604001 -0.97833002 -0.201189 -0.001596 -0.97955102 0.37353399
		 0.059466999 -0.925708 0.245928 0.040989 -0.96842098 0.26343599 0.073903002 -0.961842
		 0.38681701 0.085238002 -0.91820902 0.38681701 0.085238002 -0.91820902 0.489611 0.092895001
		 -0.86697799 0.48360801 0.065719999 -0.872814 0.37353399 0.059466999 -0.925708 -0.619039
		 -0.0057299999 -0.785339 -0.494481 -0.0053349999 -0.86917198 -0.48787099 -0.04809
		 -0.87159002 -0.615161 -0.044183999 -0.78716302 -0.48787099 -0.04809 -0.87159002 -0.494481
		 -0.0053349999 -0.86917198 -0.35445601 -0.0058900001 -0.935054 -0.35123801 -0.052101001
		 -0.93483597 0.358024 0.017727001 -0.93354398 0.37353399 0.059466999 -0.925708 0.48360801
		 0.065719999 -0.872814 0.47933701 0.030030999 -0.87711698 0.48360801 0.065719999 -0.872814
		 0.58445901 0.055835001 -0.80949998 0.58833599 0.031397998 -0.80800599 0.47933701
		 0.030030999 -0.87711698 -0.60655898 -0.082571 -0.790739 -0.615161 -0.044183999 -0.78716302
		 -0.48787099 -0.04809 -0.87159002 -0.481507 -0.091517001 -0.87165099 -0.481507 -0.091517001
		 -0.87165099 -0.48787099 -0.04809 -0.87159002 -0.35123801 -0.052101001 -0.93483597
		 -0.34662899 -0.096267998 -0.93304902 0.46711701 -0.026489001 -0.88379902 0.34396201
		 -0.043861002 -0.937958 0.358024 0.017727001 -0.93354398 0.47933701 0.030030999 -0.87711698
		 0.47933701 0.030030999 -0.87711698 0.58833599 0.031397998 -0.80800599 0.57697701
		 -0.0099769998 -0.81669998 0.46711701 -0.026489001 -0.88379902 -0.59522498 -0.12213
		 -0.79422402 -0.60655898 -0.082571 -0.790739 -0.481507 -0.091517001 -0.87165099 -0.47155899
		 -0.133587 -0.87165701 0.44814101 -0.108844 -0.887312 0.46711701 -0.026489001 -0.88379902
		 0.57697701 -0.0099769998 -0.81669998 0.55051702 -0.084048003 -0.83058202 -0.45649499
		 -0.182428 -0.87082303 -0.58674097 -0.173462 -0.79097801 -0.59522498 -0.12213 -0.79422402
		 -0.47155899 -0.133587 -0.87165701 -0.45649499 -0.182428 -0.87082303 -0.47155899 -0.133587
		 -0.87165701 -0.34156701 -0.145298 -0.92855799 -0.33114401 -0.201987 -0.92170697 0.31252101
		 -0.237821 -0.91965801 0.329079 -0.129748 -0.93534601 0.44814101 -0.108844 -0.887312
		 0.42229 -0.202676 -0.88351202 0.55051702 -0.084048003 -0.83058202 0.53311998 -0.171169
		 -0.82854301 0.42229 -0.202676 -0.88351202 0.44814101 -0.108844 -0.887312 -0.58674097
		 -0.173462 -0.79097801 -0.45649499 -0.182428 -0.87082303 -0.43453801 -0.27877399 -0.85642397
		 -0.57323402 -0.26958299 -0.77377498 -0.43453801 -0.27877399 -0.85642397 -0.45649499
		 -0.182428 -0.87082303 -0.33114401 -0.201987 -0.92170697 -0.32621801 -0.28399199 -0.90162599
		 0.29155999 -0.35846999 -0.88684398 0.31252101 -0.237821 -0.91965801 0.42229 -0.202676
		 -0.88351202 0.37510201 -0.32584399 -0.86782801 0.42229 -0.202676 -0.88351202 0.53311998
		 -0.171169 -0.82854301 0.514772 -0.31284499 -0.79821002 0.37510201 -0.32584399 -0.86782801
		 -0.47346801 -0.38794699 -0.790775 -0.57323402 -0.26958299 -0.77377498 -0.43453801
		 -0.27877399 -0.85642397 -0.36164501 -0.38672501 -0.84832603 -0.47346801 -0.38794699
		 -0.790775 -0.43453801 -0.27877399 -0.85642397 -0.32621801 -0.28399199 -0.90162599
		 -0.32621801 -0.28399199 -0.90162599 -0.190145 -0.26861301 -0.94429398 -0.191475 -0.34215301
		 -0.91992903 -0.36164501 -0.38672501 -0.84832603 -0.191475 -0.34215301 -0.91992903
		 -0.190145 -0.26861301 -0.94429398 -0.044144001 -0.29152599 -0.95554399 -0.017620999
		 -0.371041 -0.92844898 0.109171 -0.40363601 -0.90838301 0.081216998 -0.322014 -0.94324499
		 0.194864 -0.342794 -0.91897798 0.212787 -0.42348501 -0.88055801 0.194864 -0.342794
		 -0.91897798 0.29155999 -0.35846999 -0.88684398 0.30586299 -0.473131 -0.82619298 0.212787
		 -0.42348501 -0.88055801 0.37510201 -0.32584399 -0.86782801 0.401214 -0.462814 -0.79046202
		 0.30586299 -0.473131 -0.82619298;
	setAttr ".n[4814:4979]" -type "float3"  0.29155999 -0.35846999 -0.88684398 0.514772
		 -0.31284499 -0.79821002 0.401214 -0.462814 -0.79046202 0.37510201 -0.32584399 -0.86782801
		 -0.196896 -0.47403499 -0.85820901 -0.36164501 -0.38672501 -0.84832603 -0.191475 -0.34215301
		 -0.91992903 -0.001511 -0.495819 -0.86842501 -0.196896 -0.47403499 -0.85820901 -0.191475
		 -0.34215301 -0.91992903 -0.017620999 -0.371041 -0.92844898 -0.017620999 -0.371041
		 -0.92844898 0.109171 -0.40363601 -0.90838301 0.136987 -0.51031399 -0.84900802 -0.001511
		 -0.495819 -0.86842501 0.212787 -0.42348501 -0.88055801 0.23326901 -0.52635199 -0.81764197
		 0.136987 -0.51031399 -0.84900802 0.109171 -0.40363601 -0.90838301 0.30586299 -0.473131
		 -0.82619298 0.23326901 -0.52635199 -0.81764197 0.212787 -0.42348501 -0.88055801 -0.197138
		 0.57401502 -0.79475999 -0.072604999 0.55053997 -0.83164501 -0.068534002 0.48271999
		 -0.87308902 -0.185996 0.49393699 -0.84937102 -0.072604999 0.55053997 -0.83164501
		 0.070166998 0.54909301 -0.83280998 0.061895002 0.47895199 -0.87565601 -0.068534002
		 0.48271999 -0.87308902 0.070166998 0.54909301 -0.83280998 0.2119 0.551687 -0.80668402
		 0.19341999 0.48131299 -0.85494202 0.061895002 0.47895199 -0.87565601 -0.29323599
		 0.49399599 -0.818524 -0.185996 0.49393699 -0.84937102 -0.18251 0.420753 -0.88862598
		 -0.29606599 0.41742501 -0.85912901 -0.185996 0.49393699 -0.84937102 -0.068534002
		 0.48271999 -0.87308902 -0.064621001 0.413297 -0.90829998 -0.18251 0.420753 -0.88862598
		 -0.068534002 0.48271999 -0.87308902 0.061895002 0.47895199 -0.87565601 0.059581 0.40691999
		 -0.91151798 -0.064621001 0.413297 -0.90829998 0.061895002 0.47895199 -0.87565601
		 0.19341999 0.48131299 -0.85494202 0.186363 0.40373999 -0.89569098 0.059581 0.40691999
		 -0.91151798 0.19341999 0.48131299 -0.85494202 0.31887501 0.48623201 -0.81357098 0.31403801
		 0.40110299 -0.86052102 0.186363 0.40373999 -0.89569098 -0.29606599 0.41742501 -0.85912901
		 -0.18251 0.420753 -0.88862598 -0.18061601 0.35216501 -0.91834497 -0.29883301 0.35032699
		 -0.887676 -0.18251 0.420753 -0.88862598 -0.064621001 0.413297 -0.90829998 -0.059447002
		 0.347826 -0.935673 -0.18061601 0.35216501 -0.91834497 -0.064621001 0.413297 -0.90829998
		 0.059581 0.40691999 -0.91151798 0.063070998 0.33953699 -0.93847603 -0.059447002 0.347826
		 -0.935673 0.059581 0.40691999 -0.91151798 0.186363 0.40373999 -0.89569098 0.187629
		 0.32981399 -0.92521203 0.063070998 0.33953699 -0.93847603 0.186363 0.40373999 -0.89569098
		 0.31403801 0.40110299 -0.86052102 0.312821 0.319536 -0.89445001 0.187629 0.32981399
		 -0.92521203 -0.29883301 0.35032699 -0.887676 -0.18061601 0.35216501 -0.91834497 -0.182413
		 0.29551899 -0.93776 -0.30723599 0.28835601 -0.90689403 -0.18061601 0.35216501 -0.91834497
		 -0.059447002 0.347826 -0.935673 -0.057158001 0.294011 -0.95409203 -0.182413 0.29551899
		 -0.93776 -0.059447002 0.347826 -0.935673 0.063070998 0.33953699 -0.93847603 0.070102997
		 0.28366801 -0.956357 -0.057158001 0.294011 -0.95409203 0.063070998 0.33953699 -0.93847603
		 0.187629 0.32981399 -0.92521203 0.19794001 0.26698399 -0.94315398 0.070102997 0.28366801
		 -0.956357 0.187629 0.32981399 -0.92521203 0.312821 0.319536 -0.89445001 0.32497299
		 0.245856 -0.91320699 0.19794001 0.26698399 -0.94315398 -0.30723599 0.28835601 -0.90689403
		 -0.182413 0.29551899 -0.93776 -0.190274 0.25386101 -0.94834101 -0.326888 0.24621999
		 -0.91242498 -0.182413 0.29551899 -0.93776 -0.057158001 0.294011 -0.95409203 -0.054040998
		 0.25003999 -0.96672601 -0.190274 0.25386101 -0.94834101 -0.057158001 0.294011 -0.95409203
		 0.070102997 0.28366801 -0.956357 0.081235997 0.236361 -0.96826297 -0.054040998 0.25003999
		 -0.96672601 0.070102997 0.28366801 -0.956357 0.19794001 0.26698399 -0.94315398 0.215942
		 0.215198 -0.95239598 0.081235997 0.236361 -0.96826297 0.19794001 0.26698399 -0.94315398
		 0.32497299 0.245856 -0.91320699 0.35102701 0.19019499 -0.91684598 0.215942 0.215198
		 -0.95239598 -0.326888 0.24621999 -0.91242498 -0.190274 0.25386101 -0.94834101 -0.191466
		 0.22219101 -0.95601898 -0.33548999 0.218133 -0.91644102 -0.190274 0.25386101 -0.94834101
		 -0.054040998 0.25003999 -0.96672601 -0.048574001 0.216727 -0.97502297 -0.191466 0.22219101
		 -0.95601898 -0.054040998 0.25003999 -0.96672601 0.081235997 0.236361 -0.96826297
		 0.093276002 0.201428 -0.975052 -0.048574001 0.216727 -0.97502297 0.081235997 0.236361
		 -0.96826297 0.215942 0.215198 -0.95239598 0.231631 0.179151 -0.95616502 0.093276002
		 0.201428 -0.975052 0.215942 0.215198 -0.95239598 0.35102701 0.19019499 -0.91684598
		 0.364786 0.156122 -0.91790903 0.231631 0.179151 -0.95616502 -0.191466 0.22219101
		 -0.95601898 -0.048574001 0.216727 -0.97502297 -0.043799002 0.19018 -0.98077202 -0.194864
		 0.195705 -0.96110803 -0.048574001 0.216727 -0.97502297 0.093276002 0.201428 -0.975052
		 0.105131 0.176101 -0.978742 -0.043799002 0.19018 -0.98077202 0.093276002 0.201428
		 -0.975052 0.231631 0.179151 -0.95616502 0.246824 0.15436199 -0.95668697 0.105131
		 0.176101 -0.978742 -0.043799002 0.19018 -0.98077202 0.105131 0.176101 -0.978742 0.115387
		 0.15099999 -0.981776 -0.039907001 0.163367 -0.98575801 -0.039907001 0.163367 -0.98575801
		 0.115387 0.15099999 -0.981776 0.124626 0.134827 -0.98300099 -0.038763002 0.144776
		 -0.98870498 -0.034692999 0.103018 -0.99407399 0.131973 0.10216 -0.98597503 0.128561
		 0.086680003 -0.98790598 -0.034738 0.079622 -0.99621999 -0.207569 0.076087996 -0.97525698
		 -0.034738 0.079622 -0.99621999 -0.040578 0.046491001 -0.99809402 -0.20323101 0.039604001
		 -0.97833002 -0.034738 0.079622 -0.99621999 0.128561 0.086680003 -0.98790598 0.118354
		 0.058446001 -0.99124998 -0.040578 0.046491001 -0.99809402;
	setAttr ".n[4980:5103]" -type "float3"  -0.20323101 0.039604001 -0.97833002 -0.040578
		 0.046491001 -0.99809402 -0.045910999 0.0085659996 -0.998909 -0.201189 -0.001596 -0.97955102
		 -0.040578 0.046491001 -0.99809402 0.118354 0.058446001 -0.99124998 0.104172 0.022107
		 -0.99431401 -0.045910999 0.0085659996 -0.998909 0.118354 0.058446001 -0.99124998
		 0.26343599 0.073903002 -0.961842 0.245928 0.040989 -0.96842098 0.104172 0.022107
		 -0.99431401 -0.35445601 -0.0058900001 -0.935054 -0.201189 -0.001596 -0.97955102 -0.20594899
		 -0.047929 -0.97738802 -0.35123801 -0.052101001 -0.93483597 -0.201189 -0.001596 -0.97955102
		 -0.045910999 0.0085659996 -0.998909 -0.055608999 -0.035409 -0.99782503 -0.20594899
		 -0.047929 -0.97738802 -0.045910999 0.0085659996 -0.998909 0.104172 0.022107 -0.99431401
		 0.091577001 -0.017926 -0.995637 -0.055608999 -0.035409 -0.99782503 0.104172 0.022107
		 -0.99431401 0.245928 0.040989 -0.96842098 0.228378 -0.00093899999 -0.97357202 0.091577001
		 -0.017926 -0.995637 0.245928 0.040989 -0.96842098 0.37353399 0.059466999 -0.925708
		 0.358024 0.017727001 -0.93354398 0.228378 -0.00093899999 -0.97357202 -0.35123801
		 -0.052101001 -0.93483597 -0.20594899 -0.047929 -0.97738802 -0.20842101 -0.097309999
		 -0.97318602 -0.34662899 -0.096267998 -0.93304902 -0.20842101 -0.097309999 -0.97318602
		 -0.20594899 -0.047929 -0.97738802 -0.055608999 -0.035409 -0.99782503 -0.067138001
		 -0.090051003 -0.99367201 0.076291002 -0.073757999 -0.99435401 -0.067138001 -0.090051003
		 -0.99367201 -0.055608999 -0.035409 -0.99782503 0.091577001 -0.017926 -0.995637 0.091577001
		 -0.017926 -0.995637 0.228378 -0.00093899999 -0.97357202 0.21450201 -0.057712 -0.97501701
		 0.076291002 -0.073757999 -0.99435401 0.228378 -0.00093899999 -0.97357202 0.358024
		 0.017727001 -0.93354398 0.34396201 -0.043861002 -0.937958 0.21450201 -0.057712 -0.97501701
		 -0.481507 -0.091517001 -0.87165099 -0.34662899 -0.096267998 -0.93304902 -0.34156701
		 -0.145298 -0.92855799 -0.47155899 -0.133587 -0.87165701 -0.34662899 -0.096267998
		 -0.93304902 -0.20842101 -0.097309999 -0.97318602 -0.20696799 -0.150102 -0.96676397
		 -0.34156701 -0.145298 -0.92855799 -0.20696799 -0.150102 -0.96676397 -0.20842101 -0.097309999
		 -0.97318602 -0.067138001 -0.090051003 -0.99367201 -0.07288 -0.15376499 -0.985416
		 0.064799003 -0.15137801 -0.98635 0.076291002 -0.073757999 -0.99435401 0.21450201
		 -0.057712 -0.97501701 0.201902 -0.140958 -0.96920902 0.21450201 -0.057712 -0.97501701
		 0.34396201 -0.043861002 -0.937958 0.329079 -0.129748 -0.93534601 0.201902 -0.140958
		 -0.96920902 0.34396201 -0.043861002 -0.937958 0.46711701 -0.026489001 -0.88379902
		 0.44814101 -0.108844 -0.887312 0.329079 -0.129748 -0.93534601 -0.34156701 -0.145298
		 -0.92855799 -0.20696799 -0.150102 -0.96676397 -0.199838 -0.206075 -0.95791298 -0.33114401
		 -0.201987 -0.92170697 -0.199838 -0.206075 -0.95791298 -0.20696799 -0.150102 -0.96676397
		 -0.07288 -0.15376499 -0.985416 -0.064750999 -0.222662 -0.97274297 0.064934999 -0.239041
		 -0.96883601 0.064799003 -0.15137801 -0.98635 0.201902 -0.140958 -0.96920902 0.193229
		 -0.24304099 -0.95057601 0.201902 -0.140958 -0.96920902 0.329079 -0.129748 -0.93534601
		 0.31252101 -0.237821 -0.91965801 0.193229 -0.24304099 -0.95057601 -0.33114401 -0.201987
		 -0.92170697 -0.199838 -0.206075 -0.95791298 -0.190145 -0.26861301 -0.94429398 -0.32621801
		 -0.28399199 -0.90162599 -0.044144001 -0.29152599 -0.95554399 -0.190145 -0.26861301
		 -0.94429398 -0.199838 -0.206075 -0.95791298 -0.064750999 -0.222662 -0.97274297 -0.064750999
		 -0.222662 -0.97274297 0.064934999 -0.239041 -0.96883601 0.081216998 -0.322014 -0.94324499
		 -0.044144001 -0.29152599 -0.95554399 0.193229 -0.24304099 -0.95057601 0.194864 -0.342794
		 -0.91897798 0.081216998 -0.322014 -0.94324499 0.064934999 -0.239041 -0.96883601 0.193229
		 -0.24304099 -0.95057601 0.31252101 -0.237821 -0.91965801 0.29155999 -0.35846999 -0.88684398
		 0.194864 -0.342794 -0.91897798 -0.044144001 -0.29152599 -0.95554399 0.081216998 -0.322014
		 -0.94324499 0.109171 -0.40363601 -0.90838301 -0.017620999 -0.371041 -0.92844898 -0.067138001
		 -0.090051003 -0.99367201 0.076291002 -0.073757999 -0.99435401 0.064799003 -0.15137801
		 -0.98635 -0.07288 -0.15376499 -0.985416 -0.07288 -0.15376499 -0.985416 0.064799003
		 -0.15137801 -0.98635 0.064934999 -0.239041 -0.96883601 -0.064750999 -0.222662 -0.97274297;
	setAttr -s 1290 -ch 5104 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 45 39 49 51
		f 4 -3 4 5 6
		mu 0 4 51 49 55 56
		f 4 7 8 9 10
		mu 0 4 59 58 68 0
		f 4 11 -11 12 13
		mu 0 4 61 59 0 1
		f 4 14 -14 15 16
		mu 0 4 63 61 1 2
		f 4 17 -17 18 19
		mu 0 4 65 63 2 3
		f 4 20 21 -20 22
		mu 0 4 71 67 65 3
		f 4 -10 23 24 25
		mu 0 4 0 68 4 5
		f 4 -13 -26 26 27
		mu 0 4 1 0 5 6
		f 4 -16 -28 28 29
		mu 0 4 2 1 6 7
		f 4 -19 -30 30 31
		mu 0 4 3 2 7 8
		f 4 -23 -32 32 33
		mu 0 4 71 3 8 72
		f 4 34 35 36 37
		mu 0 4 4 70 77 9
		f 4 -25 -38 38 39
		mu 0 4 5 4 9 10
		f 4 -27 -40 40 41
		mu 0 4 6 5 10 11
		f 4 -29 -42 42 43
		mu 0 4 7 6 11 12
		f 4 -31 -44 44 45
		mu 0 4 8 7 12 13
		f 4 -33 -46 46 47
		mu 0 4 72 8 13 14
		f 4 48 49 -48 50
		mu 0 4 78 75 72 14
		f 4 51 52 53 -37
		mu 0 4 77 81 80 9
		f 4 -39 -54 54 55
		mu 0 4 10 9 80 15
		f 4 -41 -56 56 57
		mu 0 4 11 10 15 16
		f 4 -43 -58 58 59
		mu 0 4 12 11 16 17
		f 4 -45 -60 60 61
		mu 0 4 13 12 17 18
		f 4 -47 -62 62 63
		mu 0 4 14 13 18 82
		f 4 64 65 -51 -64
		mu 0 4 82 83 78 14
		f 4 -55 66 67 68
		mu 0 4 15 80 84 19
		f 4 -57 -69 69 70
		mu 0 4 16 15 19 20
		f 4 -59 -71 71 72
		mu 0 4 17 16 20 21
		f 4 -61 -73 73 74
		mu 0 4 18 17 21 22
		f 4 -63 -75 75 76
		mu 0 4 82 18 22 86
		f 4 -68 77 78 79
		mu 0 4 19 84 89 23
		f 4 -70 -80 80 81
		mu 0 4 20 19 23 24
		f 4 -72 -82 82 83
		mu 0 4 21 20 24 25
		f 4 -74 -84 84 85
		mu 0 4 22 21 25 26
		f 4 -76 -86 86 87
		mu 0 4 86 22 26 90
		f 4 88 89 90 -79
		mu 0 4 89 93 94 23
		f 4 -81 -91 91 92
		mu 0 4 24 23 94 27
		f 4 -83 -93 93 94
		mu 0 4 25 24 27 28
		f 4 -85 -95 95 96
		mu 0 4 26 25 28 95
		f 4 97 98 -87 -97
		mu 0 4 95 96 90 26
		f 4 99 100 101 -92
		mu 0 4 94 100 99 27
		f 4 -94 -102 102 103
		mu 0 4 28 27 99 101
		f 4 104 105 -96 -104
		mu 0 4 101 102 95 28
		f 4 -103 106 107 108
		mu 0 4 101 99 106 107
		f 4 109 110 111 112
		mu 0 4 119 118 129 29
		f 4 113 -113 114 115
		mu 0 4 125 119 29 126
		f 4 -112 116 117 118
		mu 0 4 29 129 30 31
		f 4 -115 -119 119 120
		mu 0 4 126 29 31 32
		f 4 121 122 -121 123
		mu 0 4 133 132 126 32
		f 4 124 125 126 127
		mu 0 4 30 131 137 33
		f 4 -118 -128 128 129
		mu 0 4 31 30 33 34
		f 4 -120 -130 130 131
		mu 0 4 32 31 34 35
		f 4 -124 -132 132 133
		mu 0 4 133 32 35 36
		f 4 134 135 -134 136
		mu 0 4 140 136 133 36
		f 4 -127 137 138 139
		mu 0 4 33 137 37 38
		f 4 -129 -140 140 141
		mu 0 4 34 33 38 40
		f 4 -131 -142 142 143
		mu 0 4 35 34 40 41
		f 4 -133 -144 144 145
		mu 0 4 36 35 41 42
		f 4 -137 -146 146 147
		mu 0 4 140 36 42 141
		f 4 148 149 150 151
		mu 0 4 37 139 144 43
		f 4 -139 -152 152 153
		mu 0 4 38 37 43 44
		f 4 -141 -154 154 155
		mu 0 4 40 38 44 39
		f 4 -1 156 -143 -156
		mu 0 4 39 45 41 40
		f 4 157 -145 -157 158
		mu 0 4 46 42 41 45
		f 4 -147 -158 159 160
		mu 0 4 141 42 46 47
		f 4 161 162 -161 163
		mu 0 4 145 143 141 47
		f 4 -151 164 165 166
		mu 0 4 43 144 146 48
		f 4 -153 -167 167 168
		mu 0 4 44 43 48 50
		f 4 -2 -155 -169 169
		mu 0 4 49 39 44 50
		f 4 -4 170 171 -159
		mu 0 4 45 51 52 46
		f 4 -160 -172 172 173
		mu 0 4 47 46 52 53
		f 4 -164 -174 174 175
		mu 0 4 145 47 53 147
		f 4 176 177 178 -166
		mu 0 4 146 149 148 48
		f 4 -168 -179 179 180
		mu 0 4 50 48 148 54
		f 4 -5 -170 -181 181
		mu 0 4 55 49 50 54
		f 4 -7 182 183 -171
		mu 0 4 51 56 57 52
		f 4 -173 -184 184 185
		mu 0 4 53 52 57 150
		f 4 186 187 -175 -186
		mu 0 4 150 151 147 53
		f 4 -180 188 189 190
		mu 0 4 54 148 152 153
		f 4 -191 191 192 -182
		mu 0 4 54 153 154 55
		f 4 -6 -193 193 194
		mu 0 4 56 55 154 155
		f 4 195 196 -183 -195
		mu 0 4 155 156 57 56
		f 4 -185 -197 197 198
		mu 0 4 150 57 156 157
		f 4 199 200 201 202
		mu 0 4 162 231 60 62
		f 4 203 -203 204 205
		mu 0 4 163 162 62 64
		f 4 206 207 -206 208
		mu 0 4 166 167 163 64
		f 4 209 210 211 212
		mu 0 4 165 164 66 58
		f 4 213 -213 -8 214
		mu 0 4 60 165 58 59
		f 4 -12 215 -202 -215
		mu 0 4 59 61 62 60
		f 4 -15 216 -205 -216
		mu 0 4 61 63 64 62
		f 4 -18 217 -209 -217
		mu 0 4 63 65 166 64
		f 4 218 219 -218 -22
		mu 0 4 67 168 166 65
		f 4 220 221 -219 222
		mu 0 4 170 169 168 67
		f 4 223 224 225 226
		mu 0 4 66 234 171 69
		f 4 -212 -227 227 -9
		mu 0 4 58 66 69 68
		f 4 228 -223 -21 229
		mu 0 4 73 170 67 71
		f 4 230 231 -229 232
		mu 0 4 172 237 170 73
		f 4 -226 233 234 235
		mu 0 4 69 171 74 70
		f 4 -24 -228 -236 -35
		mu 0 4 4 68 69 70
		f 4 -34 -50 236 -230
		mu 0 4 71 72 75 73
		f 4 -233 -237 237 238
		mu 0 4 172 73 75 173
		f 4 239 240 241 242
		mu 0 4 74 240 174 76
		f 4 -235 -243 243 -36
		mu 0 4 70 74 76 77
		f 4 244 -238 -49 245
		mu 0 4 79 173 75 78
		f 4 246 247 -245 248
		mu 0 4 175 241 173 79
		f 4 249 250 251 -242
		mu 0 4 174 244 176 76
		f 4 -252 252 -52 -244
		mu 0 4 76 176 81 77
		f 4 253 254 -246 -66
		mu 0 4 83 177 79 78
		f 4 255 256 -249 -255
		mu 0 4 177 245 175 79
		f 4 -253 257 258 259
		mu 0 4 81 176 178 85
		f 4 -67 -53 -260 260
		mu 0 4 84 80 81 85
		f 4 -77 261 262 -65
		mu 0 4 82 86 87 83
		f 4 -254 -263 263 264
		mu 0 4 177 83 87 179
		f 4 -259 265 266 267
		mu 0 4 85 178 180 88
		f 4 -78 -261 -268 268
		mu 0 4 89 84 85 88
		f 4 -88 269 270 -262
		mu 0 4 86 90 91 87
		f 4 -264 -271 271 272
		mu 0 4 179 87 91 181
		f 4 -267 273 274 275
		mu 0 4 88 180 182 92
		f 4 -276 276 -89 -269
		mu 0 4 88 92 93 89
		f 4 277 278 -270 -99
		mu 0 4 96 97 91 90
		f 4 -272 -279 279 280
		mu 0 4 181 91 97 183
		f 4 281 282 283 -275
		mu 0 4 182 185 184 92
		f 4 -277 -284 284 285
		mu 0 4 93 92 184 98
		f 4 -286 286 -100 -90
		mu 0 4 93 98 100 94
		f 4 287 288 -98 -106
		mu 0 4 102 103 96 95
		f 4 -278 -289 289 290
		mu 0 4 97 96 103 186
		f 4 291 292 -280 -291
		mu 0 4 186 187 183 97
		f 4 -285 293 294 295
		mu 0 4 98 184 188 104
		f 4 -287 -296 296 297
		mu 0 4 100 98 104 105
		f 4 -107 -101 -298 298
		mu 0 4 106 99 100 105
		f 4 -109 299 300 -105
		mu 0 4 101 107 108 102
		f 4 -288 -301 301 302
		mu 0 4 103 102 108 109
		f 4 -290 -303 303 304
		mu 0 4 186 103 109 189
		f 4 -295 305 306 307
		mu 0 4 104 188 190 110
		f 4 -297 -308 308 309
		mu 0 4 105 104 110 111
		f 4 -310 310 311 -299
		mu 0 4 105 111 112 106
		f 4 -108 -312 312 313
		mu 0 4 107 106 112 113
		f 4 314 315 -300 -314
		mu 0 4 113 114 108 107
		f 4 -302 -316 316 317
		mu 0 4 109 108 114 115
		f 4 -304 -318 318 319
		mu 0 4 189 109 115 191
		f 4 -307 320 321 322
		mu 0 4 110 190 192 116
		f 4 -309 -323 323 324
		mu 0 4 111 110 116 117
		f 4 -311 -325 325 326
		mu 0 4 112 111 117 120
		f 4 -313 -327 327 328
		mu 0 4 113 112 120 121
		f 4 -315 -329 329 330
		mu 0 4 114 113 121 122
		f 4 -317 -331 331 332
		mu 0 4 115 114 122 123
		f 4 -319 -333 333 334
		mu 0 4 191 115 123 193
		f 4 -322 335 336 337
		mu 0 4 116 192 194 124
		f 4 -324 -338 338 339
		mu 0 4 117 116 124 118
		f 4 -326 -340 -110 340
		mu 0 4 120 117 118 119
		f 4 -114 341 -328 -341
		mu 0 4 119 125 121 120
		f 4 342 -330 -342 343
		mu 0 4 127 122 121 125
		f 4 -332 -343 344 345
		mu 0 4 123 122 127 128
		f 4 -334 -346 346 347
		mu 0 4 193 123 128 195
		f 4 -337 348 349 350
		mu 0 4 124 194 196 130
		f 4 -339 -351 351 -111
		mu 0 4 118 124 130 129
		f 4 -116 -123 352 -344
		mu 0 4 125 126 132 127
		f 4 -345 -353 353 354
		mu 0 4 128 127 132 134
		f 4 -347 -355 355 356
		mu 0 4 195 128 134 199
		f 4 -350 357 358 359
		mu 0 4 130 196 135 131
		f 4 -117 -352 -360 -125
		mu 0 4 30 129 130 131
		f 4 360 -354 -122 -136
		mu 0 4 136 134 132 133
		f 4 -356 -361 361 362
		mu 0 4 199 134 136 200
		f 4 363 364 365 366
		mu 0 4 135 198 202 138
		f 4 -359 -367 367 -126
		mu 0 4 131 135 138 137
		f 4 368 -362 -135 369
		mu 0 4 142 200 136 140
		f 4 370 371 -369 372
		mu 0 4 203 201 200 142
		f 4 -366 373 374 375
		mu 0 4 138 202 204 139
		f 4 -138 -368 -376 -149
		mu 0 4 37 137 138 139
		f 4 -148 -163 376 -370
		mu 0 4 140 141 143 142
		f 4 -373 -377 377 378
		mu 0 4 203 142 143 205
		f 4 -375 379 380 -150
		mu 0 4 139 204 206 144
		f 4 381 -378 -162 382
		mu 0 4 207 205 143 145
		f 4 -165 -381 383 384
		mu 0 4 146 144 206 208
		f 4 -176 385 386 -383
		mu 0 4 145 147 209 207
		f 4 387 388 -177 -385
		mu 0 4 208 210 149 146
		f 4 389 390 -386 -188
		mu 0 4 151 211 209 147
		f 4 -389 391 392 393
		mu 0 4 149 210 213 212
		f 4 -189 -178 -394 394
		mu 0 4 152 148 149 212
		f 4 -199 395 396 -187
		mu 0 4 150 157 214 151
		f 4 -390 -397 397 398
		mu 0 4 211 151 214 215
		f 4 -395 399 400 401
		mu 0 4 152 212 217 216
		f 4 -190 -402 402 403
		mu 0 4 153 152 216 158
		f 4 -192 -404 404 405
		mu 0 4 154 153 158 159
		f 4 -194 -406 406 407
		mu 0 4 155 154 159 160
		f 4 -196 -408 408 409
		mu 0 4 156 155 160 161
		f 4 -198 -410 410 411
		mu 0 4 157 156 161 218
		f 4 -412 412 413 -396
		mu 0 4 157 218 219 214
		f 4 -403 414 415 416
		mu 0 4 158 216 220 221
		f 4 -405 -417 417 418
		mu 0 4 159 158 221 222
		f 4 -407 -419 419 420
		mu 0 4 160 159 222 223
		f 4 -409 -421 421 422
		mu 0 4 161 160 223 224
		f 4 -411 -423 423 424
		mu 0 4 218 161 224 225
		f 4 425 426 427 -200
		mu 0 4 162 226 290 231
		f 4 -204 428 429 -426
		mu 0 4 162 163 227 226
		f 4 430 431 -429 -208
		mu 0 4 167 228 227 163
		f 4 432 433 -431 434
		mu 0 4 232 292 228 167
		f 4 435 436 437 438
		mu 0 4 229 295 235 164
		f 4 439 -439 -210 440
		mu 0 4 230 229 164 165
		f 4 -214 -201 441 -441
		mu 0 4 165 60 231 230
		f 4 -220 442 -435 -207
		mu 0 4 166 168 232 167
		f 4 443 444 -443 -222
		mu 0 4 169 233 232 168
		f 4 445 446 -444 447
		mu 0 4 236 296 233 169
		f 4 -438 448 -224 -211
		mu 0 4 164 235 234 66
		f 4 449 -448 -221 -232
		mu 0 4 237 236 169 170
		f 4 -225 450 451 452
		mu 0 4 171 234 299 238
		f 4 453 454 455 -231
		mu 0 4 172 239 300 237
		f 4 -234 -453 456 -240
		mu 0 4 74 171 238 240
		f 4 -239 -248 457 -454
		mu 0 4 172 173 241 239
		f 4 -241 458 459 -250
		mu 0 4 174 240 242 244
		f 4 -247 -257 460 461
		mu 0 4 241 175 245 243
		f 4 -258 -251 462 463
		mu 0 4 178 176 244 246
		f 4 -265 464 465 -256
		mu 0 4 177 179 247 245
		f 4 -266 -464 466 467
		mu 0 4 180 178 246 248
		f 4 -273 468 469 -465
		mu 0 4 179 181 249 247
		f 4 -274 -468 470 471
		mu 0 4 182 180 248 250
		f 4 -281 472 473 -469
		mu 0 4 181 183 251 249
		f 4 474 475 -282 -472
		mu 0 4 250 252 185 182
		f 4 476 477 -473 -293
		mu 0 4 187 253 251 183
		f 4 478 479 480 -476
		mu 0 4 252 317 254 185
		f 4 -294 -283 -481 481
		mu 0 4 188 184 185 254
		f 4 -305 482 483 -292
		mu 0 4 186 189 255 187
		f 4 484 485 -477 -484
		mu 0 4 255 318 253 187
		f 4 -306 -482 486 487
		mu 0 4 190 188 254 256
		f 4 -320 488 489 -483
		mu 0 4 189 191 257 255
		f 4 -321 -488 490 491
		mu 0 4 192 190 256 258
		f 4 -335 492 493 -489
		mu 0 4 191 193 259 257
		f 4 -336 -492 494 495
		mu 0 4 194 192 258 260
		f 4 -348 496 497 -493
		mu 0 4 193 195 261 259
		f 4 -349 -496 498 499
		mu 0 4 196 194 260 197
		f 4 -357 500 501 -497
		mu 0 4 195 199 262 261
		f 4 502 503 504 505
		mu 0 4 197 325 263 198
		f 4 -358 -500 -506 -364
		mu 0 4 135 196 197 198
		f 4 -363 -372 506 -501
		mu 0 4 199 200 201 262
		f 4 507 508 -507 509
		mu 0 4 264 326 262 201
		f 4 -505 510 511 -365
		mu 0 4 198 263 265 202
		f 4 512 -510 -371 513
		mu 0 4 266 264 201 203
		f 4 -374 -512 514 515
		mu 0 4 204 202 265 267
		f 4 -379 516 517 -514
		mu 0 4 203 205 268 266
		f 4 -380 -516 518 519
		mu 0 4 206 204 267 269
		f 4 -382 520 521 -517
		mu 0 4 205 207 270 268
		f 4 -384 -520 522 523
		mu 0 4 208 206 269 271
		f 4 -387 524 525 -521
		mu 0 4 207 209 272 270
		f 4 -388 -524 526 527
		mu 0 4 210 208 271 273
		f 4 -391 528 529 -525
		mu 0 4 209 211 274 272
		f 4 -392 -528 530 531
		mu 0 4 213 210 273 275
		f 4 -399 532 533 -529
		mu 0 4 211 215 276 274
		f 4 -532 534 535 536
		mu 0 4 213 275 341 277
		f 4 -393 -537 537 -400
		mu 0 4 212 213 277 217
		f 4 -398 -414 538 539
		mu 0 4 215 214 219 278
		f 4 -540 540 541 -533
		mu 0 4 215 278 342 276
		f 4 542 543 544 -538
		mu 0 4 277 343 279 217
		f 4 -415 -401 -545 545
		mu 0 4 220 216 217 279
		f 4 -425 546 547 -413
		mu 0 4 218 225 284 219
		f 4 548 549 -539 -548
		mu 0 4 284 345 278 219
		f 3 -546 550 551
		mu 0 3 220 279 280
		f 4 552 553 -416 -552
		mu 0 4 280 281 221 220
		f 4 -418 -554 554 555
		mu 0 4 222 221 281 286
		f 4 -420 -556 556 557
		mu 0 4 223 222 286 285
		f 4 558 -422 -558 559
		mu 0 4 282 224 223 285
		f 4 560 561 -424 -559
		mu 0 4 282 283 225 224
		f 3 -547 -562 562
		mu 0 3 284 225 283
		f 4 563 564 565 -427
		mu 0 4 226 287 353 290
		f 4 -430 566 567 -564
		mu 0 4 226 227 288 287
		f 4 -432 568 569 -567
		mu 0 4 227 228 291 288
		f 3 -434 570 -569
		mu 0 3 228 292 291
		f 3 571 572 -436
		mu 0 3 229 293 295
		f 4 -440 573 574 -572
		mu 0 4 229 230 289 293
		f 4 -442 -428 575 -574
		mu 0 4 230 231 290 289
		f 4 -445 576 577 -433
		mu 0 4 232 233 294 292
		f 3 -447 578 -577
		mu 0 3 233 296 294
		f 3 -437 579 580
		mu 0 3 235 295 297
		f 3 -446 581 582
		mu 0 3 296 236 298
		f 4 -449 -581 583 -451
		mu 0 4 234 235 297 299
		f 4 -582 -450 -456 584
		mu 0 4 298 236 237 300
		f 3 -452 585 586
		mu 0 3 238 299 301
		f 3 587 588 -455
		mu 0 3 239 302 300
		f 4 -457 -587 589 590
		mu 0 4 240 238 301 303
		f 4 -458 591 592 -588
		mu 0 4 239 241 304 302
		f 4 -459 -591 593 594
		mu 0 4 242 240 303 305
		f 4 -462 595 596 -592
		mu 0 4 241 243 306 304
		f 4 -460 -595 597 598
		mu 0 4 244 242 305 307
		f 4 -461 599 600 -596
		mu 0 4 243 245 308 306
		f 4 -463 -599 601 602
		mu 0 4 246 244 307 309
		f 4 -466 603 604 -600
		mu 0 4 245 247 310 308
		f 4 -467 -603 605 606
		mu 0 4 248 246 309 311
		f 4 -470 607 608 -604
		mu 0 4 247 249 312 310
		f 4 -471 -607 609 610
		mu 0 4 250 248 311 313
		f 4 -474 611 612 -608
		mu 0 4 249 251 314 312
		f 4 613 -475 -611 614
		mu 0 4 315 252 250 313
		f 4 -478 615 616 -612
		mu 0 4 251 253 316 314
		f 3 -479 -614 617
		mu 0 3 317 252 315
		f 3 -486 618 -616
		mu 0 3 253 318 316
		f 4 -487 -480 619 620
		mu 0 4 256 254 317 319
		f 4 -490 621 622 -485
		mu 0 4 255 257 320 318
		f 4 -491 -621 623 624
		mu 0 4 258 256 319 321
		f 4 -494 625 626 -622
		mu 0 4 257 259 322 320
		f 4 -495 -625 627 628
		mu 0 4 260 258 321 323
		f 4 -498 629 630 -626
		mu 0 4 259 261 324 322
		f 4 -499 -629 631 -503
		mu 0 4 197 260 323 325
		f 4 -502 -509 632 -630
		mu 0 4 261 262 326 324
		f 3 -504 633 634
		mu 0 3 263 325 327
		f 3 -508 635 636
		mu 0 3 326 264 328
		f 4 -635 637 638 -511
		mu 0 4 263 327 329 265
		f 4 -636 -513 639 640
		mu 0 4 328 264 266 330
		f 4 -515 -639 641 642
		mu 0 4 267 265 329 331
		f 4 -640 -518 643 644
		mu 0 4 330 266 268 332
		f 4 -519 -643 645 646
		mu 0 4 269 267 331 333
		f 4 -522 647 648 -644
		mu 0 4 268 270 334 332
		f 4 -523 -647 649 650
		mu 0 4 271 269 333 335
		f 4 -526 651 652 -648
		mu 0 4 270 272 336 334
		f 4 -527 -651 653 654
		mu 0 4 273 271 335 337
		f 4 -530 655 656 -652
		mu 0 4 272 274 338 336
		f 4 657 -531 -655 658
		mu 0 4 339 275 273 337
		f 4 -534 659 660 -656
		mu 0 4 274 276 340 338
		f 3 -535 -658 661
		mu 0 3 341 275 339
		f 3 -542 662 -660
		mu 0 3 276 342 340
		f 3 -536 663 -543
		mu 0 3 277 341 343
		f 3 -550 664 -541
		mu 0 3 278 345 342
		f 3 -544 665 666
		mu 0 3 279 343 344
		f 4 -551 -667 667 668
		mu 0 4 280 279 344 347
		f 4 -553 -669 669 670
		mu 0 4 281 280 347 348
		f 4 -555 -671 671 672
		mu 0 4 286 281 348 349
		f 4 -560 673 674 675
		mu 0 4 282 285 350 352
		f 4 -561 -676 676 677
		mu 0 4 283 282 352 351
		f 4 678 -563 -678 679
		mu 0 4 346 284 283 351
		f 3 -549 -679 680
		mu 0 3 345 284 346
		f 4 681 -674 -557 -673
		mu 0 4 349 350 285 286
		f 3 -565 682 683
		mu 0 3 353 287 354
		f 4 684 -683 -568 685
		mu 0 4 355 354 287 288
		f 4 -570 686 687 -686
		mu 0 4 288 291 356 355
		f 4 688 -575 689 690
		mu 0 4 360 293 289 357
		f 4 -576 -566 691 -690
		mu 0 4 289 290 353 357
		f 4 -571 692 693 -687
		mu 0 4 291 292 358 356
		f 4 -578 694 695 -693
		mu 0 4 292 294 361 358
		f 4 696 -573 -689 697
		mu 0 4 359 295 293 360
		f 4 698 699 -695 -579
		mu 0 4 296 362 361 294
		f 4 -580 -697 700 701
		mu 0 4 297 295 359 363
		f 4 -699 -583 702 703
		mu 0 4 362 296 298 364
		f 4 -584 -702 704 705
		mu 0 4 299 297 363 365
		f 4 -585 706 707 -703
		mu 0 4 298 300 366 364
		f 4 708 -586 -706 709
		mu 0 4 367 301 299 365
		f 4 710 711 -707 -589
		mu 0 4 302 368 366 300
		f 4 -709 712 713 -590
		mu 0 4 301 367 369 303
		f 4 -711 -593 714 715
		mu 0 4 368 302 304 370
		f 4 -594 -714 716 717
		mu 0 4 305 303 369 371
		f 4 -715 -597 718 719
		mu 0 4 370 304 306 372
		f 4 720 -598 -718 721
		mu 0 4 373 307 305 371
		f 4 -601 722 723 -719
		mu 0 4 306 308 374 372
		f 4 -721 724 725 -602
		mu 0 4 307 373 375 309
		f 4 -723 -605 726 727
		mu 0 4 374 308 310 376
		f 4 -726 728 729 -606
		mu 0 4 309 375 377 311
		f 4 -727 -609 730 731
		mu 0 4 376 310 312 378
		f 4 -730 732 733 -610
		mu 0 4 311 377 379 313
		f 4 -731 -613 734 735
		mu 0 4 378 312 314 380
		f 4 736 -615 -734 737
		mu 0 4 381 315 313 379
		f 4 -617 738 739 -735
		mu 0 4 314 316 382 380
		f 4 -618 -737 740 741
		mu 0 4 317 315 381 383
		f 4 -619 742 743 -739
		mu 0 4 316 318 384 382
		f 4 744 -620 -742 745
		mu 0 4 385 319 317 383
		f 4 -623 746 747 -743
		mu 0 4 318 320 386 384
		f 4 -745 748 749 -624
		mu 0 4 319 385 387 321
		f 4 -747 -627 750 751
		mu 0 4 386 320 322 388
		f 4 -750 752 753 -628
		mu 0 4 321 387 389 323
		f 4 -751 -631 754 755
		mu 0 4 388 322 324 390
		f 4 -754 756 757 -632
		mu 0 4 323 389 391 325
		f 4 -755 -633 758 759
		mu 0 4 390 324 326 392
		f 4 -634 -758 760 761
		mu 0 4 327 325 391 393
		f 4 -759 -637 762 763
		mu 0 4 392 326 328 394
		f 4 -638 -762 764 765
		mu 0 4 329 327 393 395
		f 4 -641 766 767 -763
		mu 0 4 328 330 396 394
		f 4 -642 -766 768 769
		mu 0 4 331 329 395 397
		f 4 -645 770 771 -767
		mu 0 4 330 332 398 396
		f 4 -770 772 773 -646
		mu 0 4 331 397 399 333
		f 4 -771 -649 774 775
		mu 0 4 398 332 334 400
		f 4 -774 776 777 -650
		mu 0 4 333 399 401 335
		f 4 -775 -653 778 779
		mu 0 4 400 334 336 402
		f 4 -778 780 781 -654
		mu 0 4 335 401 403 337
		f 4 -779 -657 782 783
		mu 0 4 402 336 338 404
		f 4 784 -659 -782 785
		mu 0 4 405 339 337 403
		f 4 -661 786 787 -783
		mu 0 4 338 340 406 404
		f 4 788 -662 -785 789
		mu 0 4 407 341 339 405
		f 4 -663 790 791 -787
		mu 0 4 340 342 408 406
		f 4 -789 792 793 -664
		mu 0 4 341 407 409 343
		f 4 794 795 -791 -665
		mu 0 4 345 410 408 342
		f 4 -666 -794 796 797
		mu 0 4 344 343 409 411
		f 4 -668 -798 798 799
		mu 0 4 347 344 411 412
		f 4 -680 800 801 802
		mu 0 4 346 351 415 416
		f 4 -795 -681 -803 803
		mu 0 4 410 345 346 416
		f 4 804 805 -670 -800
		mu 0 4 412 413 348 347
		f 4 -672 -806 806 807
		mu 0 4 349 348 413 418
		f 4 -682 -808 808 809
		mu 0 4 350 349 418 417
		f 4 810 -675 -810 811
		mu 0 4 414 352 350 417
		f 4 812 -801 -677 -811
		mu 0 4 414 415 351 352
		f 4 813 814 -692 815
		mu 0 4 419 424 357 353
		f 4 816 -816 -684 817
		mu 0 4 420 419 353 354
		f 4 818 -818 -685 819
		mu 0 4 421 420 354 355
		f 4 820 -820 -688 821
		mu 0 4 422 421 355 356
		f 4 822 -822 -694 823
		mu 0 4 425 422 356 358
		f 4 824 -691 -815 825
		mu 0 4 423 360 357 424
		f 4 826 827 -824 -696
		mu 0 4 361 426 425 358
		f 4 828 -701 829 830
		mu 0 4 429 363 359 427
		f 4 -830 -698 -825 831
		mu 0 4 427 359 360 423
		f 4 832 833 -827 -700
		mu 0 4 362 428 426 361
		f 4 -704 834 835 -833
		mu 0 4 362 364 430 428
		f 3 -829 836 837
		mu 0 3 363 429 431
		f 3 -835 838 839
		mu 0 3 430 364 432
		f 4 -705 -838 840 841
		mu 0 4 365 363 431 433
		f 4 -839 -708 842 843
		mu 0 4 432 364 366 434
		f 4 -710 -842 844 845
		mu 0 4 367 365 433 435
		f 4 -712 846 847 -843
		mu 0 4 366 368 436 434
		f 4 -713 -846 848 849
		mu 0 4 369 367 435 437
		f 4 -847 -716 850 851
		mu 0 4 436 368 370 438
		f 4 -717 -850 852 853
		mu 0 4 371 369 437 439
		f 4 -720 854 855 -851
		mu 0 4 370 372 440 438
		f 4 856 -722 -854 857
		mu 0 4 441 373 371 439
		f 4 -724 858 859 -855
		mu 0 4 372 374 442 440
		f 4 -725 -857 860 861
		mu 0 4 375 373 441 443
		f 4 -728 862 863 -859
		mu 0 4 374 376 444 442
		f 4 -729 -862 864 865
		mu 0 4 377 375 443 445
		f 4 -732 866 867 -863
		mu 0 4 376 378 446 444
		f 4 868 -733 -866 869
		mu 0 4 447 379 377 445
		f 4 -736 870 871 -867
		mu 0 4 378 380 448 446
		f 4 -869 872 873 -738
		mu 0 4 379 447 449 381
		f 4 -871 -740 874 875
		mu 0 4 448 380 382 450
		f 4 -874 876 877 -741
		mu 0 4 381 449 451 383
		f 4 -875 -744 878 879
		mu 0 4 450 382 384 452
		f 4 880 -746 -878 881
		mu 0 4 453 385 383 451
		f 4 -748 882 883 -879
		mu 0 4 384 386 454 452
		f 4 -749 -881 884 885
		mu 0 4 387 385 453 455
		f 4 -752 886 887 -883
		mu 0 4 386 388 456 454
		f 4 -753 -886 888 889
		mu 0 4 389 387 455 457
		f 4 -756 890 891 -887
		mu 0 4 388 390 458 456
		f 4 -757 -890 892 893
		mu 0 4 391 389 457 459
		f 4 -760 894 895 -891
		mu 0 4 390 392 460 458
		f 4 -761 -894 896 897
		mu 0 4 393 391 459 461
		f 4 -764 898 899 -895
		mu 0 4 392 394 462 460
		f 4 -898 900 901 -765
		mu 0 4 393 461 463 395
		f 4 -899 -768 902 903
		mu 0 4 462 394 396 464
		f 4 -769 -902 904 905
		mu 0 4 397 395 463 465
		f 4 -903 -772 906 907
		mu 0 4 464 396 398 466
		f 4 -773 -906 908 909
		mu 0 4 399 397 465 467
		f 4 -776 910 911 -907
		mu 0 4 398 400 468 466
		f 4 -777 -910 912 913
		mu 0 4 401 399 467 469
		f 4 -780 914 915 -911
		mu 0 4 400 402 470 468
		f 4 -781 -914 916 917
		mu 0 4 403 401 469 471
		f 4 -784 918 919 -915
		mu 0 4 402 404 472 470
		f 4 920 -786 -918 921
		mu 0 4 473 405 403 471
		f 4 -788 922 923 -919
		mu 0 4 404 406 474 472
		f 4 924 -790 -921 925
		mu 0 4 475 407 405 473
		f 4 -792 926 927 -923
		mu 0 4 406 408 476 474
		f 4 -925 928 929 -793
		mu 0 4 407 475 477 409
		f 4 -796 930 931 -927
		mu 0 4 408 410 478 476
		f 4 -930 932 933 -797
		mu 0 4 409 477 479 411
		f 4 -804 934 935 -931
		mu 0 4 410 416 482 478
		f 3 -934 936 937
		mu 0 3 411 479 480
		f 4 938 939 -799 -938
		mu 0 4 480 481 412 411
		f 4 -805 -940 940 941
		mu 0 4 413 412 481 484
		f 4 -807 -942 942 943
		mu 0 4 418 413 484 485
		f 4 -812 944 945 946
		mu 0 4 414 417 486 488
		f 4 -813 -947 947 948
		mu 0 4 415 414 488 487
		f 4 949 -802 -949 950
		mu 0 4 483 416 415 487
		f 3 -935 -950 951
		mu 0 3 482 416 483
		f 4 952 -945 -809 -944
		mu 0 4 485 486 417 418
		f 4 953 954 -814 955
		mu 0 4 490 489 424 419
		f 4 956 -956 -817 957
		mu 0 4 491 490 419 420
		f 4 958 -958 -819 959
		mu 0 4 492 491 420 421
		f 4 960 -960 -821 961
		mu 0 4 493 492 421 422
		f 4 962 -962 -823 963
		mu 0 4 494 493 422 425
		f 4 964 -832 965 966
		mu 0 4 497 427 423 495
		f 4 -966 -826 -955 967
		mu 0 4 495 423 424 489
		f 4 968 969 -964 -828
		mu 0 4 426 496 494 425
		f 4 -834 970 971 -969
		mu 0 4 426 428 498 496
		f 4 972 -831 -965 973
		mu 0 4 499 429 427 497
		f 4 -836 974 975 -971
		mu 0 4 428 430 500 498
		f 4 -837 -973 976 977
		mu 0 4 431 429 499 501
		f 4 -975 -840 978 979
		mu 0 4 500 430 432 502
		f 4 -841 -978 980 981
		mu 0 4 433 431 501 503
		f 4 -844 982 983 -979
		mu 0 4 432 434 504 502
		f 4 -845 -982 984 985
		mu 0 4 435 433 503 505
		f 4 -983 -848 986 987
		mu 0 4 504 434 436 506
		f 4 -849 -986 988 989
		mu 0 4 437 435 505 507
		f 4 -852 990 991 -987
		mu 0 4 436 438 508 506
		f 4 -990 992 993 -853
		mu 0 4 437 507 509 439
		f 4 -991 -856 994 995
		mu 0 4 508 438 440 510
		f 4 -994 996 997 -858
		mu 0 4 439 509 511 441
		f 4 -995 -860 998 999
		mu 0 4 510 440 442 512
		f 4 -998 1000 1001 -861
		mu 0 4 441 511 513 443
		f 4 -999 -864 1002 1003
		mu 0 4 512 442 444 514
		f 4 -1002 1004 1005 -865
		mu 0 4 443 513 515 445
		f 4 -1003 -868 1006 1007
		mu 0 4 514 444 446 516
		f 4 1008 -870 -1006 1009
		mu 0 4 517 447 445 515
		f 4 -872 1010 1011 -1007
		mu 0 4 446 448 518 516
		f 4 -873 -1009 1012 1013
		mu 0 4 449 447 517 519
		f 4 -876 1014 1015 -1011
		mu 0 4 448 450 520 518
		f 4 1016 -877 -1014 1017
		mu 0 4 521 451 449 519
		f 4 -880 1018 1019 -1015
		mu 0 4 450 452 522 520
		f 4 -1017 1020 1021 -882
		mu 0 4 451 521 523 453
		f 4 -1019 -884 1022 1023
		mu 0 4 522 452 454 524;
	setAttr ".fc[500:999]"
		f 4 -1022 1024 1025 -885
		mu 0 4 453 523 525 455
		f 4 -1023 -888 1026 1027
		mu 0 4 524 454 456 526
		f 4 -1026 1028 1029 -889
		mu 0 4 455 525 527 457
		f 4 -1027 -892 1030 1031
		mu 0 4 526 456 458 528
		f 4 -1030 1032 1033 -893
		mu 0 4 457 527 529 459
		f 4 -1031 -896 1034 1035
		mu 0 4 528 458 460 530
		f 4 -1034 1036 1037 -897
		mu 0 4 459 529 531 461
		f 4 -1035 -900 1038 1039
		mu 0 4 530 460 462 532
		f 4 -901 -1038 1040 1041
		mu 0 4 463 461 531 533
		f 4 -1039 -904 1042 1043
		mu 0 4 532 462 464 534
		f 4 -905 -1042 1044 1045
		mu 0 4 465 463 533 535
		f 4 -908 1046 1047 -1043
		mu 0 4 464 466 536 534
		f 4 -1046 1048 1049 -909
		mu 0 4 465 535 537 467
		f 4 -1047 -912 1050 1051
		mu 0 4 536 466 468 538
		f 4 -1050 1052 1053 -913
		mu 0 4 467 537 539 469
		f 4 -1051 -916 1054 1055
		mu 0 4 538 468 470 540
		f 4 -1054 1056 1057 -917
		mu 0 4 469 539 541 471
		f 4 -1055 -920 1058 1059
		mu 0 4 540 470 472 542
		f 4 1060 -922 -1058 1061
		mu 0 4 543 473 471 541
		f 4 -924 1062 1063 -1059
		mu 0 4 472 474 544 542
		f 4 1064 -926 -1061 1065
		mu 0 4 545 475 473 543
		f 4 -928 1066 1067 -1063
		mu 0 4 474 476 546 544
		f 4 -1065 1068 1069 -929
		mu 0 4 475 545 547 477
		f 4 1070 1071 -1067 -932
		mu 0 4 478 548 546 476
		f 4 -1070 1072 1073 -933
		mu 0 4 477 547 549 479
		f 4 1074 1075 -1071 -936
		mu 0 4 482 551 548 478
		f 4 1076 1077 -937 -1074
		mu 0 4 549 550 480 479
		f 4 -939 -1078 1078 1079
		mu 0 4 481 480 550 553
		f 4 -941 -1080 1080 1081
		mu 0 4 484 481 553 554
		f 4 1082 1083 1084 -951
		mu 0 4 487 557 552 483
		f 4 1085 -1075 -952 -1085
		mu 0 4 552 551 482 483
		f 4 1086 1087 -943 -1082
		mu 0 4 554 555 485 484
		f 4 1088 1089 -953 -1088
		mu 0 4 555 556 486 485
		f 4 1090 1091 -946 -1090
		mu 0 4 556 558 488 486
		f 4 1092 -1083 -948 -1092
		mu 0 4 558 557 487 488
		f 4 1093 -968 1094 1095
		mu 0 4 565 495 489 559
		f 4 1096 -1095 -954 1097
		mu 0 4 560 559 489 490
		f 4 -1098 -957 1098 1099
		mu 0 4 560 490 491 561
		f 4 -959 1100 1101 -1099
		mu 0 4 491 492 562 561
		f 4 -961 1102 1103 -1101
		mu 0 4 492 493 563 562
		f 4 1104 -1103 -963 1105
		mu 0 4 564 563 493 494
		f 4 -970 1106 1107 -1106
		mu 0 4 494 496 566 564
		f 4 1108 -967 -1094 1109
		mu 0 4 567 497 495 565
		f 4 -972 1110 1111 -1107
		mu 0 4 496 498 568 566
		f 4 1112 -974 -1109 1113
		mu 0 4 569 499 497 567
		f 4 1114 1115 -1111 -976
		mu 0 4 500 570 568 498
		f 4 1116 -977 -1113 1117
		mu 0 4 571 501 499 569
		f 4 1118 1119 -1115 -980
		mu 0 4 502 572 570 500
		f 4 -1117 1120 1121 -981
		mu 0 4 501 571 573 503
		f 4 -1119 -984 1122 1123
		mu 0 4 572 502 504 574
		f 4 1124 -985 -1122 1125
		mu 0 4 575 505 503 573
		f 4 1126 1127 -1123 -988
		mu 0 4 506 576 574 504
		f 4 -1125 1128 1129 -989
		mu 0 4 505 575 577 507
		f 4 -1127 -992 1130 1131
		mu 0 4 576 506 508 578
		f 4 -1130 1132 1133 -993
		mu 0 4 507 577 579 509
		f 4 -1131 -996 1134 1135
		mu 0 4 578 508 510 580
		f 4 -1134 1136 1137 -997
		mu 0 4 509 579 581 511
		f 4 -1135 -1000 1138 1139
		mu 0 4 580 510 512 582
		f 4 -1138 1140 1141 -1001
		mu 0 4 511 581 583 513
		f 4 -1139 -1004 1142 1143
		mu 0 4 582 512 514 584
		f 4 -1142 1144 1145 -1005
		mu 0 4 513 583 585 515
		f 4 -1143 -1008 1146 1147
		mu 0 4 584 514 516 586
		f 4 -1146 1148 1149 -1010
		mu 0 4 515 585 587 517
		f 4 -1147 -1012 1150 1151
		mu 0 4 586 516 518 588
		f 4 -1150 1152 1153 -1013
		mu 0 4 517 587 589 519
		f 4 -1151 -1016 1154 1155
		mu 0 4 588 518 520 590
		f 4 -1154 1156 1157 -1018
		mu 0 4 519 589 591 521
		f 4 1158 1159 -1155 -1020
		mu 0 4 522 592 590 520
		f 4 -1158 1160 1161 -1021
		mu 0 4 521 591 593 523
		f 4 -1159 -1024 1162 1163
		mu 0 4 592 522 524 594
		f 4 -1162 1164 1165 -1025
		mu 0 4 523 593 595 525
		f 4 -1163 -1028 1166 1167
		mu 0 4 594 524 526 596
		f 4 -1166 1168 1169 -1029
		mu 0 4 525 595 597 527
		f 4 -1167 -1032 1170 1171
		mu 0 4 596 526 528 598
		f 4 -1170 1172 1173 -1033
		mu 0 4 527 597 599 529
		f 4 -1171 -1036 1174 1175
		mu 0 4 598 528 530 600
		f 4 -1037 -1174 1176 1177
		mu 0 4 531 529 599 601
		f 4 -1175 -1040 1178 1179
		mu 0 4 600 530 532 602
		f 4 -1041 -1178 1180 1181
		mu 0 4 533 531 601 603
		f 4 -1044 1182 1183 -1179
		mu 0 4 532 534 604 602
		f 4 -1182 1184 1185 -1045
		mu 0 4 533 603 605 535
		f 4 -1183 -1048 1186 1187
		mu 0 4 604 534 536 606
		f 4 -1186 1188 1189 -1049
		mu 0 4 535 605 607 537
		f 4 -1187 -1052 1190 1191
		mu 0 4 606 536 538 608
		f 4 -1190 1192 1193 -1053
		mu 0 4 537 607 609 539
		f 4 -1191 -1056 1194 1195
		mu 0 4 608 538 540 610
		f 4 -1194 1196 1197 -1057
		mu 0 4 539 609 611 541
		f 4 -1195 -1060 1198 1199
		mu 0 4 610 540 542 612
		f 4 -1198 1200 1201 -1062
		mu 0 4 541 611 613 543
		f 4 -1199 -1064 1202 1203
		mu 0 4 612 542 544 614
		f 4 -1202 1204 1205 -1066
		mu 0 4 543 613 615 545
		f 4 1206 1207 -1203 -1068
		mu 0 4 546 616 614 544
		f 4 -1206 1208 1209 -1069
		mu 0 4 545 615 617 547
		f 4 1210 1211 -1207 -1072
		mu 0 4 548 618 616 546
		f 4 -1210 1212 1213 -1073
		mu 0 4 547 617 619 549
		f 4 1214 1215 -1211 -1076
		mu 0 4 551 621 618 548
		f 4 1216 1217 -1077 -1214
		mu 0 4 619 620 550 549
		f 4 -1218 1218 1219 -1079
		mu 0 4 550 620 623 553
		f 4 1220 1221 1222 -1084
		mu 0 4 557 627 622 552
		f 4 1223 -1215 -1086 -1223
		mu 0 4 622 621 551 552
		f 4 1224 1225 -1081 -1220
		mu 0 4 623 624 554 553
		f 4 1226 1227 -1087 -1226
		mu 0 4 624 625 555 554
		f 4 1228 1229 -1089 -1228
		mu 0 4 625 626 556 555
		f 4 1230 1231 -1091 -1230
		mu 0 4 626 628 558 556
		f 4 1232 -1221 -1093 -1232
		mu 0 4 628 627 557 558
		f 4 1233 1234 -1102 1235
		mu 0 4 632 631 561 562
		f 4 1236 1237 -1096 1238
		mu 0 4 629 635 565 559
		f 4 1239 -1239 -1097 1240
		mu 0 4 630 629 559 560
		f 4 -1241 -1100 -1235 1241
		mu 0 4 630 560 561 631
		f 4 1242 1243 -1236 -1104
		mu 0 4 563 633 632 562
		f 4 1244 -1243 -1105 1245
		mu 0 4 634 633 563 564
		f 4 1246 -1246 -1108 1247
		mu 0 4 637 634 564 566
		f 4 -1238 1248 1249 -1110
		mu 0 4 565 635 636 567
		f 4 1250 -1248 -1112 1251
		mu 0 4 638 637 566 568
		f 4 1252 1253 -1114 1254
		mu 0 4 639 641 569 567
		f 4 -1255 -1250 1255 1256
		mu 0 4 639 567 636 709
		f 4 1257 1258 -1252 1259
		mu 0 4 640 710 638 568
		f 4 1260 1261 -1260 -1116
		mu 0 4 570 642 640 568
		f 4 1262 -1118 -1254 1263
		mu 0 4 643 571 569 641
		f 4 1264 1265 -1261 -1120
		mu 0 4 572 644 642 570
		f 4 -1263 1266 1267 -1121
		mu 0 4 571 643 645 573
		f 4 -1265 -1124 1268 1269
		mu 0 4 644 572 574 646
		f 4 1270 -1126 -1268 1271
		mu 0 4 647 575 573 645
		f 4 1272 1273 -1269 -1128
		mu 0 4 576 648 646 574
		f 4 -1271 1274 1275 -1129
		mu 0 4 575 647 649 577
		f 4 -1273 -1132 1276 1277
		mu 0 4 648 576 578 650
		f 4 -1276 1278 1279 -1133
		mu 0 4 577 649 651 579
		f 4 -1277 -1136 1280 1281
		mu 0 4 650 578 580 652
		f 4 -1280 1282 1283 -1137
		mu 0 4 579 651 653 581
		f 4 -1281 -1140 1284 1285
		mu 0 4 652 580 582 654
		f 4 -1284 1286 1287 -1141
		mu 0 4 581 653 655 583
		f 4 -1285 -1144 1288 1289
		mu 0 4 654 582 584 656
		f 4 -1288 1290 1291 -1145
		mu 0 4 583 655 657 585
		f 4 -1289 -1148 1292 1293
		mu 0 4 656 584 586 658
		f 4 -1292 1294 1295 -1149
		mu 0 4 585 657 659 587
		f 4 -1293 -1152 1296 1297
		mu 0 4 658 586 588 660
		f 4 -1296 1298 1299 -1153
		mu 0 4 587 659 661 589
		f 4 -1297 -1156 1300 1301
		mu 0 4 660 588 590 662
		f 4 -1300 1302 1303 -1157
		mu 0 4 589 661 663 591
		f 4 1304 1305 -1301 -1160
		mu 0 4 592 664 662 590
		f 4 -1304 1306 1307 -1161
		mu 0 4 591 663 665 593
		f 4 -1305 -1164 1308 1309
		mu 0 4 664 592 594 666
		f 4 -1308 1310 1311 -1165
		mu 0 4 593 665 667 595
		f 4 -1309 -1168 1312 1313
		mu 0 4 666 594 596 668
		f 4 -1312 1314 1315 -1169
		mu 0 4 595 667 669 597
		f 4 -1313 -1172 1316 1317
		mu 0 4 668 596 598 670
		f 4 -1316 1318 1319 -1173
		mu 0 4 597 669 671 599
		f 4 -1317 -1176 1320 1321
		mu 0 4 670 598 600 672
		f 4 1322 -1177 -1320 1323
		mu 0 4 673 601 599 671
		f 4 1324 1325 -1321 -1180
		mu 0 4 602 674 672 600
		f 4 -1323 1326 1327 -1181
		mu 0 4 601 673 675 603
		f 4 -1325 -1184 1328 1329
		mu 0 4 674 602 604 676
		f 4 -1328 1330 1331 -1185
		mu 0 4 603 675 677 605
		f 4 -1329 -1188 1332 1333
		mu 0 4 676 604 606 678
		f 4 -1332 1334 1335 -1189
		mu 0 4 605 677 679 607
		f 4 -1333 -1192 1336 1337
		mu 0 4 678 606 608 680
		f 4 -1336 1338 1339 -1193
		mu 0 4 607 679 681 609
		f 4 -1337 -1196 1340 1341
		mu 0 4 680 608 610 682
		f 4 -1340 1342 1343 -1197
		mu 0 4 609 681 683 611
		f 4 -1341 -1200 1344 1345
		mu 0 4 682 610 612 684
		f 4 -1344 1346 1347 -1201
		mu 0 4 611 683 685 613
		f 4 -1345 -1204 1348 1349
		mu 0 4 684 612 614 686
		f 4 -1348 1350 1351 -1205
		mu 0 4 613 685 687 615
		f 4 1352 1353 -1349 -1208
		mu 0 4 616 688 686 614
		f 4 -1352 1354 1355 -1209
		mu 0 4 615 687 689 617
		f 4 1356 1357 -1353 -1212
		mu 0 4 618 690 688 616
		f 4 -1356 1358 1359 -1213
		mu 0 4 617 689 691 619
		f 4 1360 1361 -1357 -1216
		mu 0 4 621 693 690 618
		f 4 1362 1363 -1217 -1360
		mu 0 4 691 692 620 619
		f 4 -1364 1364 1365 -1219
		mu 0 4 620 692 695 623
		f 4 1366 1367 1368 -1222
		mu 0 4 627 699 694 622
		f 4 1369 -1361 -1224 -1369
		mu 0 4 694 693 621 622
		f 4 1370 1371 -1225 -1366
		mu 0 4 695 696 624 623
		f 4 1372 1373 -1227 -1372
		mu 0 4 696 697 625 624
		f 4 1374 1375 -1229 -1374
		mu 0 4 697 698 626 625
		f 4 1376 1377 -1231 -1376
		mu 0 4 698 700 628 626
		f 4 1378 -1367 -1233 -1378
		mu 0 4 700 699 627 628
		f 4 1379 1380 -1237 1381
		mu 0 4 706 705 635 629
		f 4 1382 -1382 -1240 1383
		mu 0 4 701 706 629 630
		f 4 1384 -1384 -1242 1385
		mu 0 4 702 701 630 631
		f 4 1386 -1386 -1234 1387
		mu 0 4 703 702 631 632
		f 4 1388 1389 -1388 -1244
		mu 0 4 633 704 703 632
		f 4 1390 -1389 -1245 1391
		mu 0 4 707 704 633 634
		f 4 1392 1393 -1392 -1247
		mu 0 4 637 708 707 634
		f 4 -1381 1394 -1256 -1249
		mu 0 4 635 705 709 636
		f 4 -1251 -1259 1395 -1393
		mu 0 4 637 638 710 708
		f 4 1396 -1253 -1257 1397
		mu 0 4 711 641 639 709
		f 4 -1262 1398 1399 -1258
		mu 0 4 640 642 712 710
		f 4 1400 -1264 -1397 1401
		mu 0 4 713 643 641 711
		f 4 1402 1403 -1399 -1266
		mu 0 4 644 714 712 642
		f 4 -1401 1404 1405 -1267
		mu 0 4 643 713 715 645
		f 4 -1403 -1270 1406 1407
		mu 0 4 714 644 646 716
		f 4 -1406 1408 1409 -1272
		mu 0 4 645 715 717 647
		f 4 1410 -1407 -1274 1411
		mu 0 4 718 716 646 648
		f 4 -1410 1412 1413 -1275
		mu 0 4 647 717 719 649
		f 4 1414 -1412 -1278 1415
		mu 0 4 720 718 648 650
		f 4 -1414 1416 1417 -1279
		mu 0 4 649 719 721 651
		f 4 -1416 -1282 1418 1419
		mu 0 4 720 650 652 722
		f 4 -1418 1420 1421 -1283
		mu 0 4 651 721 723 653
		f 4 -1419 -1286 1422 1423
		mu 0 4 722 652 654 724
		f 4 -1422 1424 1425 -1287
		mu 0 4 653 723 725 655
		f 4 -1423 -1290 1426 1427
		mu 0 4 724 654 656 726
		f 4 -1426 1428 1429 -1291
		mu 0 4 655 725 727 657
		f 4 -1427 -1294 1430 1431
		mu 0 4 726 656 658 728
		f 4 1432 1433 -1295 -1430
		mu 0 4 727 729 659 657
		f 4 1434 -1431 -1298 1435
		mu 0 4 730 728 658 660
		f 4 -1299 -1434 1436 1437
		mu 0 4 661 659 729 731
		f 4 1438 -1436 -1302 1439
		mu 0 4 732 730 660 662
		f 4 1440 1441 -1303 -1438
		mu 0 4 731 733 663 661
		f 4 1442 1443 -1440 -1306
		mu 0 4 664 734 732 662
		f 4 -1442 1444 1445 -1307
		mu 0 4 663 733 735 665
		f 4 -1443 -1310 1446 1447
		mu 0 4 734 664 666 736
		f 4 -1446 1448 1449 -1311
		mu 0 4 665 735 737 667
		f 4 -1447 -1314 1450 1451
		mu 0 4 736 666 668 738
		f 4 -1450 1452 1453 -1315
		mu 0 4 667 737 739 669
		f 4 -1451 -1318 1454 1455
		mu 0 4 738 668 670 740
		f 4 -1454 1456 1457 -1319
		mu 0 4 669 739 741 671
		f 4 -1455 -1322 1458 1459
		mu 0 4 740 670 672 742
		f 4 -1458 1460 1461 -1324
		mu 0 4 671 741 743 673
		f 4 1462 -1459 -1326 1463
		mu 0 4 744 742 672 674
		f 4 -1462 1464 1465 -1327
		mu 0 4 673 743 745 675
		f 4 1466 -1464 -1330 1467
		mu 0 4 746 744 674 676
		f 4 -1466 1468 1469 -1331
		mu 0 4 675 745 747 677
		f 4 -1468 -1334 1470 1471
		mu 0 4 746 676 678 748
		f 4 -1470 1472 1473 -1335
		mu 0 4 677 747 749 679
		f 4 -1471 -1338 1474 1475
		mu 0 4 748 678 680 750
		f 4 -1474 1476 1477 -1339
		mu 0 4 679 749 751 681
		f 4 -1475 -1342 1478 1479
		mu 0 4 750 680 682 752
		f 4 -1478 1480 1481 -1343
		mu 0 4 681 751 753 683
		f 4 -1479 -1346 1482 1483
		mu 0 4 752 682 684 754
		f 4 -1482 1484 1485 -1347
		mu 0 4 683 753 755 685
		f 4 -1483 -1350 1486 1487
		mu 0 4 754 684 686 756
		f 4 -1486 1488 1489 -1351
		mu 0 4 685 755 757 687
		f 4 1490 1491 -1487 -1354
		mu 0 4 688 758 756 686
		f 4 -1490 1492 1493 -1355
		mu 0 4 687 757 759 689
		f 4 1494 1495 -1491 -1358
		mu 0 4 690 761 758 688
		f 4 -1494 1496 1497 -1359
		mu 0 4 689 759 760 691
		f 4 1498 1499 -1495 -1362
		mu 0 4 693 762 761 690
		f 4 1500 1501 -1363 -1498
		mu 0 4 760 763 692 691
		f 4 -1502 1502 1503 -1365
		mu 0 4 692 763 764 695
		f 4 1504 1505 1506 -1368
		mu 0 4 699 766 765 694
		f 4 1507 -1499 -1370 -1507
		mu 0 4 765 762 693 694
		f 4 1508 1509 -1371 -1504
		mu 0 4 764 767 696 695
		f 4 1510 1511 -1373 -1510
		mu 0 4 767 768 697 696
		f 4 1512 1513 -1375 -1512
		mu 0 4 768 770 698 697
		f 4 1514 1515 -1377 -1514
		mu 0 4 770 769 700 698
		f 4 1516 -1505 -1379 -1516
		mu 0 4 769 766 699 700
		f 4 1517 1518 -1383 1519
		mu 0 4 771 775 706 701
		f 4 1520 -1520 -1385 1521
		mu 0 4 772 771 701 702
		f 4 1522 -1522 -1387 1523
		mu 0 4 773 772 702 703
		f 4 1524 -1524 -1390 1525
		mu 0 4 774 773 703 704
		f 4 1526 -1526 -1391 1527
		mu 0 4 776 774 704 707
		f 4 1528 1529 -1395 1530
		mu 0 4 778 777 709 705
		f 4 -1531 -1380 -1519 1531
		mu 0 4 778 705 706 775
		f 4 1532 1533 -1528 -1394
		mu 0 4 708 779 776 707
		f 4 1534 1535 -1533 -1396
		mu 0 4 710 780 779 708
		f 4 1536 1537 -1398 -1530
		mu 0 4 777 781 711 709
		f 4 1538 1539 -1535 -1400
		mu 0 4 712 782 780 710
		f 4 -1538 1540 1541 -1402
		mu 0 4 711 781 783 713
		f 4 1542 -1539 -1404 1543
		mu 0 4 784 782 712 714
		f 4 -1542 1544 1545 -1405
		mu 0 4 713 783 785 715
		f 4 1546 -1544 -1408 1547
		mu 0 4 786 784 714 716
		f 4 -1546 1548 1549 -1409
		mu 0 4 715 785 787 717
		f 4 -1548 -1411 1550 1551
		mu 0 4 786 716 718 788
		f 4 1552 -1413 -1550 1553
		mu 0 4 789 719 717 787
		f 4 1554 1555 -1551 -1415
		mu 0 4 720 790 788 718
		f 4 -1553 1556 1557 -1417
		mu 0 4 719 789 791 721
		f 4 -1555 -1420 1558 1559
		mu 0 4 790 720 722 792
		f 4 -1558 1560 1561 -1421
		mu 0 4 721 791 793 723
		f 4 -1559 -1424 1562 1563
		mu 0 4 792 722 724 794
		f 4 -1562 1564 1565 -1425
		mu 0 4 723 793 795 725
		f 4 -1563 -1428 1566 1567
		mu 0 4 794 724 726 796
		f 4 -1566 1568 1569 -1429
		mu 0 4 725 795 797 727
		f 4 -1567 -1432 1570 1571
		mu 0 4 796 726 728 798
		f 4 -1570 1572 1573 -1433
		mu 0 4 727 797 799 729
		f 4 1574 1575 -1571 -1435
		mu 0 4 730 800 798 728
		f 4 -1574 1576 1577 -1437
		mu 0 4 729 799 801 731
		f 4 -1575 -1439 1578 1579
		mu 0 4 800 730 732 802
		f 4 -1578 1580 1581 -1441
		mu 0 4 731 801 803 733
		f 4 -1579 -1444 1582 1583
		mu 0 4 802 732 734 804
		f 4 -1582 1584 1585 -1445
		mu 0 4 733 803 805 735
		f 4 -1583 -1448 1586 1587
		mu 0 4 804 734 736 806
		f 4 -1586 1588 1589 -1449
		mu 0 4 735 805 807 737
		f 4 -1587 -1452 1590 1591
		mu 0 4 806 736 738 808
		f 4 -1590 1592 1593 -1453
		mu 0 4 737 807 809 739
		f 4 -1591 -1456 1594 1595
		mu 0 4 808 738 740 810
		f 4 -1594 1596 1597 -1457
		mu 0 4 739 809 811 741
		f 4 -1595 -1460 1598 1599
		mu 0 4 810 740 742 812
		f 4 -1598 1600 1601 -1461
		mu 0 4 741 811 813 743
		f 4 -1599 -1463 1602 1603
		mu 0 4 812 742 744 814
		f 4 -1602 1604 1605 -1465
		mu 0 4 743 813 815 745
		f 4 1606 -1603 -1467 1607
		mu 0 4 816 814 744 746
		f 4 -1606 1608 1609 -1469
		mu 0 4 745 815 817 747
		f 4 1610 -1608 -1472 1611
		mu 0 4 818 816 746 748
		f 4 -1610 1612 1613 -1473
		mu 0 4 747 817 819 749
		f 4 -1612 -1476 1614 1615
		mu 0 4 818 748 750 820
		f 4 -1614 1616 1617 -1477
		mu 0 4 749 819 821 751
		f 4 -1615 -1480 1618 1619
		mu 0 4 820 750 752 822
		f 4 -1618 1620 1621 -1481
		mu 0 4 751 821 823 753
		f 4 -1619 -1484 1622 1623
		mu 0 4 822 752 754 824
		f 4 1624 1625 -1485 -1622
		mu 0 4 823 825 755 753
		f 4 1626 -1623 -1488 1627
		mu 0 4 826 824 754 756
		f 4 1628 1629 -1489 -1626
		mu 0 4 825 827 757 755
		f 4 1630 1631 -1628 -1492
		mu 0 4 758 828 826 756
		f 4 -1630 1632 1633 -1493
		mu 0 4 757 827 829 759
		f 4 1634 1635 -1631 -1496
		mu 0 4 761 831 828 758
		f 4 -1634 1636 1637 -1497
		mu 0 4 759 829 830 760
		f 4 -1638 1638 1639 -1501
		mu 0 4 760 830 833 763
		f 4 1640 1641 -1508 1642
		mu 0 4 837 832 762 765
		f 4 1643 -1635 -1500 -1642
		mu 0 4 832 831 761 762
		f 4 -1640 1644 1645 -1503
		mu 0 4 763 833 834 764
		f 4 -1646 1646 1647 -1509
		mu 0 4 764 834 835 767
		f 4 1648 1649 -1517 1650
		mu 0 4 836 838 766 769
		f 4 1651 -1643 -1506 -1650
		mu 0 4 838 837 765 766
		f 4 1652 1653 -1511 -1648
		mu 0 4 835 840 768 767
		f 4 1654 1655 -1513 -1654
		mu 0 4 840 839 770 768
		f 4 1656 -1651 -1515 -1656
		mu 0 4 839 836 769 770
		f 4 1657 1658 -1518 1659
		mu 0 4 844 843 775 771
		f 4 1660 -1660 -1521 1661
		mu 0 4 841 844 771 772
		f 4 1662 -1662 -1523 1663
		mu 0 4 842 841 772 773
		f 4 1664 -1664 -1525 1665
		mu 0 4 845 842 773 774
		f 4 1666 -1666 -1527 1667
		mu 0 4 846 845 774 776
		f 4 1668 -1532 -1659 1669
		mu 0 4 847 778 775 843
		f 4 1670 1671 -1668 -1534
		mu 0 4 779 848 846 776
		f 4 1672 1673 -1537 1674
		mu 0 4 849 851 781 777
		f 4 -1675 -1529 -1669 1675
		mu 0 4 849 777 778 847
		f 4 1676 1677 -1671 -1536
		mu 0 4 780 850 848 779
		f 4 1678 1679 -1677 -1540
		mu 0 4 782 852 850 780
		f 3 -1674 1680 -1541
		mu 0 3 781 851 783
		f 3 -1679 -1543 1681
		mu 0 3 852 782 784
		f 4 -1681 1682 1683 -1545
		mu 0 4 783 851 853 785
		f 4 1684 -1682 -1547 1685
		mu 0 4 854 852 784 786
		f 4 -1684 1686 1687 -1549
		mu 0 4 785 853 855 787
		f 4 1688 -1686 -1552 1689
		mu 0 4 856 854 786 788
		f 4 -1688 1690 1691 -1554
		mu 0 4 787 855 857 789
		f 4 1692 -1690 -1556 1693
		mu 0 4 858 856 788 790
		f 4 -1692 1694 1695 -1557
		mu 0 4 789 857 859 791
		f 4 1696 -1694 -1560 1697
		mu 0 4 860 858 790 792
		f 4 1698 1699 -1561 -1696
		mu 0 4 859 861 793 791
		f 4 1700 -1698 -1564 1701
		mu 0 4 862 860 792 794
		f 4 -1565 -1700 1702 1703
		mu 0 4 795 793 861 863
		f 4 1704 -1702 -1568 1705
		mu 0 4 864 862 794 796
		f 4 -1569 -1704 1706 1707
		mu 0 4 797 795 863 865
		f 4 1708 -1706 -1572 1709
		mu 0 4 866 864 796 798
		f 4 1710 1711 -1573 -1708
		mu 0 4 865 867 799 797
		f 4 1712 1713 -1710 -1576
		mu 0 4 800 868 866 798
		f 4 -1712 1714 1715 -1577
		mu 0 4 799 867 869 801
		f 4 -1713 -1580 1716 1717
		mu 0 4 868 800 802 870
		f 4 -1716 1718 1719 -1581
		mu 0 4 801 869 871 803
		f 4 -1717 -1584 1720 1721
		mu 0 4 870 802 804 872
		f 4 1722 1723 -1585 -1720
		mu 0 4 871 873 805 803
		f 4 1724 -1721 -1588 1725
		mu 0 4 874 872 804 806
		f 4 -1589 -1724 1726 1727
		mu 0 4 807 805 873 875
		f 4 1728 -1726 -1592 1729
		mu 0 4 876 874 806 808
		f 4 -1593 -1728 1730 1731
		mu 0 4 809 807 875 877
		f 4 1732 -1730 -1596 1733
		mu 0 4 878 876 808 810
		f 4 -1597 -1732 1734 1735
		mu 0 4 811 809 877 879
		f 4 1736 -1734 -1600 1737
		mu 0 4 880 878 810 812
		f 4 -1736 1738 1739 -1601
		mu 0 4 811 879 881 813
		f 4 1740 -1738 -1604 1741
		mu 0 4 882 880 812 814
		f 4 -1740 1742 1743 -1605
		mu 0 4 813 881 883 815
		f 4 -1742 -1607 1744 1745
		mu 0 4 882 814 816 884
		f 4 -1744 1746 1747 -1609
		mu 0 4 815 883 885 817
		f 4 1748 -1745 -1611 1749
		mu 0 4 886 884 816 818
		f 4 -1613 -1748 1750 1751
		mu 0 4 819 817 885 887
		f 4 1752 -1750 -1616 1753
		mu 0 4 888 886 818 820
		f 4 -1617 -1752 1754 1755
		mu 0 4 821 819 887 889
		f 4 1756 -1754 -1620 1757
		mu 0 4 890 888 820 822
		f 4 -1621 -1756 1758 1759
		mu 0 4 823 821 889 891
		f 4 1760 -1758 -1624 1761
		mu 0 4 892 890 822 824
		f 4 1762 1763 -1625 -1760
		mu 0 4 891 893 825 823
		f 4 1764 1765 -1762 -1627
		mu 0 4 826 894 892 824
		f 4 1766 1767 -1629 -1764
		mu 0 4 893 895 827 825
		f 4 1768 -1765 -1632 1769
		mu 0 4 896 894 826 828
		f 4 1770 1771 -1633 -1768
		mu 0 4 895 897 829 827
		f 4 1772 1773 -1770 -1636
		mu 0 4 831 901 896 828
		f 4 1774 1775 -1637 -1772
		mu 0 4 897 898 830 829
		f 4 -1776 1776 1777 -1639
		mu 0 4 830 898 899 833
		f 4 1778 1779 1780 -1641
		mu 0 4 837 900 902 832
		f 4 1781 -1773 -1644 -1781
		mu 0 4 902 901 831 832
		f 4 1782 1783 -1645 -1778
		mu 0 4 899 903 834 833
		f 4 -1784 1784 1785 -1647
		mu 0 4 834 903 904 835
		f 4 -1786 1786 1787 -1653
		mu 0 4 835 904 905 840
		f 4 1788 1789 -1657 1790
		mu 0 4 906 908 836 839
		f 4 1791 1792 -1649 -1790
		mu 0 4 908 907 838 836
		f 4 1793 -1779 -1652 -1793
		mu 0 4 907 900 837 838
		f 4 1794 -1791 -1655 -1788
		mu 0 4 905 906 839 840
		f 4 1795 1796 -1661 1797
		mu 0 4 909 914 844 841
		f 4 1798 -1798 -1663 1799
		mu 0 4 910 909 841 842
		f 4 1800 1801 -1800 -1665
		mu 0 4 845 911 910 842
		f 4 1802 1803 -1670 1804
		mu 0 4 913 912 847 843
		f 4 1805 -1805 -1658 -1797
		mu 0 4 914 913 843 844
		f 4 1806 -1801 -1667 1807
		mu 0 4 915 911 845 846
		f 4 1808 1809 -1808 -1672
		mu 0 4 848 916 915 846
		f 4 1810 -1676 -1804 1811
		mu 0 4 917 849 847 912
		f 4 1812 1813 -1809 -1678
		mu 0 4 850 920 916 848
		f 4 -1811 1814 1815 -1673
		mu 0 4 849 917 921 851
		f 4 1816 -1813 -1680 1817
		mu 0 4 922 920 850 852
		f 4 -1816 1818 1819 -1683
		mu 0 4 851 921 923 853
		f 4 1820 -1818 -1685 1821
		mu 0 4 924 922 852 854
		f 4 1822 -1687 -1820 1823
		mu 0 4 925 855 853 923
		f 4 1824 1825 -1822 -1689
		mu 0 4 856 926 924 854
		f 4 -1823 1826 1827 -1691
		mu 0 4 855 925 927 857
		f 4 -1825 -1693 1828 1829
		mu 0 4 926 856 858 928
		f 4 -1828 1830 1831 -1695
		mu 0 4 857 927 929 859
		f 4 1832 -1829 -1697 1833
		mu 0 4 930 928 858 860
		f 4 1834 1835 -1699 -1832
		mu 0 4 929 931 861 859
		f 4 1836 1837 -1834 -1701
		mu 0 4 862 932 930 860
		f 4 -1836 1838 1839 -1703
		mu 0 4 861 931 933 863
		f 4 -1837 -1705 1840 1841
		mu 0 4 932 862 864 934
		f 4 -1840 1842 1843 -1707
		mu 0 4 863 933 935 865
		f 4 -1841 -1709 1844 1845
		mu 0 4 934 864 866 936
		f 4 -1844 1846 1847 -1711
		mu 0 4 865 935 937 867
		f 4 -1845 -1714 1848 1849
		mu 0 4 936 866 868 938
		f 4 1850 1851 -1715 -1848
		mu 0 4 937 939 869 867
		f 4 1852 -1849 -1718 1853
		mu 0 4 940 938 868 870
		f 4 -1719 -1852 1854 1855
		mu 0 4 871 869 939 941
		f 4 1856 -1854 -1722 1857
		mu 0 4 942 940 870 872
		f 4 1858 1859 -1723 -1856
		mu 0 4 941 943 873 871
		f 4 1860 1861 -1858 -1725
		mu 0 4 874 944 942 872
		f 4 -1860 1862 1863 -1727
		mu 0 4 873 943 945 875
		f 4 -1861 -1729 1864 1865
		mu 0 4 944 874 876 946
		f 4 -1864 1866 1867 -1731
		mu 0 4 875 945 947 877
		f 4 -1865 -1733 1868 1869
		mu 0 4 946 876 878 948
		f 4 -1868 1870 1871 -1735
		mu 0 4 877 947 949 879
		f 4 -1869 -1737 1872 1873
		mu 0 4 948 878 880 950
		f 4 -1872 1874 1875 -1739
		mu 0 4 879 949 951 881
		f 4 1876 -1873 -1741 1877
		mu 0 4 952 950 880 882
		f 4 -1743 -1876 1878 1879
		mu 0 4 883 881 951 953
		f 4 1880 -1878 -1746 1881
		mu 0 4 954 952 882 884
		f 4 -1880 1882 1883 -1747
		mu 0 4 883 953 955 885
		f 4 1884 -1882 -1749 1885
		mu 0 4 956 954 884 886
		f 4 -1884 1886 1887 -1751
		mu 0 4 885 955 957 887
		f 4 -1886 -1753 1888 1889
		mu 0 4 956 886 888 958
		f 4 -1888 1890 1891 -1755
		mu 0 4 887 957 959 889
		f 4 -1889 -1757 1892 1893
		mu 0 4 958 888 890 960
		f 4 -1892 1894 1895 -1759
		mu 0 4 889 959 961 891
		f 4 -1893 -1761 1896 1897
		mu 0 4 960 890 892 962
		f 4 1898 1899 -1763 -1896
		mu 0 4 961 963 893 891
		f 4 1900 -1897 -1766 1901
		mu 0 4 964 962 892 894
		f 4 1902 1903 -1767 -1900
		mu 0 4 963 965 895 893
		f 4 1904 1905 -1902 -1769
		mu 0 4 896 966 964 894
		f 4 1906 1907 -1771 -1904
		mu 0 4 965 967 897 895
		f 4 1908 -1905 -1774 1909
		mu 0 4 973 966 896 901
		f 3 -1908 1910 -1775
		mu 0 3 897 967 898
		f 4 -1911 1911 1912 -1777
		mu 0 4 898 967 968 899
		f 4 -1913 1913 1914 -1783
		mu 0 4 899 968 969 903
		f 4 1915 1916 -1794 1917
		mu 0 4 972 974 900 907
		f 4 1918 1919 -1780 -1917
		mu 0 4 974 973 902 900
		f 3 -1910 -1782 -1920
		mu 0 3 973 901 902
		f 4 1920 1921 -1785 -1915
		mu 0 4 969 970 904 903
		f 4 -1922 1922 1923 -1787
		mu 0 4 904 970 976 905
		f 4 1924 1925 -1795 -1924
		mu 0 4 976 975 906 905
		f 4 1926 1927 -1789 -1926
		mu 0 4 975 971 908 906
		f 4 1928 -1918 -1792 -1928
		mu 0 4 971 972 907 908
		f 4 1929 1930 1931 -1796
		mu 0 4 909 977 982 914
		f 4 1932 -1930 -1799 1933
		mu 0 4 978 977 909 910
		f 4 1934 1935 -1934 -1802
		mu 0 4 911 979 978 910
		f 4 1936 1937 -1935 -1807
		mu 0 4 915 984 979 911
		f 3 -1812 1938 1939
		mu 0 3 917 912 918
		f 4 -1939 -1803 1940 1941
		mu 0 4 918 912 913 981
		f 4 1942 -1941 -1806 -1932
		mu 0 4 982 981 913 914
		f 4 -1810 1943 1944 -1937
		mu 0 4 915 916 919 984
		f 3 -1814 1945 -1944
		mu 0 3 916 920 919
		f 3 1946 1947 -1815
		mu 0 3 917 986 921
		f 4 1948 -1947 -1940 1949
		mu 0 4 980 986 917 918
		f 3 -1950 -1942 1950
		mu 0 3 980 918 981
		f 3 1951 -1945 1952
		mu 0 3 985 984 919
		f 4 1953 -1953 -1946 1954
		mu 0 4 987 985 919 920
		f 3 -1955 -1817 1955
		mu 0 3 987 920 922
		f 4 -1948 1956 1957 -1819
		mu 0 4 921 986 988 923
		f 4 1958 -1956 -1821 1959
		mu 0 4 989 987 922 924
		f 4 -1958 1960 1961 -1824
		mu 0 4 923 988 990 925
		f 4 1962 -1960 -1826 1963
		mu 0 4 991 989 924 926
		f 4 -1827 -1962 1964 1965
		mu 0 4 927 925 990 992
		f 4 1966 -1964 -1830 1967
		mu 0 4 993 991 926 928
		f 4 -1966 1968 1969 -1831
		mu 0 4 927 992 994 929
		f 4 1970 -1968 -1833 1971
		mu 0 4 997 993 928 930
		f 4 1972 1973 -1835 -1970
		mu 0 4 994 998 931 929
		f 4 1974 -1972 -1838 1975
		mu 0 4 999 997 930 932
		f 4 -1839 -1974 1976 1977
		mu 0 4 933 931 998 1000
		f 4 1978 -1976 -1842 1979
		mu 0 4 1001 999 932 934
		f 4 -1843 -1978 1980 1981
		mu 0 4 935 933 1000 1002
		f 4 1982 -1980 -1846 1983
		mu 0 4 1003 1001 934 936
		f 4 -1847 -1982 1984 1985
		mu 0 4 937 935 1002 1004
		f 4 1986 -1984 -1850 1987
		mu 0 4 1005 1003 936 938
		f 4 1988 1989 -1851 -1986
		mu 0 4 1004 1007 939 937
		f 4 1990 1991 -1988 -1853
		mu 0 4 940 1009 1005 938
		f 4 1992 1993 -1855 -1990
		mu 0 4 1007 1011 941 939
		f 4 1994 -1991 -1857 1995
		mu 0 4 1012 1009 940 942
		f 4 -1859 -1994 1996 1997
		mu 0 4 943 941 1011 1013
		f 4 1998 -1996 -1862 1999
		mu 0 4 1014 1012 942 944
		f 4 -1863 -1998 2000 2001
		mu 0 4 945 943 1013 1015
		f 4 2002 -2000 -1866 2003
		mu 0 4 1016 1014 944 946
		f 4 -1867 -2002 2004 2005
		mu 0 4 947 945 1015 1017
		f 4 2006 -2004 -1870 2007
		mu 0 4 1018 1016 946 948
		f 4 -1871 -2006 2008 2009
		mu 0 4 949 947 1017 1019
		f 4 2010 -2008 -1874 2011
		mu 0 4 1020 1018 948 950
		f 4 -2010 2012 2013 -1875
		mu 0 4 949 1019 1021 951
		f 4 2014 -2012 -1877 2015
		mu 0 4 1024 1020 950 952;
	setAttr ".fc[1000:1289]"
		f 4 -2014 2016 2017 -1879
		mu 0 4 951 1021 1025 953
		f 4 -2016 -1881 2018 2019
		mu 0 4 1024 952 954 1026
		f 4 -2018 2020 2021 -1883
		mu 0 4 953 1025 1027 955
		f 4 2022 -2019 -1885 2023
		mu 0 4 1028 1026 954 956
		f 4 -1887 -2022 2024 2025
		mu 0 4 957 955 1027 1029
		f 4 2026 -2024 -1890 2027
		mu 0 4 1030 1028 956 958
		f 4 -1891 -2026 2028 2029
		mu 0 4 959 957 1029 1031
		f 4 2030 -2028 -1894 2031
		mu 0 4 1032 1030 958 960
		f 4 -1895 -2030 2032 2033
		mu 0 4 961 959 1031 1033
		f 4 2034 -2032 -1898 2035
		mu 0 4 1034 1032 960 962
		f 4 2036 2037 -1899 -2034
		mu 0 4 1033 1035 963 961
		f 4 2038 2039 -2036 -1901
		mu 0 4 964 1036 1034 962
		f 4 2040 2041 -1903 -2038
		mu 0 4 1035 1037 965 963
		f 4 2042 -2039 -1906 2043
		mu 0 4 1042 1036 964 966
		f 4 2044 2045 -1907 -2042
		mu 0 4 1037 1038 967 965
		f 4 2046 -2044 -1909 2047
		mu 0 4 1041 1042 966 973
		f 3 -2046 2048 -1912
		mu 0 3 967 1038 968
		f 4 -2049 2049 2050 -1914
		mu 0 4 968 1038 1039 969
		f 4 2051 2052 -1921 -2051
		mu 0 4 1039 1043 970 969
		f 4 -2053 2053 2054 -1923
		mu 0 4 970 1043 1044 976
		f 4 2055 2056 -1927 2057
		mu 0 4 1046 1045 971 975
		f 4 2058 2059 -1929 -2057
		mu 0 4 1045 1040 972 971
		f 4 2060 2061 -1916 -2060
		mu 0 4 1040 1041 974 972
		f 3 -2048 -1919 -2062
		mu 0 3 1041 973 974
		f 4 2062 -2058 -1925 -2055
		mu 0 4 1044 1046 975 976
		f 4 2063 2064 2065 -1931
		mu 0 4 977 1047 1051 982
		f 4 2066 -2064 -1933 2067
		mu 0 4 1048 1047 977 978
		f 4 -1936 2068 2069 -2068
		mu 0 4 978 979 983 1048
		f 3 -1938 2070 -2069
		mu 0 3 979 984 983
		f 3 2071 -1949 2072
		mu 0 3 1049 986 980
		f 4 2073 -2073 -1951 2074
		mu 0 4 1050 1049 980 981
		f 4 2075 -2075 -1943 -2066
		mu 0 4 1051 1050 981 982
		f 4 2076 2077 -2070 2078
		mu 0 4 1054 1053 1048 983
		f 4 2079 -2079 -2071 2080
		mu 0 4 1055 1054 983 984
		f 4 2081 2082 -2081 -1952
		mu 0 4 985 1056 1055 984
		f 3 2083 -2082 -1954
		mu 0 3 987 1056 985
		f 4 -1957 -2072 2084 2085
		mu 0 4 988 986 1049 1057
		f 4 2086 -2084 -1959 2087
		mu 0 4 1060 1056 987 989
		f 4 -2086 2088 2089 -1961
		mu 0 4 988 1057 1061 990
		f 4 2090 -2088 -1963 2091
		mu 0 4 1064 1060 989 991
		f 4 -1965 -2090 2092 2093
		mu 0 4 992 990 1061 1065
		f 4 2094 -2092 -1967 2095
		mu 0 4 1068 1064 991 993
		f 3 -1969 2096 2097
		mu 0 3 994 992 995
		f 4 -2097 -2094 2098 2099
		mu 0 4 995 992 1065 1069
		f 4 2100 -2096 2101 2102
		mu 0 4 1071 1068 993 996
		f 3 -1971 2103 -2102
		mu 0 3 993 997 996
		f 4 2104 -1973 -2098 2105
		mu 0 4 1073 998 994 995
		f 4 -2106 -2100 2106 2107
		mu 0 4 1073 995 1069 1074
		f 4 2108 2109 -2103 2110
		mu 0 4 1077 1078 1071 996
		f 4 -2111 -2104 -1975 2111
		mu 0 4 1077 996 997 999
		f 4 2112 2113 -1977 -2105
		mu 0 4 1073 1079 1000 998
		f 4 2114 -2112 -1979 2115
		mu 0 4 1082 1077 999 1001
		f 4 -1981 -2114 2116 2117
		mu 0 4 1002 1000 1079 1083
		f 4 2118 -2116 -1983 2119
		mu 0 4 1088 1082 1001 1003
		f 4 -1985 -2118 2120 2121
		mu 0 4 1004 1002 1083 1084
		f 4 2122 -2120 -1987 2123
		mu 0 4 1006 1088 1003 1005
		f 4 2124 -1989 -2122 2125
		mu 0 4 1008 1007 1004 1084
		f 4 -2126 2126 2127 2128
		mu 0 4 1008 1084 1089 1094
		f 4 2129 2130 2131 2132
		mu 0 4 1099 1093 1006 1010
		f 4 -1992 2133 -2132 -2124
		mu 0 4 1005 1009 1010 1006
		f 3 -1993 -2125 2134
		mu 0 3 1011 1007 1008
		f 4 -2135 -2129 2135 2136
		mu 0 4 1011 1008 1094 1100
		f 4 2137 -2133 2138 2139
		mu 0 4 1106 1099 1010 1012
		f 3 -1995 -2139 -2134
		mu 0 3 1009 1012 1010
		f 4 -1997 -2137 2140 2141
		mu 0 4 1013 1011 1100 1107
		f 4 2142 -2140 -1999 2143
		mu 0 4 1114 1106 1012 1014
		f 4 -2001 -2142 2144 2145
		mu 0 4 1015 1013 1107 1115
		f 4 2146 -2144 -2003 2147
		mu 0 4 1122 1114 1014 1016
		f 4 -2005 -2146 2148 2149
		mu 0 4 1017 1015 1115 1123
		f 4 2150 -2148 -2007 2151
		mu 0 4 1128 1122 1016 1018
		f 4 -2009 -2150 2152 2153
		mu 0 4 1019 1017 1123 1129
		f 4 2154 -2152 -2011 2155
		mu 0 4 1133 1128 1018 1020
		f 3 -2013 2156 2157
		mu 0 3 1021 1019 1022
		f 4 -2157 -2154 2158 2159
		mu 0 4 1022 1019 1129 1134
		f 4 2160 -2156 2161 2162
		mu 0 4 1137 1133 1020 1023
		f 3 -2015 2163 -2162
		mu 0 3 1020 1024 1023
		f 4 -2017 -2158 2164 2165
		mu 0 4 1025 1021 1022 1138
		f 4 -2165 -2160 2166 2167
		mu 0 4 1138 1022 1134 1139
		f 4 2168 2169 -2163 2170
		mu 0 4 1141 1140 1137 1023
		f 4 -2164 -2020 2171 -2171
		mu 0 4 1023 1024 1026 1141
		f 4 -2021 -2166 2172 2173
		mu 0 4 1027 1025 1138 1142
		f 4 2174 -2172 -2023 2175
		mu 0 4 1145 1141 1026 1028
		f 4 -2025 -2174 2176 2177
		mu 0 4 1029 1027 1142 1146
		f 4 2178 -2176 -2027 2179
		mu 0 4 1147 1145 1028 1030
		f 4 -2029 -2178 2180 2181
		mu 0 4 1031 1029 1146 1148
		f 4 2182 -2180 -2031 2183
		mu 0 4 1149 1147 1030 1032
		f 4 -2033 -2182 2184 2185
		mu 0 4 1033 1031 1148 1151
		f 4 2186 -2184 -2035 2187
		mu 0 4 1154 1149 1032 1034
		f 4 -2037 -2186 2188 2189
		mu 0 4 1035 1033 1151 1155
		f 4 2190 -2188 -2040 2191
		mu 0 4 1159 1154 1034 1036
		f 4 2192 2193 -2041 -2190
		mu 0 4 1155 1156 1037 1035
		f 4 2194 -2192 -2043 2195
		mu 0 4 1160 1159 1036 1042
		f 3 2196 -2045 -2194
		mu 0 3 1156 1038 1037
		f 4 2197 2198 -2050 -2197
		mu 0 4 1156 1162 1039 1038
		f 4 -2199 2199 2200 -2052
		mu 0 4 1039 1162 1163 1043
		f 4 2201 2202 -2059 2203
		mu 0 4 1169 1168 1040 1045
		f 4 2204 2205 -2061 -2203
		mu 0 4 1168 1160 1041 1040
		f 3 -2206 -2196 -2047
		mu 0 3 1041 1160 1042
		f 4 -2201 2206 2207 -2054
		mu 0 4 1043 1163 1165 1044
		f 4 2208 2209 -2063 -2208
		mu 0 4 1165 1166 1046 1044
		f 4 2210 -2204 -2056 -2210
		mu 0 4 1166 1169 1045 1046
		f 3 -2065 2211 2212
		mu 0 3 1051 1047 1052
		f 4 -2067 -2078 2213 -2212
		mu 0 4 1047 1048 1053 1052
		f 4 -2074 2214 2215 -2085
		mu 0 4 1049 1050 1058 1057
		f 4 -2215 -2076 2216 2217
		mu 0 4 1058 1050 1051 1171
		f 4 2218 -2217 -2213 2219
		mu 0 4 1172 1171 1051 1052
		f 4 2220 -2220 -2214 2221
		mu 0 4 1173 1172 1052 1053
		f 4 2222 -2222 -2077 2223
		mu 0 4 1174 1173 1053 1054
		f 4 -2080 2224 2225 -2224
		mu 0 4 1054 1055 1059 1174
		f 4 -2083 -2087 2226 -2225
		mu 0 4 1055 1056 1060 1059
		f 3 -2089 2227 2228
		mu 0 3 1061 1057 1062
		f 4 -2228 -2216 2229 2230
		mu 0 4 1062 1057 1058 1175
		f 4 -2230 -2218 2231 2232
		mu 0 4 1175 1058 1171 1176
		f 4 2233 2234 -2226 2235
		mu 0 4 1180 1179 1174 1059
		f 4 -2227 2236 2237 -2236
		mu 0 4 1059 1060 1063 1180
		f 3 -2091 2238 -2237
		mu 0 3 1060 1064 1063
		f 4 -2229 2239 2240 -2093
		mu 0 4 1061 1062 1066 1065
		f 4 -2240 -2231 2241 2242
		mu 0 4 1066 1062 1175 1181
		f 4 2243 -2238 2244 2245
		mu 0 4 1186 1180 1063 1067
		f 4 -2239 -2095 2246 -2245
		mu 0 4 1063 1064 1068 1067
		f 4 -2099 -2241 2247 2248
		mu 0 4 1069 1065 1066 1070
		f 4 -2248 -2243 2249 2250
		mu 0 4 1070 1066 1181 1187
		f 4 2251 2252 -2246 2253
		mu 0 4 1072 1192 1186 1067
		f 4 -2247 -2101 2254 -2254
		mu 0 4 1067 1068 1071 1072
		f 4 2255 -2107 -2249 2256
		mu 0 4 1075 1074 1069 1070
		f 4 -2257 -2251 2257 2258
		mu 0 4 1075 1070 1187 1193
		f 4 2259 -2252 2260 2261
		mu 0 4 1198 1192 1072 1076
		f 4 -2110 2262 -2261 -2255
		mu 0 4 1071 1078 1076 1072
		f 3 -2113 -2108 2263
		mu 0 3 1079 1073 1074
		f 4 -2256 2264 2265 -2264
		mu 0 4 1074 1075 1080 1079
		f 4 -2265 -2259 2266 2267
		mu 0 4 1080 1075 1193 1199
		f 4 2268 -2262 2269 2270
		mu 0 4 1205 1198 1076 1081
		f 4 -2263 2271 2272 -2270
		mu 0 4 1076 1078 1082 1081
		f 3 -2115 -2272 -2109
		mu 0 3 1077 1082 1078
		f 4 -2266 2273 2274 -2117
		mu 0 4 1079 1080 1085 1083
		f 4 -2274 -2268 2275 2276
		mu 0 4 1085 1080 1199 1200
		f 4 2277 -2271 2278 2279
		mu 0 4 1086 1205 1081 1087
		f 4 -2273 -2119 2280 -2279
		mu 0 4 1081 1082 1088 1087
		f 4 -2275 2281 -2127 -2121
		mu 0 4 1083 1085 1089 1084
		f 4 2282 -2282 -2277 2283
		mu 0 4 1090 1089 1085 1200
		f 4 -2284 2284 2285 2286
		mu 0 4 1090 1200 1206 1207
		f 4 2287 2288 2289 2290
		mu 0 4 1091 1210 1086 1092
		f 4 2291 2292 -2290 -2280
		mu 0 4 1087 1093 1092 1086
		f 4 -2281 -2123 -2131 -2292
		mu 0 4 1087 1088 1006 1093
		f 4 -2283 2293 2294 -2128
		mu 0 4 1089 1090 1095 1094
		f 4 2295 -2294 -2287 2296
		mu 0 4 1096 1095 1090 1207
		f 4 -2297 2297 2298 2299
		mu 0 4 1096 1207 1211 1213
		f 4 2300 2301 2302 2303
		mu 0 4 1214 1212 1091 1097
		f 4 2304 2305 -2303 -2291
		mu 0 4 1092 1098 1097 1091
		f 4 -2293 -2130 2306 -2305
		mu 0 4 1092 1093 1099 1098
		f 4 -2295 2307 2308 -2136
		mu 0 4 1094 1095 1101 1100
		f 4 -2296 2309 2310 -2308
		mu 0 4 1095 1096 1102 1101
		f 4 -2310 -2300 2311 2312
		mu 0 4 1102 1096 1213 1215
		f 4 2313 -2304 2314 2315
		mu 0 4 1103 1214 1097 1104
		f 4 -2306 2316 2317 -2315
		mu 0 4 1097 1098 1105 1104
		f 4 -2307 -2138 2318 -2317
		mu 0 4 1098 1099 1106 1105
		f 4 -2309 2319 2320 -2141
		mu 0 4 1100 1101 1108 1107
		f 4 -2311 2321 2322 -2320
		mu 0 4 1101 1102 1109 1108
		f 4 2323 -2322 -2313 2324
		mu 0 4 1110 1109 1102 1215
		f 4 2325 2326 2327 -2325
		mu 0 4 1215 1103 1111 1110
		f 4 2328 2329 -2327 -2316
		mu 0 4 1104 1112 1111 1103
		f 4 -2318 2330 2331 -2329
		mu 0 4 1104 1105 1113 1112
		f 4 -2319 -2143 2332 -2331
		mu 0 4 1105 1106 1114 1113
		f 4 -2321 2333 2334 -2145
		mu 0 4 1107 1108 1116 1115
		f 4 -2323 2335 2336 -2334
		mu 0 4 1108 1109 1117 1116
		f 4 -2324 2337 2338 -2336
		mu 0 4 1109 1110 1118 1117
		f 4 -2328 2339 2340 -2338
		mu 0 4 1110 1111 1119 1118
		f 4 -2330 2341 2342 -2340
		mu 0 4 1111 1112 1120 1119
		f 4 -2332 2343 2344 -2342
		mu 0 4 1112 1113 1121 1120
		f 4 -2333 -2147 2345 -2344
		mu 0 4 1113 1114 1122 1121
		f 4 -2335 2346 2347 -2149
		mu 0 4 1115 1116 1124 1123
		f 4 -2337 2348 2349 -2347
		mu 0 4 1116 1117 1125 1124
		f 4 -2349 -2339 2350 2351
		mu 0 4 1125 1117 1118 1216
		f 4 2352 -2351 -2341 2353
		mu 0 4 1217 1216 1118 1119
		f 4 -2343 2354 2355 -2354
		mu 0 4 1119 1120 1126 1217
		f 4 -2345 2356 2357 -2355
		mu 0 4 1120 1121 1127 1126
		f 4 -2346 -2151 2358 -2357
		mu 0 4 1121 1122 1128 1127
		f 4 -2348 2359 2360 -2153
		mu 0 4 1123 1124 1130 1129
		f 4 -2360 -2350 2361 2362
		mu 0 4 1130 1124 1125 1218
		f 4 -2362 -2352 2363 2364
		mu 0 4 1218 1125 1216 1219
		f 4 2365 -2356 2366 2367
		mu 0 4 1220 1217 1126 1131
		f 4 -2358 2368 2369 -2367
		mu 0 4 1126 1127 1132 1131
		f 4 -2359 -2155 2370 -2369
		mu 0 4 1127 1128 1133 1132
		f 4 -2361 2371 2372 -2159
		mu 0 4 1129 1130 1135 1134
		f 4 -2372 -2363 2373 2374
		mu 0 4 1135 1130 1218 1221
		f 4 2375 2376 -2368 2377
		mu 0 4 1224 1223 1220 1131
		f 4 -2370 2378 2379 -2378
		mu 0 4 1131 1132 1136 1224
		f 4 -2371 -2161 2380 -2379
		mu 0 4 1132 1133 1137 1136
		f 4 -2167 -2373 2381 2382
		mu 0 4 1139 1134 1135 1225
		f 4 -2382 -2375 2383 2384
		mu 0 4 1225 1135 1221 1226
		f 4 2385 2386 -2380 2387
		mu 0 4 1230 1229 1224 1136
		f 4 -2381 -2170 2388 -2388
		mu 0 4 1136 1137 1140 1230
		f 4 -2168 2389 2390 -2173
		mu 0 4 1138 1139 1143 1142
		f 4 -2390 -2383 2391 2392
		mu 0 4 1143 1139 1225 1231
		f 4 2393 -2389 2394 2395
		mu 0 4 1236 1230 1140 1144
		f 4 -2169 -2175 2396 -2395
		mu 0 4 1140 1141 1145 1144
		f 4 -2177 -2391 2397 2398
		mu 0 4 1146 1142 1143 1237
		f 4 -2398 -2393 2399 2400
		mu 0 4 1237 1143 1231 1239
		f 4 2401 2402 -2396 2403
		mu 0 4 1243 1242 1236 1144
		f 4 -2397 -2179 2404 -2404
		mu 0 4 1144 1145 1147 1243
		f 4 -2181 -2399 2405 2406
		mu 0 4 1148 1146 1237 1238
		f 4 2407 -2405 -2183 2408
		mu 0 4 1150 1243 1147 1149
		f 4 2409 -2185 -2407 2410
		mu 0 4 1152 1151 1148 1238
		f 4 -2411 2411 2412 2413
		mu 0 4 1152 1238 1244 1248
		f 4 2414 2415 2416 2417
		mu 0 4 1254 1247 1150 1153
		f 4 -2187 2418 -2417 -2409
		mu 0 4 1149 1154 1153 1150
		f 4 -2410 2419 2420 -2189
		mu 0 4 1151 1152 1157 1155
		f 4 -2420 -2414 2421 2422
		mu 0 4 1157 1152 1248 1249
		f 4 2423 -2418 2424 2425
		mu 0 4 1158 1254 1153 1161
		f 4 -2419 -2191 2426 -2425
		mu 0 4 1153 1154 1159 1161
		f 3 -2193 -2421 2427
		mu 0 3 1156 1155 1157
		f 4 -2198 -2428 -2423 2428
		mu 0 4 1162 1156 1157 1249
		f 4 2429 2430 2431 -2429
		mu 0 4 1249 1250 1164 1162
		f 4 -2431 2432 2433 2434
		mu 0 4 1164 1250 1256 1258
		f 4 2435 2436 2437 2438
		mu 0 4 1167 1257 1255 1170
		f 4 2439 2440 2441 -2438
		mu 0 4 1255 1158 1168 1170
		f 4 2442 -2205 -2441 -2426
		mu 0 4 1161 1160 1168 1158
		f 3 -2195 -2443 -2427
		mu 0 3 1159 1160 1161
		f 3 -2200 -2432 2443
		mu 0 3 1163 1162 1164
		f 4 -2207 -2444 -2435 2444
		mu 0 4 1165 1163 1164 1258
		f 4 2445 2446 -2209 -2445
		mu 0 4 1258 1167 1166 1165
		f 4 2447 -2211 -2447 -2439
		mu 0 4 1170 1169 1166 1167
		f 3 -2202 -2448 -2442
		mu 0 3 1168 1169 1170
		f 4 -2219 2448 2449 -2232
		mu 0 4 1171 1172 1177 1176
		f 4 -2221 2450 2451 -2449
		mu 0 4 1172 1173 1178 1177
		f 4 -2223 -2235 2452 -2451
		mu 0 4 1173 1174 1179 1178
		f 4 -2233 2453 2454 -2242
		mu 0 4 1175 1176 1182 1181
		f 4 -2450 2455 2456 -2454
		mu 0 4 1176 1177 1183 1182
		f 4 -2452 2457 2458 -2456
		mu 0 4 1177 1178 1184 1183
		f 4 -2453 2459 2460 -2458
		mu 0 4 1178 1179 1185 1184
		f 4 -2234 -2244 2461 -2460
		mu 0 4 1179 1180 1186 1185
		f 4 -2455 2462 2463 -2250
		mu 0 4 1181 1182 1188 1187
		f 4 -2457 2464 2465 -2463
		mu 0 4 1182 1183 1189 1188
		f 4 -2459 2466 2467 -2465
		mu 0 4 1183 1184 1190 1189
		f 4 -2461 2468 2469 -2467
		mu 0 4 1184 1185 1191 1190
		f 4 -2462 -2253 2470 -2469
		mu 0 4 1185 1186 1192 1191
		f 4 -2464 2471 2472 -2258
		mu 0 4 1187 1188 1194 1193
		f 4 -2466 2473 2474 -2472
		mu 0 4 1188 1189 1195 1194
		f 4 -2468 2475 2476 -2474
		mu 0 4 1189 1190 1196 1195
		f 4 -2470 2477 2478 -2476
		mu 0 4 1190 1191 1197 1196
		f 4 -2471 -2260 2479 -2478
		mu 0 4 1191 1192 1198 1197
		f 4 -2473 2480 2481 -2267
		mu 0 4 1193 1194 1201 1199
		f 4 -2475 2482 2483 -2481
		mu 0 4 1194 1195 1202 1201
		f 4 -2477 2484 2485 -2483
		mu 0 4 1195 1196 1203 1202
		f 4 -2479 2486 2487 -2485
		mu 0 4 1196 1197 1204 1203
		f 4 -2480 -2269 2488 -2487
		mu 0 4 1197 1198 1205 1204
		f 4 -2482 2489 -2285 -2276
		mu 0 4 1199 1201 1206 1200
		f 4 -2484 2490 2491 -2490
		mu 0 4 1201 1202 1208 1206
		f 4 -2486 2492 2493 -2491
		mu 0 4 1202 1203 1209 1208
		f 4 -2488 2494 2495 -2493
		mu 0 4 1203 1204 1210 1209
		f 4 -2489 -2278 -2289 -2495
		mu 0 4 1204 1205 1086 1210
		f 4 -2492 2496 -2298 -2286
		mu 0 4 1206 1208 1211 1207
		f 4 -2494 2497 2498 -2497
		mu 0 4 1208 1209 1212 1211
		f 4 -2496 -2288 -2302 -2498
		mu 0 4 1209 1210 1091 1212
		f 4 -2499 -2301 2499 -2299
		mu 0 4 1211 1212 1214 1213
		f 4 -2500 -2314 -2326 -2312
		mu 0 4 1213 1214 1103 1215
		f 4 -2353 -2366 2500 -2364
		mu 0 4 1216 1217 1220 1219
		f 4 -2365 2501 2502 -2374
		mu 0 4 1218 1219 1222 1221
		f 4 -2501 -2377 2503 -2502
		mu 0 4 1219 1220 1223 1222
		f 4 -2503 2504 2505 -2384
		mu 0 4 1221 1222 1227 1226
		f 4 -2504 2506 2507 -2505
		mu 0 4 1222 1223 1228 1227
		f 4 -2376 -2387 2508 -2507
		mu 0 4 1223 1224 1229 1228
		f 4 -2385 2509 2510 -2392
		mu 0 4 1225 1226 1232 1231
		f 4 -2506 2511 2512 -2510
		mu 0 4 1226 1227 1233 1232
		f 4 -2508 2513 2514 -2512
		mu 0 4 1227 1228 1234 1233
		f 4 -2509 2515 2516 -2514
		mu 0 4 1228 1229 1235 1234
		f 4 -2386 -2394 2517 -2516
		mu 0 4 1229 1230 1236 1235
		f 4 -2511 2518 2519 -2400
		mu 0 4 1231 1232 1240 1239
		f 4 -2519 -2513 2520 2521
		mu 0 4 1240 1232 1233 1259
		f 4 2522 -2521 -2515 2523
		mu 0 4 1260 1259 1233 1234
		f 4 -2517 2524 2525 -2524
		mu 0 4 1234 1235 1241 1260
		f 4 -2518 -2403 2526 -2525
		mu 0 4 1235 1236 1242 1241
		f 4 -2401 2527 -2412 -2406
		mu 0 4 1237 1239 1244 1238
		f 4 -2520 2528 2529 -2528
		mu 0 4 1239 1240 1245 1244
		f 4 -2529 -2522 2530 2531
		mu 0 4 1245 1240 1259 1261
		f 4 2532 -2526 2533 2534
		mu 0 4 1262 1260 1241 1246
		f 4 -2527 2535 2536 -2534
		mu 0 4 1241 1242 1247 1246
		f 4 -2402 -2408 -2416 -2536
		mu 0 4 1242 1243 1150 1247
		f 4 -2530 2537 2538 -2413
		mu 0 4 1244 1245 1251 1248
		f 4 -2538 -2532 2539 2540
		mu 0 4 1251 1245 1261 1263
		f 4 2541 -2535 2542 2543
		mu 0 4 1252 1262 1246 1253
		f 4 -2537 -2415 2544 -2543
		mu 0 4 1246 1247 1254 1253
		f 4 -2539 2545 -2430 -2422
		mu 0 4 1248 1251 1250 1249
		f 4 -2433 -2546 -2541 2546
		mu 0 4 1256 1250 1251 1263
		f 4 2547 2548 2549 -2547
		mu 0 4 1263 1252 1257 1256
		f 4 2550 -2437 -2549 -2544
		mu 0 4 1253 1255 1257 1252
		f 4 -2545 -2424 -2440 -2551
		mu 0 4 1253 1254 1158 1255
		f 4 -2550 -2436 -2446 -2434
		mu 0 4 1256 1257 1167 1258
		f 4 -2523 -2533 2551 -2531
		mu 0 4 1259 1260 1262 1261
		f 4 -2552 -2542 -2548 -2540
		mu 0 4 1261 1262 1252 1263;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "411E5EC6-44F3-6F7B-F160-69B47CF6421F";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "622A1060-4C9F-C8F0-9501-8594BB2FFC21";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1A2101D6-4884-9C4F-6DFF-EFAF815C1D00";
createNode displayLayerManager -n "layerManager";
	rename -uid "61677681-4354-D3BC-CD53-3D9457BCAA37";
createNode displayLayer -n "defaultLayer";
	rename -uid "24BC8596-4247-4DC2-2EEC-5CA95E9D6D85";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C7A836A5-4AA9-C5E4-BC49-41B4DC356C72";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "AE9C37C3-4CCC-9B21-746B-1F8AEAACC36C";
	setAttr ".g" yes;
createNode phong -n "Merged_PM3D_Sphere3D2_ncl1_1";
	rename -uid "2FF016BD-445E-9508-F90E-53AADF003CBD";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 0.5 0.5 0.5 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "OeufSG";
	rename -uid "611C5B00-4A05-2C91-D339-88BD50578A8E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3FEA8832-4631-77BC-CCDF-008D452F2528";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "7D48389C-4AE3-A483-9F2D-19A1BEDA93A0";
	setAttr ".version" -type "string" "5.3.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5E164B31-4065-9387-D726-1293C7502699";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "3A327CFA-4D77-7BEE-52FA-CE8E9CE61FC8";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "307D7684-4FBA-4C21-A830-8683FBBE9269";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "F70C2D16-4302-AD8A-4ECD-C4A018A92643";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C7FA1331-4451-FCC5-968D-10A1EF0D1FF0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 339\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 556\\n    -height 339\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "03B15CAC-48E8-2F20-DC62-D6AF178906BD";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode multiplyDivide -n "RootFat";
	rename -uid "BA420315-4831-FF96-3C60-F89FBBF5F40C";
createNode multiplyDivide -n "CupFat";
	rename -uid "273E862B-484E-E408-D562-2C9103DF1D86";
createNode multiplyDivide -n "EggEndFat";
	rename -uid "6985D8E6-4EE8-BE65-7C89-C3A3A29645C7";
createNode objectSet -n "ControlSet";
	rename -uid "07A21E27-45FE-11C9-45D2-46B20ED8AADC";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
createNode objectSet -n "DeformSet";
	rename -uid "B4C9CF51-490B-972D-CA28-579B69BA6672";
	setAttr ".ihi" 0;
createNode objectSet -n "AllSet";
	rename -uid "1EB29F3F-4F8B-BEB0-EE96-7ABD7DE80221";
	setAttr ".ihi" 0;
	setAttr -s 53 ".dsm";
	setAttr -s 2 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "8CF6EC5E-4056-53E3-6D09-FB8852597531";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dnsm";
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "123476FE-413A-6127-C8DE-44AED57715EA";
	setAttr ".ihi" 0;
createNode dagPose -n "buildPose";
	rename -uid "308F2FC0-49F1-8743-C839-529445C4345A";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr ".udAttr" -type "string" "xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;";
createNode skinCluster -n "skinCluster1";
	rename -uid "06A5E2D8-4CE0-6D30-B5D6-8EBA4AB7B279";
	setAttr ".skm" 2;
	setAttr -s 1264 ".wl";
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
	setAttr ".wl[1000:1263].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
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
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 5.5511151231257827e-17 1.0168910106364605e-31 1 0
		 1 1.8318679906315083e-15 -1.1102230246251575e-16 0 -1.8873791418627661e-15 1 -5.5511151231257617e-17 0
		 0 0 0 1;
	setAttr ".pm[1]" -type "matrix" 5.5511151231257827e-17 1.0168910106364605e-31 1 0
		 1 1.8318679906315083e-15 -1.1102230246251575e-16 0 -1.8873791418627661e-15 1 -5.5511151231257617e-17 0
		 -43.49507388888513 0 -3.1019046686849501e-31 1;
	setAttr ".pm[2]" -type "matrix" 1 5.5511151231257827e-17 1.7763568394002505e-15 0
		 -1.1102230246251901e-16 1 1.8318679906315083e-15 0 -1.8318679906315079e-15 -1.8873791418627661e-15 1 0
		 9.4562613137219564 -19.54286503035787 -11.824397097456886 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr ".wd" 1;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "082DF5CC-4E93-74D6-F247-67BCE7EB27AC";
	setAttr -s 5 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 5 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 -4.3711390007583663e-08 -4.3711390007583584e-08
		 1.9545435303601822e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.4999999999999995 0.50000002185569503 0.4999999999999995 0.49999997814430497 1
		 1 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 43.49507388888513 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 4.3711390063094735e-08 -2.0100546840179083e-15
		 4.3711390063094735e-08 0 19.54286503035787 11.824397097456902 -9.4562613137219369 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.4999999999999995 -0.4999999999999995 -0.50000002185569503 0.49999997814430497 1
		 1 1 no;
	setAttr -s 5 ".m";
	setAttr -s 5 ".p";
	setAttr -s 5 ".g[0:4]" yes yes no no no;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
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
connectAttr "makeNurbCircle1.oc" "FitSkeletonShape.cr";
connectAttr "RootFat.oy" "Root.fatFrontAbs";
connectAttr "RootFat.oz" "Root.fatWidthAbs";
connectAttr "Root.s" "EggEnd.is";
connectAttr "EggEndFat.oy" "EggEnd.fatFrontAbs";
connectAttr "EggEndFat.oz" "EggEnd.fatWidthAbs";
connectAttr "Root.s" "Cup.is";
connectAttr "CupFat.oy" "Cup.fatFrontAbs";
connectAttr "CupFat.oz" "Cup.fatWidthAbs";
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
connectAttr "Reference_M.t" "LegLockConstrained_pointConstraint1.tg[0].tt";
connectAttr "Reference_M.rp" "LegLockConstrained_pointConstraint1.tg[0].trp";
connectAttr "Reference_M.rpt" "LegLockConstrained_pointConstraint1.tg[0].trt";
connectAttr "Reference_M.pm" "LegLockConstrained_pointConstraint1.tg[0].tpm";
connectAttr "LegLockConstrained_pointConstraint1.w0" "LegLockConstrained_pointConstraint1.tg[0].tw"
		;
connectAttr "LegLockConstrained.ro" "LegLockConstrained_orientConstraint1.cro";
connectAttr "LegLockConstrained.pim" "LegLockConstrained_orientConstraint1.cpim"
		;
connectAttr "Reference_M.r" "LegLockConstrained_orientConstraint1.tg[0].tr";
connectAttr "Reference_M.ro" "LegLockConstrained_orientConstraint1.tg[0].tro";
connectAttr "Reference_M.pm" "LegLockConstrained_orientConstraint1.tg[0].tpm";
connectAttr "Reference_M.jo" "LegLockConstrained_orientConstraint1.tg[0].tjo";
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
connectAttr "Reference_M.pim" "Root_M_pointConstraint1.cpim";
connectAttr "Reference_M.rp" "Root_M_pointConstraint1.crp";
connectAttr "Reference_M.rpt" "Root_M_pointConstraint1.crt";
connectAttr "FKXRoot_M.t" "Root_M_pointConstraint1.tg[0].tt";
connectAttr "FKXRoot_M.rp" "Root_M_pointConstraint1.tg[0].trp";
connectAttr "FKXRoot_M.rpt" "Root_M_pointConstraint1.tg[0].trt";
connectAttr "FKXRoot_M.pm" "Root_M_pointConstraint1.tg[0].tpm";
connectAttr "Root_M_pointConstraint1.w0" "Root_M_pointConstraint1.tg[0].tw";
connectAttr "Reference_M.ro" "Root_M_orientConstraint1.cro";
connectAttr "Reference_M.pim" "Root_M_orientConstraint1.cpim";
connectAttr "Reference_M.jo" "Root_M_orientConstraint1.cjo";
connectAttr "Reference_M.is" "Root_M_orientConstraint1.is";
connectAttr "FKXRoot_M.r" "Root_M_orientConstraint1.tg[0].tr";
connectAttr "FKXRoot_M.ro" "Root_M_orientConstraint1.tg[0].tro";
connectAttr "FKXRoot_M.pm" "Root_M_orientConstraint1.tg[0].tpm";
connectAttr "FKXRoot_M.jo" "Root_M_orientConstraint1.tg[0].tjo";
connectAttr "Root_M_orientConstraint1.w0" "Root_M_orientConstraint1.tg[0].tw";
connectAttr "MainScaleMultiplyDivide.o" "DynamicSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DrivingSystem.s";
connectAttr "MainScaleMultiplyDivide.o" "DeformationSystem.s";
connectAttr "Root_M_pointConstraint1.ctx" "Reference_M.tx";
connectAttr "Root_M_pointConstraint1.cty" "Reference_M.ty";
connectAttr "Root_M_pointConstraint1.ctz" "Reference_M.tz";
connectAttr "Root_M_orientConstraint1.crx" "Reference_M.rx";
connectAttr "Root_M_orientConstraint1.cry" "Reference_M.ry";
connectAttr "Root_M_orientConstraint1.crz" "Reference_M.rz";
connectAttr "Main.jointVis" "Reference_M.v";
connectAttr "FKRoot_M.sx" "Reference_M.sx";
connectAttr "FKRoot_M.sy" "Reference_M.sy";
connectAttr "FKRoot_M.sz" "Reference_M.sz";
connectAttr "Reference_M.s" "EggEnd_M.is";
connectAttr "Reference_M.s" "SecondCup_R.is";
connectAttr "skinCluster1.og[0]" "OeufShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "OeufSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "OeufSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.oc" "OeufSG.ss";
connectAttr "OeufShape.iog" "OeufSG.dsm" -na;
connectAttr "OeufSG.msg" "materialInfo1.sg";
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.msg" "materialInfo1.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Root.fat" "RootFat.i1y";
connectAttr "Root.fat" "RootFat.i1z";
connectAttr "Root.fatFront" "RootFat.i2y";
connectAttr "Root.fatWidth" "RootFat.i2z";
connectAttr "Cup.fat" "CupFat.i1y";
connectAttr "Cup.fat" "CupFat.i1z";
connectAttr "Cup.fatFront" "CupFat.i2y";
connectAttr "Cup.fatWidth" "CupFat.i2z";
connectAttr "EggEnd.fat" "EggEndFat.i1y";
connectAttr "EggEnd.fat" "EggEndFat.i1z";
connectAttr "EggEnd.fatFront" "EggEndFat.i2y";
connectAttr "EggEnd.fatWidth" "EggEndFat.i2z";
connectAttr "Main.iog" "ControlSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "ControlSet.dsm" -na;
connectAttr "RootX_M.iog" "ControlSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "FKRoot_M.iog" "ControlSet.dsm" -na;
connectAttr "Reference_M.iog" "DeformSet.dsm" -na;
connectAttr "buildPose.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "LegLockConstrained_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_orientConstraint1.iog" "AllSet.dsm" -na;
connectAttr "Root_M_pointConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKXRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_MShape.iog" "AllSet.dsm" -na;
connectAttr "FKRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKExtraRoot_M.iog" "AllSet.dsm" -na;
connectAttr "FKOffsetRoot_M.iog" "AllSet.dsm" -na;
connectAttr "LegLockConstrained.iog" "AllSet.dsm" -na;
connectAttr "FKFollowRoot_parentConstraint1.iog" "AllSet.dsm" -na;
connectAttr "FKFollowRoot.iog" "AllSet.dsm" -na;
connectAttr "RootX_MShape.iog" "AllSet.dsm" -na;
connectAttr "RootX_M.iog" "AllSet.dsm" -na;
connectAttr "RootExtraX_M.iog" "AllSet.dsm" -na;
connectAttr "RootOffsetX_M.iog" "AllSet.dsm" -na;
connectAttr "Reference_M.iog" "AllSet.dsm" -na;
connectAttr "SecondCup_R.iog" "AllSet.dsm" -na;
connectAttr "EggEnd_M.iog" "AllSet.dsm" -na;
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
connectAttr "DeformationSystem.iog" "AllSet.dsm" -na;
connectAttr "MotionSystem.iog" "AllSet.dsm" -na;
connectAttr "Group.iog" "AllSet.dsm" -na;
connectAttr "DeformSet.msg" "Sets.dnsm" -na;
connectAttr "ControlSet.msg" "Sets.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "Main.s" "MainScaleMultiplyDivide.i1";
connectAttr "OeufShapeOrig.w" "skinCluster1.ip[0].ig";
connectAttr "OeufShapeOrig.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "Reference_M.wm" "skinCluster1.ma[0]";
connectAttr "EggEnd_M.wm" "skinCluster1.ma[1]";
connectAttr "SecondCup_R.wm" "skinCluster1.ma[2]";
connectAttr "Reference_M.liw" "skinCluster1.lw[0]";
connectAttr "EggEnd_M.liw" "skinCluster1.lw[1]";
connectAttr "SecondCup_R.liw" "skinCluster1.lw[2]";
connectAttr "Reference_M.obcc" "skinCluster1.ifcl[0]";
connectAttr "EggEnd_M.obcc" "skinCluster1.ifcl[1]";
connectAttr "SecondCup_R.obcc" "skinCluster1.ifcl[2]";
connectAttr "Reference_M.msg" "skinCluster1.ptt";
connectAttr "Group.msg" "bindPose1.m[0]";
connectAttr "DeformationSystem.msg" "bindPose1.m[1]";
connectAttr "Reference_M.msg" "bindPose1.m[2]";
connectAttr "EggEnd_M.msg" "bindPose1.m[3]";
connectAttr "SecondCup_R.msg" "bindPose1.m[4]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[2]" "bindPose1.p[4]";
connectAttr "Reference_M.bps" "bindPose1.wm[2]";
connectAttr "EggEnd_M.bps" "bindPose1.wm[3]";
connectAttr "SecondCup_R.bps" "bindPose1.wm[4]";
connectAttr "OeufSG.pa" ":renderPartition.st" -na;
connectAttr "Merged_PM3D_Sphere3D2_ncl1_1.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of MC_Oeuf_Skin_Final.ma
