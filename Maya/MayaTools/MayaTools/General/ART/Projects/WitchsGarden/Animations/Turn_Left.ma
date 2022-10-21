//Maya ASCII 2020 scene
//Name: Turn_Left.ma
//Last modified: Sun, Mar 27, 2022 10:29:34 PM
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
fileInfo "UUID" "F368211B-4129-711D-9CF6-D58D51C3030D";
createNode transform -s -n "persp";
	rename -uid "692FAAD1-43D8-C5DB-6D90-449A0514A039";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 89.071057907153218 -447.74523425490815 100.84391381913323 ;
	setAttr ".r" -type "double3" 87.682924915599486 0 11.994938475454662 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A65C344-42C5-F928-4B59-579576E31AAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 462.02812003498065;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -25.963549740899897 -2.5834079643725349 55.61987633832581 ;
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
	setAttr ".t" -type "double3" -17.555920067112414 -1002.4559840244749 58.554324903514846 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D3461B45-4BC1-9294-2D5D-C4B7DFDCF724";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.5055658642272;
	setAttr ".ow" 202.89215838901251;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 8.8817841970012523e-15 1.0495818397522889 68.72361677452605 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "68B2002C-4D7E-E55F-B49B-94B7EF45133C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1212608956938 2.0360061871409352 20.460590021292116 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9F5B9B9E-4564-5540-9A36-7CB2DEF02884";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1014.8276964796567;
	setAttr ".ow" 110.69523222061959;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -14.706435583962856 -0.30865682705015374 6.5617505699030305 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "WitchRNfosterParent1";
	rename -uid "F24F1C80-4192-EF13-86FE-D6A13331DCDE";
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
	setAttr ".lr" -type "double3" 100.28136772661422 122.52676834415597 5.6924446240097621 ;
	setAttr ".rst" -type "double3" 22.002342369592132 14.845753467698767 -19.451818753362076 ;
	setAttr ".rsrr" -type "double3" 98.32418128119339 124.07962541903176 8.1581314344560241 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1DA9093B-4E25-AB7F-FED7-DBAA5805F19D";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AD2E31C1-4DB6-FA15-5392-7F8B9135C6D8";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B346CFFF-4B37-25FB-52AD-EEA1B3B7CE9D";
createNode displayLayerManager -n "layerManager";
	rename -uid "9A925F3A-441F-FC56-F28F-4FAB79632BED";
createNode displayLayer -n "defaultLayer";
	rename -uid "C42CFCA3-487B-5B32-E35F-A898CFAA1B3A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3196AED9-466C-B2D0-0715-45A93D2B35CC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0E5CA2FB-49CD-DF62-D0E3-DFB225C3732C";
	setAttr ".g" yes;
