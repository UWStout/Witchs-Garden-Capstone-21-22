//Maya ASCII 2020 scene
//Name: Spell.ma
//Last modified: Fri, Mar 11, 2022 12:45:24 AM
//Codeset: 1252
file -rdi 1 -ns "Witch" -rfn "WitchRN" -op "VERS|2020|UVER|undef|MADE|undef|CHNG|Sun, Nov 21, 2021 10:52:15 PM|ICON|undef|INFO|undef|OBJN|2312|INCL|D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/ExportFiles/Witch_Export.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/AnimRigs/Witch.mb";
file -rdi 2 -ns ":" -rfn "Witch:Witch_ExportRN" -op "VERS|2020|UVER|undef|MADE|undef|CHNG|Sun, Dec 05, 2021 05:37:53 PM|ICON|undef|INFO|undef|OBJN|14610|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/ExportFiles/Witch_Export.mb";
file -r -ns "Witch" -dr 1 -rfn "WitchRN" -op "VERS|2020|UVER|undef|MADE|undef|CHNG|Sun, Nov 21, 2021 10:52:15 PM|ICON|undef|INFO|undef|OBJN|2312|INCL|D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/ExportFiles/Witch_Export.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/AnimRigs/Witch.mb";
requires maya "2020";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19044)\n";
fileInfo "UUID" "7EDF5407-49A4-4833-A62D-C2BFD0AEC17D";
createNode transform -s -n "persp";
	rename -uid "692FAAD1-43D8-C5DB-6D90-449A0514A039";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -117.87748577190189 -433.83687929139126 200.81900422970037 ;
	setAttr ".r" -type "double3" 70.282924915799839 7.951386703658789e-16 2866.7949198326482 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A65C344-42C5-F928-4B59-579576E31AAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 474.34357089711784;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -16.744764885410177 -10.984532806223134 0.50187284867513116 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E39B2780-421C-7D21-DE8D-34A05F9CD2C7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F8B18310-4C01-47FF-37AB-31B6D9BB2DA0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 137.87393171142122;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "92FAD20B-4623-4555-15AD-4FBF78769B4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -19.587507017624912 -1002.4559840244749 97.58988811068248 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D3461B45-4BC1-9294-2D5D-C4B7DFDCF724";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.5055658642272;
	setAttr ".ow" 165.76603661516668;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 8.8817841970012523e-15 1.0495818397522889 68.72361677452605 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "68B2002C-4D7E-E55F-B49B-94B7EF45133C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1002.3715254580836 -39.633251464817299 117.29681121454419 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9F5B9B9E-4564-5540-9A36-7CB2DEF02884";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 995.60955532970956;
	setAttr ".ow" 140.74166438085442;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 6.761970128374049 -39.633251464817299 117.29681121454419 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "WitchRNfosterParent1";
	rename -uid "DB16BE71-442F-2B97-3827-CC8840636746";
createNode parentConstraint -n "Wand_anim_parentConstraint1" -p "WitchRNfosterParent1";
	rename -uid "C5AE249B-4D1E-1807-FEDF-18945CB1D215";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_wrist_r_animW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -8.5456012385927593 -0.25727233233224212 2.3529540092032377 ;
	setAttr ".tg[0].tor" -type "double3" -0.98311009794789483 9.6898749528243258 160.32735529319558 ;
	setAttr ".lr" -type "double3" 98.298903698833527 124.07759759143886 8.1371947822445758 ;
	setAttr ".rst" -type "double3" 22.002342369592132 14.845753467698767 -19.451818753362076 ;
	setAttr ".rsrr" -type "double3" 98.32418128119339 124.07962541903176 8.1581314344560241 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E7DFFF73-4F2A-FF1A-792F-BAA7819B6197";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4CB0BBFE-479B-9F5A-05E5-A4B524C9305A";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A5F04CDC-404B-91CA-D45A-A982A40C278E";
createNode displayLayerManager -n "layerManager";
	rename -uid "B790BB11-40FF-A7BE-C93B-8AAC61432279";
createNode displayLayer -n "defaultLayer";
	rename -uid "C42CFCA3-487B-5B32-E35F-A898CFAA1B3A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DB861259-434E-3895-6608-3FA5441AC2A1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0E5CA2FB-49CD-DF62-D0E3-DFB225C3732C";
	setAttr ".g" yes;
