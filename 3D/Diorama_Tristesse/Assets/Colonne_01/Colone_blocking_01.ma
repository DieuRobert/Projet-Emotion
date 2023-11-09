//Maya ASCII 2023 scene
//Name: Colone_blocking_01.ma
//Last modified: Thu, Nov 09, 2023 02:04:39 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.2.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202202161415-df43006fd3";
fileInfo "osv" "Windows 11 Education v2009 (Build: 22621)";
fileInfo "UUID" "722CD7C3-40B4-A018-F770-7389047F3201";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1EA4B605-4889-E199-C52E-E3A5688EE1D1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 482.2499434799829 126.03417357169513 -1122.1059272570481 ;
	setAttr ".r" -type "double3" 13.461647271304013 513.79999999987308 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5253F2BA-4E25-FA96-F72A-E3BB08BDC1DE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 1195.6254995265165;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.1493404506908007 245.0187304051899 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "DF0FAE0D-4179-0BCF-AB58-14B8EB2E1D12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C47230A3-4645-5E74-6B88-5F9FA637B350";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "FBFE288A-4E5B-F98D-D841-BABF8BEBE5DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "061B7DB5-44F7-BB5A-5729-8EAE27F641EC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 322.95577304035726;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "EC915E89-4424-A657-87F1-81B872E07700";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B8A32629-4434-EA06-F544-0392070D092D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "E50867D2-4735-CBEF-CBA2-ABA996561276";
	setAttr ".t" -type "double3" 0 88.802400188710749 0 ;
	setAttr ".s" -type "double3" 58.222290830761466 87.608097044567728 58.222290830761466 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "CD42AE54-48E4-5077-1520-F4BA264DB8F0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.72862225492370314 0.57227767481681235 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	rename -uid "D02DCCE9-4E0E-73FA-E89C-30B273B44400";
	setAttr ".t" -type "double3" 0 223.76633182778457 0 ;
	setAttr ".s" -type "double3" 53.07165388029302 12.451367057407158 53.07165388029302 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "37E6B582-4CC5-B226-F133-F388F747D76F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.16073162853717804 0.92101683493979114 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.75550371 0.15022434
		 0.73233825 0.12407593 0.69967455 0.11168821 0.66499537 0.11589901 0.63624531 0.13574369
		 0.62001079 0.16667612 0.62001079 0.20160998 0.63624531 0.23254241 0.66499537 0.25238711
		 0.69967449 0.25659794 0.73233825 0.2442102 0.75550371 0.21806182 0.76386398 0.18414308
		 0.52349263 0.44623151 0.55603659 0.43353245 0.58858061 0.42083341 0.62112451 0.40813434
		 0.65366852 0.39543527 0.68621248 0.38273624 0.71875644 0.3700372 0.75130039 0.35733813
		 0.78384435 0.34463906 0.81638831 0.33194005 0.84893227 0.31924099 0.88147616 0.30654192
		 0.91402018 0.29384285 0.94656408 0.28114381 0.5359422 0.47813612 0.56848621 0.46543708
		 0.60103017 0.45273802 0.63357413 0.44003895 0.66611809 0.42733991 0.69866204 0.41464087
		 0.731206 0.40194181 0.76374996 0.38924277 0.79629397 0.3765437 0.82883787 0.36384466
		 0.86138189 0.35114563 0.89392585 0.33844656 0.9264698 0.32574749 0.9590137 0.31304845
		 0.22429797 0.88709813 0.20113257 0.8609497 0.16846886 0.84856194 0.13378966 0.85277277
		 0.10503963 0.87261748 0.08880505 0.90354991 0.08880505 0.93848377 0.10503963 0.9694162
		 0.13378963 0.98926085 0.1684688 0.99347168 0.20113257 0.98108399 0.22429797 0.95493561
		 0.23265821 0.92101687 0.6908769 0.18414308 0.15967122 0.92101687;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  0.88545626 -1 -0.4647229 0.56806505 -1 -0.82298374
		 0.12053701 -1 -0.99270892 -0.35460463 -1 -0.93501639 -0.7485106 -1 -0.66312283 -0.97094178 -1 -0.23931587
		 -0.97094184 -1 0.23931548 -0.74851084 -1 0.66312253 -0.35460499 -1 0.93501621 0.1205366 -1 0.99270892
		 0.56806469 -1 0.82298392 0.88545603 -1 0.4647232 1 -1 0 0.88545626 1 -0.4647229 0.56806505 1 -0.82298374
		 0.12053701 1 -0.99270892 -0.35460463 1 -0.93501639 -0.7485106 1 -0.66312283 -0.97094178 1 -0.23931587
		 -0.97094184 1 0.23931548 -0.74851084 1 0.66312253 -0.35460499 1 0.93501621 0.1205366 1 0.99270892
		 0.56806469 1 0.82298392 0.88545603 1 0.4647232 1 1 0 0 -1 0 0 1 0;
	setAttr -s 65 ".ed[0:64]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 13 0 0 13 1 1 14 1 2 15 1
		 3 16 1 4 17 1 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1 10 23 1 11 24 1 12 25 1 26 0 1 26 1 1
		 26 2 1 26 3 1 26 4 1 26 5 1 26 6 1 26 7 1 26 8 1 26 9 1 26 10 1 26 11 1 26 12 1 13 27 1
		 14 27 1 15 27 1 16 27 1 17 27 1 18 27 1 19 27 1 20 27 1 21 27 1 22 27 1 23 27 1 24 27 1
		 25 27 1;
	setAttr -s 39 -ch 130 ".fc[0:38]" -type "polyFaces" 
		f 4 0 27 -14 -27
		mu 0 4 13 14 28 27
		f 4 1 28 -15 -28
		mu 0 4 14 15 29 28
		f 4 2 29 -16 -29
		mu 0 4 15 16 30 29
		f 4 3 30 -17 -30
		mu 0 4 16 17 31 30
		f 4 4 31 -18 -31
		mu 0 4 17 18 32 31
		f 4 5 32 -19 -32
		mu 0 4 18 19 33 32
		f 4 6 33 -20 -33
		mu 0 4 19 20 34 33
		f 4 7 34 -21 -34
		mu 0 4 20 21 35 34
		f 4 8 35 -22 -35
		mu 0 4 21 22 36 35
		f 4 9 36 -23 -36
		mu 0 4 22 23 37 36
		f 4 10 37 -24 -37
		mu 0 4 23 24 38 37
		f 4 11 38 -25 -38
		mu 0 4 24 25 39 38
		f 4 12 26 -26 -39
		mu 0 4 25 26 40 39
		f 3 -1 -40 40
		mu 0 3 1 0 54
		f 3 -2 -41 41
		mu 0 3 2 1 54
		f 3 -3 -42 42
		mu 0 3 3 2 54
		f 3 -4 -43 43
		mu 0 3 4 3 54
		f 3 -5 -44 44
		mu 0 3 5 4 54
		f 3 -6 -45 45
		mu 0 3 6 5 54
		f 3 -7 -46 46
		mu 0 3 7 6 54
		f 3 -8 -47 47
		mu 0 3 8 7 54
		f 3 -9 -48 48
		mu 0 3 9 8 54
		f 3 -10 -49 49
		mu 0 3 10 9 54
		f 3 -11 -50 50
		mu 0 3 11 10 54
		f 3 -12 -51 51
		mu 0 3 12 11 54
		f 3 -13 -52 39
		mu 0 3 0 12 54
		f 3 13 53 -53
		mu 0 3 52 51 55
		f 3 14 54 -54
		mu 0 3 51 50 55
		f 3 15 55 -55
		mu 0 3 50 49 55
		f 3 16 56 -56
		mu 0 3 49 48 55
		f 3 17 57 -57
		mu 0 3 48 47 55
		f 3 18 58 -58
		mu 0 3 47 46 55
		f 3 19 59 -59
		mu 0 3 46 45 55
		f 3 20 60 -60
		mu 0 3 45 44 55
		f 3 21 61 -61
		mu 0 3 44 43 55
		f 3 22 62 -62
		mu 0 3 43 42 55
		f 3 23 63 -63
		mu 0 3 42 41 55
		f 3 24 64 -64
		mu 0 3 41 53 55
		f 3 25 52 -65
		mu 0 3 53 52 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder3";
	rename -uid "A9A8F108-49F7-A45E-9CAD-899726D85801";
	setAttr ".t" -type "double3" 0 337.67976870460893 0 ;
	setAttr ".s" -type "double3" 53.07165388029302 12.451367057407158 53.07165388029302 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "6CDEFA9C-4632-900C-CAA5-CF94859358D9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89227905869483948 0.65432911823800155 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.95584542 0.62041038
		 0.93268001 0.59426194 0.90001631 0.58187425 0.86533713 0.58608502 0.83658707 0.60592973
		 0.82035249 0.63686216 0.82035249 0.67179602 0.83658707 0.70272839 0.86533713 0.72257316
		 0.90001619 0.72678399 0.93268001 0.71439624 0.95584542 0.68824786 0.96420562 0.65432906
		 0.52349263 0.50440323 0.55603659 0.49170423 0.58858061 0.47900519 0.62112451 0.46630612
		 0.65366852 0.45360705 0.68621248 0.44090798 0.71875644 0.42820895 0.75130039 0.41550991
		 0.78384435 0.40281084 0.81638831 0.39011177 0.84893227 0.37741274 0.88147616 0.3647137
		 0.91402018 0.35201463 0.94656408 0.33931556 0.5359422 0.53630787 0.56848621 0.52360886
		 0.60103017 0.5109098 0.63357413 0.49821076 0.66611809 0.48551169 0.69866204 0.47281265
		 0.731206 0.46011358 0.76374996 0.44741452 0.79629397 0.43471548 0.82883787 0.42201641
		 0.86138189 0.40931737 0.89392585 0.39661831 0.9264698 0.38391924 0.9590137 0.3712202
		 0.98235077 0.047750294 0.9591853 0.021601886 0.9265216 0.0092141628 0.89184248 0.013424993
		 0.86309242 0.033269674 0.84685785 0.06420207 0.84685779 0.099135935 0.86309236 0.13006836
		 0.89184237 0.14991307 0.9265216 0.15412387 0.9591853 0.14173615 0.98235077 0.11558777
		 0.99071097 0.081669062 0.89121866 0.65432906 0.91772395 0.081669033;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  0.88545626 -1 -0.4647229 0.56806505 -1 -0.82298374
		 0.12053701 -1 -0.99270892 -0.35460463 -1 -0.93501639 -0.7485106 -1 -0.66312283 -0.97094178 -1 -0.23931587
		 -0.97094184 -1 0.23931548 -0.74851084 -1 0.66312253 -0.35460499 -1 0.93501621 0.1205366 -1 0.99270892
		 0.56806469 -1 0.82298392 0.88545603 -1 0.4647232 1 -1 0 0.88545626 1 -0.4647229 0.56806505 1 -0.82298374
		 0.12053701 1 -0.99270892 -0.35460463 1 -0.93501639 -0.7485106 1 -0.66312283 -0.97094178 1 -0.23931587
		 -0.97094184 1 0.23931548 -0.74851084 1 0.66312253 -0.35460499 1 0.93501621 0.1205366 1 0.99270892
		 0.56806469 1 0.82298392 0.88545603 1 0.4647232 1 1 0 0 -1 0 0 1 0;
	setAttr -s 65 ".ed[0:64]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 13 0 0 13 1 1 14 1 2 15 1
		 3 16 1 4 17 1 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1 10 23 1 11 24 1 12 25 1 26 0 1 26 1 1
		 26 2 1 26 3 1 26 4 1 26 5 1 26 6 1 26 7 1 26 8 1 26 9 1 26 10 1 26 11 1 26 12 1 13 27 1
		 14 27 1 15 27 1 16 27 1 17 27 1 18 27 1 19 27 1 20 27 1 21 27 1 22 27 1 23 27 1 24 27 1
		 25 27 1;
	setAttr -s 39 -ch 130 ".fc[0:38]" -type "polyFaces" 
		f 4 0 27 -14 -27
		mu 0 4 13 14 28 27
		f 4 1 28 -15 -28
		mu 0 4 14 15 29 28
		f 4 2 29 -16 -29
		mu 0 4 15 16 30 29
		f 4 3 30 -17 -30
		mu 0 4 16 17 31 30
		f 4 4 31 -18 -31
		mu 0 4 17 18 32 31
		f 4 5 32 -19 -32
		mu 0 4 18 19 33 32
		f 4 6 33 -20 -33
		mu 0 4 19 20 34 33
		f 4 7 34 -21 -34
		mu 0 4 20 21 35 34
		f 4 8 35 -22 -35
		mu 0 4 21 22 36 35
		f 4 9 36 -23 -36
		mu 0 4 22 23 37 36
		f 4 10 37 -24 -37
		mu 0 4 23 24 38 37
		f 4 11 38 -25 -38
		mu 0 4 24 25 39 38
		f 4 12 26 -26 -39
		mu 0 4 25 26 40 39
		f 3 -1 -40 40
		mu 0 3 1 0 54
		f 3 -2 -41 41
		mu 0 3 2 1 54
		f 3 -3 -42 42
		mu 0 3 3 2 54
		f 3 -4 -43 43
		mu 0 3 4 3 54
		f 3 -5 -44 44
		mu 0 3 5 4 54
		f 3 -6 -45 45
		mu 0 3 6 5 54
		f 3 -7 -46 46
		mu 0 3 7 6 54
		f 3 -8 -47 47
		mu 0 3 8 7 54
		f 3 -9 -48 48
		mu 0 3 9 8 54
		f 3 -10 -49 49
		mu 0 3 10 9 54
		f 3 -11 -50 50
		mu 0 3 11 10 54
		f 3 -12 -51 51
		mu 0 3 12 11 54
		f 3 -13 -52 39
		mu 0 3 0 12 54
		f 3 13 53 -53
		mu 0 3 52 51 55
		f 3 14 54 -54
		mu 0 3 51 50 55
		f 3 15 55 -55
		mu 0 3 50 49 55
		f 3 16 56 -56
		mu 0 3 49 48 55
		f 3 17 57 -57
		mu 0 3 48 47 55
		f 3 18 58 -58
		mu 0 3 47 46 55
		f 3 19 59 -59
		mu 0 3 46 45 55
		f 3 20 60 -60
		mu 0 3 45 44 55
		f 3 21 61 -61
		mu 0 3 44 43 55
		f 3 22 62 -62
		mu 0 3 43 42 55
		f 3 23 63 -63
		mu 0 3 42 41 55
		f 3 24 64 -64
		mu 0 3 41 53 55
		f 3 25 52 -65
		mu 0 3 53 52 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder4";
	rename -uid "3832EECF-4181-A242-04DC-8FBEF9DF753C";
	setAttr ".t" -type "double3" 0 282.84381760720532 0 ;
	setAttr ".s" -type "double3" 79.106214162751613 13.21035080225642 79.106214162751613 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "031C8301-4FE2-DE41-9197-82B60195C738";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.68918612599372864 0.18570776283740997 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCylinder4";
	rename -uid "A56B023B-4F08-8E37-4735-41B3B388DF04";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5022701621055603 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.63835251 0.083637044
		 0.58876014 0.02765879 0.51883394 0.0011392236 0.44459301 0.010153681 0.38304523 0.052637056
		 0.34829035 0.11885691 0.34829032 0.19364303 0.3830452 0.2598629 0.44459298 0.30234629
		 0.51883382 0.31136078 0.58876014 0.28484124 0.63835251 0.228863 0.65625 0.15625 0.375
		 0.3125 0.39423078 0.3125 0.41346157 0.3125 0.43269235 0.3125 0.45192313 0.3125 0.47115391
		 0.3125 0.4903847 0.3125 0.50961548 0.3125 0.52884626 0.3125 0.54807705 0.3125 0.56730783
		 0.3125 0.58653861 0.3125 0.6057694 0.3125 0.62500018 0.3125 0.375 0.6875 0.39423078
		 0.6875 0.41346157 0.6875 0.43269235 0.6875 0.45192313 0.6875 0.47115391 0.6875 0.4903847
		 0.6875 0.50961548 0.6875 0.52884626 0.6875 0.54807705 0.6875 0.56730783 0.6875 0.58653861
		 0.6875 0.6057694 0.6875 0.62500018 0.6875 0.63835251 0.77113706 0.58876014 0.71515882
		 0.51883394 0.68863922 0.44459301 0.69765365 0.38304523 0.74013704 0.34829035 0.80635691
		 0.34829032 0.88114303 0.3830452 0.9473629 0.44459298 0.98984629 0.51883382 0.99886078
		 0.58876014 0.97234124 0.63835251 0.916363 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  0.88545626 -1 -0.4647229 0.56806505 -1 -0.82298374
		 0.12053701 -1 -0.99270892 -0.35460463 -1 -0.93501639 -0.7485106 -1 -0.66312283 -0.97094178 -1 -0.23931587
		 -0.97094184 -1 0.23931548 -0.74851084 -1 0.66312253 -0.35460499 -1 0.93501621 0.1205366 -1 0.99270892
		 0.56806469 -1 0.82298392 0.88545603 -1 0.4647232 1 -1 0 0.88545626 1 -0.4647229 0.56806505 1 -0.82298374
		 0.12053701 1 -0.99270892 -0.35460463 1 -0.93501639 -0.7485106 1 -0.66312283 -0.97094178 1 -0.23931587
		 -0.97094184 1 0.23931548 -0.74851084 1 0.66312253 -0.35460499 1 0.93501621 0.1205366 1 0.99270892
		 0.56806469 1 0.82298392 0.88545603 1 0.4647232 1 1 0 0 -1 0 0 1 0;
	setAttr -s 65 ".ed[0:64]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 13 0 0 13 1 1 14 1 2 15 1
		 3 16 1 4 17 1 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1 10 23 1 11 24 1 12 25 1 26 0 1 26 1 1
		 26 2 1 26 3 1 26 4 1 26 5 1 26 6 1 26 7 1 26 8 1 26 9 1 26 10 1 26 11 1 26 12 1 13 27 1
		 14 27 1 15 27 1 16 27 1 17 27 1 18 27 1 19 27 1 20 27 1 21 27 1 22 27 1 23 27 1 24 27 1
		 25 27 1;
	setAttr -s 39 -ch 130 ".fc[0:38]" -type "polyFaces" 
		f 4 0 27 -14 -27
		mu 0 4 13 14 28 27
		f 4 1 28 -15 -28
		mu 0 4 14 15 29 28
		f 4 2 29 -16 -29
		mu 0 4 15 16 30 29
		f 4 3 30 -17 -30
		mu 0 4 16 17 31 30
		f 4 4 31 -18 -31
		mu 0 4 17 18 32 31
		f 4 5 32 -19 -32
		mu 0 4 18 19 33 32
		f 4 6 33 -20 -33
		mu 0 4 19 20 34 33
		f 4 7 34 -21 -34
		mu 0 4 20 21 35 34
		f 4 8 35 -22 -35
		mu 0 4 21 22 36 35
		f 4 9 36 -23 -36
		mu 0 4 22 23 37 36
		f 4 10 37 -24 -37
		mu 0 4 23 24 38 37
		f 4 11 38 -25 -38
		mu 0 4 24 25 39 38
		f 4 12 26 -26 -39
		mu 0 4 25 26 40 39
		f 3 -1 -40 40
		mu 0 3 1 0 54
		f 3 -2 -41 41
		mu 0 3 2 1 54
		f 3 -3 -42 42
		mu 0 3 3 2 54
		f 3 -4 -43 43
		mu 0 3 4 3 54
		f 3 -5 -44 44
		mu 0 3 5 4 54
		f 3 -6 -45 45
		mu 0 3 6 5 54
		f 3 -7 -46 46
		mu 0 3 7 6 54
		f 3 -8 -47 47
		mu 0 3 8 7 54
		f 3 -9 -48 48
		mu 0 3 9 8 54
		f 3 -10 -49 49
		mu 0 3 10 9 54
		f 3 -11 -50 50
		mu 0 3 11 10 54
		f 3 -12 -51 51
		mu 0 3 12 11 54
		f 3 -13 -52 39
		mu 0 3 0 12 54
		f 3 13 53 -53
		mu 0 3 52 51 55
		f 3 14 54 -54
		mu 0 3 51 50 55
		f 3 15 55 -55
		mu 0 3 50 49 55
		f 3 16 56 -56
		mu 0 3 49 48 55
		f 3 17 57 -57
		mu 0 3 48 47 55
		f 3 18 58 -58
		mu 0 3 47 46 55
		f 3 19 59 -59
		mu 0 3 46 45 55
		f 3 20 60 -60
		mu 0 3 45 44 55
		f 3 21 61 -61
		mu 0 3 44 43 55
		f 3 22 62 -62
		mu 0 3 43 42 55
		f 3 23 63 -63
		mu 0 3 42 41 55
		f 3 24 64 -64
		mu 0 3 41 53 55
		f 3 25 52 -65
		mu 0 3 53 52 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder5";
	rename -uid "6C0503EA-457E-0C9F-9D98-968FF8018294";
	setAttr ".t" -type "double3" 0 608.62397523778907 0 ;
	setAttr ".s" -type "double3" 58.222290830761466 219.84994111547007 58.222290830761466 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "CD95C412-4BCA-84F8-272D-BDA3CF111C6C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.89094904065132141 0.49080036436821506 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" 0.96068454 0.45358986
		 0.93527091 0.42490375 0.89943713 0.41131377 0.86139232 0.41593322 0.8298521 0.43770388
		 0.81204194 0.47163829 0.81204194 0.50996244 0.8298521 0.54389679 0.86139232 0.56566745
		 0.89943713 0.57028693 0.93527091 0.55669701 0.96068454 0.52801096 0.96985614 0.49080044
		 0.0092890263 0.012219965 0.047612578 0.011988968 0.085936099 0.01175794 0.12425962
		 0.011526912 0.16258314 0.011295915 0.20090669 0.011064917 0.23923025 0.010833889
		 0.27755368 0.010602891 0.31587732 0.010371894 0.35420078 0.010140896 0.39252436 0.0099098682
		 0.43084785 0.0096788704 0.46917143 0.0094478726 0.50749493 0.009216845 0.012933999
		 0.61690801 0.051257521 0.61667699 0.089581043 0.61644596 0.12790459 0.61621499 0.16622812
		 0.61598396 0.20455164 0.61575294 0.24287522 0.61552197 0.28119868 0.61529094 0.31952226
		 0.61505997 0.35784572 0.61482894 0.39616933 0.61459792 0.43449283 0.61436695 0.47281626
		 0.61413592 0.51113987 0.61390495 0.40536079 0.8339175 0.37994713 0.80523133 0.34411341
		 0.79164135 0.3060686 0.79626083 0.27452835 0.81803143 0.25671819 0.8519659 0.25671819
		 0.89029008 0.27452835 0.92422456 0.30606854 0.94599521 0.34411338 0.95061469 0.37994713
		 0.93702471 0.40536079 0.90833861 0.41453239 0.87112808 0.88978571 0.49080044 0.33446196
		 0.87112796;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".vt[0:27]"  0.88545626 -1 -0.4647229 0.56806505 -1 -0.82298374
		 0.12053701 -1 -0.99270892 -0.35460463 -1 -0.93501639 -0.7485106 -1 -0.66312283 -0.97094178 -1 -0.23931587
		 -0.97094184 -1 0.23931548 -0.74851084 -1 0.66312253 -0.35460499 -1 0.93501621 0.1205366 -1 0.99270892
		 0.56806469 -1 0.82298392 0.88545603 -1 0.4647232 1 -1 0 0.88545626 1 -0.4647229 0.56806505 1 -0.82298374
		 0.12053701 1 -0.99270892 -0.35460463 1 -0.93501639 -0.7485106 1 -0.66312283 -0.97094178 1 -0.23931587
		 -0.97094184 1 0.23931548 -0.74851084 1 0.66312253 -0.35460499 1 0.93501621 0.1205366 1 0.99270892
		 0.56806469 1 0.82298392 0.88545603 1 0.4647232 1 1 0 0 -1 0 0 1 0;
	setAttr -s 65 ".ed[0:64]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 0 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 13 0 0 13 1 1 14 1 2 15 1
		 3 16 1 4 17 1 5 18 1 6 19 1 7 20 1 8 21 1 9 22 1 10 23 1 11 24 1 12 25 1 26 0 1 26 1 1
		 26 2 1 26 3 1 26 4 1 26 5 1 26 6 1 26 7 1 26 8 1 26 9 1 26 10 1 26 11 1 26 12 1 13 27 1
		 14 27 1 15 27 1 16 27 1 17 27 1 18 27 1 19 27 1 20 27 1 21 27 1 22 27 1 23 27 1 24 27 1
		 25 27 1;
	setAttr -s 39 -ch 130 ".fc[0:38]" -type "polyFaces" 
		f 4 0 27 -14 -27
		mu 0 4 13 14 28 27
		f 4 1 28 -15 -28
		mu 0 4 14 15 29 28
		f 4 2 29 -16 -29
		mu 0 4 15 16 30 29
		f 4 3 30 -17 -30
		mu 0 4 16 17 31 30
		f 4 4 31 -18 -31
		mu 0 4 17 18 32 31
		f 4 5 32 -19 -32
		mu 0 4 18 19 33 32
		f 4 6 33 -20 -33
		mu 0 4 19 20 34 33
		f 4 7 34 -21 -34
		mu 0 4 20 21 35 34
		f 4 8 35 -22 -35
		mu 0 4 21 22 36 35
		f 4 9 36 -23 -36
		mu 0 4 22 23 37 36
		f 4 10 37 -24 -37
		mu 0 4 23 24 38 37
		f 4 11 38 -25 -38
		mu 0 4 24 25 39 38
		f 4 12 26 -26 -39
		mu 0 4 25 26 40 39
		f 3 -1 -40 40
		mu 0 3 1 0 54
		f 3 -2 -41 41
		mu 0 3 2 1 54
		f 3 -3 -42 42
		mu 0 3 3 2 54
		f 3 -4 -43 43
		mu 0 3 4 3 54
		f 3 -5 -44 44
		mu 0 3 5 4 54
		f 3 -6 -45 45
		mu 0 3 6 5 54
		f 3 -7 -46 46
		mu 0 3 7 6 54
		f 3 -8 -47 47
		mu 0 3 8 7 54
		f 3 -9 -48 48
		mu 0 3 9 8 54
		f 3 -10 -49 49
		mu 0 3 10 9 54
		f 3 -11 -50 50
		mu 0 3 11 10 54
		f 3 -12 -51 51
		mu 0 3 12 11 54
		f 3 -13 -52 39
		mu 0 3 0 12 54
		f 3 13 53 -53
		mu 0 3 52 51 55
		f 3 14 54 -54
		mu 0 3 51 50 55
		f 3 15 55 -55
		mu 0 3 50 49 55
		f 3 16 56 -56
		mu 0 3 49 48 55
		f 3 17 57 -57
		mu 0 3 48 47 55
		f 3 18 58 -58
		mu 0 3 47 46 55
		f 3 19 59 -59
		mu 0 3 46 45 55
		f 3 20 60 -60
		mu 0 3 45 44 55
		f 3 21 61 -61
		mu 0 3 44 43 55
		f 3 22 62 -62
		mu 0 3 43 42 55
		f 3 23 63 -63
		mu 0 3 42 41 55
		f 3 24 64 -64
		mu 0 3 41 53 55
		f 3 25 52 -65
		mu 0 3 53 52 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6B68C4B8-42C8-E775-35E9-2E9A6D8B1AB2";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4736A9BC-4F32-5369-CCBD-19B82148A6BC";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EB1C1155-407E-646A-C309-61A58B29BC15";