createNode reference -n "WitchRN";
	rename -uid "8FEDEF39-4BD5-5428-2F3C-FABE760122E6";
	setAttr -s 106 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"WitchRN"
		"WitchRN" 54
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
		"Witch:Witch_ExportRN" 0
		"WitchRN" 701
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
		1 |Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim 
		"notes" "nts" " -ci 1 -dt \"string\""
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button65\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" -3.0957244005382516 1.24260976549988422 -6.44739479732019927"
		
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
		"rotate" " -type \"double3\" -8.27139457600461014 0.43740600480431019 -1.36220590439721212"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button42\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translate" " -type \"double3\" 0.10896366393680514 0 0.73617699298105888"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotate" " -type \"double3\" 0 8.41938403921334277 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateY" " -av"
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
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"notes" " -type \"string\" \"s\""
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotate" " -type \"double3\" -12.06549809245150939 0.38908356204624828 -1.35640492297005122"
		
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
		"translate" " -type \"double3\" -0.49793079492061076 -0.11101457386214959 -2.66419233422103652"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotate" " -type \"double3\" 0.28312197880837997 -0.50978857813077849 -0.14152266551261394"
		
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"rotateY" " -av"
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
		"rotate" " -type \"double3\" 0 0 -1.44"
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
		"rotate" " -type \"double3\" 0 -1.39893749999999972 0"
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
		"knee_twist" " -k 1 0"
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button60\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"heelPivot" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"ballPivot" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button58\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotate" " -type \"double3\" 0 1.80005096871952119 0"
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
		"rotate" " -type \"double3\" 0 0 -20.44261008815343672"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"knee_twist" " -k 1 0"
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
		"rotate" " -type \"double3\" 0 0 -12.1628928608700182"
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
		"rotate" " -type \"double3\" 11.30000000000000249 2.015 -14.0574975484065412"
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
		"fkOrientation" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button28\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"fkOrientation" " -k 1 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button92\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button93\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button94\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button89\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button90\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button91\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button86\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button87\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button88\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button83\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button84\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button85\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button95\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout43|formLayout107|button96\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"rotate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip02_parent_grp|Witch:HatTip02_anim_space_switcher_follow|Witch:HatTip02_anim_space_switcher|Witch:HatTip02_anim_grp|Witch:HatTip02_anim" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip01_parent_grp|Witch:HatTip01_anim_space_switcher_follow|Witch:HatTip01_anim_space_switcher|Witch:HatTip01_anim_grp|Witch:HatTip01_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_l_parent_grp|Witch:HatSide_l_anim_space_switcher_follow|Witch:HatSide_l_anim_space_switcher|Witch:HatSide_l_anim_grp|Witch:HatSide_l_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatFront_parent_grp|Witch:HatFront_anim_space_switcher_follow|Witch:HatFront_anim_space_switcher|Witch:HatFront_anim_grp|Witch:HatFront_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatSide_r_parent_grp|Witch:HatSide_r_anim_space_switcher_follow|Witch:HatSide_r_anim_space_switcher|Witch:HatSide_r_anim_grp|Witch:HatSide_r_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatBack_parent_grp|Witch:HatBack_anim_space_switcher_follow|Witch:HatBack_anim_space_switcher|Witch:HatBack_anim_grp|Witch:HatBack_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Hat_parent_grp|Witch:Hat_anim_space_switcher_follow|Witch:Hat_anim_space_switcher|Witch:Hat_anim_grp|Witch:Hat_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:HatTip03_parent_grp|Witch:HatTip03_anim_space_switcher_follow|Witch:HatTip03_anim_space_switcher|Witch:HatTip03_anim_grp|Witch:HatTip03_anim" 
		"scale" " -type \"double3\" 1.00000000000000044 1 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout8|rowColumnLayout6|tabLayout2|formLayout105|scrollLayout2|columnLayout10|frameLayout42|formLayout106|button66\""
		
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateX" 
		"WitchRN.placeHolderList[1]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateY" 
		"WitchRN.placeHolderList[2]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateZ" 
		"WitchRN.placeHolderList[3]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateX" 
		"WitchRN.placeHolderList[4]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateY" 
		"WitchRN.placeHolderList[5]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateZ" 
		"WitchRN.placeHolderList[6]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateX" 
		"WitchRN.placeHolderList[7]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateY" 
		"WitchRN.placeHolderList[8]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateZ" 
		"WitchRN.placeHolderList[9]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateX" 
		"WitchRN.placeHolderList[10]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateY" 
		"WitchRN.placeHolderList[11]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateZ" 
		"WitchRN.placeHolderList[12]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.autoShoulders" 
		"WitchRN.placeHolderList[13]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateX" 
		"WitchRN.placeHolderList[14]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateY" 
		"WitchRN.placeHolderList[15]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateZ" 
		"WitchRN.placeHolderList[16]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateX" 
		"WitchRN.placeHolderList[17]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateY" 
		"WitchRN.placeHolderList[18]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateZ" 
		"WitchRN.placeHolderList[19]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.scale" 
		"WitchRN.placeHolderList[20]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translate" 
		"WitchRN.placeHolderList[21]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateX" 
		"WitchRN.placeHolderList[22]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateY" 
		"WitchRN.placeHolderList[23]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateZ" 
		"WitchRN.placeHolderList[24]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivot" 
		"WitchRN.placeHolderList[25]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[26]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotate" 
		"WitchRN.placeHolderList[27]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateX" 
		"WitchRN.placeHolderList[28]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateY" 
		"WitchRN.placeHolderList[29]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateZ" 
		"WitchRN.placeHolderList[30]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateOrder" 
		"WitchRN.placeHolderList[31]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.parentMatrix" 
		"WitchRN.placeHolderList[32]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateX" 
		"WitchRN.placeHolderList[33]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateY" 
		"WitchRN.placeHolderList[34]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateZ" 
		"WitchRN.placeHolderList[35]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateX" 
		"WitchRN.placeHolderList[36]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateX" 
		"WitchRN.placeHolderList[37]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateY" 
		"WitchRN.placeHolderList[38]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateZ" 
		"WitchRN.placeHolderList[39]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateX" 
		"WitchRN.placeHolderList[40]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateY" 
		"WitchRN.placeHolderList[41]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateZ" 
		"WitchRN.placeHolderList[42]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateX" 
		"WitchRN.placeHolderList[43]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateY" 
		"WitchRN.placeHolderList[44]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateZ" 
		"WitchRN.placeHolderList[45]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateX" 
		"WitchRN.placeHolderList[46]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateY" 
		"WitchRN.placeHolderList[47]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateZ" 
		"WitchRN.placeHolderList[48]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.stretch" 
		"WitchRN.placeHolderList[49]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.squash" 
		"WitchRN.placeHolderList[50]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.twist_amount" 
		"WitchRN.placeHolderList[51]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotationInfluence" 
		"WitchRN.placeHolderList[52]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.autoSpine" 
		"WitchRN.placeHolderList[53]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateX" 
		"WitchRN.placeHolderList[54]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateY" 
		"WitchRN.placeHolderList[55]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateZ" 
		"WitchRN.placeHolderList[56]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.autoHips" 
		"WitchRN.placeHolderList[57]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateX" 
		"WitchRN.placeHolderList[58]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateY" 
		"WitchRN.placeHolderList[59]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateZ" 
		"WitchRN.placeHolderList[60]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.lCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[61]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[62]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateX" 
		"WitchRN.placeHolderList[63]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateY" 
		"WitchRN.placeHolderList[64]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateZ" 
		"WitchRN.placeHolderList[65]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateY" 
		"WitchRN.placeHolderList[66]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateZ" 
		"WitchRN.placeHolderList[67]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateX" 
		"WitchRN.placeHolderList[68]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateZ" 
		"WitchRN.placeHolderList[69]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[70]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateZ" 
		"WitchRN.placeHolderList[71]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[72]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.heelPivot" 
		"WitchRN.placeHolderList[73]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r.ballPivot" 
		"WitchRN.placeHolderList[74]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[75]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateZ" 
		"WitchRN.placeHolderList[76]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[77]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateX" 
		"WitchRN.placeHolderList[78]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateY" 
		"WitchRN.placeHolderList[79]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateZ" 
		"WitchRN.placeHolderList[80]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateX" 
		"WitchRN.placeHolderList[81]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateY" 
		"WitchRN.placeHolderList[82]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateZ" 
		"WitchRN.placeHolderList[83]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateX" 
		"WitchRN.placeHolderList[84]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateY" 
		"WitchRN.placeHolderList[85]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateZ" 
		"WitchRN.placeHolderList[86]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateX" 
		"WitchRN.placeHolderList[87]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateY" 
		"WitchRN.placeHolderList[88]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateZ" 
		"WitchRN.placeHolderList[89]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateX" 
		"WitchRN.placeHolderList[90]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateY" 
		"WitchRN.placeHolderList[91]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateZ" 
		"WitchRN.placeHolderList[92]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateX" 
		"WitchRN.placeHolderList[93]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateY" 
		"WitchRN.placeHolderList[94]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateX" 
		"WitchRN.placeHolderList[95]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateY" 
		"WitchRN.placeHolderList[96]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateZ" 
		"WitchRN.placeHolderList[97]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivot" 
		"WitchRN.placeHolderList[98]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[99]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateX" 
		"WitchRN.placeHolderList[100]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateY" 
		"WitchRN.placeHolderList[101]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateZ" 
		"WitchRN.placeHolderList[102]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateOrder" 
		"WitchRN.placeHolderList[103]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.parentInverseMatrix" 
		"WitchRN.placeHolderList[104]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.lArmMode" "WitchRN.placeHolderList[105]" 
		""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.rArmMode" "WitchRN.placeHolderList[106]" 
		""
		"Witch:Witch_ExportRN" 6
		2 "|Witch:witch" "visibility" " 1"
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
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2343\n            -height 1516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2343\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2343\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8957C334-4823-404C-03FC-1298E9D42CC2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 47 -ast 0 -aet 47 ";
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
createNode animCurveTL -n "ik_foot_anim_l_translateX";
	rename -uid "BED4B673-4879-B7CB-B68D-4C8870E786C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ik_foot_anim_l_translateY";
	rename -uid "DAA05ED1-48FD-1507-8D15-FE989438B7D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 -8.8817841970012523e-16 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "ik_foot_anim_l_translateZ";
	rename -uid "DA484E11-4C29-B02B-9D27-6799C353C342";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 2.4330472036958852 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "hip_anim_rotateY";
	rename -uid "636BB0B2-4CCC-6D13-2D81-67A81F524329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0.81 24 0 36 -2.397 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateX";
	rename -uid "959100C0-4E33-FF66-1210-65BA8258456F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 0 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateY";
	rename -uid "54618D2C-4F91-19DF-3D24-D68936508B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 0 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateZ";
	rename -uid "F430A97A-4496-F1C2-80A1-A0834E2225AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 -24.325785721740029 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "heel_ctrl_r_rotateX";
	rename -uid "EC6159CC-4EBE-C98B-FBFB-0BBE83423860";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "heel_ctrl_r_rotateY";
	rename -uid "D6F7D71D-421D-5D39-B2C8-81BA03297928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "heel_ctrl_r_rotateZ";
	rename -uid "9443AD7A-4DB5-BD83-4957-BFA2E5B4D12E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "heel_ctrl_r_heelPivot";
	rename -uid "5FF65433-4691-9924-65BA-2BA951B31886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "heel_ctrl_r_ballPivot";
	rename -uid "1955DC1F-4D03-6731-9AA1-B9A8473AA85D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateX";
	rename -uid "95658F4B-495A-50B0-FF8D-F58549CA7E21";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0.0039877038726136693 23 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateY";
	rename -uid "B6F34839-4B70-9BB6-F0B6-2DADED4CA78B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 11.124873870654714 23 5.3620053234428395
		 36 0;
	setAttr -s 4 ".kit[1:3]"  18 1 1;
	setAttr -s 4 ".kot[1:3]"  18 1 1;
	setAttr -s 4 ".kix[0:3]"  1 1 0.98040498796942488 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 -0.19699253682480442 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.98040498323512026 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.19699256038679136 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateZ";
	rename -uid "75613D28-4900-93BA-3A3D-B19D35FD14EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 -25.442137724863045 23 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "neck_01_fk_anim_rotateX";
	rename -uid "753A1580-4E85-CD75-9F21-77B851DB264A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.300000000000002 9 11.464617944558887
		 28 11.300000000000002;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "neck_01_fk_anim_rotateY";
	rename -uid "2ED6B831-4153-4230-93D1-4D8162974880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.015 9 2.4662544432661386 28 2.015;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "neck_01_fk_anim_translateX";
	rename -uid "FC6A0CC6-43CA-4DB3-BEE7-069855B22491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 28 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "neck_01_fk_anim_translateY";
	rename -uid "387BE5CC-4CC3-26AC-B5FB-0291CEBE1DD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 28 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "neck_01_fk_anim_translateZ";
	rename -uid "B76F15F4-4E12-A944-5F3C-8094E2E57D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 28 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_elbow_l_anim_rotateX";
	rename -uid "481FC32A-41B9-A769-289E-37A08E5B96DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.9594761222354715 24 -2.9594761222354715
		 36 -3.2319726788410308 48 -2.9594761222354715;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_elbow_l_anim_rotateY";
	rename -uid "AA230FCD-4E17-E77E-00FC-E38146A0FA7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5823203535126678 24 1.5823203535126678
		 36 0.90289917748710091 48 1.5823203535126678;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_elbow_l_anim_rotateZ";
	rename -uid "6C4FDDE7-4431-1BF0-632D-A5888B24A541";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.1896984870424695 24 -0.1896984870424695
		 36 -12.705091107597925 48 -0.1896984870424695;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "fk_elbow_l_anim_translateX";
	rename -uid "E5744362-40F2-A00C-0BF4-1FA2E3B70F31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 0 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "fk_elbow_l_anim_translateY";
	rename -uid "A02E772D-4822-2215-22F8-32B6518C26F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 0 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "fk_elbow_l_anim_translateZ";
	rename -uid "866703CB-41F6-59D6-3957-8B9C690C67B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 0 36 0 48 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateX";
	rename -uid "1EAC4694-49FE-2BC5-F6EA-249F967AF18E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6956422150845576 12 -3.8431882486198474
		 24 -3.6956422150845576;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateY";
	rename -uid "8CC231E7-49F2-B364-AACB-BD96E1F6E87E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5849060166293654 12 1.1824616361998215
		 24 1.5849060166293654;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateZ";
	rename -uid "08922298-4E22-3106-FC7F-129AA00F4254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.21409548772147224 12 -6.3184816714014209
		 24 -0.21409548772147224;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateX";
	rename -uid "54865EA4-4E60-1F26-9BA0-26B00FEAB651";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateY";
	rename -uid "0CBA8619-4A76-1CE1-2F46-14A877052EFD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateZ";
	rename -uid "BD7114F4-4E9B-6593-4957-F482EA24FE75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "clavicle_r_anim_translateX";
	rename -uid "C494ED5F-4F7B-B8B4-B695-A0B6936BF917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 -0.089397509959394356 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "clavicle_r_anim_translateY";
	rename -uid "10C363A8-45C9-A9D7-584A-1C8DE91C423A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 -9.2634233617161499e-15 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "clavicle_r_anim_translateZ";
	rename -uid "36E2F6DF-424D-C7C4-9C12-CD9E5B1A6A1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0.88003373869139678 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "clavicle_r_anim_rotateX";
	rename -uid "CFE879DF-4465-E03F-6EDC-ECA7CCF82801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 24 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "clavicle_l_anim_translateX";
	rename -uid "DB62C9FB-4C28-46EE-4D83-8899EF3D9653";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 0.13590740629208786 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "clavicle_l_anim_translateY";
	rename -uid "98676BD0-4EAA-9576-AF5B-7F8863986657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 -1.8041124150158794e-16 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "clavicle_l_anim_translateZ";
	rename -uid "744682AA-4834-5FBE-9F86-A18E1F85A842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 0.91821348579092033 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "clavicle_l_anim_rotateX";
	rename -uid "567735A8-40FF-3E50-D2F9-8E8805688513";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 0 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "clavicle_l_anim_rotateY";
	rename -uid "E836E16B-4616-3967-1F6E-BB85F5D3F444";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.4193840392133428 20 8.4193840392133428
		 34 8.4193840392133428 46 8.4193840392133428;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "clavicle_l_anim_rotateZ";
	rename -uid "78CD2741-496B-C3BB-5554-7EA2E1EC3D75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 0 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "clavicle_l_anim_autoShoulders";
	rename -uid "A2A9CE03-4F6E-3994-9536-B281E20856D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 34 0 46 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "chest_ik_anim_translateX";
	rename -uid "A69A0E32-4574-D098-895A-589853127777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTL -n "chest_ik_anim_translateY";
	rename -uid "4A92EA0B-48AA-EAC5-1C51-749E335B1C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTL -n "chest_ik_anim_translateZ";
	rename -uid "5BFA7C51-47AB-45C8-752C-AA8B2CB9ACEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTA -n "chest_ik_anim_rotateX";
	rename -uid "4EF9F227-4C76-727F-B15E-6BBD9C22D9CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 2.9 20 0;
