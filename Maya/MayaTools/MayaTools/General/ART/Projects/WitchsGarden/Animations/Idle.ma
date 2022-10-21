//Maya ASCII 2020 scene
//Name: Idle.ma
//Last modified: Wed, Dec 01, 2021 06:23:20 PM
//Codeset: 1252
file -rdi 1 -ns "Witch" -rfn "WitchRN" -op "VERS|2020|UVER|undef|MADE|undef|CHNG|Sun, Nov 21, 2021 10:52:15 PM|ICON|undef|INFO|undef|OBJN|2312|INCL|D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/ExportFiles/Witch_Export.mb(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
		 -typ "mayaBinary" "D:/Capstone/WitchsGarden/Maya/MayaTools/MayaTools/General/ART/Projects/WitchsGarden/AnimRigs/Witch.mb";
file -rdi 2 -ns ":" -rfn "Witch:Witch_ExportRN" -op "VERS|2020|UVER|undef|MADE|undef|CHNG|Wed, Nov 17, 2021 07:24:55 PM|ICON|undef|INFO|undef|OBJN|2922|INCL|undef(|LUNI|cm|TUNI|film|AUNI|deg|TDUR|141120000|"
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
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "D4885AF1-4644-74FD-9D76-F4B4B38304D0";
createNode transform -s -n "persp";
	rename -uid "692FAAD1-43D8-C5DB-6D90-449A0514A039";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -83.321860162699323 -142.28779438159179 133.95303579906937 ;
	setAttr ".r" -type "double3" 70.282924915450991 -6.3611093629270351e-15 326.39492012582286 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A65C344-42C5-F928-4B59-579576E31AAA";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 143.95558697037356;
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
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "92FAD20B-4623-4555-15AD-4FBF78769B4F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 19.597908401052329 -1002.4559840244749 69.192856204144505 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D3461B45-4BC1-9294-2D5D-C4B7DFDCF724";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.5055658642272;
	setAttr ".ow" 211.81738509780189;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 8.8817841970012523e-15 1.0495818397522889 68.72361677452605 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "68B2002C-4D7E-E55F-B49B-94B7EF45133C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9F5B9B9E-4564-5540-9A36-7CB2DEF02884";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "WitchRNfosterParent1";
	rename -uid "2AFE368C-4CEC-2A35-56FB-C5B337F89A0D";
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
	setAttr ".lr" -type "double3" 105.60449189308869 126.65241141646837 10.222544240327835 ;
	setAttr ".rst" -type "double3" 22.002342369592132 14.845753467698767 -19.451818753362076 ;
	setAttr ".rsrr" -type "double3" 98.32418128119339 124.07962541903176 8.1581314344560241 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E131F098-40E5-5924-D469-75B8B7200A70";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1E88FEE3-4688-BA5F-5A8F-378EF96E6E05";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DEE2E27A-4705-A099-10C4-9BB89407929B";
createNode displayLayerManager -n "layerManager";
	rename -uid "CF63D782-4A34-E579-060F-F19CA6AD6564";
createNode displayLayer -n "defaultLayer";
	rename -uid "C42CFCA3-487B-5B32-E35F-A898CFAA1B3A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "ED705825-4F3B-7D0E-4D36-C7A53B45DAB8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0E5CA2FB-49CD-DF62-D0E3-DFB225C3732C";
	setAttr ".g" yes;