createNode displayLayerManager -n "layerManager";
	rename -uid "443CBFC3-458B-1C82-3D85-058B3F0E2236";
createNode displayLayer -n "defaultLayer";
	rename -uid "081CEC13-4804-6810-157E-DFA9AF536099";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "16BECFC7-4190-9554-0354-FCA38ACB90CF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E8C397EC-4912-3A32-8EE7-4F91813DEE17";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "249935B9-4014-7364-D418-7C8993E9A19D";
	setAttr ".sa" 13;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "1D7BAAED-4742-AD1D-EB43-B5BA92ACF194";
	setAttr ".ics" -type "componentList" 1 "f[13:38]";
	setAttr ".ix" -type "matrix" 79.106214162751613 0 0 0 0 13.21035080225642 0 0 0 0 79.106214162751613 0
		 0 245.0187304051899 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1493405 245.01874 0 ;
	setAttr ".rs" 54252;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -76.807533261370011 231.80837960293348 -78.529444540113118 ;
	setAttr ".cbx" -type "double3" 79.106214162751613 258.22908120744631 78.529444540113118 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "7DD277EC-4883-5EAE-57A6-10986A0B3AF0";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[26:53]" -type "float3"  -0.33498657 0 0.1838292 -0.21290775
		 0 0.32554564 0.0055883629 0 0 -0.040774081 0 0.39268351 0.14198069 0 0.36986217 0.29348972
		 0 0.26230973 0.37904379 0 0.094665512 0.37904379 0 -0.09466543 0.29348969 0 -0.2623097
		 0.14198081 0 -0.36986214 -0.040773902 0 -0.39268351 -0.21290745 0 -0.3255457 -0.33498648
		 0 -0.18382929 -0.37904379 0 0 -0.33498657 0 0.1838292 -0.21290775 0 0.32554564 0.0055883629
		 0 0 -0.040774081 0 0.39268351 0.14198069 0 0.36986217 0.29348972 0 0.26230973 0.37904379
		 0 0.094665512 0.37904379 0 -0.09466543 0.29348969 0 -0.2623097 0.14198081 0 -0.36986214
		 -0.040773902 0 -0.39268351 -0.21290745 0 -0.3255457 -0.33498648 0 -0.18382929 -0.37904379
		 0 0;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "4288305E-427C-9833-86A9-3D8BBCA37036";
	setAttr ".dc" -type "componentList" 1 "f[26:38]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "BB5A29C9-4360-84FE-45A0-1C875B4BD585";
	setAttr ".dc" -type "componentList" 1 "f[13:25]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "0B9407E3-4273-E83F-4F20-79A52B985E96";
	setAttr ".ics" -type "componentList" 24 "e[41]" "e[43]" "e[45]" "e[47]" "e[49]" "e[51]" "e[53]" "e[55]" "e[57]" "e[59]" "e[61]" "e[63:64]" "e[67]" "e[69]" "e[71]" "e[73]" "e[75]" "e[77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[89:90]";
	setAttr ".ix" -type "matrix" 79.106214162751613 0 0 0 0 13.21035080225642 0 0 0 0 79.106214162751613 0
		 0 245.0187304051899 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 27;
	setAttr ".sv2" 40;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode phong -n "M_MannequinUE4_Body";
	rename -uid "E1C54083-4508-4845-D04D-2FAF7E282F06";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG";
	rename -uid "C4F6DC9C-4B14-FF8E-C2F0-2B8567F97346";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "94EB82F6-4785-BE49-993B-AD9B3348238A";