createNode animCurveTA -n "chest_ik_anim_rotateY";
	rename -uid "FF7B5E20-4EBF-3108-4906-61B699C9DB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0.074 20 0;
createNode animCurveTA -n "chest_ik_anim_rotateZ";
	rename -uid "0CAC6736-455A-A45D-2DE3-A98A11759485";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.44 10 -1.44 20 -1.44;
createNode animCurveTU -n "chest_ik_anim_stretch";
	rename -uid "2BC49386-45BE-E02F-F935-6DA6DFE2F5BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTU -n "chest_ik_anim_squash";
	rename -uid "B411F65B-436B-C3D1-91BC-2FA6DFED5070";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTU -n "chest_ik_anim_twist_amount";
	rename -uid "D1FBC793-4AE4-0D75-9711-058687A3611E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 20 1;
createNode animCurveTU -n "chest_ik_anim_autoSpine";
	rename -uid "94919199-45E8-7AF0-C6CF-738DF3D5476F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 20 0;
createNode animCurveTU -n "chest_ik_anim_rotationInfluence";
	rename -uid "CBFE0486-43A0-EB96-0415-8DB14F6B4409";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.25 10 0.25 20 0.25;
createNode animCurveTA -n "ik_foot_anim_r_rotateZ";
	rename -uid "B5CE4F24-4FD0-6475-5AF5-5DBEAB3D9566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 -24.228278622996665 48 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "body_anim_translateX";
	rename -uid "81251556-404E-10F0-E269-44AE06ADFEA3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 -0.40680686805405725 12 -0.99 36 -0.40680686805405725
		 60 -0.99;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "body_anim_translateY";
	rename -uid "2E2D9F58-43CD-127C-DB78-1DAA7FB86743";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 -0.13112838383662173 12 -0.006 36 -0.13112838383662173
		 60 -0.006;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.99988751898081607 1 0.99988751898081607;
	setAttr -s 4 ".koy[0:3]"  0 0.014998312784712241 0 0.014998312784712241;