createNode reference -n "WitchRN";
	rename -uid "8FEDEF39-4BD5-5428-2F3C-FABE760122E6";
	setAttr -s 221 ".phl";
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
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"WitchRN"
		"WitchRN" 36
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
		"Witch:Witch_ExportRN" 0
		"WitchRN" 699
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button64\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button65\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotate" " -type \"double3\" 8.6682886561511836 27.17240931326937314 4.1990496598680398"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button38\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button40\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button42\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translate" " -type \"double3\" 0.076991364526405759 0 0.54667058337173446"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotate" " -type \"double3\" 0 5.78704133084068495 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_clavicle_l_anim_grp|Witch:fk_clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button46\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button119\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:index_l_ik_anim_grp|Witch:index_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button107\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:middle_l_ik_anim_grp|Witch:middle_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button108\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:ring_l_ik_anim_grp|Witch:ring_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button109\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:pinky_l_ik_anim_grp|Witch:pinky_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button110\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:thumb_l_ik_anim_grp|Witch:thumb_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button111\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_l_anim_space_switcher_follow|Witch:ik_elbow_l_anim_space_switcher|Witch:ik_elbow_l_anim_grp|Witch:ik_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button44\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_l|Witch:upperarm_l_twist_anim_grp|Witch:upperarm_l_twist_driven_grp|Witch:upperarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button75\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_l_roll_grp|Witch:lowerarm_l_twist_joint|Witch:lowerarm_l_twist_mod|Witch:lowerarm_l_twist_anim_grp|Witch:lowerarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button77\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button39\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button41\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button43\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translate" " -type \"double3\" -0.048730974513376268 0 0.43656825768652097"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotate" " -type \"double3\" 0 -4.63348119192711483 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotatePivot" " -type \"double3\" -12.81598183692610604 1.66503360760722385 96.71278242793469815"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"scalePivot" " -type \"double3\" -12.81598183692610604 1.66503360760722385 96.71278242793469815"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_clavicle_r_anim_grp|Witch:fk_clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button47\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button156\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:index_r_ik_anim_grp|Witch:index_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button144\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:middle_r_ik_anim_grp|Witch:middle_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button145\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:ring_r_ik_anim_grp|Witch:ring_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button146\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:pinky_r_ik_anim_grp|Witch:pinky_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button147\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:thumb_r_ik_anim_grp|Witch:thumb_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button148\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_r_anim_space_switcher_follow|Witch:ik_elbow_r_anim_space_switcher|Witch:ik_elbow_r_anim_grp|Witch:ik_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button45\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_r|Witch:upperarm_r_twist_anim_grp|Witch:upperarm_r_twist_driven_grp|Witch:upperarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button76\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_r_roll_grp|Witch:lowerarm_r_twist_joint|Witch:lowerarm_r_twist_mod|Witch:lowerarm_r_twist_anim_grp|Witch:lowerarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button78\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translate" " -type \"double3\" 0.04578551239670281 0 -2.9486502568805939"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotate" " -type \"double3\" -3.36254802295562794 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button34\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button31\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button32\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim|Witch:spine_03_anim_grp|Witch:spine_03_anim_offset_grp|Witch:spine_03_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button33\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button29\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotate" " -type \"double3\" 0.034614006385741573 -2.26384367532978281 3.18030721026723384"
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button30\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translate" " -type \"double3\" 0 1.41868587801896284 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotate" " -type \"double3\" 0 -0.90428726044208019 0"
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button35\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button56\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button60\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button58\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button62\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button48\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button50\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button52\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim|Witch:fk_ball_l_anim_grp|Witch:fk_ball_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button54\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:thigh_twist_grp_l|Witch:l_thigh_twist_01_anim_grp|Witch:l_thigh_twist_01_driven_grp|Witch:l_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button79\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:calf_l_roll_grp|Witch:calf_l_twist_joint|Witch:calf_l_twist_mod|Witch:calf_l_twist_anim_grp|Witch:calf_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button81\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translate" " -type \"double3\" -3.06045702310374024 0 0"
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button57\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button61\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button59\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotate" " -type \"double3\" 0 5.67312873799331108 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button63\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button49\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button51\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button53\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button55\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"scale" " -type \"double3\" 1 0.99999999999999989 0.99999999999999978"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button80\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:calf_r_roll_grp|Witch:calf_r_twist_joint|Witch:calf_r_twist_mod|Witch:calf_r_twist_anim_grp|Witch:calf_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button82\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotate" " -type \"double3\" -6.12581196674132578 0.0022079866765864179 1.51368022084255038"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"fkOrientation" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button28\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button27\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:index_l_poleVector_grp|Witch:index_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button113\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:middle_l_poleVector_grp|Witch:middle_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button114\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:ring_l_poleVector_grp|Witch:ring_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button115\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:pinky_l_poleVector_grp|Witch:pinky_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button116\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:thumb_l_poleVector_grp|Witch:thumb_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button117\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button92\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button93\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button94\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button89\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button90\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button91\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button86\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button87\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button88\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button83\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button84\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button85\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button95\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button96\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button97\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:index_r_poleVector_grp|Witch:index_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button150\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:middle_r_poleVector_grp|Witch:middle_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button151\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:ring_r_poleVector_grp|Witch:ring_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button152\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:pinky_r_poleVector_grp|Witch:pinky_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button153\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:thumb_r_poleVector_grp|Witch:thumb_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button154\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button129\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button130\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button131\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button126\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button127\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button128\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button123\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button124\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button125\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button120\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button121\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button122\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button132\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button133\""
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout36|formLayout97|button134\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout95|scrollLayout2|columnLayout5|frameLayout35|formLayout96|button66\""
		
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateX" 
		"WitchRN.placeHolderList[1]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateY" 
		"WitchRN.placeHolderList[2]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.translateZ" 
		"WitchRN.placeHolderList[3]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.rotateX" 
		"WitchRN.placeHolderList[4]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim.rotateZ" 
		"WitchRN.placeHolderList[5]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateX" 
		"WitchRN.placeHolderList[6]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateY" 
		"WitchRN.placeHolderList[7]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateZ" 
		"WitchRN.placeHolderList[8]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateX" 
		"WitchRN.placeHolderList[9]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateY" 
		"WitchRN.placeHolderList[10]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateZ" 
		"WitchRN.placeHolderList[11]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateX" 
		"WitchRN.placeHolderList[12]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateY" 
		"WitchRN.placeHolderList[13]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateZ" 
		"WitchRN.placeHolderList[14]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateX" 
		"WitchRN.placeHolderList[15]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateY" 
		"WitchRN.placeHolderList[16]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateZ" 
		"WitchRN.placeHolderList[17]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateX" 
		"WitchRN.placeHolderList[18]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateY" 
		"WitchRN.placeHolderList[19]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateZ" 
		"WitchRN.placeHolderList[20]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateX" 
		"WitchRN.placeHolderList[21]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateY" 
		"WitchRN.placeHolderList[22]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateZ" 
		"WitchRN.placeHolderList[23]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.autoShoulders" 
		"WitchRN.placeHolderList[24]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateX" 
		"WitchRN.placeHolderList[25]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateY" 
		"WitchRN.placeHolderList[26]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateZ" 
		"WitchRN.placeHolderList[27]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateX" 
		"WitchRN.placeHolderList[28]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateZ" 
		"WitchRN.placeHolderList[29]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateX" 
		"WitchRN.placeHolderList[30]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateY" 
		"WitchRN.placeHolderList[31]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateZ" 
		"WitchRN.placeHolderList[32]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateX" 
		"WitchRN.placeHolderList[33]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateY" 
		"WitchRN.placeHolderList[34]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateZ" 
		"WitchRN.placeHolderList[35]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.scale" 
		"WitchRN.placeHolderList[36]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translate" 
		"WitchRN.placeHolderList[37]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateX" 
		"WitchRN.placeHolderList[38]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateY" 
		"WitchRN.placeHolderList[39]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateZ" 
		"WitchRN.placeHolderList[40]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivot" 
		"WitchRN.placeHolderList[41]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[42]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotate" 
		"WitchRN.placeHolderList[43]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateX" 
		"WitchRN.placeHolderList[44]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateY" 
		"WitchRN.placeHolderList[45]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateZ" 
		"WitchRN.placeHolderList[46]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateOrder" 
		"WitchRN.placeHolderList[47]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.parentMatrix" 
		"WitchRN.placeHolderList[48]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateX" 
		"WitchRN.placeHolderList[49]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateY" 
		"WitchRN.placeHolderList[50]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateZ" 
		"WitchRN.placeHolderList[51]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateX" 
		"WitchRN.placeHolderList[52]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateY" 
		"WitchRN.placeHolderList[53]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateZ" 
		"WitchRN.placeHolderList[54]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.autoShoulders" 
		"WitchRN.placeHolderList[55]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateX" 
		"WitchRN.placeHolderList[56]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateY" 
		"WitchRN.placeHolderList[57]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateZ" 
		"WitchRN.placeHolderList[58]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateX" 
		"WitchRN.placeHolderList[59]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateY" 
		"WitchRN.placeHolderList[60]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateZ" 
		"WitchRN.placeHolderList[61]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateX" 
		"WitchRN.placeHolderList[62]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateY" 
		"WitchRN.placeHolderList[63]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateZ" 
		"WitchRN.placeHolderList[64]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateX" 
		"WitchRN.placeHolderList[65]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateY" 
		"WitchRN.placeHolderList[66]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateZ" 
		"WitchRN.placeHolderList[67]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.autoHips" 
		"WitchRN.placeHolderList[68]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateX" 
		"WitchRN.placeHolderList[69]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateY" 
		"WitchRN.placeHolderList[70]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateZ" 
		"WitchRN.placeHolderList[71]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.lCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[72]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[73]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateY" 
		"WitchRN.placeHolderList[74]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateZ" 
		"WitchRN.placeHolderList[75]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateX" 
		"WitchRN.placeHolderList[76]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateX" 
		"WitchRN.placeHolderList[77]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateY" 
		"WitchRN.placeHolderList[78]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateZ" 
		"WitchRN.placeHolderList[79]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateX" 
		"WitchRN.placeHolderList[80]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateY" 
		"WitchRN.placeHolderList[81]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateZ" 
		"WitchRN.placeHolderList[82]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.knee_twist" 
		"WitchRN.placeHolderList[83]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretchBias" 
		"WitchRN.placeHolderList[84]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretch" 
		"WitchRN.placeHolderList[85]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.squash" 
		"WitchRN.placeHolderList[86]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.toeCtrlVis" 
		"WitchRN.placeHolderList[87]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[88]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[89]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateY" 
		"WitchRN.placeHolderList[90]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateZ" 
		"WitchRN.placeHolderList[91]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r.rotateX" 
		"WitchRN.placeHolderList[92]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateX" 
		"WitchRN.placeHolderList[93]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateY" 
		"WitchRN.placeHolderList[94]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim.rotateZ" 
		"WitchRN.placeHolderList[95]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateX" 
		"WitchRN.placeHolderList[96]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateY" 
		"WitchRN.placeHolderList[97]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim.rotateZ" 
		"WitchRN.placeHolderList[98]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateX" 
		"WitchRN.placeHolderList[99]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateY" 
		"WitchRN.placeHolderList[100]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim.rotateZ" 
		"WitchRN.placeHolderList[101]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateX" 
		"WitchRN.placeHolderList[102]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateY" 
		"WitchRN.placeHolderList[103]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim.rotateZ" 
		"WitchRN.placeHolderList[104]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleX" 
		"WitchRN.placeHolderList[105]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleY" 
		"WitchRN.placeHolderList[106]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleZ" 
		"WitchRN.placeHolderList[107]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateX" 
		"WitchRN.placeHolderList[108]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateY" 
		"WitchRN.placeHolderList[109]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateZ" 
		"WitchRN.placeHolderList[110]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateX" 
		"WitchRN.placeHolderList[111]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateY" 
		"WitchRN.placeHolderList[112]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateZ" 
		"WitchRN.placeHolderList[113]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.fkOrientation" 
		"WitchRN.placeHolderList[114]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.translateX" 
		"WitchRN.placeHolderList[115]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.translateY" 
		"WitchRN.placeHolderList[116]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.translateZ" 
		"WitchRN.placeHolderList[117]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.rotateX" 
		"WitchRN.placeHolderList[118]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.rotateY" 
		"WitchRN.placeHolderList[119]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.rotateZ" 
		"WitchRN.placeHolderList[120]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r.sticky" 
		"WitchRN.placeHolderList[121]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.translateX" 
		"WitchRN.placeHolderList[122]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.translateY" 
		"WitchRN.placeHolderList[123]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.translateZ" 
		"WitchRN.placeHolderList[124]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.rotateX" 
		"WitchRN.placeHolderList[125]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.rotateY" 
		"WitchRN.placeHolderList[126]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r.rotateZ" 
		"WitchRN.placeHolderList[127]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.translateX" 
		"WitchRN.placeHolderList[128]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.translateY" 
		"WitchRN.placeHolderList[129]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.translateZ" 
		"WitchRN.placeHolderList[130]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.rotateX" 
		"WitchRN.placeHolderList[131]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.rotateY" 
		"WitchRN.placeHolderList[132]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r.rotateZ" 
		"WitchRN.placeHolderList[133]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.translateX" 
		"WitchRN.placeHolderList[134]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.translateY" 
		"WitchRN.placeHolderList[135]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.translateZ" 
		"WitchRN.placeHolderList[136]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.rotateX" 
		"WitchRN.placeHolderList[137]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.rotateY" 
		"WitchRN.placeHolderList[138]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.rotateZ" 
		"WitchRN.placeHolderList[139]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r.sticky" 
		"WitchRN.placeHolderList[140]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.translateX" 
		"WitchRN.placeHolderList[141]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.translateY" 
		"WitchRN.placeHolderList[142]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.translateZ" 
		"WitchRN.placeHolderList[143]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.rotateX" 
		"WitchRN.placeHolderList[144]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.rotateY" 
		"WitchRN.placeHolderList[145]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r.rotateZ" 
		"WitchRN.placeHolderList[146]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.translateX" 
		"WitchRN.placeHolderList[147]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.translateY" 
		"WitchRN.placeHolderList[148]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.translateZ" 
		"WitchRN.placeHolderList[149]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.rotateX" 
		"WitchRN.placeHolderList[150]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.rotateY" 
		"WitchRN.placeHolderList[151]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r.rotateZ" 
		"WitchRN.placeHolderList[152]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.translateX" 
		"WitchRN.placeHolderList[153]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.translateY" 
		"WitchRN.placeHolderList[154]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.translateZ" 
		"WitchRN.placeHolderList[155]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.rotateX" 
		"WitchRN.placeHolderList[156]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.rotateY" 
		"WitchRN.placeHolderList[157]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.rotateZ" 
		"WitchRN.placeHolderList[158]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r.sticky" 
		"WitchRN.placeHolderList[159]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.translateX" 
		"WitchRN.placeHolderList[160]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.translateY" 
		"WitchRN.placeHolderList[161]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.translateZ" 
		"WitchRN.placeHolderList[162]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.rotateX" 
		"WitchRN.placeHolderList[163]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.rotateY" 
		"WitchRN.placeHolderList[164]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r.rotateZ" 
		"WitchRN.placeHolderList[165]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.translateX" 
		"WitchRN.placeHolderList[166]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.translateY" 
		"WitchRN.placeHolderList[167]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.translateZ" 
		"WitchRN.placeHolderList[168]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.rotateX" 
		"WitchRN.placeHolderList[169]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.rotateY" 
		"WitchRN.placeHolderList[170]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r.rotateZ" 
		"WitchRN.placeHolderList[171]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.translateX" 
		"WitchRN.placeHolderList[172]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.translateY" 
		"WitchRN.placeHolderList[173]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.translateZ" 
		"WitchRN.placeHolderList[174]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.rotateX" 
		"WitchRN.placeHolderList[175]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.rotateY" 
		"WitchRN.placeHolderList[176]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.rotateZ" 
		"WitchRN.placeHolderList[177]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r.sticky" 
		"WitchRN.placeHolderList[178]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.translateX" 
		"WitchRN.placeHolderList[179]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.translateY" 
		"WitchRN.placeHolderList[180]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.translateZ" 
		"WitchRN.placeHolderList[181]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.rotateX" 
		"WitchRN.placeHolderList[182]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.rotateY" 
		"WitchRN.placeHolderList[183]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r.rotateZ" 
		"WitchRN.placeHolderList[184]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.translateX" 
		"WitchRN.placeHolderList[185]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.translateY" 
		"WitchRN.placeHolderList[186]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.translateZ" 
		"WitchRN.placeHolderList[187]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.rotateX" 
		"WitchRN.placeHolderList[188]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.rotateY" 
		"WitchRN.placeHolderList[189]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r.rotateZ" 
		"WitchRN.placeHolderList[190]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.translateX" 
		"WitchRN.placeHolderList[191]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.translateY" 
		"WitchRN.placeHolderList[192]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.translateZ" 
		"WitchRN.placeHolderList[193]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.rotateX" 
		"WitchRN.placeHolderList[194]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.rotateY" 
		"WitchRN.placeHolderList[195]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.rotateZ" 
		"WitchRN.placeHolderList[196]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r.sticky" 
		"WitchRN.placeHolderList[197]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.translateX" 
		"WitchRN.placeHolderList[198]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.translateY" 
		"WitchRN.placeHolderList[199]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.translateZ" 
		"WitchRN.placeHolderList[200]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.rotateX" 
		"WitchRN.placeHolderList[201]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.rotateY" 
		"WitchRN.placeHolderList[202]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r.rotateZ" 
		"WitchRN.placeHolderList[203]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.translateX" 
		"WitchRN.placeHolderList[204]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.translateY" 
		"WitchRN.placeHolderList[205]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.translateZ" 
		"WitchRN.placeHolderList[206]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.rotateX" 
		"WitchRN.placeHolderList[207]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.rotateY" 
		"WitchRN.placeHolderList[208]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r.rotateZ" 
		"WitchRN.placeHolderList[209]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateX" 
		"WitchRN.placeHolderList[210]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateY" 
		"WitchRN.placeHolderList[211]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateZ" 
		"WitchRN.placeHolderList[212]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivot" 
		"WitchRN.placeHolderList[213]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[214]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateX" 
		"WitchRN.placeHolderList[215]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateY" 
		"WitchRN.placeHolderList[216]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateZ" 
		"WitchRN.placeHolderList[217]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateOrder" 
		"WitchRN.placeHolderList[218]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.parentInverseMatrix" 
		"WitchRN.placeHolderList[219]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.lArmMode" "WitchRN.placeHolderList[220]" 
		""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.rArmMode" "WitchRN.placeHolderList[221]" 
		"";
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2174\n            -height 1516\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n"
		+ "            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2174\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2174\\n    -height 1516\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8957C334-4823-404C-03FC-1298E9D42CC2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 599 -ast 0 -aet 599 ";
	setAttr ".st" 6;