createNode reference -n "WitchRN";
	rename -uid "8FEDEF39-4BD5-5428-2F3C-FABE760122E6";
	setAttr -s 180 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"WitchRN"
		"WitchRN" 60
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleX" " -k 0 0.99999999999999978"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleY" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleZ" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"translateX" " -k 0 13.96543206943769277"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"scaleY" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"scaleZ" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"scaleY" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"scaleZ" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"scaleX" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"scaleX" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"translateZ" " -k 0 0"
		"Witch:Witch_ExportRN" 0
		"WitchRN" 999
		0 "|WitchRNfosterParent1|Wand_anim_parentConstraint1" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"-s -r "
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_clavicle_l_anim_grp|Witch:fk_clavicle_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:index_l_ik_anim_grp|Witch:index_l_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:middle_l_ik_anim_grp|Witch:middle_l_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:ring_l_ik_anim_grp|Witch:ring_l_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:pinky_l_ik_anim_grp|Witch:pinky_l_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:thumb_l_ik_anim_grp|Witch:thumb_l_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_l_anim_space_switcher_follow|Witch:ik_elbow_l_anim_space_switcher|Witch:ik_elbow_l_anim_grp|Witch:ik_elbow_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_l|Witch:upperarm_l_twist_anim_grp|Witch:upperarm_l_twist_driven_grp|Witch:upperarm_l_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_l_roll_grp|Witch:lowerarm_l_twist_joint|Witch:lowerarm_l_twist_mod|Witch:lowerarm_l_twist_anim_grp|Witch:lowerarm_l_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_clavicle_r_anim_grp|Witch:fk_clavicle_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:index_r_ik_anim_grp|Witch:index_r_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:middle_r_ik_anim_grp|Witch:middle_r_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:ring_r_ik_anim_grp|Witch:ring_r_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:pinky_r_ik_anim_grp|Witch:pinky_r_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:thumb_r_ik_anim_grp|Witch:thumb_r_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_r_anim_space_switcher_follow|Witch:ik_elbow_r_anim_space_switcher|Witch:ik_elbow_r_anim_grp|Witch:ik_elbow_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_r|Witch:upperarm_r_twist_anim_grp|Witch:upperarm_r_twist_driven_grp|Witch:upperarm_r_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_r_roll_grp|Witch:lowerarm_r_twist_joint|Witch:lowerarm_r_twist_mod|Witch:lowerarm_r_twist_anim_grp|Witch:lowerarm_r_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim|Witch:spine_03_anim_grp|Witch:spine_03_anim_offset_grp|Witch:spine_03_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim|Witch:fk_ball_l_anim_grp|Witch:fk_ball_l_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:thigh_twist_grp_l|Witch:l_thigh_twist_01_anim_grp|Witch:l_thigh_twist_01_driven_grp|Witch:l_thigh_twist_01_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:calf_l_roll_grp|Witch:calf_l_twist_joint|Witch:calf_l_twist_mod|Witch:calf_l_twist_anim_grp|Witch:calf_l_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:calf_r_roll_grp|Witch:calf_r_twist_joint|Witch:calf_r_twist_mod|Witch:calf_r_twist_anim_grp|Witch:calf_r_twist_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:index_l_poleVector_grp|Witch:index_l_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:middle_l_poleVector_grp|Witch:middle_l_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:ring_l_poleVector_grp|Witch:ring_l_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:pinky_l_poleVector_grp|Witch:pinky_l_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:thumb_l_poleVector_grp|Witch:thumb_l_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:index_r_poleVector_grp|Witch:index_r_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:middle_r_poleVector_grp|Witch:middle_r_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:ring_r_poleVector_grp|Witch:ring_r_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:pinky_r_poleVector_grp|Witch:pinky_r_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:thumb_r_poleVector_grp|Witch:thumb_r_poleVector 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim 
		"buttonName" "buttonName" " -ci 1 -dt \"string\""
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button64\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button65\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotate" " -type \"double3\" 8.6682886561511836 27.17240931326937314 4.1990496598680398"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button38\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotate" " -type \"double3\" -2.95947612223547152 1.58232035351266775 -0.1896984870424695"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button40\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotate" " -type \"double3\" -8.27139457600461014 0.43740600480431019 -1.36220590439721212"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button42\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotate" " -type \"double3\" 0 8.41938403921334277 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"autoShoulders" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_clavicle_l_anim_grp|Witch:fk_clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button46\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button119\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:index_l_ik_anim_grp|Witch:index_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button107\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:middle_l_ik_anim_grp|Witch:middle_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button108\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:ring_l_ik_anim_grp|Witch:ring_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button109\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:pinky_l_ik_anim_grp|Witch:pinky_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button110\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:thumb_l_ik_anim_grp|Witch:thumb_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button111\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_l_anim_space_switcher_follow|Witch:ik_elbow_l_anim_space_switcher|Witch:ik_elbow_l_anim_grp|Witch:ik_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button44\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_l|Witch:upperarm_l_twist_anim_grp|Witch:upperarm_l_twist_driven_grp|Witch:upperarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button75\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_l_roll_grp|Witch:lowerarm_l_twist_joint|Witch:lowerarm_l_twist_mod|Witch:lowerarm_l_twist_anim_grp|Witch:lowerarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button77\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotate" " -type \"double3\" 8.79846909024266033 28.76222352639633328 4.47579672596179634"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button39\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotate" " -type \"double3\" -3.69564221508455759 1.58490601662936537 -0.21409548772147224"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button41\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotate" " -type \"double3\" -7.54862457199030246 0.38908356204624822 -1.356404922970051"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button43\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotate" " -type \"double3\" 0 -7.74722111196089358 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotatePivot" " -type \"double3\" -12.81598183692610604 1.66503360760722385 96.71278242793469815"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"scalePivot" " -type \"double3\" -12.81598183692610604 1.66503360760722385 96.71278242793469815"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"autoShoulders" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_clavicle_r_anim_grp|Witch:fk_clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button47\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button156\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:index_r_ik_anim_grp|Witch:index_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button144\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:middle_r_ik_anim_grp|Witch:middle_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button145\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:ring_r_ik_anim_grp|Witch:ring_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button146\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:pinky_r_ik_anim_grp|Witch:pinky_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button147\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:thumb_r_ik_anim_grp|Witch:thumb_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button148\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_r_anim_space_switcher_follow|Witch:ik_elbow_r_anim_space_switcher|Witch:ik_elbow_r_anim_grp|Witch:ik_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button45\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_r|Witch:upperarm_r_twist_anim_grp|Witch:upperarm_r_twist_driven_grp|Witch:upperarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button76\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_r_roll_grp|Witch:lowerarm_r_twist_joint|Witch:lowerarm_r_twist_mod|Witch:lowerarm_r_twist_anim_grp|Witch:lowerarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button78\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button34\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button31\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button32\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim|Witch:spine_03_anim_grp|Witch:spine_03_anim_offset_grp|Witch:spine_03_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button33\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button29\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotate" " -type \"double3\" 0 0 -1.44414383884711528"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"stretch" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"squash" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"twist_amount" " -av -k 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"autoSpine" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotationInfluence" " -av -k 1 0.25"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button30\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"lCalfTwistCtrlVis" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rCalfTwistCtrlVis" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"autoHips" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button35\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"knee_twist" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"stretch" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"squash" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"toeCtrlVis" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"stretchBias" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button56\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button60\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"heelPivot" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"ballPivot" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button58\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button62\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button48\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button50\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button52\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim|Witch:fk_ball_l_anim_grp|Witch:fk_ball_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button54\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:thigh_twist_grp_l|Witch:l_thigh_twist_01_anim_grp|Witch:l_thigh_twist_01_driven_grp|Witch:l_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button79\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:calf_l_roll_grp|Witch:calf_l_twist_joint|Witch:calf_l_twist_mod|Witch:calf_l_twist_anim_grp|Witch:calf_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button81\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"knee_twist" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"stretch" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"squash" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"toeCtrlVis" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"stretchBias" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button57\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button61\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"heelPivot" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"ballPivot" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button59\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button63\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"rotatePivot" " -type \"double3\" -13.96543206943768922 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"scalePivot" " -type \"double3\" -13.96543206943768922 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button49\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button51\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button53\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button55\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999978"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button80\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:calf_r_roll_grp|Witch:calf_r_twist_joint|Witch:calf_r_twist_mod|Witch:calf_r_twist_anim_grp|Witch:calf_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button82\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"fkOrientation" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button28\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"fkOrientation" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button27\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:index_l_poleVector_grp|Witch:index_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button113\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:middle_l_poleVector_grp|Witch:middle_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button114\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:ring_l_poleVector_grp|Witch:ring_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button115\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:pinky_l_poleVector_grp|Witch:pinky_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button116\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:thumb_l_poleVector_grp|Witch:thumb_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button117\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button92\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button93\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button94\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button89\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button90\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button91\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button86\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button87\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button88\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button83\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button84\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button85\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button95\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button96\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button97\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:index_r_poleVector_grp|Witch:index_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button150\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:middle_r_poleVector_grp|Witch:middle_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button151\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:ring_r_poleVector_grp|Witch:ring_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button152\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:pinky_r_poleVector_grp|Witch:pinky_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button153\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:thumb_r_poleVector_grp|Witch:thumb_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button154\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 66.07149232728733068"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button129\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button130\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button131\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 71.60456396554074843"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button126\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button127\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button128\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 85.18557081068784953"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button123\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button124\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button125\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 75.03641042388623816"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button120\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button121\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button122\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 45.6107733401825044 -1.69462428132961218 16.51594399925342316"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"sticky" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button132\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button133\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button134\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"translate" " -type \"double3\" 22.00234236959212453 14.85591387963524213 -19.45327077348086675"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"rotate" " -type \"double3\" 98.29890369883352719 124.07759759143885958 8.13719478224457582"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"scale" " -type \"double3\" 1.00000000000000044 1 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"scaleX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"scaleY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"scaleZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button66\""
		
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateX" 
		"WitchRN.placeHolderList[1]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateY" 
		"WitchRN.placeHolderList[2]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateZ" 
		"WitchRN.placeHolderList[3]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.rotateX" 
		"WitchRN.placeHolderList[4]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.rotateY" 
		"WitchRN.placeHolderList[5]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.rotateZ" 
		"WitchRN.placeHolderList[6]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateX" 
		"WitchRN.placeHolderList[7]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateY" 
		"WitchRN.placeHolderList[8]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateZ" 
		"WitchRN.placeHolderList[9]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateX" 
		"WitchRN.placeHolderList[10]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateY" 
		"WitchRN.placeHolderList[11]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateZ" 
		"WitchRN.placeHolderList[12]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateX" 
		"WitchRN.placeHolderList[13]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateY" 
		"WitchRN.placeHolderList[14]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateZ" 
		"WitchRN.placeHolderList[15]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateX" 
		"WitchRN.placeHolderList[16]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateY" 
		"WitchRN.placeHolderList[17]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateZ" 
		"WitchRN.placeHolderList[18]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateX" 
		"WitchRN.placeHolderList[19]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateY" 
		"WitchRN.placeHolderList[20]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateZ" 
		"WitchRN.placeHolderList[21]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.autoShoulders" 
		"WitchRN.placeHolderList[22]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateX" 
		"WitchRN.placeHolderList[23]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateY" 
		"WitchRN.placeHolderList[24]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateZ" 
		"WitchRN.placeHolderList[25]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateX" 
		"WitchRN.placeHolderList[26]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateY" 
		"WitchRN.placeHolderList[27]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateZ" 
		"WitchRN.placeHolderList[28]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.scale" 
		"WitchRN.placeHolderList[29]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translate" 
		"WitchRN.placeHolderList[30]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivot" 
		"WitchRN.placeHolderList[31]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[32]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotate" 
		"WitchRN.placeHolderList[33]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateX" 
		"WitchRN.placeHolderList[34]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateY" 
		"WitchRN.placeHolderList[35]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateZ" 
		"WitchRN.placeHolderList[36]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateOrder" 
		"WitchRN.placeHolderList[37]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.parentMatrix" 
		"WitchRN.placeHolderList[38]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateX" 
		"WitchRN.placeHolderList[39]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateY" 
		"WitchRN.placeHolderList[40]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateZ" 
		"WitchRN.placeHolderList[41]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateX" 
		"WitchRN.placeHolderList[42]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateY" 
		"WitchRN.placeHolderList[43]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateZ" 
		"WitchRN.placeHolderList[44]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateX" 
		"WitchRN.placeHolderList[45]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateY" 
		"WitchRN.placeHolderList[46]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateZ" 
		"WitchRN.placeHolderList[47]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateX" 
		"WitchRN.placeHolderList[48]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateY" 
		"WitchRN.placeHolderList[49]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateZ" 
		"WitchRN.placeHolderList[50]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.translateX" 
		"WitchRN.placeHolderList[51]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.translateY" 
		"WitchRN.placeHolderList[52]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.translateZ" 
		"WitchRN.placeHolderList[53]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.rotateX" 
		"WitchRN.placeHolderList[54]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.rotateY" 
		"WitchRN.placeHolderList[55]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim.rotateZ" 
		"WitchRN.placeHolderList[56]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateX" 
		"WitchRN.placeHolderList[57]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateY" 
		"WitchRN.placeHolderList[58]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateZ" 
		"WitchRN.placeHolderList[59]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateX" 
		"WitchRN.placeHolderList[60]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateY" 
		"WitchRN.placeHolderList[61]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateZ" 
		"WitchRN.placeHolderList[62]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.stretch" 
		"WitchRN.placeHolderList[63]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.squash" 
		"WitchRN.placeHolderList[64]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.twist_amount" 
		"WitchRN.placeHolderList[65]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotationInfluence" 
		"WitchRN.placeHolderList[66]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.autoSpine" 
		"WitchRN.placeHolderList[67]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateX" 
		"WitchRN.placeHolderList[68]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateY" 
		"WitchRN.placeHolderList[69]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateZ" 
		"WitchRN.placeHolderList[70]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.autoHips" 
		"WitchRN.placeHolderList[71]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateX" 
		"WitchRN.placeHolderList[72]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateY" 
		"WitchRN.placeHolderList[73]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateZ" 
		"WitchRN.placeHolderList[74]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.lCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[75]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[76]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateX" 
		"WitchRN.placeHolderList[77]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateY" 
		"WitchRN.placeHolderList[78]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateZ" 
		"WitchRN.placeHolderList[79]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateX" 
		"WitchRN.placeHolderList[80]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateY" 
		"WitchRN.placeHolderList[81]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateZ" 
		"WitchRN.placeHolderList[82]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.knee_twist" 
		"WitchRN.placeHolderList[83]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.stretchBias" 
		"WitchRN.placeHolderList[84]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.stretch" 
		"WitchRN.placeHolderList[85]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.squash" 
		"WitchRN.placeHolderList[86]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.toeCtrlVis" 
		"WitchRN.placeHolderList[87]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateY" 
		"WitchRN.placeHolderList[88]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateZ" 
		"WitchRN.placeHolderList[89]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateX" 
		"WitchRN.placeHolderList[90]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateX" 
		"WitchRN.placeHolderList[91]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateY" 
		"WitchRN.placeHolderList[92]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateZ" 
		"WitchRN.placeHolderList[93]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateX" 
		"WitchRN.placeHolderList[94]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateY" 
		"WitchRN.placeHolderList[95]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateZ" 
		"WitchRN.placeHolderList[96]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.knee_twist" 
		"WitchRN.placeHolderList[97]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretchBias" 
		"WitchRN.placeHolderList[98]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretch" 
		"WitchRN.placeHolderList[99]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.squash" 
		"WitchRN.placeHolderList[100]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.toeCtrlVis" 
		"WitchRN.placeHolderList[101]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[102]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateZ" 
		"WitchRN.placeHolderList[103]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[104]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.heelPivot" 
		"WitchRN.placeHolderList[105]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.ballPivot" 
		"WitchRN.placeHolderList[106]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[107]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateZ" 
		"WitchRN.placeHolderList[108]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[109]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateX" 
		"WitchRN.placeHolderList[110]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateY" 
		"WitchRN.placeHolderList[111]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateZ" 
		"WitchRN.placeHolderList[112]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateX" 
		"WitchRN.placeHolderList[113]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateY" 
		"WitchRN.placeHolderList[114]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateZ" 
		"WitchRN.placeHolderList[115]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateX" 
		"WitchRN.placeHolderList[116]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateY" 
		"WitchRN.placeHolderList[117]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateZ" 
		"WitchRN.placeHolderList[118]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateX" 
		"WitchRN.placeHolderList[119]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateY" 
		"WitchRN.placeHolderList[120]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateZ" 
		"WitchRN.placeHolderList[121]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateZ" 
		"WitchRN.placeHolderList[122]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim.rotateX" 
		"WitchRN.placeHolderList[123]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.scaleX" 
		"WitchRN.placeHolderList[124]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.scaleY" 
		"WitchRN.placeHolderList[125]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.scaleZ" 
		"WitchRN.placeHolderList[126]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.translateX" 
		"WitchRN.placeHolderList[127]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.translateY" 
		"WitchRN.placeHolderList[128]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.translateZ" 
		"WitchRN.placeHolderList[129]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.rotateX" 
		"WitchRN.placeHolderList[130]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.rotateY" 
		"WitchRN.placeHolderList[131]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim.rotateZ" 
		"WitchRN.placeHolderList[132]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.scaleX" 
		"WitchRN.placeHolderList[133]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.scaleY" 
		"WitchRN.placeHolderList[134]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.scaleZ" 
		"WitchRN.placeHolderList[135]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.translateX" 
		"WitchRN.placeHolderList[136]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.translateY" 
		"WitchRN.placeHolderList[137]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.translateZ" 
		"WitchRN.placeHolderList[138]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.rotateX" 
		"WitchRN.placeHolderList[139]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.rotateY" 
		"WitchRN.placeHolderList[140]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim.rotateZ" 
		"WitchRN.placeHolderList[141]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.scaleX" 
		"WitchRN.placeHolderList[142]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.scaleY" 
		"WitchRN.placeHolderList[143]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.scaleZ" 
		"WitchRN.placeHolderList[144]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.translateX" 
		"WitchRN.placeHolderList[145]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.translateY" 
		"WitchRN.placeHolderList[146]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.translateZ" 
		"WitchRN.placeHolderList[147]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.rotateX" 
		"WitchRN.placeHolderList[148]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.rotateY" 
		"WitchRN.placeHolderList[149]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim.rotateZ" 
		"WitchRN.placeHolderList[150]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateX" 
		"WitchRN.placeHolderList[151]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateY" 
		"WitchRN.placeHolderList[152]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateZ" 
		"WitchRN.placeHolderList[153]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivot" 
		"WitchRN.placeHolderList[154]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[155]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateX" 
		"WitchRN.placeHolderList[156]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateY" 
		"WitchRN.placeHolderList[157]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateZ" 
		"WitchRN.placeHolderList[158]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateOrder" 
		"WitchRN.placeHolderList[159]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.parentInverseMatrix" 
		"WitchRN.placeHolderList[160]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.scaleX" 
		"WitchRN.placeHolderList[161]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.scaleY" 
		"WitchRN.placeHolderList[162]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.scaleZ" 
		"WitchRN.placeHolderList[163]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.translateX" 
		"WitchRN.placeHolderList[164]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.translateY" 
		"WitchRN.placeHolderList[165]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.translateZ" 
		"WitchRN.placeHolderList[166]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.rotateX" 
		"WitchRN.placeHolderList[167]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.rotateY" 
		"WitchRN.placeHolderList[168]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim.rotateZ" 
		"WitchRN.placeHolderList[169]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.scaleX" 
		"WitchRN.placeHolderList[170]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.scaleY" 
		"WitchRN.placeHolderList[171]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.scaleZ" 
		"WitchRN.placeHolderList[172]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.translateX" 
		"WitchRN.placeHolderList[173]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.translateY" 
		"WitchRN.placeHolderList[174]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.translateZ" 
		"WitchRN.placeHolderList[175]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.rotateX" 
		"WitchRN.placeHolderList[176]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.rotateY" 
		"WitchRN.placeHolderList[177]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim.rotateZ" 
		"WitchRN.placeHolderList[178]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.lArmMode" "WitchRN.placeHolderList[179]" 
		""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.rArmMode" "WitchRN.placeHolderList[180]" 
		""
		"Witch:Witch_ExportRN" 6
		2 "|Witch:witch" "visibility" " -av 1"
		2 "Witch:pasted__layer1" "displayType" " 1"
		2 "Witch:pasted__layer1" "visibility" " 1"
		2 "Witch:pasted__layer1" "hideOnPlayback" " 0"
		2 "Witch:layer1" "displayType" " 1"
		2 "Witch:layer1" "visibility" " 1";