createNode animCurveTL -n "body_anim_translateZ";
	rename -uid "3F450CE3-48CC-FD90-D0EC-7AABA2FD0945";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 -3.6167279516693758 12 2.583 36 -3.6167279516693758
		 60 2.583;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.91825213492860758 1 0.91825213492860758;
	setAttr -s 4 ".koy[0:3]"  0 -0.39599623318796118 0 -0.39599623318796118;
createNode animCurveTA -n "body_anim_rotateX";
	rename -uid "7B3C5380-42F6-7AE7-85E5-CCBAF680F30B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 -1.9017940197701924 12 12.081668371132686
		 36 -1.9017940197701924 60 12.081668371132686;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "body_anim_rotateY";
	rename -uid "72ACE654-488F-F507-908E-D2AF010651C2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 -1.3763757556948675 12 4.1697821807153002
		 36 -1.3763757556948675 60 4.1697821807153002;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "body_anim_rotateZ";
	rename -uid "26D074A7-40E9-A26C-5CAC-098D2070E5AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  -12 0.35161360268310177 12 -2.8044585137694793
		 36 0.35161360268310177 60 -2.8044585137694793;
	setAttr -s 4 ".kit[0:3]"  18 1 18 1;
	setAttr -s 4 ".kot[2:3]"  18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "hip_anim_rotateX";
	rename -uid "B675E157-4E39-A30B-3B53-3BB8D92CA51F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "hip_anim_rotateZ";
	rename -uid "D72DBB12-4165-485F-F2A9-3ABFED135095";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "hip_anim_translateX";
	rename -uid "B98B3081-4E35-EC64-27DE-F6B0F41C2DD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "hip_anim_translateY";
	rename -uid "32275CCE-4010-0BF2-9174-9C9E56D8EC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTL -n "hip_anim_translateZ";
	rename -uid "D62F1B57-4849-F848-76E6-03A3B91DD00F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTU -n "hip_anim_lCalfTwistCtrlVis";
	rename -uid "86BE3FAF-4200-F6F4-0205-C5A49875892E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "hip_anim_rCalfTwistCtrlVis";
	rename -uid "83665551-4635-B466-117D-7ABE7FA7BBC4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "hip_anim_autoHips";
	rename -uid "DEE0D06F-4C84-9353-3E8D-50A2A3C5429C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  36 0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateX";
	rename -uid "BBA8B6ED-4810-E890-8D46-9486CB25FEC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 -7.5486245719903025 37 -13.837345101696128
		 47 -7.549;