createNode animCurveTL -n "fk_arm_l_anim_translateX";
	rename -uid "18199F63-4A1E-CA6B-61D8-69AD5E260762";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_arm_l_anim_translateY";
	rename -uid "1F37854A-467B-5DBC-88F2-D4B117C41B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_arm_l_anim_translateZ";
	rename -uid "E8E688A7-46BC-9CBC-7432-FE834E0F0F36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "CE4340DB-46DC-CC0E-0473-36BE33D1235F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 8.6682886561511836;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "270BC890-42EE-99B0-E109-27BD4FE2BDDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 4.1990496598680398;
createNode animCurveTL -n "fk_elbow_l_anim_translateX";
	rename -uid "3B5066B9-43DC-CBAF-FEEB-E4AC8685C418";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_elbow_l_anim_translateY";
	rename -uid "631E7C46-4C87-8326-7509-91B289A036D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_elbow_l_anim_translateZ";
	rename -uid "F595148E-4F68-68D4-EC7F-B28CBECFD104";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "3F60D6B3-4E20-27DC-5808-9D97F74BF098";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -2.9594761222354715;
createNode animCurveTA -n "pairBlend2_inRotateY1";
	rename -uid "3D58F06F-42C7-3A61-91D2-848096FED9EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1.5823203535126678;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "B35FF333-4B46-B624-2D0F-868E11F11618";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.1896984870424695;
createNode animCurveTL -n "fk_wrist_l_anim_translateX";
	rename -uid "8EE67A62-4E5B-055D-B2D2-61BD23E18B74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_wrist_l_anim_translateY";
	rename -uid "A065085A-4CE0-3584-7B88-1F87EC0C7FFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_wrist_l_anim_translateZ";
	rename -uid "C28FBB7E-45D3-516E-7ABE-60BF35E6184D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "pairBlend3_inRotateX1";
	rename -uid "F4C617C1-4EFA-38E4-2C5C-479AA03C4EB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -8.2713945760046101;
createNode animCurveTA -n "pairBlend3_inRotateY1";
	rename -uid "974B448E-45C4-FA18-2189-88A69F5EF968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0.43740600480431019;
createNode animCurveTA -n "pairBlend3_inRotateZ1";
	rename -uid "2F97F9C2-4AF3-93B9-45B9-B69EC4AD74FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -1.3622059043972121;
createNode animCurveTU -n "Rig_Settings_lArmMode";
	rename -uid "BE42BAE7-4DDD-574F-0121-5A86464722F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "fk_arm_r_anim_translateX";
	rename -uid "68FA4F5A-4DF8-91CE-9525-8788FE4BD8E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_arm_r_anim_translateY";
	rename -uid "BFBB75B0-40DC-8580-E92C-85B2CE30AC8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_arm_r_anim_translateZ";
	rename -uid "81BD8E6D-4C66-C54B-1C0C-049560DA2664";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "pairBlend4_inRotateX1";
	rename -uid "6FF84103-4CD4-F68D-F736-2ABD43EE07B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 8.7984690902426603;
createNode animCurveTA -n "pairBlend4_inRotateZ1";
	rename -uid "93545F55-4E9B-7602-A8DE-1BA7D1C01533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 4.4757967259617963;
createNode animCurveTL -n "fk_elbow_r_anim_translateX";
	rename -uid "E29C04ED-436C-9E24-597F-E8929DB94EFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateY";
	rename -uid "7F3E9102-49D1-04A1-25CA-E2BE6A34DC24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateZ";
	rename -uid "C06754FA-4FB1-2EE8-66B0-30A81CA2A3B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "pairBlend5_inRotateX1";
	rename -uid "C36F983A-4115-095C-50A1-E88281A047FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -3.6956422150845576;
createNode animCurveTA -n "pairBlend5_inRotateY1";
	rename -uid "5F079A5B-4E69-7BC2-FAD9-DEB39895D191";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 1.5849060166293654;
createNode animCurveTA -n "pairBlend5_inRotateZ1";
	rename -uid "4526978D-4DF0-5598-8CE2-289736915A6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 -0.21409548772147224;
createNode animCurveTL -n "fk_wrist_r_anim_translateX";
	rename -uid "1B479052-4C96-70EC-8D7C-3E9C555EFC1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "fk_wrist_r_anim_translateY";
	rename -uid "0239A506-446D-7936-DC5B-BDB10068B059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "fk_wrist_r_anim_translateZ";
	rename -uid "509C181B-4161-FDBF-2678-01B69960A9E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pairBlend6_inRotateX1";
	rename -uid "5F8D1576-4717-11D8-6EB5-1F853268EB9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.5486245719903025;
createNode animCurveTA -n "pairBlend6_inRotateY1";
	rename -uid "92738967-4281-B6EF-8C7C-878BB32E1E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.38908356204624822;
createNode animCurveTA -n "pairBlend6_inRotateZ1";
	rename -uid "6D9F531B-4E76-BF3D-1618-BDB4C0F19E75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.356404922970051;
createNode animCurveTU -n "Rig_Settings_rArmMode";
	rename -uid "7450D7A2-4E15-6D1E-33FE-1A8236F946E1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "clavicle_r_anim_rotateX";
	rename -uid "524B1A9D-43E7-A9A2-C31D-649BA191B72D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
createNode animCurveTA -n "clavicle_r_anim_rotateY";
	rename -uid "DD5EFC53-423B-409A-C89A-CA9E7AD27E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 -7.7472211119608936 90 -4.9761324219652439
		 120 -7.7472211119608936 150 -4.5952290101622184 180 -7.5975804858954197 210 -5.0713582749160011
		 240 -7.7472211119608936 270 -4.9761324219652439 300 -7.7472211119608936 330 -4.5952290101622184
		 360 -7.5975804858954197 390 -5.0713582749160011 420 -7.7472211119608936 450 -4.9761324219652439
		 480 -7.7472211119608936 510 -4.5952290101622184 540 -7.5975804858954197 570 -5.0713582749160011
		 600 -7.7472211119608936 630 -4.9761324219652439;
	setAttr -s 20 ".kit[3:19]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "clavicle_r_anim_rotateZ";
	rename -uid "EB912475-4D29-5C5A-FD19-9F88CFCBB3C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
createNode animCurveTL -n "clavicle_r_anim_translateX";
	rename -uid "4BDC7D08-43BC-BCBB-847A-A3B00C32D6C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 -0.049359855637048283 120 0 150 -0.049359855637048283
		 180 0 210 -0.049359855637048283 240 0 270 -0.049359855637048283 300 0 330 -0.049359855637048283
		 360 0 390 -0.049359855637048283 420 0 450 -0.049359855637048283 480 0 510 -0.049359855637048283
		 540 0 570 -0.049359855637048283 600 0 630 -0.049359855637048283;
createNode animCurveTL -n "clavicle_r_anim_translateY";
	rename -uid "4F41B838-4E19-F1CB-9FA3-C6814502A7D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
createNode animCurveTL -n "clavicle_r_anim_translateZ";
	rename -uid "CE2560DA-48C5-986A-1840-57A5B03A9724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0.44220224180432416 120 0 150 0.44220224180432416
		 180 0 210 0.44220224180432416 240 0 270 0.44220224180432416 300 0 330 0.44220224180432416
		 360 0 390 0.44220224180432416 420 0 450 0.44220224180432416 480 0 510 0.44220224180432416
		 540 0 570 0.44220224180432416 600 0 630 0.44220224180432416;
createNode animCurveTU -n "clavicle_r_anim_autoShoulders";
	rename -uid "84025C7C-456A-B3F0-CA2E-48ACCB4A2238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
createNode animCurveTA -n "clavicle_l_anim_rotateX";
	rename -uid "55B6203B-42AD-8C7B-89EB-EE836CFD1435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "clavicle_l_anim_rotateY";
	rename -uid "0A933298-426D-863A-26DB-AA85F62549F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 8.4193840392133428 90 5.753070521578973
		 120 8.4193840392133428 150 5.753070521578973 180 8.4193840392133428 210 5.753070521578973
		 240 8.4193840392133428 270 5.753070521578973 300 8.4193840392133428 330 5.753070521578973
		 360 8.4193840392133428 390 5.753070521578973 420 8.4193840392133428 450 5.753070521578973
		 480 8.4193840392133428 510 5.753070521578973 540 8.4193840392133428 570 5.753070521578973
		 600 8.4193840392133428 630 5.753070521578973;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "clavicle_l_anim_rotateZ";
	rename -uid "D4C329F7-4888-A254-82B7-26B3CFE7104E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "clavicle_l_anim_translateX";
	rename -uid "6A66A081-4F53-F8AA-5B8B-B19B0B41AB25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0.077984950563211114 120 0 150 0.077984950563211114
		 180 0 210 0.077984950563211114 240 0 270 0.077984950563211114 300 0 330 0.077984950563211114
		 360 0 390 0.077984950563211114 420 0 450 0.077984950563211114 480 0 510 0.077984950563211114
		 540 0 570 0.077984950563211114 600 0 630 0.077984950563211114;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "clavicle_l_anim_translateY";
	rename -uid "12485F09-4AE6-31F0-F3AB-34BF13F78017";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "clavicle_l_anim_translateZ";
	rename -uid "483A4DAA-446F-A214-6F53-36BC1C3E4070";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0.55372545584621957 120 0 150 0.55372545584621957
		 180 0 210 0.55372545584621957 240 0 270 0.55372545584621957 300 0 330 0.55372545584621957
		 360 0 390 0.55372545584621957 420 0 450 0.55372545584621957 480 0 510 0.55372545584621957
		 540 0 570 0.55372545584621957 600 0 630 0.55372545584621957;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "clavicle_l_anim_autoShoulders";
	rename -uid "3BFD6420-4A04-9272-BE42-F79374DDD2A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 330 0 360 0 390 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
	setAttr -s 20 ".kit[3:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1;
	setAttr -s 20 ".kot[2:19]"  1 18 1 18 18 18 1 18 
		1 18 18 18 1 18 1 18 1 18;
	setAttr -s 20 ".kix[3:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[3:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[2:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[2:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "neck_01_fk_anim_rotateX";
	rename -uid "03400DED-4E25-8D2C-1333-ABA169E35543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  60 0 73 0 114 -6.1258119667413258 284 -6.1258119667413258
		 322 2.9987414299885904 375 5.3843717864758176 404 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 0.99781413570338862 1 0.99047552292556995;
	setAttr -s 7 ".kiy[3:6]"  0 0.066082906946499667 0 -0.13768891925394314;
	setAttr -s 7 ".kox[3:6]"  1 0.99781413570338851 1 0.99047551862663541;
	setAttr -s 7 ".koy[3:6]"  0 0.066082906946499667 0 -0.13768895017864594;