lockNode -l 1 ;
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "56E33285-45D5-D0E3-4903-1281DF4B3343";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D9B6E65B-44DE-C41F-4D72-41A3E0F3B5C3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1250\n            -height 725\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1250\n            -height 725\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1250\n            -height 725\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2508\n            -height 1516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2508\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2508\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8957C334-4823-404C-03FC-1298E9D42CC2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 58 -ast 0 -aet 58 ";
	setAttr ".st" 6;
createNode animCurveTU -n "Rig_Settings_lArmMode";
	rename -uid "BE42BAE7-4DDD-574F-0121-5A86464722F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig_Settings_rArmMode";
	rename -uid "7450D7A2-4E15-6D1E-33FE-1A8236F946E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "ik_foot_anim_r_translateX";
	rename -uid "1C31B43B-4A72-218A-2055-329FA2329593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ik_foot_anim_r_translateY";
	rename -uid "48D9DA0E-4D61-C594-B6D0-F0BB6C74C0E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ik_foot_anim_r_translateZ";
	rename -uid "EFE08BC8-4D67-CEBD-9CFA-25A0E0D1ABE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_thigh_r_anim_rotateX";
	rename -uid "6E75F90D-496C-9456-0F43-CE850862588D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_thigh_r_anim_rotateY";
	rename -uid "086DF2F4-4030-EA4B-C366-44B5EFB409A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_thigh_r_anim_rotateZ";
	rename -uid "1E518ECB-40CB-6327-7554-1AB8F191052E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_calf_r_anim_rotateX";
	rename -uid "051C7F01-4125-7C8E-421B-5296792A67DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_calf_r_anim_rotateY";
	rename -uid "BA4F3578-4CA9-9B20-B5B2-FBA239DE6170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_calf_r_anim_rotateZ";
	rename -uid "848EA036-4927-4E16-4CEF-278D4212354C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_foot_r_anim_rotateX";
	rename -uid "6A895992-486F-E0BE-66CE-009EA905AD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_foot_r_anim_rotateY";
	rename -uid "20B9059E-4DA1-FB92-6BBE-52AAD0162146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_foot_r_anim_rotateZ";
	rename -uid "717E765A-4E5B-EA8B-E915-B19F52CE9D82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_ball_r_anim_rotateX";
	rename -uid "D426CDA3-42EB-3396-5FC6-C9B9123BB9E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_ball_r_anim_rotateY";
	rename -uid "04E234F0-4134-E1CF-2DE4-C88028BBDC9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_ball_r_anim_rotateZ";
	rename -uid "876B818D-4D81-25DA-816C-1F95A4636470";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_r_rotateX";
	rename -uid "CEBF3517-4045-47DA-4DFE-608E399CDE1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_r_rotateY";
	rename -uid "88264829-4F88-9F57-FBB5-B3A5C1B037C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_r_rotateZ";
	rename -uid "028727C1-412E-95BE-EEF1-BEBF493D8207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_r_knee_twist";
	rename -uid "3F117237-49A6-2128-011E-CABF5F3FF2F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_r_stretch";
	rename -uid "B15FCFF5-4A55-193F-7F51-6DAFCAE3B590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_r_squash";
	rename -uid "1A45E245-48F5-6B27-DD12-1A897ACE7796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_r_toeCtrlVis";
	rename -uid "7B64596D-436F-DB85-B312-C9B4C747FF80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "ik_foot_anim_r_stretchBias";
	rename -uid "F9E1AB13-4892-9A8A-C714-BE86EFA81891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ik_foot_anim_l_translateX";
	rename -uid "BED4B673-4879-B7CB-B68D-4C8870E786C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ik_foot_anim_l_translateY";
	rename -uid "DAA05ED1-48FD-1507-8D15-FE989438B7D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ik_foot_anim_l_translateZ";
	rename -uid "DA484E11-4C29-B02B-9D27-6799C353C342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_l_rotateX";
	rename -uid "4E19F12B-4FA3-FB1F-0C69-13BB329CA8F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_l_rotateY";
	rename -uid "79104897-46B3-649C-9D53-E0A04784D087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ik_foot_anim_l_rotateZ";
	rename -uid "1AFDB06B-41D0-D69C-7740-5BA67C1E992C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_l_knee_twist";
	rename -uid "19640B6A-4367-3F95-858E-37A2216203F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_l_stretch";
	rename -uid "25ED7B7B-4E9B-A3A1-399C-06A8604101BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_l_squash";
	rename -uid "ECB914C7-472E-C300-A716-7986FB202D17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ik_foot_anim_l_toeCtrlVis";
	rename -uid "F09228D3-4985-1088-6489-9B830BF19D5F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "ik_foot_anim_l_stretchBias";
	rename -uid "2B5D15B3-476F-DCA4-243B-018EEB8E66B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hip_anim_rotateX";
	rename -uid "F0B34E7B-40D0-9D58-E96D-5A9F1A3FE695";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hip_anim_rotateY";
	rename -uid "636BB0B2-4CCC-6D13-2D81-67A81F524329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hip_anim_rotateZ";
	rename -uid "2794F7D0-4B1D-A91B-EC08-D3A82168079A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hip_anim_translateX";
	rename -uid "5EA4F094-477B-4158-589A-44A7AB354BBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hip_anim_translateY";
	rename -uid "22BB1CBA-4E89-CB0B-4213-47B1A480BD9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hip_anim_translateZ";
	rename -uid "5C3F2FCD-4F04-8CC7-D6EE-42A1E7EEDE4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hip_anim_lCalfTwistCtrlVis";
	rename -uid "28ABE52D-4E4D-F8C8-B061-4FAAE15FA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "hip_anim_rCalfTwistCtrlVis";
	rename -uid "88FD4AEB-41C4-F9BD-319A-18B05FC1B395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "hip_anim_autoHips";
	rename -uid "074B3F4C-4C81-E371-5ECD-35B8266D740D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateZ";
	rename -uid "F430A97A-4496-F1C2-80A1-A0834E2225AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 -4.0315611649077008 20 -14.187398328730064
		 25 -11.056780848788113 30 -16.107403635348135 38 -13.499930701061528 49 0;
	setAttr -s 7 ".kit[1:6]"  1 18 18 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 1 18 18;
	setAttr -s 7 ".kix[1:6]"  0.88300013396947141 1 1 0.99957137902749427 
		0.91400118940614716 1;
	setAttr -s 7 ".kiy[1:6]"  -0.46937273398642965 0 0 -0.02927555685334729 
		0.40571150558512414 0;
	setAttr -s 7 ".kox[1:6]"  0.88300006043572521 1 1 0.999571370043978 
		0.91400118940614716 1;
	setAttr -s 7 ".koy[1:6]"  -0.46937287232061636 0 0 -0.029275863580859301 
		0.40571150558512414 0;