createNode animCurveTA -n "fk_wrist_r_anim_rotateY";
	rename -uid "A5B25070-4AFA-99C0-833A-2BBD25067A20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0.38908356204624822 37 0.38908356204624833
		 47 0.389;
createNode animCurveTA -n "fk_wrist_r_anim_rotateZ";
	rename -uid "BCCA1DF1-453F-7FF3-D375-AAA19924B3C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 -1.356404922970051 37 -1.3564049229700514
		 47 -1.356;
createNode animCurveTL -n "fk_wrist_r_anim_translateX";
	rename -uid "ED40DFBF-4D81-FAFA-5D76-98811BE167B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0 37 0 47 0;
createNode animCurveTL -n "fk_wrist_r_anim_translateY";
	rename -uid "F807074B-4762-1D12-8DAE-F898D99701E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0 37 0 47 0;
createNode animCurveTL -n "fk_wrist_r_anim_translateZ";
	rename -uid "E31E0723-42EE-1B9F-739C-099CF19D9696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  17 0 37 0 47 0;
createNode unknown -n "ExportAnimationSettings";
	rename -uid "2D64FDC3-4C00-9055-3A59-7587D1EB4235";
	addAttr -ci true -sn "settings" -ln "settings" -dt "string";
	addAttr -ci true -sn "sequence0" -ln "sequence0" -dt "string";
	setAttr ".settings" -type "string" "[false, true, false, null, null]";
	setAttr ".sequence0" -type "string" "D:/Capstone/PlayerCharacter/Animation/Witch@leftTurn.fbx::0::47::30 FPS::Independent Euler Angle::Witch";