createNode animCurveTA -n "neck_01_fk_anim_rotateZ";
	rename -uid "2874C1C5-4A27-9B77-705F-B084DB6D43C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  -52 -0.784468527059618 -22 1.4381000363027945
		 8 -0.61069087807174194 38 1.4381000363027945 68 -1.1492252803753047 98 1.822767466519623
		 128 -1.1492252803753047 158 1.822767466519623 188 -0.61069087807174194 218 1.4381000363027945
		 248 -1.1492252803753047 278 1.822767466519623 308 -1.1492252803753047 338 1.822767466519623
		 368 -0.61069087807174194 375 -0.32945940420731984 398 1.4381000363027945 428 -1.1492252803753047
		 458 1.822767466519623 488 -1.1492252803753047 518 1.822767466519623 548 -0.784468527059618
		 578 1.4381000363027945 608 -1.1492252803753047 638 1.822767466519623 668 -1.1492252803753047
		 698 1.822767466519623;
	setAttr -s 27 ".kit[1:26]"  1 18 18 1 18 18 18 18 
		18 1 18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 
		1;
	setAttr -s 27 ".kot[0:26]"  1 18 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 27 ".kix[1:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99936128990395001 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[1:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.035735308051186021 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99936128990395012 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.035735308051186021 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "neck_01_fk_anim_fkOrientation";
	rename -uid "A84364B7-48B0-EF37-21CA-B8834115021D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  60 0 90 0 120 0 150 0 180 0 210 0 240 0
		 270 0 300 0 360 0 375 0 390 0 404 0 420 0 450 0 480 0 510 0 540 0 570 0 600 0 630 0;
	setAttr -s 21 ".kit[0:20]"  9 9 9 9 1 9 9 9 
		9 1 9 9 9 9 9 9 9 1 9 9 9;
	setAttr -s 21 ".kix[4:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[4:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "body_anim_translateX";
	rename -uid "F7E7307C-49E9-E043-B139-B3A181BD1C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  120 0 128 0.33844752057724098 130 0.33844752057724098
		 160 0 355 -1.8598529953700332e-05 375 -1.0189102917516715 397 -0.38979743001166645
		 413 0 413.00000021258501 0;
	setAttr -s 9 ".kit[2:8]"  1 1 18 18 18 18 18;
	setAttr -s 9 ".kot[2:8]"  1 1 18 18 18 18 18;
	setAttr -s 9 ".kix[2:8]"  0.96761769140094722 0.99999998704751891 
		0.99999999996315792 1 0.77919250648642291 1 1;
	setAttr -s 9 ".kiy[2:8]"  -0.25242029095914936 -0.00016095018532348592 
		-8.5839369013915944e-06 0 0.62678468219589223 0 0;
	setAttr -s 9 ".kox[2:8]"  0.9676176963876556 0.99999998704773951 
		0.99999999996315803 1 0.77919250648642302 1 1;
	setAttr -s 9 ".koy[2:8]"  -0.25242027184330279 -0.00016094881482172748 
		-8.5839369013915944e-06 0 0.62678468219589234 0 0;
createNode animCurveTL -n "body_anim_translateZ";
	rename -uid "402B5133-44E9-C6CE-11F2-17862C45F6E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  120 0 160 -3.2661432870771385 355 -3.2661432870771385
		 371 7.5118165026643204 375 8.0648577276379356 379 7.5319658525437454 394 -6.634192711177719
		 397 -7.0274243563512515 400 -6.6118397506790503 413 0;
	setAttr -s 10 ".kit[0:9]"  1 1 18 18 18 1 18 18 
		18 1;
	setAttr -s 10 ".kot[0:9]"  1 1 18 18 18 1 18 18 
		18 1;
	setAttr -s 10 ".kix[0:9]"  0.85294646277616382 0.99973553021665484 
		1 0.080105452429142951 1 0.069650088901742013 0.084464757565226645 1 0.079951530031413934 
		0.10110367421767724;
	setAttr -s 10 ".kiy[0:9]"  -0.52199840194930702 -0.022997165530210341 
		0 0.99678639461577834 0 -0.99757148371230986 -0.99642646729673301 0 0.9967987524298153 
		0.99487589530538223;
	setAttr -s 10 ".kox[0:9]"  0.85294645124878798 0.99973553357920142 
		1 0.080105452429142965 1 0.069649993886899852 0.084464757565226659 1 0.07995153003141392 
		0.1011036754195547;
	setAttr -s 10 ".koy[0:9]"  -0.52199842078506253 -0.022997019352725231 
		0 0.99678639461577845 0 -0.99757149034620818 -0.99642646729673312 0 0.99679875242981519 
		0.99487589518324215;
createNode animCurveTL -n "ik_foot_anim_r_translateX";
	rename -uid "1C31B43B-4A72-218A-2055-329FA2329593";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  127 0 143 -3.0604570231037402 394 -3.0604570231037402
		 400 -2.5494194662875342 407 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.15872636471922932;
	setAttr -s 5 ".kiy[4]"  0.98732261249452713;
	setAttr -s 5 ".kox[4]"  0.15872650283495404;
	setAttr -s 5 ".koy[4]"  0.98732259029042035;
createNode animCurveTL -n "ik_foot_anim_r_translateY";
	rename -uid "48D9DA0E-4D61-C594-B6D0-F0BB6C74C0E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTL -n "ik_foot_anim_r_translateZ";
	rename -uid "EFE08BC8-4D67-CEBD-9CFA-25A0E0D1ABE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
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
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTA -n "ik_foot_anim_r_rotateY";
	rename -uid "88264829-4F88-9F57-FBB5-B3A5C1B037C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTA -n "ik_foot_anim_r_rotateZ";
	rename -uid "028727C1-412E-95BE-EEF1-BEBF493D8207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTU -n "ik_foot_anim_r_knee_twist";
	rename -uid "3F117237-49A6-2128-011E-CABF5F3FF2F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTU -n "ik_foot_anim_r_stretch";
	rename -uid "B15FCFF5-4A55-193F-7F51-6DAFCAE3B590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTU -n "ik_foot_anim_r_squash";
	rename -uid "1A45E245-48F5-6B27-DD12-1A897ACE7796";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTU -n "ik_foot_anim_r_toeCtrlVis";
	rename -uid "7B64596D-436F-DB85-B312-C9B4C747FF80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "ik_foot_anim_r_stretchBias";
	rename -uid "F9E1AB13-4892-9A8A-C714-BE86EFA81891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  127 0 400 0 411 0;
createNode animCurveTA -n "toe_wiggle_ctrl_r_rotateX";
	rename -uid "4D5C9323-4658-0D60-C996-1080FDCF13A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 124 0 143 0;
createNode animCurveTA -n "toe_wiggle_ctrl_r_rotateY";
	rename -uid "357D200A-4BDB-B48A-49C0-66A880E8B8CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  60 0 124 0 143 0;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateX";
	rename -uid "B36F49B3-4797-3818-521C-27B165C6E649";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  60 0 127 0 371 0 396 -8.387075134774161
		 409 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.99365519400217783;
	setAttr -s 5 ".kiy[4]"  0.11246935330344168;
	setAttr -s 5 ".kox[4]"  0.99365519038986261;
	setAttr -s 5 ".koy[4]"  0.11246938521787139;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateY";
	rename -uid "CB7CC912-4B5A-67CC-40C4-85A3E9B1BCE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  60 0 127 0 143 5.6731287379933111 371 5.6731287379933111
		 396 8.7827919864699151 409 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  0.99506073978264975;
	setAttr -s 6 ".kiy[5]"  -0.099267941165342072;
	setAttr -s 6 ".kox[5]"  0.99506073939007122;
	setAttr -s 6 ".koy[5]"  -0.099267945100546109;
createNode animCurveTA -n "toe_tip_ctrl_r_rotateZ";
	rename -uid "EA66724C-46BC-C190-0056-95AC7DE0790C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  60 0 127 0 371 0 396 -6.389367170342517
		 409 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  0.99760841296405844;
	setAttr -s 5 ".kiy[4]"  0.069119131818426327;
	setAttr -s 5 ".kox[4]"  0.99760841202679529;
	setAttr -s 5 ".koy[4]"  0.069119145346105082;
createNode animCurveTA -n "hip_anim_rotateY";
	rename -uid "8AFBF940-45FA-5991-D202-5CAEB84BB46F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  60 0 90 0 120 0 160 -1.0092491746005361
		 355 -1.0092491746005361 377 4.2523060768704593 381 4.3393259499138335 385 4.2312757948846969
		 394 -3.0641246684909658 397 -3.3557632581263492 400 -3.0866547556105206 412 0;
	setAttr -s 12 ".kit[5:11]"  1 18 1 18 18 18 1;
	setAttr -s 12 ".kot[5:11]"  1 18 1 18 18 18 1;
	setAttr -s 12 ".kix[5:11]"  0.99984564862471248 1 0.99958352516227389 
		0.98854112118460624 1 0.99320912260732686 0.99389285392082705;
	setAttr -s 12 ".kiy[5:11]"  0.017569260833292834 0 -0.028857862432306782 
		-0.15095181922415446 0 0.11634276414794424 0.11034942195187793;
	setAttr -s 12 ".kox[5:11]"  0.99984564859110248 1 0.9995835251931775 
		0.98854112118460613 1 0.99320912260732674 0.99389284670594735;
	setAttr -s 12 ".koy[5:11]"  0.017569262745991812 0 -0.028857861361859846 
		-0.15095181922415443 0 0.11634276414794421 0.11034948693468473;