createNode animCurveTA -n "heel_ctrl_r_rotateX";
	rename -uid "EC6159CC-4EBE-C98B-FBFB-0BBE83423860";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 38 0 49 0;
createNode animCurveTA -n "heel_ctrl_r_rotateY";
	rename -uid "D6F7D71D-421D-5D39-B2C8-81BA03297928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 38 0 49 0;
createNode animCurveTA -n "heel_ctrl_r_rotateZ";
	rename -uid "9443AD7A-4DB5-BD83-4957-BFA2E5B4D12E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 -19.743471338484792 38 -6.3409233754065957
		 49 0;
createNode animCurveTU -n "heel_ctrl_r_heelPivot";
	rename -uid "5FF65433-4691-9924-65BA-2BA951B31886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 38 0 49 0;
createNode animCurveTU -n "heel_ctrl_r_ballPivot";
	rename -uid "1955DC1F-4D03-6731-9AA1-B9A8473AA85D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 38 0 49 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateX";
	rename -uid "95658F4B-495A-50B0-FF8D-F58549CA7E21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateY";
	rename -uid "B6F34839-4B70-9BB6-F0B6-2DADED4CA78B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateZ";
	rename -uid "75613D28-4900-93BA-3A3D-B19D35FD14EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateX";
	rename -uid "1EAC4694-49FE-2BC5-F6EA-249F967AF18E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.6956422150845576 6 -39.951724280087305
		 12 -20.035317126409126 20 -1.1950874894706056 25 0 27 -0.90280782907628132 30 -8.6808445103488623
		 45 -0.87418716925583961 57 -3.6956422150845576;
	setAttr -s 9 ".kit[2:8]"  1 18 18 18 18 18 1;
	setAttr -s 9 ".kot[2:8]"  1 18 18 18 18 18 1;
	setAttr -s 9 ".kix[2:8]"  0.49463773095374702 0.93619127517566203 
		1 0.81574339811600693 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0.86909925504336294 0.35149096188233331 
		0 -0.57841395940117979 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.49463772082253471 0.93619127517566203 
		1 0.81574339811600705 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0.86909926080942457 0.35149096188233336 
		0 -0.5784139594011799 0 0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateY";
	rename -uid "8CC231E7-49F2-B364-AACB-BD96E1F6E87E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.5849060166293654 6 70.028011708609242
		 12 23.574306877489903 20 1.0597768863094952 25 0 27 0.01992374800162099 30 0.19157450001558643
		 45 -8.4369648050237291 57 1.5849060166293654;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateZ";
	rename -uid "08922298-4E22-3106-FC7F-129AA00F4254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.21409548772147224 6 -61.981664478166998
		 12 -49.994975714051122 20 -13.166699870633989 25 0.35435102037371802 27 -1.4352342985640036
		 30 -32.761973689895456 45 -16.603778535216566 57 -0.21409548772147224;
	setAttr -s 9 ".kit[6:8]"  1 18 1;
	setAttr -s 9 ".kot[6:8]"  1 18 1;
	setAttr -s 9 ".kix[6:8]"  0.18162164571613473 0.84563879294467481 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.98336848526244858 0.53375559188365729 
		0;
	setAttr -s 9 ".kox[6:8]"  0.18162163792502928 0.84563879294467481 
		1;
	setAttr -s 9 ".koy[6:8]"  -0.9833684867014143 0.5337555918836574 
		0;
createNode animCurveTL -n "clavicle_r_anim_translateX";
	rename -uid "C494ED5F-4F7B-B8B4-B695-A0B6936BF917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 -0.046073439393271229 15 -0.0062284076011841355
		 20 0 25 0 30 0 35 0 42 -3.8441472227646045e-15 51 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTL -n "clavicle_r_anim_translateY";
	rename -uid "10C363A8-45C9-A9D7-584A-1C8DE91C423A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 -0.056889423229053229 15 -0.0076905592621887911
		 20 0 25 0 30 0 35 0 42 -9.7144514654701197e-17 51 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTL -n "clavicle_r_anim_translateZ";
	rename -uid "36E2F6DF-424D-C7C4-9C12-CD9E5B1A6A1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0.5118475393707127 15 0.069193772959991628
		 20 0 25 0 30 0 35 1.5874238776126 42 0 51 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "clavicle_r_anim_rotateX";
	rename -uid "CFE879DF-4465-E03F-6EDC-ECA7CCF82801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 6.3167923099628576 15 16.114970688519364
		 20 18.795679975358873 25 21.468342825911805 30 13.021044479472385 35 0 42 0 51 0;
	setAttr -s 9 ".kit[5:8]"  1 18 18 1;
	setAttr -s 9 ".kot[5:8]"  1 18 18 1;
	setAttr -s 9 ".kix[5:8]"  0.66406923121088135 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  -0.74767108821927108 0 0 0;
	setAttr -s 9 ".kox[5:8]"  0.66406928563046286 1 1 1;
	setAttr -s 9 ".koy[5:8]"  -0.74767103988468531 0 0 0;
createNode animCurveTA -n "clavicle_r_anim_rotateY";
	rename -uid "196C56FE-4B12-25B9-A2F5-BCB64542A895";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -7.7472211119608936 7 -5.14355969573261
		 15 -0.48904178178555746 20 0 25 0 30 -0.98626679777335413 35 -4.4701891810454999
		 42 -6.0661025500608083 51 -7.7472211119608936;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "clavicle_r_anim_rotateZ";
	rename -uid "C365B1D2-4E2F-C539-CA46-678E39E96748";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 7 0 15 0 20 0 25 0 30 -0.05591531246352871
		 35 0 42 0 51 0;
	setAttr -s 9 ".kit[5:8]"  1 18 18 1;
	setAttr -s 9 ".kot[5:8]"  1 18 18 1;
	setAttr -s 9 ".kix[5:8]"  0.99998098877143715 1 1 1;
	setAttr -s 9 ".kiy[5:8]"  -0.0061662059403603513 0 0 0;
	setAttr -s 9 ".kox[5:8]"  0.99998098877399366 1 1 1;
	setAttr -s 9 ".koy[5:8]"  -0.006166205525739786 0 0 0;
createNode animCurveTA -n "body_anim_rotateX";
	rename -uid "8736E9CF-462D-31A9-1BD5-C39C9FCF5006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 16.083764683297787 25 20.773680781425767
		 30 17.27013899105134 38 11.039860583399443 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.81867998425381105 1 0.84569149925286924 
		0.90295265017580684 1;
	setAttr -s 6 ".kiy[1:5]"  0.57425001818213273 0 -0.53367207917543757 
		-0.42974005112449898 0;
	setAttr -s 6 ".kox[1:5]"  0.81867996047087366 1 0.8456915450137229 
		0.90295265017580684 1;
	setAttr -s 6 ".koy[1:5]"  0.57425005208829416 0 -0.53367200665980441 
		-0.42974005112449898 0;
createNode animCurveTA -n "body_anim_rotateY";
	rename -uid "81BB30A4-4901-AA65-7908-029FABDCAFCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 -1.7236983810702342 25 -2.2263170741982981
		 30 -1.850842212995462 38 -1.1595867815228702 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.99773510137269938 1 0.99740566886928006 
		0.99870176750513062 1;
	setAttr -s 6 ".kiy[1:5]"  -0.067265648653747068 0 0.071985635424188427 
		0.050938979005553067 0;
	setAttr -s 6 ".kox[1:5]"  0.99773510123196218 1 0.99740566912306328 
		0.9987017675051304 1;
	setAttr -s 6 ".koy[1:5]"  -0.067265650741268224 0 0.07198563190786475 
		0.050938979005553067 0;