createNode phong -n "M_MannequinUE4_ChestLogo";
	rename -uid "0E01A90E-40E6-183F-99D6-CB9963AFC4C9";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG1";
	rename -uid "F7A9A501-459C-85F4-3DF1-E49764B699BC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "20F70BCE-48C3-1457-01CC-BCBFDE5EA25F";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "A6D5FC59-457A-CC59-4B1C-538B40823A4F";
	setAttr ".version" -type "string" "5.3.2.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "B76C1653-4FA0-1D13-9C9C-549B0F09A953";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "618179D2-4631-D116-4AC2-30AAA32B590B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "FDA07258-4DE5-A86C-CBE0-3796E86758BD";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D8A90F77-4499-3108-9383-C390FEEBDC77";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1301\n            -height 705\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1301\\n    -height 705\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1301\\n    -height 705\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 100 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BCB82E63-4D9D-39B3-1DF9-DC8F5E8826D0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "88E150C6-4A3D-1646-2A48-74875DF531AA";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk[0:55]" -type "float2" 0.16000521 0.45143005 0.18418396
		 0.47872221 0.21827638 0.4916518 0.25447249 0.48725682 0.28448007 0.46654412 0.30142477
		 0.43425861 0.3014248 0.39779672 0.28448009 0.36551133 0.25447252 0.34479854 0.2182765
		 0.34040353 0.18418396 0.35333309 0.16000521 0.38062528 0.15127939 0.41602769 0.065494224
		 0.42296311 0.084587261 0.42278513 0.10368025 0.42260727 0.12277335 0.42242917 0.14186639
		 0.42225131 0.16095948 0.42207333 0.18005246 0.42189535 0.19914553 0.42171738 0.2182385
		 0.42153928 0.23733154 0.42136142 0.25642458 0.42118356 0.27551755 0.42100558 0.29461059
		 0.4208276 0.3137036 0.42064974 0.066613242 0.28892729 0.085706234 0.28874943 0.10479923
		 0.28857145 0.12389237 0.28839347 0.14298534 0.28821549 0.16207838 0.28803763 0.18117145
		 0.28785965 0.20026448 0.28768155 0.21935752 0.28750369 0.23845062 0.28732571 0.25754347
		 0.28714761 0.27663657 0.28696963 0.29572955 0.28679165 0.31482261 0.28661391 -0.41150698
		 -0.1128642 -0.3873283 -0.085572124 -0.35323584 -0.072642446 -0.3170397 -0.077037394
		 -0.28703213 -0.097750187 -0.27008742 -0.13003558 -0.27008739 -0.16649753 -0.28703213
		 -0.19878298 -0.3170397 -0.21949571 -0.35323572 -0.22389072 -0.3873283 -0.21096116
		 -0.41150698 -0.18366897 -0.42023289 -0.14826655 0.22745889 0.41602769 -0.34405333
		 -0.14826661;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "4B678F1A-4354-A35F-1292-9D84604AD506";
	setAttr ".uopa" yes;
	setAttr -s 80 ".uvtk[0:79]" -type "float2" 0.13329268 -0.053407207 0.10152054
		 -0.018444479 0.088574767 0.02769804 0.09815383 0.075741768 0.12984529 0.11506434
		 0.17808786 0.13489261 0.22950423 0.12951022 0.27227068 0.10233831 0.29685178 0.056971312
		 0.29632503 0.0049222708 0.2706908 -0.04025647 0.22712922 -0.067293167 0.17735946
		 -0.070830792 -0.36571097 0.54792291 -0.33817208 0.52503258 -0.31063315 0.50214219
		 -0.28309426 0.47925174 -0.25555533 0.45636135 -0.22801644 0.43347096 -0.20047754
		 0.41058064 -0.17293864 0.38769019 -0.14539972 0.3647998 -0.11786082 0.34190947 -0.090321928
		 0.31901908 -0.062782943 0.29612863 -0.035244107 0.27323824 -0.0077052712 0.25034785
		 -0.34973797 0.20555902 -0.32219908 0.18266863 -0.29466015 0.15977824 -0.26712126
		 0.13688779 -0.23958236 0.11399746 -0.2120434 0.09110707 -0.18450451 0.068216681 -0.15696561
		 0.045326233 -0.12942672 0.022435904 -0.10188782 -0.00045448542 -0.074348927 -0.023344874
		 -0.046809971 -0.046235323 -0.019271076 -0.069125712 0.0082677603 -0.092016041 0.13741612
		 -0.59884953 0.18257427 -0.50160885 0.2314567 -0.44142982 0.2708627 -0.43064308 0.2913048
		 -0.47234759 0.28816667 -0.55354261 0.26614517 -0.66083014 0.22646594 -0.76833212
		 0.17794624 -0.84975624 0.13267314 -0.88600075 0.10313714 -0.87029362 0.0929901 -0.80598104
		 0.10575116 -0.70852792 0.10088694 0.030156344 0.11083806 -0.011250302 0.11072272
		 0.071798116 0.13843346 0.10444108 0.17837277 0.12099116 0.22341833 0.11637303 0.260692
		 0.091427982 0.28139544 0.054229856 0.28212312 0.0097393394 0.26167935 -0.030214548
		 0.22455692 -0.055713207 0.17981756 -0.060516268 0.13864148 -0.043627381 0.099921882
		 -0.82427168 0.10021204 -0.89167327 0.12072408 -0.90484273 0.15710792 -0.86149728
		 0.19916129 -0.77169013 0.24448061 -0.65515393 0.27709016 -0.54079407 0.28504768 -0.44665658
		 0.27473164 -0.40734607 0.24496663 -0.42352813 0.20247638 -0.49248719 0.15749061 -0.59867674
		 0.11784518 -0.71677262;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 5 ".dsm";
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
connectAttr "polyTweakUV1.out" "pCylinderShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyTweakUV2.out" "pCylinderShape4.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCylinderShape4.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape4.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape4.wm" "polyBridgeEdge1.mp";
connectAttr "M_MannequinUE4_Body.oc" "SK_MannequinSG.ss";
connectAttr "SK_MannequinSG.msg" "materialInfo1.sg";
connectAttr "M_MannequinUE4_Body.msg" "materialInfo1.m";
connectAttr "M_MannequinUE4_ChestLogo.oc" "SK_MannequinSG1.ss";
connectAttr "SK_MannequinSG1.msg" "materialInfo2.sg";
connectAttr "M_MannequinUE4_ChestLogo.msg" "materialInfo2.m";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCylinder1.out" "polyTweakUV1.ip";
connectAttr "polyBridgeEdge1.out" "polyTweakUV2.ip";
connectAttr "SK_MannequinSG.pa" ":renderPartition.st" -na;
connectAttr "SK_MannequinSG1.pa" ":renderPartition.st" -na;
connectAttr "M_MannequinUE4_Body.msg" ":defaultShaderList1.s" -na;
connectAttr "M_MannequinUE4_ChestLogo.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog" ":initialShadingGroup.dsm" -na;
// End of Colone_blocking_01.ma