select -ne :time1;
	setAttr ".o" 30;
	setAttr ".unw" 30;
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
connectAttr "fk_elbow_l_anim_translateX.o" "WitchRN.phl[1]";
connectAttr "fk_elbow_l_anim_translateY.o" "WitchRN.phl[2]";
connectAttr "fk_elbow_l_anim_translateZ.o" "WitchRN.phl[3]";
connectAttr "fk_elbow_l_anim_rotateX.o" "WitchRN.phl[4]";
connectAttr "fk_elbow_l_anim_rotateY.o" "WitchRN.phl[5]";
connectAttr "fk_elbow_l_anim_rotateZ.o" "WitchRN.phl[6]";
connectAttr "clavicle_l_anim_translateX.o" "WitchRN.phl[7]";
connectAttr "clavicle_l_anim_translateY.o" "WitchRN.phl[8]";
connectAttr "clavicle_l_anim_translateZ.o" "WitchRN.phl[9]";
connectAttr "clavicle_l_anim_rotateX.o" "WitchRN.phl[10]";
connectAttr "clavicle_l_anim_rotateY.o" "WitchRN.phl[11]";
connectAttr "clavicle_l_anim_rotateZ.o" "WitchRN.phl[12]";
connectAttr "clavicle_l_anim_autoShoulders.o" "WitchRN.phl[13]";
connectAttr "fk_elbow_r_anim_translateX.o" "WitchRN.phl[14]";
connectAttr "fk_elbow_r_anim_translateY.o" "WitchRN.phl[15]";
connectAttr "fk_elbow_r_anim_translateZ.o" "WitchRN.phl[16]";
connectAttr "fk_elbow_r_anim_rotateX.o" "WitchRN.phl[17]";
connectAttr "fk_elbow_r_anim_rotateY.o" "WitchRN.phl[18]";
connectAttr "fk_elbow_r_anim_rotateZ.o" "WitchRN.phl[19]";
connectAttr "WitchRN.phl[20]" "Wand_anim_parentConstraint1.tg[0].ts";
connectAttr "WitchRN.phl[21]" "Wand_anim_parentConstraint1.tg[0].tt";
connectAttr "fk_wrist_r_anim_translateX.o" "WitchRN.phl[22]";
connectAttr "fk_wrist_r_anim_translateY.o" "WitchRN.phl[23]";
connectAttr "fk_wrist_r_anim_translateZ.o" "WitchRN.phl[24]";
connectAttr "WitchRN.phl[25]" "Wand_anim_parentConstraint1.tg[0].trp";
connectAttr "WitchRN.phl[26]" "Wand_anim_parentConstraint1.tg[0].trt";
connectAttr "WitchRN.phl[27]" "Wand_anim_parentConstraint1.tg[0].tr";
connectAttr "fk_wrist_r_anim_rotateX.o" "WitchRN.phl[28]";
connectAttr "fk_wrist_r_anim_rotateY.o" "WitchRN.phl[29]";
connectAttr "fk_wrist_r_anim_rotateZ.o" "WitchRN.phl[30]";
connectAttr "WitchRN.phl[31]" "Wand_anim_parentConstraint1.tg[0].tro";
connectAttr "WitchRN.phl[32]" "Wand_anim_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r_anim_translateX.o" "WitchRN.phl[33]";
connectAttr "clavicle_r_anim_translateY.o" "WitchRN.phl[34]";
connectAttr "clavicle_r_anim_translateZ.o" "WitchRN.phl[35]";
connectAttr "clavicle_r_anim_rotateX.o" "WitchRN.phl[36]";
connectAttr "body_anim_translateX.o" "WitchRN.phl[37]";
connectAttr "body_anim_translateY.o" "WitchRN.phl[38]";
connectAttr "body_anim_translateZ.o" "WitchRN.phl[39]";
connectAttr "body_anim_rotateX.o" "WitchRN.phl[40]";
connectAttr "body_anim_rotateY.o" "WitchRN.phl[41]";
connectAttr "body_anim_rotateZ.o" "WitchRN.phl[42]";
connectAttr "chest_ik_anim_translateX.o" "WitchRN.phl[43]";
connectAttr "chest_ik_anim_translateY.o" "WitchRN.phl[44]";
connectAttr "chest_ik_anim_translateZ.o" "WitchRN.phl[45]";
connectAttr "chest_ik_anim_rotateX.o" "WitchRN.phl[46]";
connectAttr "chest_ik_anim_rotateY.o" "WitchRN.phl[47]";
connectAttr "chest_ik_anim_rotateZ.o" "WitchRN.phl[48]";
connectAttr "chest_ik_anim_stretch.o" "WitchRN.phl[49]";
connectAttr "chest_ik_anim_squash.o" "WitchRN.phl[50]";
connectAttr "chest_ik_anim_twist_amount.o" "WitchRN.phl[51]";
connectAttr "chest_ik_anim_rotationInfluence.o" "WitchRN.phl[52]";
connectAttr "chest_ik_anim_autoSpine.o" "WitchRN.phl[53]";
connectAttr "hip_anim_rotateX.o" "WitchRN.phl[54]";
connectAttr "hip_anim_rotateY.o" "WitchRN.phl[55]";
connectAttr "hip_anim_rotateZ.o" "WitchRN.phl[56]";
connectAttr "hip_anim_autoHips.o" "WitchRN.phl[57]";
connectAttr "hip_anim_translateX.o" "WitchRN.phl[58]";
connectAttr "hip_anim_translateY.o" "WitchRN.phl[59]";
connectAttr "hip_anim_translateZ.o" "WitchRN.phl[60]";
connectAttr "hip_anim_lCalfTwistCtrlVis.o" "WitchRN.phl[61]";
connectAttr "hip_anim_rCalfTwistCtrlVis.o" "WitchRN.phl[62]";
connectAttr "ik_foot_anim_l_translateX.o" "WitchRN.phl[63]";
connectAttr "ik_foot_anim_l_translateY.o" "WitchRN.phl[64]";
connectAttr "ik_foot_anim_l_translateZ.o" "WitchRN.phl[65]";
connectAttr "toe_tip_ctrl_l_rotateY.o" "WitchRN.phl[66]";
connectAttr "toe_tip_ctrl_l_rotateZ.o" "WitchRN.phl[67]";
connectAttr "toe_tip_ctrl_l_rotateX.o" "WitchRN.phl[68]";
connectAttr "ik_foot_anim_r_rotateZ.o" "WitchRN.phl[69]";
connectAttr "heel_ctrl_r_rotateY.o" "WitchRN.phl[70]";
connectAttr "heel_ctrl_r_rotateZ.o" "WitchRN.phl[71]";
connectAttr "heel_ctrl_r_rotateX.o" "WitchRN.phl[72]";
connectAttr "heel_ctrl_r_heelPivot.o" "WitchRN.phl[73]";
connectAttr "heel_ctrl_r_ballPivot.o" "WitchRN.phl[74]";
connectAttr "toe_tip_ctrl_r_rotateY.o" "WitchRN.phl[75]";
connectAttr "toe_tip_ctrl_r_rotateZ.o" "WitchRN.phl[76]";
connectAttr "toe_tip_ctrl_r_rotateX.o" "WitchRN.phl[77]";
connectAttr "fk_thigh_r_anim_rotateX.o" "WitchRN.phl[78]";
connectAttr "fk_thigh_r_anim_rotateY.o" "WitchRN.phl[79]";
connectAttr "fk_thigh_r_anim_rotateZ.o" "WitchRN.phl[80]";
connectAttr "fk_calf_r_anim_rotateX.o" "WitchRN.phl[81]";
connectAttr "fk_calf_r_anim_rotateY.o" "WitchRN.phl[82]";
connectAttr "fk_calf_r_anim_rotateZ.o" "WitchRN.phl[83]";
connectAttr "fk_foot_r_anim_rotateX.o" "WitchRN.phl[84]";
connectAttr "fk_foot_r_anim_rotateY.o" "WitchRN.phl[85]";
connectAttr "fk_foot_r_anim_rotateZ.o" "WitchRN.phl[86]";
connectAttr "fk_ball_r_anim_rotateX.o" "WitchRN.phl[87]";
connectAttr "fk_ball_r_anim_rotateY.o" "WitchRN.phl[88]";
connectAttr "fk_ball_r_anim_rotateZ.o" "WitchRN.phl[89]";
connectAttr "neck_01_fk_anim_translateX.o" "WitchRN.phl[90]";
connectAttr "neck_01_fk_anim_translateY.o" "WitchRN.phl[91]";
connectAttr "neck_01_fk_anim_translateZ.o" "WitchRN.phl[92]";
connectAttr "neck_01_fk_anim_rotateX.o" "WitchRN.phl[93]";
connectAttr "neck_01_fk_anim_rotateY.o" "WitchRN.phl[94]";
connectAttr "Wand_anim_parentConstraint1.ctx" "WitchRN.phl[95]";
connectAttr "Wand_anim_parentConstraint1.cty" "WitchRN.phl[96]";
connectAttr "Wand_anim_parentConstraint1.ctz" "WitchRN.phl[97]";
connectAttr "WitchRN.phl[98]" "Wand_anim_parentConstraint1.crp";
connectAttr "WitchRN.phl[99]" "Wand_anim_parentConstraint1.crt";
connectAttr "Wand_anim_parentConstraint1.crx" "WitchRN.phl[100]";
connectAttr "Wand_anim_parentConstraint1.cry" "WitchRN.phl[101]";
connectAttr "Wand_anim_parentConstraint1.crz" "WitchRN.phl[102]";
connectAttr "WitchRN.phl[103]" "Wand_anim_parentConstraint1.cro";
connectAttr "WitchRN.phl[104]" "Wand_anim_parentConstraint1.cpim";
connectAttr "Rig_Settings_lArmMode.o" "WitchRN.phl[105]";
connectAttr "Rig_Settings_rArmMode.o" "WitchRN.phl[106]";
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
// End of Turn_Left.ma