createNode animCurveTA -n "body_anim_rotateZ";
	rename -uid "47F5F3AB-401C-AF58-E0F5-A588275DD5BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 -8.7504724994154568 25 -11.273640375742518
		 30 -9.3943043478663455 38 -5.8216595349171429 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.9408718108051507 1 0.93519282336229104 
		0.96808446959240446 1;
	setAttr -s 6 ".kiy[1:5]"  -0.33876280142931364 0 0.35413893196267876 
		0.25062414036559383 0;
	setAttr -s 6 ".kox[1:5]"  0.94087180655751712 1 0.93519282732315789 
		0.96808446959240435 1;
	setAttr -s 6 ".koy[1:5]"  -0.33876281322659108 0 0.35413892150301468 
		0.25062414036559383 0;
createNode animCurveTL -n "body_anim_translateX";
	rename -uid "86F507A9-4CAC-51D2-54DA-30946ECCFCC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 -3.5698668802835942 25 -4.6108157178030895
		 30 -3.8331882128362169 38 -2.3120969115729588 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.10207954882147151 1 0.10411134697380268 
		0.16301358575512304 1;
	setAttr -s 6 ".kiy[1:5]"  -0.99477623901679757 0 0.99456564762277033 
		0.9866238243926897 0;
	setAttr -s 6 ".kox[1:5]"  0.10207956237100564 1 0.10411134119933799 
		0.16301358575512306 1;
	setAttr -s 6 ".koy[1:5]"  -0.9947762376264041 0 0.99456564822724258 
		0.98662382439268981 0;
createNode animCurveTL -n "body_anim_translateY";
	rename -uid "59805242-4CAD-4418-117B-44988E8C8DD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 3.8109856349250881 25 4.9222430569843745
		 30 4.0920924238840266 38 2.5461199337588512 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.085617740388779562 1 0.10648355289888159 
		0.15294903387745754 1;
	setAttr -s 6 ".kiy[1:5]"  0.99632805969254912 0 -0.99431446382018962 
		-0.98823407805840835 0;
	setAttr -s 6 ".kox[1:5]"  0.085617741017966917 1 0.10648355036996339 
		0.15294903387745754 1;
	setAttr -s 6 ".koy[1:5]"  0.99632805963848092 0 -0.99431446409101765 
		-0.98823407805840846 0;
createNode animCurveTL -n "body_anim_translateZ";
	rename -uid "BE7D3709-4B95-180C-99AE-9BAB61818AE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 1.9193977991224194 25 2.4790811079788098
		 30 2.0609768560208486 38 1.3298634512824719 49 0;
	setAttr -s 6 ".kit[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 1 18 18;
	setAttr -s 6 ".kix[1:5]"  0.25898119104920175 1 0.23278154834150216 
		0.29374120440046375 1;
	setAttr -s 6 ".kiy[1:5]"  0.96588236482645073 0 -0.97252904879583568 
		-0.95588498515112419 0;
	setAttr -s 6 ".kox[1:5]"  0.25898120277493586 1 0.23278157216485434 
		0.29374120440046375 1;
	setAttr -s 6 ".koy[1:5]"  0.9658823616824399 0 -0.97252904309355137 
		-0.95588498515112419 0;
createNode animCurveTA -n "fk_arm_r_anim_rotateX";
	rename -uid "79E481E8-4EF0-0CF6-D67D-16BAA43BEC86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.7984690902426603 6 -15.516254808753787
		 12 -75.14351225830687 25 -69.16071961693072 37 -0.50843756120826 53 8.7984690902426603;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 1;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 1;
	setAttr -s 6 ".kix[1:5]"  0.19183737089051739 1 0.81041699172013559 
		0.73824285060245121 1;
	setAttr -s 6 ".kiy[1:5]"  -0.98142672835510958 0 0.58585347957598188 
		0.67453502024310541 0;
	setAttr -s 6 ".kox[1:5]"  0.1918373619461711 1 0.8104169917201357 
		0.73824285060245132 1;
	setAttr -s 6 ".koy[1:5]"  -0.98142673010344172 0 0.58585347957598188 
		0.67453502024310552 0;
createNode animCurveTA -n "fk_arm_r_anim_rotateY";
	rename -uid "B3913624-423A-968D-C9B8-67B6F4202288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.762223526396333 6 8.1586455805543032
		 12 18.633512669174408 25 28.947222359387762 37 9.1945215289776208 53 28.762223526396333;
	setAttr -s 6 ".kit[2:5]"  1 18 18 1;
	setAttr -s 6 ".kot[2:5]"  1 18 18 1;
	setAttr -s 6 ".kix[2:5]"  0.67391411835884041 1 1 1;
	setAttr -s 6 ".kiy[2:5]"  0.73880969205650449 0 0 0;
	setAttr -s 6 ".kox[2:5]"  0.67391411379150734 1 1 1;
	setAttr -s 6 ".koy[2:5]"  0.73880969622265225 0 0 0;
createNode animCurveTA -n "fk_arm_r_anim_rotateZ";
	rename -uid "0ADD926E-4119-F87F-CB94-04B0507989B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4757967259617963 6 -52.652819983376396
		 12 -50.118867619714536 18 -68.084590802503044 25 -67.236622362276307 37 -34.451947902549875
		 53 4.4757967259617963;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateX";
	rename -uid "1C5790EB-4137-6B2C-E1BC-30864953F984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.5486245719903025 7 -3.0979548743238801
		 13 -2.6555927503078824 17 12.244300701469168 25 -0.76067657325424487 31 10.374039158877698
		 51 -7.5486245719903025;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateY";
	rename -uid "06ADB58B-440B-2813-F9F9-69A3D69BD3B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.38908356204624822 7 23.654408386568878
		 13 -15.60545464478991 17 -19.802321510867767 23 -33.897920686628076 25 -31.562746346248236
		 31 20.017035642132097 51 0.38908356204624822;
	setAttr -s 8 ".kit[4:7]"  1 18 18 1;
	setAttr -s 8 ".kot[4:7]"  1 18 18 1;
	setAttr -s 8 ".kix[4:7]"  0.8822355257924307 0.47870958441962663 
		1 1;
	setAttr -s 8 ".kiy[4:7]"  0.47080832302514902 0.87797331040572546 
		0 0;
	setAttr -s 8 ".kox[4:7]"  0.88223538083372088 0.47870958441962663 
		1 1;
	setAttr -s 8 ".koy[4:7]"  0.47080859465942154 0.87797331040572546 
		0 0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateZ";
	rename -uid "F67C1F82-41AC-537E-FB73-D5810330FADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.356404922970051 7 -1.8613931684181102
		 13 -28.4154854956906 17 0 23 5.4688259468080505 25 6.7626457590675768 31 18.403140715677662
		 51 -1.356404922970051;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTL -n "chest_ik_anim_translateX";
	rename -uid "E7CABB43-45A4-3EA0-1096-6E9CDDD621D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 -0.033891952094513553 26 -0.040420832196977528
		 30 -0.033891952094513553;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.998914153327217;
	setAttr -s 4 ".kiy[3]"  -0.04658877850479845;
	setAttr -s 4 ".kox[3]"  0.998914153327217;
	setAttr -s 4 ".koy[3]"  -0.046588778504798443;
createNode animCurveTL -n "chest_ik_anim_translateY";
	rename -uid "7040C88A-4E8B-4AF4-B5E7-47AFD9953A70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 -1.3443637160134712 26 -1.6033393421901843
		 30 -1.3443637160134712;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  0.47551565522452005;
	setAttr -s 4 ".kiy[3]"  -0.87970725905632674;
	setAttr -s 4 ".kox[3]"  0.47551565522452016;
	setAttr -s 4 ".koy[3]"  -0.87970725905632685;
createNode animCurveTL -n "chest_ik_anim_translateZ";
	rename -uid "01F57AE1-4307-C735-8950-F1AD12207DCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 1.9706458687096521e-15 26 2.6090241078691167e-15
		 30 1.9706458687096521e-15;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateX";
	rename -uid "0F5D027C-4E03-7E01-E261-4CB263591CDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 26 0 30 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateY";
	rename -uid "A0D79B59-43A0-8F26-38E7-B7B3B70664B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 26 0 30 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateZ";
	rename -uid "2C643976-405C-815F-1492-8CA937D22D9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.4441438388471153 22 -1.4441438388471153
		 26 -1.4441438388471153 30 -1.4441438388471153;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "chest_ik_anim_stretch";
	rename -uid "F21C648C-4DC9-F5E7-43E3-3FA886BBB1D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 26 0 30 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "chest_ik_anim_squash";
	rename -uid "D2BE99F5-490D-C286-AD06-158C73A92DC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 26 0 30 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "chest_ik_anim_twist_amount";
	rename -uid "047C408D-4A04-B3C8-E679-F5A827E65BE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 26 1 30 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "chest_ik_anim_autoSpine";
	rename -uid "9818052B-474B-C4F0-F405-D591E0823B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 26 0 30 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "chest_ik_anim_rotationInfluence";
	rename -uid "643ABC13-49EA-AD01-D2A6-E88167A0ADD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.25 22 0.25 26 0.25 30 0.25;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "mid_ik_anim_translateX";
	rename -uid "4DBA463B-4362-A587-1112-A0BE47A78FD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.2172489379008766e-15 22 4.496403249731884e-15;
createNode animCurveTL -n "mid_ik_anim_translateY";
	rename -uid "C0BF1669-4009-E6A2-2E4F-1CBD58905191";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 -1.2352949963472923;
createNode animCurveTL -n "mid_ik_anim_translateZ";
	rename -uid "EAE877DA-4061-5AED-F03E-EEBFB8DDB4AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 -9.783840404509192e-16;
createNode animCurveTA -n "mid_ik_anim_rotateX";
	rename -uid "D71BFA71-4F80-8FC8-1DD0-0983E3598CD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
createNode animCurveTA -n "mid_ik_anim_rotateY";
	rename -uid "B8504F7E-46FD-9381-7A92-5698BCEBABAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