createNode animCurveTL -n "hip_anim_translateY";
	rename -uid "4907CA8A-4C82-7BF3-52FC-DF9C93E68013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  -60 0 -30 1.2938297988117344 0 0 30 1.2938297988117344
		 60 0 90 1.21202154145051 120 0.061356193020918326 150 1.4369942491938772 180 0 210 1.2938297988117344
		 240 -0.12271238604183665 270 1.4574463135341833 300 0 330 1.2938297988117344 360 0.14316445038214276
		 390 1.396090120513265 420 -0.14316445038214276 450 1.1506653484295917 480 0 510 1.2938297988117344
		 540 0 570 1.2938297988117344 600 0 630 1.2938297988117344 660 0 690 1.2938297988117344;
	setAttr -s 26 ".kit[3:25]"  1 18 18 18 1 18 18 18 
		1 18 18 18 1 18 18 18 18 18 1 18 18 18 1;
	setAttr -s 26 ".kot[0:25]"  1 18 1 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 1 18 18 18 1 
		18;
	setAttr -s 26 ".kix[3:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 26 ".kiy[3:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 26 ".kox[0:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 26 ".koy[0:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "hip_anim_lCalfTwistCtrlVis";
	rename -uid "F62C2322-4798-00A8-B4B0-7C9AB15D8EB3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  60 0 90 0 120 0 160 0 394 0 397 0 400 0
		 412 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "hip_anim_rCalfTwistCtrlVis";
	rename -uid "70123482-47A2-3128-EAA4-9CBB710A3310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  60 0 90 0 120 0 160 0 394 0 397 0 400 0
		 412 0;
	setAttr -s 8 ".kot[0:7]"  5 5 5 5 5 5 5 5;
createNode animCurveTU -n "hip_anim_autoHips";
	rename -uid "44C9B32A-41E4-2143-04B3-A2956E45491A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  60 0 90 0 120 0 160 0 394 0 397 0 400 0
		 412 0;
createNode animCurveTA -n "chest_ik_anim_rotateX";
	rename -uid "1032161A-40B0-4CB1-B4EE-8BA0905FB83E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  60 0 120 0 160 0.038631703555515151 355 0.038631703555515151
		 397 -0.12879026057780912 413 0;
createNode animCurveTA -n "chest_ik_anim_rotateZ";
	rename -uid "998C9CAF-4CC5-158A-C154-E1B514695FAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  -61 -1.4441438388471153 -31 3.2399865005169084
		 0 -1.4441438388471153 31 3.2399865005169084 60 -1.4441438388471153 90 3.2399865005169084
		 120 -1.0208602998746854 150 3.2399865005169084 180 -1.4441438388471153 210 3.2399865005169084
		 240 -1.4441438388471153 270 3.2399865005169084 300 -1.0208602998746854 330 3.2399865005169084
		 360 -1.4441438388471153 390 3.2399865005169084 420 -1.0208602998746854 450 3.2399865005169084
		 480 -1.4441438388471153 510 3.2399865005169084 540 -1.0208602998746854 570 3.2399865005169084
		 600 -1.4441438388471153 630 3.2399865005169084;
	setAttr -s 24 ".kit[1:23]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kot[0:23]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[1:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 24 ".kiy[1:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "body_anim_translateY";
	rename -uid "1C38C6B6-4BC7-597D-529E-189465C9DBFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  120 0 160 0 355 0 375 0 397 0 413 0 413.00000021258501 0;
createNode animCurveTA -n "body_anim_rotateY";
	rename -uid "E49F60EC-4CC0-6D5A-49BA-DC97A58C1350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  120 0 160 0 355 0 375 2.3973680615605373
		 406 -1.3928986837894046 413.00000021258501 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  1;
	setAttr -s 6 ".kix[5]"  0.98685964003256321;
	setAttr -s 6 ".kiy[5]"  0.16157985912482961;
	setAttr -s 6 ".kox[5]"  0.98685963870666948;
	setAttr -s 6 ".koy[5]"  0.1615798672228127;
createNode animCurveTA -n "hip_anim_rotateX";
	rename -uid "DA41BD54-4956-5B75-62EB-AD991DA7386D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  394 0 397 0 400 0 412 0;
createNode animCurveTA -n "hip_anim_rotateZ";
	rename -uid "53DB9632-4C74-84D8-3E10-308CFAE77317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  394 0 397 0 400 0 412 0;
createNode animCurveTL -n "hip_anim_translateX";
	rename -uid "A6E5405B-4DFF-FD2D-F8EF-AD9A12DF3397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  394 0 397 0 400 0 412 0;
createNode animCurveTL -n "hip_anim_translateZ";
	rename -uid "F8D6FC55-470A-40EB-7B8E-23B58C6EBCDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  394 0 397 0 400 0 412 0;
createNode animCurveTA -n "chest_ik_anim_rotateY";
	rename -uid "BE3AE73A-4230-FB40-AF1F-658BD507B7FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 0 160 -2.5266112447877038 355 -2.5266112447877038
		 397 1.0892494877660686 413 0;
createNode animCurveTA -n "body_anim_rotateX";
	rename -uid "3F413A82-430D-0587-8121-ECA99846984E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  120 0 160 -3.7528437756201209 355 -3.7528437756201209
		 375 3.1193162962650072 397 -1.524285200693738 413 0;
	setAttr -s 6 ".kit[2:5]"  1 1 18 1;
	setAttr -s 6 ".kot[2:5]"  1 1 18 1;
	setAttr -s 6 ".kix[2:5]"  1 1 1 0.99738553928053342;
	setAttr -s 6 ".kiy[2:5]"  0 0 0 0.07226400233919672;
	setAttr -s 6 ".kox[2:5]"  1 1 1 0.99738553966424293;
	setAttr -s 6 ".koy[2:5]"  0 0 0 0.072263997043251732;
createNode animCurveTA -n "body_anim_rotateZ";
	rename -uid "3BF2D2AA-4850-AC0F-AB0F-80A3BEFB3DF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  120 0 160 0 355 0 375 0 397 0 413 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateX";
	rename -uid "8E2C7960-4A58-A3D6-299B-FB86E87D309E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  355 0 375 0 387 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateY";
	rename -uid "14B85580-4F6B-AE0C-D931-C2B37ECAB6DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  355 0 375 0 387 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateZ";
	rename -uid "5AA50496-4D96-7122-3941-BE89A20E79AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  355 0 375 -4.8212500968899494 387 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "neck_01_fk_anim_rotateY";
	rename -uid "51C3A68B-4AAE-BC7F-DC4A-CA97853DAADC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 0.0022079866765864179;
createNode animCurveTL -n "neck_01_fk_anim_translateX";
	rename -uid "E30FC52B-420A-E60A-F043-629EFB8EF29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 0;
createNode animCurveTL -n "neck_01_fk_anim_translateY";
	rename -uid "442B7D90-4921-3C0E-502E-83AAF5633F20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 0;
createNode animCurveTL -n "neck_01_fk_anim_translateZ";
	rename -uid "7A6DF50B-4EB6-5C1A-33A1-44A0BF11D89C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 0;
createNode animCurveTU -n "neck_01_fk_anim_scaleX";
	rename -uid "86D08421-45EC-AEA7-B04F-F6830EC05741";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 1;
createNode animCurveTU -n "neck_01_fk_anim_scaleY";
	rename -uid "F7291D38-46FC-A1EB-EBD2-E9974CBAA24E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 1;
createNode animCurveTU -n "neck_01_fk_anim_scaleZ";
	rename -uid "BD3D18B2-40D9-BE94-5380-7A8A3957BC99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  375 1;
createNode animCurveTA -n "pinky_finger_fk_ctrl_1_r_rotateX";
	rename -uid "1FA38A13-45FE-E02E-64A0-DFADFB5BAB50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_1_r_rotateY";
	rename -uid "F0F4F710-44C9-4A8E-390A-EAAD75C1B859";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_1_r_rotateZ";
	rename -uid "3F746D3F-4744-0DA8-0CEE-54ABC300A32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 75.036410423886238;
createNode animCurveTL -n "pinky_finger_fk_ctrl_1_r_translateX";
	rename -uid "8553C05D-44EA-1D9D-EA96-A3BC44B8B3D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_1_r_translateY";
	rename -uid "8E7374D1-4097-51B9-0F0D-CE9D8C773A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_1_r_translateZ";
	rename -uid "F4D6DFF1-4304-0CDC-F2CD-159166EC7297";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "pinky_finger_fk_ctrl_1_r_sticky";
	rename -uid "8F30C30E-4F5A-34AA-DADB-CD95CE4EF03A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_1_r_rotateX";
	rename -uid "8D5C69C3-4EEC-8AEC-88C4-78A4CF27438D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_1_r_rotateY";
	rename -uid "2CF83328-4885-BCDC-1E3E-D4907ED423A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_1_r_rotateZ";
	rename -uid "EEEBF039-499D-1C0D-14D0-2DA1E790B360";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 85.18557081068785;
createNode animCurveTL -n "ring_finger_fk_ctrl_1_r_translateX";
	rename -uid "A866AF2A-49D8-BF27-C7A0-54B9B0839D13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_1_r_translateY";
	rename -uid "5091EB27-4339-3FA4-DDE3-859353240D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_1_r_translateZ";
	rename -uid "AAC5591B-44C3-37D8-020E-C3BF27721B78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "ring_finger_fk_ctrl_1_r_sticky";
	rename -uid "E74E6353-45AE-7E9A-3989-9CAC7CBF18AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_1_r_rotateX";
	rename -uid "B68BB8A4-4C96-58B4-ED02-36AA7D57A113";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_1_r_rotateY";
	rename -uid "33F4353D-486D-E984-87AB-069B710FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_1_r_rotateZ";
	rename -uid "C811B0D7-433E-FE5C-5E69-839031D6EECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 71.604563965540748;
createNode animCurveTL -n "middle_finger_fk_ctrl_1_r_translateX";
	rename -uid "D193D88A-4FDE-9262-262E-DD8D4ED2149F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_1_r_translateY";
	rename -uid "8790DC5F-4A32-E5F9-85D1-39AED6928A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_1_r_translateZ";
	rename -uid "224CF000-4C69-8101-38B0-B7A85D3D5F04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "middle_finger_fk_ctrl_1_r_sticky";
	rename -uid "6AC6C502-4990-9175-CFD4-40A295F34EB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_1_r_rotateX";
	rename -uid "7EC53D91-4652-83ED-6EB5-84AF18A8BFE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_1_r_rotateY";
	rename -uid "81FB2E3D-444C-9B31-5042-9990E4AF1055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_1_r_rotateZ";
	rename -uid "7FEACB60-4625-36CD-7217-6BA1E89CA15B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 66.071492327287331;
createNode animCurveTL -n "index_finger_fk_ctrl_1_r_translateX";
	rename -uid "CE6AC24B-44D8-E05C-9337-83AB8B6C4F1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_1_r_translateY";
	rename -uid "D78310D7-4B55-2D00-0913-AC9CA41C2FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_1_r_translateZ";
	rename -uid "7691F312-484F-BC3E-7080-AF83C8EF2BEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "index_finger_fk_ctrl_1_r_sticky";
	rename -uid "1D183210-409A-BD7E-1131-80BA02A247FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_2_r_rotateX";
	rename -uid "DE4F28BB-440A-60AB-A9E3-6A989DDD79F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_2_r_rotateY";
	rename -uid "CF1076F1-4A45-282E-EE73-D58F9CE9244D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_2_r_rotateZ";
	rename -uid "5ADBB3A3-405A-88F7-2468-ECA9F7518DAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_2_r_translateX";
	rename -uid "1E268BDF-4F0E-48A2-6CA9-4293B2E5F1F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_2_r_translateY";
	rename -uid "13E4916A-46A4-7784-302A-A4954514EFDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_2_r_translateZ";
	rename -uid "5A438E26-493B-FB82-B1BB-C7838CD64F70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_2_r_rotateX";
	rename -uid "4A73E0F5-4D9F-BDB3-F876-E3A22E0FC63F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_2_r_rotateY";
	rename -uid "AE5F8D34-4E4A-4AA4-B48D-D694E93B3D02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_2_r_rotateZ";
	rename -uid "D3DB64DD-4788-844F-2599-EE9AC9D6B7FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_2_r_translateX";
	rename -uid "CEC9D319-4987-189B-1E99-F0999B6FA607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_2_r_translateY";
	rename -uid "CD713185-46A4-B793-CE16-4789B4BF9329";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_2_r_translateZ";
	rename -uid "23CBA3A1-4DDA-8BE2-8599-F2BDC9D1A716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_2_r_rotateX";
	rename -uid "F40E1094-4192-7F2C-40C4-3B9AEEC3F1A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_2_r_rotateY";
	rename -uid "0EA14A93-4EBC-2B94-E680-C0A8F5E2E0F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_2_r_rotateZ";
	rename -uid "6ABB5CE9-4FC1-5DCC-BE17-9286473B902B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_2_r_translateX";
	rename -uid "7C289869-484A-35DA-E439-BE8D68BC6BAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_2_r_translateY";
	rename -uid "F4DD1856-441A-1FE7-CE54-D3BA288F54E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_2_r_translateZ";
	rename -uid "3547E7F8-4E29-A6D5-21C4-20876B81E78B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_2_r_rotateX";
	rename -uid "28E56C0C-422B-A8E6-47F5-93ACE19AB9FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_2_r_rotateY";
	rename -uid "99F986E6-4FDA-5BDD-2BDE-45987354736C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_2_r_rotateZ";
	rename -uid "71800DFF-43A2-73D1-8EDD-F6913A474E79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_2_r_translateX";
	rename -uid "393AC8B5-447A-B1AB-8DA1-5F9EBDFCD365";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_2_r_translateY";
	rename -uid "E60E2ECE-4A60-A98A-6898-E2AF8B91DC90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_2_r_translateZ";
	rename -uid "0FD1016E-4C72-7B21-368B-07B052F5B308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_1_r_rotateX";
	rename -uid "DA09F96D-4E71-DCF2-F938-56BA686CCBAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 45.610773340182504;
createNode animCurveTA -n "thumb_finger_fk_ctrl_1_r_rotateY";
	rename -uid "7763FECE-4470-3B41-DBDD-B2A106407588";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.6946242813296122;
createNode animCurveTA -n "thumb_finger_fk_ctrl_1_r_rotateZ";
	rename -uid "1898E072-4FAC-26A6-2062-5DB0B3DE19B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.515943999253423;
createNode animCurveTL -n "thumb_finger_fk_ctrl_1_r_translateX";
	rename -uid "77202E08-40EC-86A8-959B-B3BE8727F06E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_1_r_translateY";
	rename -uid "5DF8BACE-43E1-2CC9-FDFE-568668C29BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_1_r_translateZ";
	rename -uid "81C5BF1A-4BD4-5E57-B0F7-75826AC08FC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "thumb_finger_fk_ctrl_1_r_sticky";
	rename -uid "F1DC71E2-4D38-34E0-3730-E9BD08EC5E34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_2_r_rotateX";
	rename -uid "E1B2C20F-4938-C0B7-BA98-389415D42178";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_2_r_rotateY";
	rename -uid "36D79C9C-4FD3-CB83-53BA-C7A1F46CBA4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_2_r_rotateZ";
	rename -uid "61FB657F-47F9-C4ED-7ED5-3E868024BC5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_2_r_translateX";
	rename -uid "769C23FD-4DCD-7483-3BF2-4AA50AF90CF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_2_r_translateY";
	rename -uid "5562C6B2-41B8-D91F-A0BF-54973737D4CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_2_r_translateZ";
	rename -uid "37F04222-4276-CED6-9254-35B250D1208C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_3_r_rotateX";
	rename -uid "A056E41B-4B94-26DA-7AAD-ADBC24AFB5B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_3_r_rotateY";
	rename -uid "36804265-4BCB-CFBE-BF25-26BE078B77B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "thumb_finger_fk_ctrl_3_r_rotateZ";
	rename -uid "C2083735-4D1A-ED29-90E9-AEBABF8770A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_3_r_translateX";
	rename -uid "00B76A9E-4E03-7EB9-400A-5DAEDDE9175D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_3_r_translateY";
	rename -uid "6E152D4B-4ED3-28EE-BFED-6EB4556D5F48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "thumb_finger_fk_ctrl_3_r_translateZ";
	rename -uid "93911E84-431E-7EFC-6610-8087A1C6653A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_3_r_rotateX";
	rename -uid "75FA1AE0-4F3E-5426-15E6-16BB9630B2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_3_r_rotateY";
	rename -uid "B9E00D0E-4569-B05D-6266-85AAD614A4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "pinky_finger_fk_ctrl_3_r_rotateZ";
	rename -uid "7E934953-4DC4-1ADC-7F50-2C9363169734";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_3_r_translateX";
	rename -uid "40F66F5F-4E55-965D-219F-2CA366E1BF54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_3_r_translateY";
	rename -uid "5BEF81F0-4813-0CA2-E618-78907EFE3B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "pinky_finger_fk_ctrl_3_r_translateZ";
	rename -uid "436F4250-4C60-47C0-571B-5990E8723279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_3_r_rotateX";
	rename -uid "FC4F6C75-46EE-C392-567F-AB884670F635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_3_r_rotateY";
	rename -uid "644B4F3B-47B8-8053-DC46-EAA35DD0C9AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "ring_finger_fk_ctrl_3_r_rotateZ";
	rename -uid "24214658-4CE5-4CBC-EC5C-4C839374E1AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_3_r_translateX";
	rename -uid "778A1699-4C0F-666E-F0EE-7AB62A7A3BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_3_r_translateY";
	rename -uid "681C6AA6-4380-2257-E5D7-4B814CAB5170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "ring_finger_fk_ctrl_3_r_translateZ";
	rename -uid "ACE5E7AE-451F-D85E-47A3-1CB7B6852949";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_3_r_rotateX";
	rename -uid "55B4A4CF-48D1-EECE-007D-C08B4547537C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_3_r_rotateY";
	rename -uid "8F1A5D7B-4734-C36D-A677-15930E4494CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "middle_finger_fk_ctrl_3_r_rotateZ";
	rename -uid "453FA5DD-4161-4E65-FE65-66A837E7DD5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_3_r_translateX";
	rename -uid "E0960C93-4CE2-0CD9-CD6B-C8BC41BE350B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_3_r_translateY";
	rename -uid "46FBA322-4B9D-4C27-3132-028E0F139598";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "middle_finger_fk_ctrl_3_r_translateZ";
	rename -uid "861C0721-48C8-D715-B506-F88B4E9C12F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_3_r_rotateX";
	rename -uid "20D5F746-4395-DE14-CC66-86872BAA76E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_3_r_rotateY";
	rename -uid "9DEDA458-4BFD-B41E-7410-CDA6B6BD315C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "index_finger_fk_ctrl_3_r_rotateZ";
	rename -uid "96E85408-48DA-418E-EBA6-85A9928C3E54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_3_r_translateX";
	rename -uid "9348292A-4410-A553-E63C-C9AFCDB02056";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_3_r_translateY";
	rename -uid "15104B98-40D9-4647-A754-79AB4436B33E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "index_finger_fk_ctrl_3_r_translateZ";
	rename -uid "6566A714-452B-5362-EB39-D3B9735DBE08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode unknown -n "ExportAnimationSettings";
	rename -uid "D86C0365-4C8F-A34A-3DD3-3199F30AFC7F";
	addAttr -ci true -sn "settings" -ln "settings" -dt "string";
	addAttr -ci true -sn "sequence0" -ln "sequence0" -dt "string";
	setAttr ".settings" -type "string" "[false, true, false, null, null]";
	setAttr ".sequence0" -type "string" "D:/Capstone/PlayerCharacter/Animation/Witch@idle.fbx::0::599::30 FPS::Independent Euler Angle::Witch";
select -ne :time1;
	setAttr ".o" 152;
	setAttr ".unw" 152;
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
connectAttr "pairBlend1_inRotateX1.o" "WitchRN.phl[4]";
connectAttr "pairBlend1_inRotateZ1.o" "WitchRN.phl[5]";
connectAttr "fk_elbow_l_anim_translateX.o" "WitchRN.phl[6]";
connectAttr "fk_elbow_l_anim_translateY.o" "WitchRN.phl[7]";
connectAttr "fk_elbow_l_anim_translateZ.o" "WitchRN.phl[8]";
connectAttr "pairBlend2_inRotateX1.o" "WitchRN.phl[9]";
connectAttr "pairBlend2_inRotateY1.o" "WitchRN.phl[10]";
connectAttr "pairBlend2_inRotateZ1.o" "WitchRN.phl[11]";
connectAttr "fk_wrist_l_anim_translateX.o" "WitchRN.phl[12]";
connectAttr "fk_wrist_l_anim_translateY.o" "WitchRN.phl[13]";
connectAttr "fk_wrist_l_anim_translateZ.o" "WitchRN.phl[14]";
connectAttr "pairBlend3_inRotateX1.o" "WitchRN.phl[15]";
connectAttr "pairBlend3_inRotateY1.o" "WitchRN.phl[16]";
connectAttr "pairBlend3_inRotateZ1.o" "WitchRN.phl[17]";
connectAttr "clavicle_l_anim_translateX.o" "WitchRN.phl[18]";
connectAttr "clavicle_l_anim_translateY.o" "WitchRN.phl[19]";
connectAttr "clavicle_l_anim_translateZ.o" "WitchRN.phl[20]";
connectAttr "clavicle_l_anim_rotateX.o" "WitchRN.phl[21]";
connectAttr "clavicle_l_anim_rotateY.o" "WitchRN.phl[22]";
connectAttr "clavicle_l_anim_rotateZ.o" "WitchRN.phl[23]";
connectAttr "clavicle_l_anim_autoShoulders.o" "WitchRN.phl[24]";
connectAttr "fk_arm_r_anim_translateX.o" "WitchRN.phl[25]";
connectAttr "fk_arm_r_anim_translateY.o" "WitchRN.phl[26]";
connectAttr "fk_arm_r_anim_translateZ.o" "WitchRN.phl[27]";
connectAttr "pairBlend4_inRotateX1.o" "WitchRN.phl[28]";
connectAttr "pairBlend4_inRotateZ1.o" "WitchRN.phl[29]";
connectAttr "fk_elbow_r_anim_translateX.o" "WitchRN.phl[30]";
connectAttr "fk_elbow_r_anim_translateY.o" "WitchRN.phl[31]";
connectAttr "fk_elbow_r_anim_translateZ.o" "WitchRN.phl[32]";
connectAttr "pairBlend5_inRotateX1.o" "WitchRN.phl[33]";
connectAttr "pairBlend5_inRotateY1.o" "WitchRN.phl[34]";
connectAttr "pairBlend5_inRotateZ1.o" "WitchRN.phl[35]";
connectAttr "WitchRN.phl[36]" "Wand_anim_parentConstraint1.tg[0].ts";
connectAttr "WitchRN.phl[37]" "Wand_anim_parentConstraint1.tg[0].tt";
connectAttr "fk_wrist_r_anim_translateX.o" "WitchRN.phl[38]";
connectAttr "fk_wrist_r_anim_translateY.o" "WitchRN.phl[39]";
connectAttr "fk_wrist_r_anim_translateZ.o" "WitchRN.phl[40]";
connectAttr "WitchRN.phl[41]" "Wand_anim_parentConstraint1.tg[0].trp";
connectAttr "WitchRN.phl[42]" "Wand_anim_parentConstraint1.tg[0].trt";
connectAttr "WitchRN.phl[43]" "Wand_anim_parentConstraint1.tg[0].tr";
connectAttr "pairBlend6_inRotateX1.o" "WitchRN.phl[44]";
connectAttr "pairBlend6_inRotateY1.o" "WitchRN.phl[45]";
connectAttr "pairBlend6_inRotateZ1.o" "WitchRN.phl[46]";
connectAttr "WitchRN.phl[47]" "Wand_anim_parentConstraint1.tg[0].tro";
connectAttr "WitchRN.phl[48]" "Wand_anim_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r_anim_translateX.o" "WitchRN.phl[49]";
connectAttr "clavicle_r_anim_translateY.o" "WitchRN.phl[50]";
connectAttr "clavicle_r_anim_translateZ.o" "WitchRN.phl[51]";
connectAttr "clavicle_r_anim_rotateX.o" "WitchRN.phl[52]";
connectAttr "clavicle_r_anim_rotateY.o" "WitchRN.phl[53]";
connectAttr "clavicle_r_anim_rotateZ.o" "WitchRN.phl[54]";
connectAttr "clavicle_r_anim_autoShoulders.o" "WitchRN.phl[55]";
connectAttr "body_anim_translateX.o" "WitchRN.phl[56]";
connectAttr "body_anim_translateY.o" "WitchRN.phl[57]";
connectAttr "body_anim_translateZ.o" "WitchRN.phl[58]";
connectAttr "body_anim_rotateX.o" "WitchRN.phl[59]";
connectAttr "body_anim_rotateY.o" "WitchRN.phl[60]";
connectAttr "body_anim_rotateZ.o" "WitchRN.phl[61]";
connectAttr "chest_ik_anim_rotateX.o" "WitchRN.phl[62]";
connectAttr "chest_ik_anim_rotateY.o" "WitchRN.phl[63]";
connectAttr "chest_ik_anim_rotateZ.o" "WitchRN.phl[64]";
connectAttr "hip_anim_rotateX.o" "WitchRN.phl[65]";
connectAttr "hip_anim_rotateY.o" "WitchRN.phl[66]";
connectAttr "hip_anim_rotateZ.o" "WitchRN.phl[67]";
connectAttr "hip_anim_autoHips.o" "WitchRN.phl[68]";
connectAttr "hip_anim_translateX.o" "WitchRN.phl[69]";
connectAttr "hip_anim_translateY.o" "WitchRN.phl[70]";
connectAttr "hip_anim_translateZ.o" "WitchRN.phl[71]";
connectAttr "hip_anim_lCalfTwistCtrlVis.o" "WitchRN.phl[72]";
connectAttr "hip_anim_rCalfTwistCtrlVis.o" "WitchRN.phl[73]";
connectAttr "toe_tip_ctrl_l_rotateY.o" "WitchRN.phl[74]";
connectAttr "toe_tip_ctrl_l_rotateZ.o" "WitchRN.phl[75]";
connectAttr "toe_tip_ctrl_l_rotateX.o" "WitchRN.phl[76]";
connectAttr "ik_foot_anim_r_translateX.o" "WitchRN.phl[77]";
connectAttr "ik_foot_anim_r_translateY.o" "WitchRN.phl[78]";
connectAttr "ik_foot_anim_r_translateZ.o" "WitchRN.phl[79]";
connectAttr "ik_foot_anim_r_rotateX.o" "WitchRN.phl[80]";
connectAttr "ik_foot_anim_r_rotateY.o" "WitchRN.phl[81]";
connectAttr "ik_foot_anim_r_rotateZ.o" "WitchRN.phl[82]";
connectAttr "ik_foot_anim_r_knee_twist.o" "WitchRN.phl[83]";
connectAttr "ik_foot_anim_r_stretchBias.o" "WitchRN.phl[84]";
connectAttr "ik_foot_anim_r_stretch.o" "WitchRN.phl[85]";
connectAttr "ik_foot_anim_r_squash.o" "WitchRN.phl[86]";
connectAttr "ik_foot_anim_r_toeCtrlVis.o" "WitchRN.phl[87]";
connectAttr "toe_wiggle_ctrl_r_rotateX.o" "WitchRN.phl[88]";
connectAttr "toe_wiggle_ctrl_r_rotateY.o" "WitchRN.phl[89]";
connectAttr "toe_tip_ctrl_r_rotateY.o" "WitchRN.phl[90]";
connectAttr "toe_tip_ctrl_r_rotateZ.o" "WitchRN.phl[91]";
connectAttr "toe_tip_ctrl_r_rotateX.o" "WitchRN.phl[92]";
connectAttr "fk_thigh_r_anim_rotateX.o" "WitchRN.phl[93]";
connectAttr "fk_thigh_r_anim_rotateY.o" "WitchRN.phl[94]";
connectAttr "fk_thigh_r_anim_rotateZ.o" "WitchRN.phl[95]";
connectAttr "fk_calf_r_anim_rotateX.o" "WitchRN.phl[96]";
connectAttr "fk_calf_r_anim_rotateY.o" "WitchRN.phl[97]";
connectAttr "fk_calf_r_anim_rotateZ.o" "WitchRN.phl[98]";
connectAttr "fk_foot_r_anim_rotateX.o" "WitchRN.phl[99]";
connectAttr "fk_foot_r_anim_rotateY.o" "WitchRN.phl[100]";
connectAttr "fk_foot_r_anim_rotateZ.o" "WitchRN.phl[101]";
connectAttr "fk_ball_r_anim_rotateX.o" "WitchRN.phl[102]";
connectAttr "fk_ball_r_anim_rotateY.o" "WitchRN.phl[103]";
connectAttr "fk_ball_r_anim_rotateZ.o" "WitchRN.phl[104]";
connectAttr "neck_01_fk_anim_scaleX.o" "WitchRN.phl[105]";
connectAttr "neck_01_fk_anim_scaleY.o" "WitchRN.phl[106]";
connectAttr "neck_01_fk_anim_scaleZ.o" "WitchRN.phl[107]";
connectAttr "neck_01_fk_anim_translateX.o" "WitchRN.phl[108]";
connectAttr "neck_01_fk_anim_translateY.o" "WitchRN.phl[109]";
connectAttr "neck_01_fk_anim_translateZ.o" "WitchRN.phl[110]";
connectAttr "neck_01_fk_anim_rotateX.o" "WitchRN.phl[111]";
connectAttr "neck_01_fk_anim_rotateY.o" "WitchRN.phl[112]";
connectAttr "neck_01_fk_anim_rotateZ.o" "WitchRN.phl[113]";
connectAttr "neck_01_fk_anim_fkOrientation.o" "WitchRN.phl[114]";
connectAttr "index_finger_fk_ctrl_1_r_translateX.o" "WitchRN.phl[115]";
connectAttr "index_finger_fk_ctrl_1_r_translateY.o" "WitchRN.phl[116]";
connectAttr "index_finger_fk_ctrl_1_r_translateZ.o" "WitchRN.phl[117]";
connectAttr "index_finger_fk_ctrl_1_r_rotateX.o" "WitchRN.phl[118]";
connectAttr "index_finger_fk_ctrl_1_r_rotateY.o" "WitchRN.phl[119]";
connectAttr "index_finger_fk_ctrl_1_r_rotateZ.o" "WitchRN.phl[120]";
connectAttr "index_finger_fk_ctrl_1_r_sticky.o" "WitchRN.phl[121]";
connectAttr "index_finger_fk_ctrl_2_r_translateX.o" "WitchRN.phl[122]";
connectAttr "index_finger_fk_ctrl_2_r_translateY.o" "WitchRN.phl[123]";
connectAttr "index_finger_fk_ctrl_2_r_translateZ.o" "WitchRN.phl[124]";
connectAttr "index_finger_fk_ctrl_2_r_rotateX.o" "WitchRN.phl[125]";
connectAttr "index_finger_fk_ctrl_2_r_rotateY.o" "WitchRN.phl[126]";
connectAttr "index_finger_fk_ctrl_2_r_rotateZ.o" "WitchRN.phl[127]";
connectAttr "index_finger_fk_ctrl_3_r_translateX.o" "WitchRN.phl[128]";
connectAttr "index_finger_fk_ctrl_3_r_translateY.o" "WitchRN.phl[129]";
connectAttr "index_finger_fk_ctrl_3_r_translateZ.o" "WitchRN.phl[130]";
connectAttr "index_finger_fk_ctrl_3_r_rotateX.o" "WitchRN.phl[131]";
connectAttr "index_finger_fk_ctrl_3_r_rotateY.o" "WitchRN.phl[132]";
connectAttr "index_finger_fk_ctrl_3_r_rotateZ.o" "WitchRN.phl[133]";
connectAttr "middle_finger_fk_ctrl_1_r_translateX.o" "WitchRN.phl[134]";
connectAttr "middle_finger_fk_ctrl_1_r_translateY.o" "WitchRN.phl[135]";
connectAttr "middle_finger_fk_ctrl_1_r_translateZ.o" "WitchRN.phl[136]";
connectAttr "middle_finger_fk_ctrl_1_r_rotateX.o" "WitchRN.phl[137]";
connectAttr "middle_finger_fk_ctrl_1_r_rotateY.o" "WitchRN.phl[138]";
connectAttr "middle_finger_fk_ctrl_1_r_rotateZ.o" "WitchRN.phl[139]";
connectAttr "middle_finger_fk_ctrl_1_r_sticky.o" "WitchRN.phl[140]";
connectAttr "middle_finger_fk_ctrl_2_r_translateX.o" "WitchRN.phl[141]";
connectAttr "middle_finger_fk_ctrl_2_r_translateY.o" "WitchRN.phl[142]";
connectAttr "middle_finger_fk_ctrl_2_r_translateZ.o" "WitchRN.phl[143]";
connectAttr "middle_finger_fk_ctrl_2_r_rotateX.o" "WitchRN.phl[144]";
connectAttr "middle_finger_fk_ctrl_2_r_rotateY.o" "WitchRN.phl[145]";
connectAttr "middle_finger_fk_ctrl_2_r_rotateZ.o" "WitchRN.phl[146]";
connectAttr "middle_finger_fk_ctrl_3_r_translateX.o" "WitchRN.phl[147]";
connectAttr "middle_finger_fk_ctrl_3_r_translateY.o" "WitchRN.phl[148]";
connectAttr "middle_finger_fk_ctrl_3_r_translateZ.o" "WitchRN.phl[149]";
connectAttr "middle_finger_fk_ctrl_3_r_rotateX.o" "WitchRN.phl[150]";
connectAttr "middle_finger_fk_ctrl_3_r_rotateY.o" "WitchRN.phl[151]";
connectAttr "middle_finger_fk_ctrl_3_r_rotateZ.o" "WitchRN.phl[152]";
connectAttr "ring_finger_fk_ctrl_1_r_translateX.o" "WitchRN.phl[153]";
connectAttr "ring_finger_fk_ctrl_1_r_translateY.o" "WitchRN.phl[154]";
connectAttr "ring_finger_fk_ctrl_1_r_translateZ.o" "WitchRN.phl[155]";
connectAttr "ring_finger_fk_ctrl_1_r_rotateX.o" "WitchRN.phl[156]";
connectAttr "ring_finger_fk_ctrl_1_r_rotateY.o" "WitchRN.phl[157]";
connectAttr "ring_finger_fk_ctrl_1_r_rotateZ.o" "WitchRN.phl[158]";
connectAttr "ring_finger_fk_ctrl_1_r_sticky.o" "WitchRN.phl[159]";
connectAttr "ring_finger_fk_ctrl_2_r_translateX.o" "WitchRN.phl[160]";
connectAttr "ring_finger_fk_ctrl_2_r_translateY.o" "WitchRN.phl[161]";
connectAttr "ring_finger_fk_ctrl_2_r_translateZ.o" "WitchRN.phl[162]";
connectAttr "ring_finger_fk_ctrl_2_r_rotateX.o" "WitchRN.phl[163]";
connectAttr "ring_finger_fk_ctrl_2_r_rotateY.o" "WitchRN.phl[164]";
connectAttr "ring_finger_fk_ctrl_2_r_rotateZ.o" "WitchRN.phl[165]";
connectAttr "ring_finger_fk_ctrl_3_r_translateX.o" "WitchRN.phl[166]";
connectAttr "ring_finger_fk_ctrl_3_r_translateY.o" "WitchRN.phl[167]";
connectAttr "ring_finger_fk_ctrl_3_r_translateZ.o" "WitchRN.phl[168]";
connectAttr "ring_finger_fk_ctrl_3_r_rotateX.o" "WitchRN.phl[169]";
connectAttr "ring_finger_fk_ctrl_3_r_rotateY.o" "WitchRN.phl[170]";
connectAttr "ring_finger_fk_ctrl_3_r_rotateZ.o" "WitchRN.phl[171]";
connectAttr "pinky_finger_fk_ctrl_1_r_translateX.o" "WitchRN.phl[172]";
connectAttr "pinky_finger_fk_ctrl_1_r_translateY.o" "WitchRN.phl[173]";
connectAttr "pinky_finger_fk_ctrl_1_r_translateZ.o" "WitchRN.phl[174]";
connectAttr "pinky_finger_fk_ctrl_1_r_rotateX.o" "WitchRN.phl[175]";
connectAttr "pinky_finger_fk_ctrl_1_r_rotateY.o" "WitchRN.phl[176]";
connectAttr "pinky_finger_fk_ctrl_1_r_rotateZ.o" "WitchRN.phl[177]";
connectAttr "pinky_finger_fk_ctrl_1_r_sticky.o" "WitchRN.phl[178]";
connectAttr "pinky_finger_fk_ctrl_2_r_translateX.o" "WitchRN.phl[179]";
connectAttr "pinky_finger_fk_ctrl_2_r_translateY.o" "WitchRN.phl[180]";
connectAttr "pinky_finger_fk_ctrl_2_r_translateZ.o" "WitchRN.phl[181]";
connectAttr "pinky_finger_fk_ctrl_2_r_rotateX.o" "WitchRN.phl[182]";
connectAttr "pinky_finger_fk_ctrl_2_r_rotateY.o" "WitchRN.phl[183]";
connectAttr "pinky_finger_fk_ctrl_2_r_rotateZ.o" "WitchRN.phl[184]";
connectAttr "pinky_finger_fk_ctrl_3_r_translateX.o" "WitchRN.phl[185]";
connectAttr "pinky_finger_fk_ctrl_3_r_translateY.o" "WitchRN.phl[186]";
connectAttr "pinky_finger_fk_ctrl_3_r_translateZ.o" "WitchRN.phl[187]";
connectAttr "pinky_finger_fk_ctrl_3_r_rotateX.o" "WitchRN.phl[188]";
connectAttr "pinky_finger_fk_ctrl_3_r_rotateY.o" "WitchRN.phl[189]";
connectAttr "pinky_finger_fk_ctrl_3_r_rotateZ.o" "WitchRN.phl[190]";
connectAttr "thumb_finger_fk_ctrl_1_r_translateX.o" "WitchRN.phl[191]";
connectAttr "thumb_finger_fk_ctrl_1_r_translateY.o" "WitchRN.phl[192]";
connectAttr "thumb_finger_fk_ctrl_1_r_translateZ.o" "WitchRN.phl[193]";
connectAttr "thumb_finger_fk_ctrl_1_r_rotateX.o" "WitchRN.phl[194]";
connectAttr "thumb_finger_fk_ctrl_1_r_rotateY.o" "WitchRN.phl[195]";
connectAttr "thumb_finger_fk_ctrl_1_r_rotateZ.o" "WitchRN.phl[196]";
connectAttr "thumb_finger_fk_ctrl_1_r_sticky.o" "WitchRN.phl[197]";
connectAttr "thumb_finger_fk_ctrl_2_r_translateX.o" "WitchRN.phl[198]";
connectAttr "thumb_finger_fk_ctrl_2_r_translateY.o" "WitchRN.phl[199]";
connectAttr "thumb_finger_fk_ctrl_2_r_translateZ.o" "WitchRN.phl[200]";
connectAttr "thumb_finger_fk_ctrl_2_r_rotateX.o" "WitchRN.phl[201]";
connectAttr "thumb_finger_fk_ctrl_2_r_rotateY.o" "WitchRN.phl[202]";
connectAttr "thumb_finger_fk_ctrl_2_r_rotateZ.o" "WitchRN.phl[203]";
connectAttr "thumb_finger_fk_ctrl_3_r_translateX.o" "WitchRN.phl[204]";
connectAttr "thumb_finger_fk_ctrl_3_r_translateY.o" "WitchRN.phl[205]";
connectAttr "thumb_finger_fk_ctrl_3_r_translateZ.o" "WitchRN.phl[206]";
connectAttr "thumb_finger_fk_ctrl_3_r_rotateX.o" "WitchRN.phl[207]";
connectAttr "thumb_finger_fk_ctrl_3_r_rotateY.o" "WitchRN.phl[208]";
connectAttr "thumb_finger_fk_ctrl_3_r_rotateZ.o" "WitchRN.phl[209]";
connectAttr "Wand_anim_parentConstraint1.ctx" "WitchRN.phl[210]";
connectAttr "Wand_anim_parentConstraint1.cty" "WitchRN.phl[211]";
connectAttr "Wand_anim_parentConstraint1.ctz" "WitchRN.phl[212]";
connectAttr "WitchRN.phl[213]" "Wand_anim_parentConstraint1.crp";
connectAttr "WitchRN.phl[214]" "Wand_anim_parentConstraint1.crt";
connectAttr "Wand_anim_parentConstraint1.crx" "WitchRN.phl[215]";
connectAttr "Wand_anim_parentConstraint1.cry" "WitchRN.phl[216]";
connectAttr "Wand_anim_parentConstraint1.crz" "WitchRN.phl[217]";
connectAttr "WitchRN.phl[218]" "Wand_anim_parentConstraint1.cro";
connectAttr "WitchRN.phl[219]" "Wand_anim_parentConstraint1.cpim";
connectAttr "Rig_Settings_lArmMode.o" "WitchRN.phl[220]";
connectAttr "Rig_Settings_rArmMode.o" "WitchRN.phl[221]";
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
// End of Idle.ma