createNode animCurveTA -n "mid_ik_anim_rotateZ";
	rename -uid "484C8F6F-4611-57EC-4E95-1E893EB081A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 22 0;
createNode animCurveTL -n "fk_arm_l_anim_translateX";
	rename -uid "FFBAAAF1-489A-491A-0A02-8AA40ED95383";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 23 0 51 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "fk_arm_l_anim_translateY";
	rename -uid "D5357FEE-4ACA-6C20-1B2A-02920A5AC32B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 23 0 51 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "fk_arm_l_anim_translateZ";
	rename -uid "32C5BD15-498A-DA40-F399-CB8C3FCEFDED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 23 0 51 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_arm_l_anim_rotateX";
	rename -uid "A0472D09-4D82-B7BF-8BD2-E39B71A96FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.6682886561511836 16 9.2362903041378583
		 23 0.81185675367594867 51 8.6682886561511836;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_arm_l_anim_rotateY";
	rename -uid "7F8A61A5-44EF-7E45-419A-CB91A971DA88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.172409313269373 16 12.891016527665744
		 23 12.880019660132803 51 27.172409313269373;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_arm_l_anim_rotateZ";
	rename -uid "07FBE113-45F7-3204-8572-70B2B2A06394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.1990496598680398 16 3.2624743391689219
		 23 9.6275777868798809 51 4.1990496598680398;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_elbow_l_anim_rotateX";
	rename -uid "7F4D96D8-4DC5-D12E-5FF9-4FAE180B53AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.9594761222354715 12 -3.3512780086562381
		 22 -12.52813683127386 41 -12.368494143573377 51 -2.9594761222354715;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.99381642304762596;
	setAttr -s 5 ".kiy[4]"  0.11103565769977834;
	setAttr -s 5 ".kox[4]"  0.9938164217868356;
	setAttr -s 5 ".koy[4]"  0.11103566898438842;
createNode animCurveTA -n "fk_elbow_l_anim_rotateY";
	rename -uid "110BC3E9-4909-A13F-9A42-2AA7D4DB773E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.5823203535126678 12 -12.415985851071275
		 22 -9.2386484472441168 41 1.6888555538949734 51 1.5823203535126678;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "fk_elbow_l_anim_rotateZ";
	rename -uid "F16F14A9-4585-B5DC-0D8C-E084A6C8C613";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.1896984870424695 12 -14.808698758488973
		 22 -8.7975211610346946 41 -11.21097649374064 51 -0.1896984870424695;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "neck_01_fk_anim_rotateZ";
	rename -uid "33225EBA-4EEA-B596-DDE9-5BBFC7F2142B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 13 -18.852847461606075 27 -16.991645999668542
		 49 0;
	setAttr -s 4 ".kit[0:3]"  1 18 18 18;
	setAttr -s 4 ".kot[0:3]"  1 18 18 18;
	setAttr -s 4 ".kix[0:3]"  0.79516361470568053 1 0.97888395657208849 
		1;
	setAttr -s 4 ".kiy[0:3]"  -0.60639494213606027 0 0.20441673015135894 
		0;
	setAttr -s 4 ".kox[0:3]"  0.79516358850625635 1 0.9788839565720886 
		1;
	setAttr -s 4 ".koy[0:3]"  -0.60639497649127438 0 0.20441673015135894 
		0;
createNode animCurveTA -n "Hat_anim_rotateX";
	rename -uid "D87E4ED0-4BFB-D376-E636-0D9FD992E2BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0.4674041506609089 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Hat_anim_rotateY";
	rename -uid "0B74CD94-43B0-E855-8E39-85B5EE50E176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "Hat_anim_rotateZ";
	rename -uid "CAF52A51-4FC8-A8D7-C05D-7C981255CCD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Hat_anim_translateX";
	rename -uid "2536A083-454D-8665-7A73-BF93876CC54B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Hat_anim_translateY";
	rename -uid "AD37DA52-4988-63B3-10C6-54B560901061";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "Hat_anim_translateZ";
	rename -uid "BF104A81-4D71-8549-36E6-01A17923B9C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 17 0 27 0 33 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Hat_anim_scaleX";
	rename -uid "90E71FF9-456D-C79B-3FE9-D29EF050E568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 17 1 27 1 33 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Hat_anim_scaleY";
	rename -uid "EF4B2C7F-4A27-4A8B-063D-EB92FFBE4A72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 17 1 27 1 33 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "Hat_anim_scaleZ";
	rename -uid "491E58B4-437F-812E-6A76-B6B0817FCAA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 17 1 27 1 33 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_wrist_l_anim_rotateX";
	rename -uid "273F4C71-423E-E4D8-C0BE-4C8F2B3CB23F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.2713945760046101 16 -7.3806508636797723
		 26 -2.4408588481560125 36 0;
createNode animCurveTA -n "fk_wrist_l_anim_rotateY";
	rename -uid "F21ACF45-4BEB-1B0D-3DED-789060B8752F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.43740600480431019 16 -3.7697037660360304
		 26 -2.8822190224420274 36 0;
createNode animCurveTA -n "fk_wrist_l_anim_rotateZ";
	rename -uid "AEA55599-442A-1CE4-C5BA-15B5027F16D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3622059043972121 16 -31.278781348180669
		 26 -35.443275039627466 36 0;
createNode animCurveTL -n "fk_wrist_l_anim_translateX";
	rename -uid "4014EBA2-4DEB-5FA0-22BD-D68155F2E6D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 26 0 36 0;
createNode animCurveTL -n "fk_wrist_l_anim_translateY";
	rename -uid "6E8B5608-4559-6799-5DAD-E09C69C4EF9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 26 0 36 0;
createNode animCurveTL -n "fk_wrist_l_anim_translateZ";
	rename -uid "DD58C160-4C5A-13C7-21FD-ED90E10FAB15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 26 0 36 0;
createNode animCurveTA -n "clavicle_l_anim_rotateX";
	rename -uid "803749B5-48CE-8646-DCE4-0DB4BC0F4B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 -3.6753521495550667 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "clavicle_l_anim_rotateY";
	rename -uid "537CA72C-4B5C-D392-A254-CC977EED9408";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.4193840392133428 16 7.5800221774452883
		 32 8.4193840392133428 51 8.4193840392133428;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "clavicle_l_anim_rotateZ";
	rename -uid "C68CD6B9-4D26-DD20-2BDD-74A0D347A2C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 -25.964180210878624 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "clavicle_l_anim_translateX";
	rename -uid "E1820DF4-4261-9CCA-8BFF-69B46EEC4308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "clavicle_l_anim_translateY";
	rename -uid "C0D69841-4EC2-9825-7CE7-5EAC37612410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "clavicle_l_anim_translateZ";
	rename -uid "15CFAD49-47B1-1496-7BC6-07BA24CF1C55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "clavicle_l_anim_autoShoulders";
	rename -uid "60F74069-40DF-22DA-CBD7-A496DD2F2F38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 32 0 51 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "HatTip01_anim_rotateX";
	rename -uid "4A8D6B26-4D3E-9EBE-87DA-2DB8ABC23757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 4.6372256023074527 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "HatTip01_anim_rotateY";
	rename -uid "6419FF8A-425B-05B8-94DF-E99430701724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "HatTip01_anim_rotateZ";
	rename -uid "E26DE81E-4F72-A2AE-50C5-79A059210D9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatTip01_anim_translateX";
	rename -uid "DD48430A-41C3-23B2-E742-3BB9ED5E7FEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatTip01_anim_translateY";
	rename -uid "8873EFE6-4A16-93B5-3310-F7B572EB79AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatTip01_anim_translateZ";
	rename -uid "1CCFBE48-4D35-0577-D784-FA9F4E829759";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 0 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "HatTip01_anim_scaleX";
	rename -uid "8DC5AC3C-4FCF-23B1-C34E-A8821ADFAEDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 21 1 30 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "HatTip01_anim_scaleY";
	rename -uid "A56C7313-41FC-930C-544E-A1B14092FC2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 21 1 30 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "HatTip01_anim_scaleZ";
	rename -uid "21737DC1-4C7C-2699-0B88-65B74AD9FFA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 21 1 30 1 40 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "HatTip02_anim_rotateX";
	rename -uid "573BEBEC-46DF-040F-EF60-1A84BDDE020E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 4.6372256023074527 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatFront_anim_translateX";
	rename -uid "EA8A9CC1-41E6-4827-693F-BEB143037005";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 -0.32604155782443495 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatFront_anim_translateY";
	rename -uid "3F1D314C-4DBD-3D22-C341-C1807C2BD342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 -1.7923486635253965 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "HatFront_anim_translateZ";
	rename -uid "8E95E8E1-48D2-CBBC-5908-168729F6450F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 30 -2.7847445729600606 40 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "HatSide_r_anim_rotateX";
	rename -uid "533A6197-4FEF-DE0B-EABC-2AB3B2CD806D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTA -n "HatSide_r_anim_rotateY";
	rename -uid "4508F8E0-4174-E3F3-370A-4A97FD23E87D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTA -n "HatSide_r_anim_rotateZ";
	rename -uid "AE348C94-4741-79C8-887F-8898F866C1AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTL -n "HatSide_r_anim_translateX";
	rename -uid "D891F577-4ABD-2B5E-1419-9BA450E32147";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 -0.072254546261069252 41 0;
createNode animCurveTL -n "HatSide_r_anim_translateY";
	rename -uid "652E5610-4F4F-A895-D66A-0FB2283D3A22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0.44807194401960299 41 0;
createNode animCurveTL -n "HatSide_r_anim_translateZ";
	rename -uid "13303D9F-434C-DC6A-38E0-1A9424B82DC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0.95765527072106849 41 0;
createNode animCurveTU -n "HatSide_r_anim_scaleX";
	rename -uid "D80FEB30-402F-1F84-D9F0-6C8C0690BA91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTU -n "HatSide_r_anim_scaleY";
	rename -uid "84C4B147-4DBF-2698-E8A9-2E957B406EEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTU -n "HatSide_r_anim_scaleZ";
	rename -uid "EBD9B622-4CB2-C1DA-4226-89AA60BC04A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTL -n "HatSide_l_anim_translateX";
	rename -uid "E8531ACD-4750-9D78-4FE4-F894667C9BCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 -0.095947750272370541 41 0;
createNode animCurveTL -n "HatSide_l_anim_translateY";
	rename -uid "B30F6022-44EF-A067-55C9-7C8F499DD3BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 -0.43858785939869926 41 0;
createNode animCurveTL -n "HatSide_l_anim_translateZ";
	rename -uid "E3459945-43D4-D4F8-D82B-CE8F5196536F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 -0.91854227226122598 41 0;
createNode animCurveTA -n "HatSide_l_anim_rotateX";
	rename -uid "E88A777B-4885-F169-9781-AA9E0C61D909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTA -n "HatSide_l_anim_rotateY";
	rename -uid "BD885D76-4A88-7BB4-3D1C-87896EDC45BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTA -n "HatSide_l_anim_rotateZ";
	rename -uid "1668200E-4D71-5505-3577-BEB95F07FCDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 31 0 41 0;
createNode animCurveTU -n "HatSide_l_anim_scaleX";
	rename -uid "5E393D75-4973-41AC-2C0D-E1992A09A386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTU -n "HatSide_l_anim_scaleY";
	rename -uid "5CE08FCB-4783-B3B4-76DD-1C862F76C047";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTU -n "HatSide_l_anim_scaleZ";
	rename -uid "A115EC61-445A-B787-8935-A4A9BD41AA24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 22 1 31 1 41 1;
createNode animCurveTA -n "HatFront_anim_rotateX";
	rename -uid "CB8BECBD-4CFE-447D-195C-69B1F66F8E08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "HatFront_anim_rotateY";
	rename -uid "E98F2718-408E-58F9-09DC-0D8291B2969A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "HatFront_anim_rotateZ";
	rename -uid "F4D39C39-4F7F-54F7-EE2E-1EA3D0ABF2FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "HatFront_anim_scaleX";
	rename -uid "44B6C1FB-4962-BAD0-6BE5-B998BF0AA7A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "HatFront_anim_scaleY";
	rename -uid "14EBA849-487D-9FC8-6CCE-E0B83E591C7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "HatFront_anim_scaleZ";
	rename -uid "62BD0842-49E8-43E5-16F5-6F91C7DD504E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateX";
	rename -uid "27DBA582-4A85-8AD3-3810-9EBAA0FEFDF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateY";
	rename -uid "93A50B29-4202-3568-67CE-C78EAC0FC88D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
createNode unknown -n "ExportAnimationSettings";
	rename -uid "42320CDB-4606-7D0D-F04B-F8A87F948435";
	addAttr -ci true -sn "settings" -ln "settings" -dt "string";
	addAttr -ci true -sn "sequence0" -ln "sequence0" -dt "string";
	setAttr ".settings" -type "string" "[false, true, false, null, null]";
	setAttr ".sequence0" -type "string" "D:/Capstone/PlayerCharacter/Animation/Witch@spell.fbx::0::58::30 FPS::Independent Euler Angle::Witch";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 10 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 94 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 137 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 118 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "fk_arm_l_anim_translateX.o" "WitchRN.phl[1]";
connectAttr "fk_arm_l_anim_translateY.o" "WitchRN.phl[2]";
connectAttr "fk_arm_l_anim_translateZ.o" "WitchRN.phl[3]";
connectAttr "fk_arm_l_anim_rotateX.o" "WitchRN.phl[4]";
connectAttr "fk_arm_l_anim_rotateY.o" "WitchRN.phl[5]";
connectAttr "fk_arm_l_anim_rotateZ.o" "WitchRN.phl[6]";
connectAttr "fk_elbow_l_anim_rotateX.o" "WitchRN.phl[7]";
connectAttr "fk_elbow_l_anim_rotateY.o" "WitchRN.phl[8]";
connectAttr "fk_elbow_l_anim_rotateZ.o" "WitchRN.phl[9]";
connectAttr "fk_wrist_l_anim_translateX.o" "WitchRN.phl[10]";
connectAttr "fk_wrist_l_anim_translateY.o" "WitchRN.phl[11]";
connectAttr "fk_wrist_l_anim_translateZ.o" "WitchRN.phl[12]";
connectAttr "fk_wrist_l_anim_rotateX.o" "WitchRN.phl[13]";
connectAttr "fk_wrist_l_anim_rotateY.o" "WitchRN.phl[14]";
connectAttr "fk_wrist_l_anim_rotateZ.o" "WitchRN.phl[15]";
connectAttr "clavicle_l_anim_translateX.o" "WitchRN.phl[16]";
connectAttr "clavicle_l_anim_translateY.o" "WitchRN.phl[17]";
connectAttr "clavicle_l_anim_translateZ.o" "WitchRN.phl[18]";
connectAttr "clavicle_l_anim_rotateX.o" "WitchRN.phl[19]";
connectAttr "clavicle_l_anim_rotateY.o" "WitchRN.phl[20]";
connectAttr "clavicle_l_anim_rotateZ.o" "WitchRN.phl[21]";
connectAttr "clavicle_l_anim_autoShoulders.o" "WitchRN.phl[22]";
connectAttr "fk_arm_r_anim_rotateX.o" "WitchRN.phl[23]";
connectAttr "fk_arm_r_anim_rotateY.o" "WitchRN.phl[24]";
connectAttr "fk_arm_r_anim_rotateZ.o" "WitchRN.phl[25]";
connectAttr "fk_elbow_r_anim_rotateX.o" "WitchRN.phl[26]";
connectAttr "fk_elbow_r_anim_rotateY.o" "WitchRN.phl[27]";
connectAttr "fk_elbow_r_anim_rotateZ.o" "WitchRN.phl[28]";
connectAttr "WitchRN.phl[29]" "Wand_anim_parentConstraint1.tg[0].ts";
connectAttr "WitchRN.phl[30]" "Wand_anim_parentConstraint1.tg[0].tt";
connectAttr "WitchRN.phl[31]" "Wand_anim_parentConstraint1.tg[0].trp";
connectAttr "WitchRN.phl[32]" "Wand_anim_parentConstraint1.tg[0].trt";
connectAttr "WitchRN.phl[33]" "Wand_anim_parentConstraint1.tg[0].tr";
connectAttr "fk_wrist_r_anim_rotateX.o" "WitchRN.phl[34]";
connectAttr "fk_wrist_r_anim_rotateY.o" "WitchRN.phl[35]";
connectAttr "fk_wrist_r_anim_rotateZ.o" "WitchRN.phl[36]";
connectAttr "WitchRN.phl[37]" "Wand_anim_parentConstraint1.tg[0].tro";
connectAttr "WitchRN.phl[38]" "Wand_anim_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r_anim_translateX.o" "WitchRN.phl[39]";
connectAttr "clavicle_r_anim_translateY.o" "WitchRN.phl[40]";
connectAttr "clavicle_r_anim_translateZ.o" "WitchRN.phl[41]";
connectAttr "clavicle_r_anim_rotateX.o" "WitchRN.phl[42]";
connectAttr "clavicle_r_anim_rotateY.o" "WitchRN.phl[43]";
connectAttr "clavicle_r_anim_rotateZ.o" "WitchRN.phl[44]";
connectAttr "body_anim_translateX.o" "WitchRN.phl[45]";
connectAttr "body_anim_translateY.o" "WitchRN.phl[46]";
connectAttr "body_anim_translateZ.o" "WitchRN.phl[47]";
connectAttr "body_anim_rotateX.o" "WitchRN.phl[48]";
connectAttr "body_anim_rotateY.o" "WitchRN.phl[49]";
connectAttr "body_anim_rotateZ.o" "WitchRN.phl[50]";
connectAttr "mid_ik_anim_translateX.o" "WitchRN.phl[51]";
connectAttr "mid_ik_anim_translateY.o" "WitchRN.phl[52]";
connectAttr "mid_ik_anim_translateZ.o" "WitchRN.phl[53]";
connectAttr "mid_ik_anim_rotateX.o" "WitchRN.phl[54]";
connectAttr "mid_ik_anim_rotateY.o" "WitchRN.phl[55]";
connectAttr "mid_ik_anim_rotateZ.o" "WitchRN.phl[56]";
connectAttr "chest_ik_anim_translateX.o" "WitchRN.phl[57]";
connectAttr "chest_ik_anim_translateY.o" "WitchRN.phl[58]";
connectAttr "chest_ik_anim_translateZ.o" "WitchRN.phl[59]";
connectAttr "chest_ik_anim_rotateX.o" "WitchRN.phl[60]";
connectAttr "chest_ik_anim_rotateY.o" "WitchRN.phl[61]";
connectAttr "chest_ik_anim_rotateZ.o" "WitchRN.phl[62]";
connectAttr "chest_ik_anim_stretch.o" "WitchRN.phl[63]";
connectAttr "chest_ik_anim_squash.o" "WitchRN.phl[64]";
connectAttr "chest_ik_anim_twist_amount.o" "WitchRN.phl[65]";
connectAttr "chest_ik_anim_rotationInfluence.o" "WitchRN.phl[66]";
connectAttr "chest_ik_anim_autoSpine.o" "WitchRN.phl[67]";
connectAttr "hip_anim_rotateX.o" "WitchRN.phl[68]";
connectAttr "hip_anim_rotateY.o" "WitchRN.phl[69]";
connectAttr "hip_anim_rotateZ.o" "WitchRN.phl[70]";
connectAttr "hip_anim_autoHips.o" "WitchRN.phl[71]";
connectAttr "hip_anim_translateX.o" "WitchRN.phl[72]";
connectAttr "hip_anim_translateY.o" "WitchRN.phl[73]";
connectAttr "hip_anim_translateZ.o" "WitchRN.phl[74]";
connectAttr "hip_anim_lCalfTwistCtrlVis.o" "WitchRN.phl[75]";
connectAttr "hip_anim_rCalfTwistCtrlVis.o" "WitchRN.phl[76]";
connectAttr "ik_foot_anim_l_translateX.o" "WitchRN.phl[77]";
connectAttr "ik_foot_anim_l_translateY.o" "WitchRN.phl[78]";
connectAttr "ik_foot_anim_l_translateZ.o" "WitchRN.phl[79]";
connectAttr "ik_foot_anim_l_rotateX.o" "WitchRN.phl[80]";
connectAttr "ik_foot_anim_l_rotateY.o" "WitchRN.phl[81]";
connectAttr "ik_foot_anim_l_rotateZ.o" "WitchRN.phl[82]";
connectAttr "ik_foot_anim_l_knee_twist.o" "WitchRN.phl[83]";
connectAttr "ik_foot_anim_l_stretchBias.o" "WitchRN.phl[84]";
connectAttr "ik_foot_anim_l_stretch.o" "WitchRN.phl[85]";
connectAttr "ik_foot_anim_l_squash.o" "WitchRN.phl[86]";
connectAttr "ik_foot_anim_l_toeCtrlVis.o" "WitchRN.phl[87]";
connectAttr "toe_tip_ctrl_l_rotateY.o" "WitchRN.phl[88]";
connectAttr "toe_tip_ctrl_l_rotateZ.o" "WitchRN.phl[89]";
connectAttr "toe_tip_ctrl_l_rotateX.o" "WitchRN.phl[90]";
connectAttr "ik_foot_anim_r_translateX.o" "WitchRN.phl[91]";
connectAttr "ik_foot_anim_r_translateY.o" "WitchRN.phl[92]";
connectAttr "ik_foot_anim_r_translateZ.o" "WitchRN.phl[93]";
connectAttr "ik_foot_anim_r_rotateX.o" "WitchRN.phl[94]";
connectAttr "ik_foot_anim_r_rotateY.o" "WitchRN.phl[95]";
connectAttr "ik_foot_anim_r_rotateZ.o" "WitchRN.phl[96]";
connectAttr "ik_foot_anim_r_knee_twist.o" "WitchRN.phl[97]";
connectAttr "ik_foot_anim_r_stretchBias.o" "WitchRN.phl[98]";
connectAttr "ik_foot_anim_r_stretch.o" "WitchRN.phl[99]";
connectAttr "ik_foot_anim_r_squash.o" "WitchRN.phl[100]";
connectAttr "ik_foot_anim_r_toeCtrlVis.o" "WitchRN.phl[101]";
connectAttr "heel_ctrl_r_rotateY.o" "WitchRN.phl[102]";
connectAttr "heel_ctrl_r_rotateZ.o" "WitchRN.phl[103]";
connectAttr "heel_ctrl_r_rotateX.o" "WitchRN.phl[104]";
connectAttr "heel_ctrl_r_heelPivot.o" "WitchRN.phl[105]";
connectAttr "heel_ctrl_r_ballPivot.o" "WitchRN.phl[106]";
connectAttr "toe_tip_ctrl_r_rotateY.o" "WitchRN.phl[107]";
connectAttr "toe_tip_ctrl_r_rotateZ.o" "WitchRN.phl[108]";
connectAttr "toe_tip_ctrl_r_rotateX.o" "WitchRN.phl[109]";
connectAttr "fk_thigh_r_anim_rotateX.o" "WitchRN.phl[110]";
connectAttr "fk_thigh_r_anim_rotateY.o" "WitchRN.phl[111]";
connectAttr "fk_thigh_r_anim_rotateZ.o" "WitchRN.phl[112]";
connectAttr "fk_calf_r_anim_rotateX.o" "WitchRN.phl[113]";
connectAttr "fk_calf_r_anim_rotateY.o" "WitchRN.phl[114]";
connectAttr "fk_calf_r_anim_rotateZ.o" "WitchRN.phl[115]";
connectAttr "fk_foot_r_anim_rotateX.o" "WitchRN.phl[116]";
connectAttr "fk_foot_r_anim_rotateY.o" "WitchRN.phl[117]";
connectAttr "fk_foot_r_anim_rotateZ.o" "WitchRN.phl[118]";
connectAttr "fk_ball_r_anim_rotateX.o" "WitchRN.phl[119]";
connectAttr "fk_ball_r_anim_rotateY.o" "WitchRN.phl[120]";
connectAttr "fk_ball_r_anim_rotateZ.o" "WitchRN.phl[121]";
connectAttr "neck_01_fk_anim_rotateZ.o" "WitchRN.phl[122]";
connectAttr "HatTip02_anim_rotateX.o" "WitchRN.phl[123]";
connectAttr "HatTip01_anim_scaleX.o" "WitchRN.phl[124]";
connectAttr "HatTip01_anim_scaleY.o" "WitchRN.phl[125]";
connectAttr "HatTip01_anim_scaleZ.o" "WitchRN.phl[126]";
connectAttr "HatTip01_anim_translateX.o" "WitchRN.phl[127]";
connectAttr "HatTip01_anim_translateY.o" "WitchRN.phl[128]";
connectAttr "HatTip01_anim_translateZ.o" "WitchRN.phl[129]";
connectAttr "HatTip01_anim_rotateX.o" "WitchRN.phl[130]";
connectAttr "HatTip01_anim_rotateY.o" "WitchRN.phl[131]";
connectAttr "HatTip01_anim_rotateZ.o" "WitchRN.phl[132]";
connectAttr "HatSide_l_anim_scaleX.o" "WitchRN.phl[133]";
connectAttr "HatSide_l_anim_scaleY.o" "WitchRN.phl[134]";
connectAttr "HatSide_l_anim_scaleZ.o" "WitchRN.phl[135]";
connectAttr "HatSide_l_anim_translateX.o" "WitchRN.phl[136]";
connectAttr "HatSide_l_anim_translateY.o" "WitchRN.phl[137]";
connectAttr "HatSide_l_anim_translateZ.o" "WitchRN.phl[138]";
connectAttr "HatSide_l_anim_rotateX.o" "WitchRN.phl[139]";
connectAttr "HatSide_l_anim_rotateY.o" "WitchRN.phl[140]";
connectAttr "HatSide_l_anim_rotateZ.o" "WitchRN.phl[141]";
connectAttr "HatFront_anim_scaleX.o" "WitchRN.phl[142]";
connectAttr "HatFront_anim_scaleY.o" "WitchRN.phl[143]";
connectAttr "HatFront_anim_scaleZ.o" "WitchRN.phl[144]";
connectAttr "HatFront_anim_translateX.o" "WitchRN.phl[145]";
connectAttr "HatFront_anim_translateY.o" "WitchRN.phl[146]";
connectAttr "HatFront_anim_translateZ.o" "WitchRN.phl[147]";
connectAttr "HatFront_anim_rotateX.o" "WitchRN.phl[148]";
connectAttr "HatFront_anim_rotateY.o" "WitchRN.phl[149]";
connectAttr "HatFront_anim_rotateZ.o" "WitchRN.phl[150]";
connectAttr "Wand_anim_parentConstraint1.ctx" "WitchRN.phl[151]";
connectAttr "Wand_anim_parentConstraint1.cty" "WitchRN.phl[152]";
connectAttr "Wand_anim_parentConstraint1.ctz" "WitchRN.phl[153]";
connectAttr "WitchRN.phl[154]" "Wand_anim_parentConstraint1.crp";
connectAttr "WitchRN.phl[155]" "Wand_anim_parentConstraint1.crt";
connectAttr "Wand_anim_parentConstraint1.crx" "WitchRN.phl[156]";
connectAttr "Wand_anim_parentConstraint1.cry" "WitchRN.phl[157]";
connectAttr "Wand_anim_parentConstraint1.crz" "WitchRN.phl[158]";
connectAttr "WitchRN.phl[159]" "Wand_anim_parentConstraint1.cro";
connectAttr "WitchRN.phl[160]" "Wand_anim_parentConstraint1.cpim";
connectAttr "HatSide_r_anim_scaleX.o" "WitchRN.phl[161]";
connectAttr "HatSide_r_anim_scaleY.o" "WitchRN.phl[162]";
connectAttr "HatSide_r_anim_scaleZ.o" "WitchRN.phl[163]";
connectAttr "HatSide_r_anim_translateX.o" "WitchRN.phl[164]";
connectAttr "HatSide_r_anim_translateY.o" "WitchRN.phl[165]";
connectAttr "HatSide_r_anim_translateZ.o" "WitchRN.phl[166]";
connectAttr "HatSide_r_anim_rotateX.o" "WitchRN.phl[167]";
connectAttr "HatSide_r_anim_rotateY.o" "WitchRN.phl[168]";
connectAttr "HatSide_r_anim_rotateZ.o" "WitchRN.phl[169]";
connectAttr "Hat_anim_scaleX.o" "WitchRN.phl[170]";
connectAttr "Hat_anim_scaleY.o" "WitchRN.phl[171]";
connectAttr "Hat_anim_scaleZ.o" "WitchRN.phl[172]";
connectAttr "Hat_anim_translateX.o" "WitchRN.phl[173]";
connectAttr "Hat_anim_translateY.o" "WitchRN.phl[174]";
connectAttr "Hat_anim_translateZ.o" "WitchRN.phl[175]";
connectAttr "Hat_anim_rotateX.o" "WitchRN.phl[176]";
connectAttr "Hat_anim_rotateY.o" "WitchRN.phl[177]";
connectAttr "Hat_anim_rotateZ.o" "WitchRN.phl[178]";
connectAttr "Rig_Settings_lArmMode.o" "WitchRN.phl[179]";
connectAttr "Rig_Settings_rArmMode.o" "WitchRN.phl[180]";
connectAttr "Wand_anim_parentConstraint1.w0" "Wand_anim_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "WitchRNfosterParent1.msg" "WitchRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Spell.ma
