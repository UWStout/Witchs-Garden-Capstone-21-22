//Maya ASCII 2020 scene
//Name: Water.ma
//Last modified: Wed, Dec 01, 2021 08:26:11 PM
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
fileInfo "UUID" "5C693DC3-45A7-1C42-0A37-52A83E553A12";
createNode transform -s -n "persp";
	rename -uid "2E212578-4731-69A1-AF6F-4390EB07C337";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -146.53244717452981 -370.58946635186055 122.80905629837142 ;
	setAttr ".r" -type "double3" 84.682924915474629 1.5902773407317584e-15 1775.9949050604962 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23260927-43AB-4C93-ABE1-21844D2493E9";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 387.03818234742505;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -15.172701305240416 -8.602833562040562 102.02759052908002 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "B6C133BB-45C2-A1AB-78FC-BBBCB524F519";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8099347D-4510-B403-C761-CBBC3393BEBB";
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
	rename -uid "BFC92E17-4FBE-0D7F-9648-8AA9B33A6F7B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -1000.1 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D61530CA-4FE5-030B-FC5F-D09DEBACAD1A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "99922396-4804-0F92-8324-988C59FA20B8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 -7.5236422086394548 54.103838823892573 ;
	setAttr ".r" -type "double3" 90 0 90 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "F2757FDF-414E-706F-A8F5-C0BBFD45E802";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 240.53526708209085;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode fosterParent -n "WitchRNfosterParent1";
	rename -uid "2F8EA1BB-4D2B-8257-0FD8-718773BFE561";
createNode parentConstraint -n "Wand_anim_parentConstraint1" -p "WitchRNfosterParent1";
	rename -uid "9A70EECC-4B0B-DD83-4712-609756D74C27";
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
	setAttr ".tg[0].tot" -type "double3" -8.0768581730075866 -0.61991585591321297 -1.4023162404704586 ;
	setAttr ".tg[0].tor" -type "double3" -0.67930405183684428 15.205539311902443 160.66209119961871 ;
	setAttr ".lr" -type "double3" -91.954484181032385 1.70716429210759 -113.65024097935141 ;
	setAttr ".rst" -type "double3" 22.002000000000002 14.855999999999995 -19.452999999999989 ;
	setAttr ".rsrr" -type "double3" 98.298999999999978 124.078 8.136999999999972 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "61C72036-414D-8A92-86EA-E5B7A2F9DCEE";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B8693B26-46DF-EF71-35C8-6CA3DE747BB2";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 0 1 ;
	setAttr -s 2 ".bspr";
	setAttr -s 2 ".obsv";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7839C599-4CA6-652C-894D-A29A10D7D5A1";
createNode displayLayerManager -n "layerManager";
	rename -uid "18052A5E-4D80-EE84-03A2-67ACCBB5AED3";
createNode displayLayer -n "defaultLayer";
	rename -uid "0BAE8D56-4DCA-9CEC-3C3E-ECB19C2177F2";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4C47CE47-4506-A17F-DBFF-7BB6D1D13148";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "11D0A995-4074-AD47-B529-E4881D33F687";
	setAttr ".g" yes;
createNode reference -n "WitchRN";
	rename -uid "23773AA7-4A05-9602-47E4-D7B320261F80";
	setAttr -s 145 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"WitchRN"
		"WitchRN" 0
		"Witch:Witch_ExportRN" 0
		"WitchRN" 507
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
		2 "|Witch:rig_grp" "translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:driver_root|Witch:driver_pelvis|Witch:driver_spine_01|Witch:driver_spine_02|Witch:driver_spine_03|Witch:head_fk_orient_shoulder" 
		"visibility" " 1"
		2 "|Witch:rig_grp|Witch:driver_root|Witch:driver_pelvis|Witch:driver_spine_01|Witch:driver_spine_02|Witch:driver_spine_03|Witch:head_fk_orient_shoulder" 
		"translate" " -type \"double3\" 19.4817687620869151 -3.76856776008016503 0"
		2 "|Witch:rig_grp|Witch:driver_root|Witch:driver_pelvis|Witch:driver_spine_01|Witch:driver_spine_02|Witch:driver_spine_03|Witch:head_fk_orient_shoulder" 
		"rotate" " -type \"double3\" 0 0 -8.15944121425005875"
		2 "|Witch:rig_grp|Witch:driver_root|Witch:driver_pelvis|Witch:driver_spine_01|Witch:driver_spine_02|Witch:driver_spine_03|Witch:head_fk_orient_shoulder" 
		"scale" " -type \"double3\" 1.00000000000000022 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button64\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button65\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotate" " -type \"double3\" 10.42362230641059462 11.78968899969593842 13.41542670793409897"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button38\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotate" " -type \"double3\" -3.33893294113741623 0.32281678391389534 -22.78064842711693672"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button40\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotate" " -type \"double3\" -8.27139457600485528 0.43740600480333558 -1.36220590439700295"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button42\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotate" " -type \"double3\" 16.93064504227659839 12.25696695671757297 5.73717672406471291"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_clavicle_l_anim_grp|Witch:fk_clavicle_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button36\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button46\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button119\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:index_l_ik_anim_grp|Witch:index_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button107\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:middle_l_ik_anim_grp|Witch:middle_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button108\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:ring_l_ik_anim_grp|Witch:ring_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button109\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:pinky_l_ik_anim_grp|Witch:pinky_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button110\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_l_anim_space_switcher_follow|Witch:ik_wrist_l_anim_space_switcher|Witch:ik_wrist_l_anim_grp|Witch:ik_wrist_l_anim|Witch:l_global_ik_anim_space_switcher_follow|Witch:l_global_ik_anim_space_switcher|Witch:l_global_ik_anim_grp|Witch:l_global_ik_anim|Witch:thumb_l_ik_anim_grp|Witch:thumb_l_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button111\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_l_anim_space_switcher_follow|Witch:ik_elbow_l_anim_space_switcher|Witch:ik_elbow_l_anim_grp|Witch:ik_elbow_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button44\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_l|Witch:upperarm_l_twist_anim_grp|Witch:upperarm_l_twist_driven_grp|Witch:upperarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button75\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_l_roll_grp|Witch:lowerarm_l_twist_joint|Witch:lowerarm_l_twist_mod|Witch:lowerarm_l_twist_anim_grp|Witch:lowerarm_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button77\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotate" " -type \"double3\" 7.11360100800359341 1.39080256420921256 -38.68677656535488296"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button39\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotate" " -type \"double3\" 0 0 -4.21081516424191182"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button41\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotate" " -type \"double3\" 4.21376084075615065 -10.68529626030422719 -8.15372694922918484"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button43\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotate" " -type \"double3\" 7.90319393088806432 -0.73241486319197602 18.68341446356080482"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"autoShoulders" " -k 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_clavicle_r_anim_grp|Witch:fk_clavicle_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button37\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button47\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button156\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:index_r_ik_anim_grp|Witch:index_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button144\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:middle_r_ik_anim_grp|Witch:middle_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button145\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:ring_r_ik_anim_grp|Witch:ring_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button146\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:pinky_r_ik_anim_grp|Witch:pinky_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button147\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_wrist_r_anim_space_switcher_follow|Witch:ik_wrist_r_anim_space_switcher|Witch:ik_wrist_r_anim_grp|Witch:ik_wrist_r_anim|Witch:r_global_ik_anim_space_switcher_follow|Witch:r_global_ik_anim_space_switcher|Witch:r_global_ik_anim_grp|Witch:r_global_ik_anim|Witch:thumb_r_ik_anim_grp|Witch:thumb_r_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button148\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:ik_elbow_r_anim_space_switcher_follow|Witch:ik_elbow_r_anim_space_switcher|Witch:ik_elbow_r_anim_grp|Witch:ik_elbow_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button45\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:upperarm_twist_grp_r|Witch:upperarm_r_twist_anim_grp|Witch:upperarm_r_twist_driven_grp|Witch:upperarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button76\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:lowerarm_r_roll_grp|Witch:lowerarm_r_twist_joint|Witch:lowerarm_r_twist_mod|Witch:lowerarm_r_twist_anim_grp|Witch:lowerarm_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button78\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translate" " -type \"double3\" 0.94934247494272028 -8.59610386188595221 -0.9222689560665196"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button34\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button31\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button32\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:spine_01_space_switcher_follow|Witch:spine_01_space_switcher|Witch:spine_01_anim_grp|Witch:spine_01_anim_offset_grp|Witch:spine_01_anim|Witch:spine_02_anim_grp|Witch:spine_02_anim_offset_grp|Witch:spine_02_anim|Witch:spine_03_anim_grp|Witch:spine_03_anim_offset_grp|Witch:spine_03_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button33\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:mid_ik_anim_grp|Witch:mid_ik_anim_translate_driver_grp|Witch:mid_ik_anim_driver_grp|Witch:mid_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button29\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotate" " -type \"double3\" 5.93299912282286179 0.81723500285486694 0.32699790498930775"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleX" " -k 0 0.99999999999999978"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleY" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scaleZ" " -k 0 0.99999999999999989"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scalePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"scalePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button30\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim" 
		"rotate" " -type \"double3\" 19.38990013026948489 1.7514463941574101 -0.17971022586211075"
		
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
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button35\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:head_fk_orient_body" 
		"visibility" " 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:head_fk_orient_body" 
		"translate" " -type \"double3\" 48.24747719586036965 10.31547176391496734 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:head_fk_orient_body" 
		"rotate" " -type \"double3\" 0 0 14.32479873104903234"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:head_fk_orient_body" 
		"scale" " -type \"double3\" 0.99999999999999989 0.99999999999999989 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translate" " -type \"double3\" 0 28.75673518454422606 -0.99577617467287638"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"translateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button56\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:ik_foot_toe_tip_pivot_l_grp|Witch:ik_foot_toe_tip_pivot_l|Witch:ik_foot_inside_pivot_l_grp|Witch:ik_foot_inside_pivot_l|Witch:ik_foot_outside_pivot_l_grp|Witch:ik_foot_outside_pivot_l|Witch:ik_foot_heel_pivot_l_grp|Witch:ik_foot_heel_pivot_l|Witch:ik_foot_toe_pivot_l_grp|Witch:ik_foot_toe_pivot_l|Witch:toe_wiggle_ctrl_l_grp|Witch:toe_wiggle_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button60\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 -18.14811000226454851"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button58\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateX" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateY" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"translateZ" " -k 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotate" " -type \"double3\" 0 0 -43.4113056589525641"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"rotateX" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleY" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"scaleZ" " -k 0 1.00000000000000022"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button62\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button48\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button50\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button52\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:leg_joints_grp_l|Witch:fk_thigh_l_orient_grp|Witch:fk_thigh_l_anim_grp|Witch:fk_thigh_l_anim|Witch:fk_calf_l_anim_grp|Witch:fk_calf_l_anim|Witch:fk_foot_l_anim_grp|Witch:fk_foot_l_anim|Witch:fk_ball_l_anim_grp|Witch:fk_ball_l_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button54\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:thigh_twist_grp_l|Witch:l_thigh_twist_01_anim_grp|Witch:l_thigh_twist_01_driven_grp|Witch:l_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button79\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:calf_l_roll_grp|Witch:calf_l_twist_joint|Witch:calf_l_twist_mod|Witch:calf_l_twist_anim_grp|Witch:calf_l_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button81\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translate" " -type \"double3\" 0 -13.53495789385883086 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"translateY" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"rotatePivot" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button57\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:ik_foot_toe_tip_pivot_r_grp|Witch:ik_foot_toe_tip_pivot_r|Witch:ik_foot_inside_pivot_r_grp|Witch:ik_foot_inside_pivot_r|Witch:ik_foot_outside_pivot_r_grp|Witch:ik_foot_outside_pivot_r|Witch:ik_foot_heel_pivot_r_grp|Witch:ik_foot_heel_pivot_r|Witch:ik_foot_toe_pivot_r_grp|Witch:ik_foot_toe_pivot_r|Witch:toe_wiggle_ctrl_r_grp|Witch:toe_wiggle_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button61\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:heel_ctrl_r_grp|Witch:heel_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button59\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r|Witch:master_foot_ball_pivot_r_grp|Witch:master_foot_ball_pivot_r|Witch:toe_tip_ctrl_r_grp|Witch:toe_tip_ctrl_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button63\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button49\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button51\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button53\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:leg_joints_grp_r|Witch:fk_thigh_r_orient_grp|Witch:fk_thigh_r_anim_grp|Witch:fk_thigh_r_anim|Witch:fk_calf_r_anim_grp|Witch:fk_calf_r_anim|Witch:fk_foot_r_anim_grp|Witch:fk_foot_r_anim|Witch:fk_ball_r_anim_grp|Witch:fk_ball_r_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button55\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:thigh_twist_grp_r|Witch:r_thigh_twist_01_anim_grp|Witch:r_thigh_twist_01_driven_grp|Witch:r_thigh_twist_01_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button80\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:calf_r_roll_grp|Witch:calf_r_twist_joint|Witch:calf_r_twist_mod|Witch:calf_r_twist_anim_grp|Witch:calf_r_twist_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button82\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotate" " -type \"double3\" 0 0 -8.64467993128824297"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateZ" " -av"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"rotateOrder" " 5"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button28\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_neck" 
		"visibility" " 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_neck" 
		"translate" " -type \"double3\" 9.43199679597185536 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_neck" 
		"rotate" " -type \"double3\" 0 0 4.69399604368928358"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_neck" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim|Witch:head_fk_orient_master|Witch:head_fk_anim_grp|Witch:head_fk_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button27\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:index_l_poleVector_grp|Witch:index_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button113\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:middle_l_poleVector_grp|Witch:middle_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button114\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:ring_l_poleVector_grp|Witch:ring_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button115\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:pinky_l_poleVector_grp|Witch:pinky_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button116\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:fingers_l_poleVectors_grp|Witch:thumb_l_poleVector_grp|Witch:thumb_l_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button117\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button92\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button93\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:index_finger_fk_ctrl_1_l_grp|Witch:index_finger_fk_ctrl_1_l_driven_grp|Witch:index_finger_fk_ctrl_1_l|Witch:index_finger_fk_ctrl_2_l_grp|Witch:index_finger_fk_ctrl_2_l_driven_grp|Witch:index_finger_fk_ctrl_2_l|Witch:index_finger_fk_ctrl_3_l_grp|Witch:index_finger_fk_ctrl_3_l_driven_grp|Witch:index_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button94\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button89\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button90\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:middle_finger_fk_ctrl_1_l_grp|Witch:middle_finger_fk_ctrl_1_l_driven_grp|Witch:middle_finger_fk_ctrl_1_l|Witch:middle_finger_fk_ctrl_2_l_grp|Witch:middle_finger_fk_ctrl_2_l_driven_grp|Witch:middle_finger_fk_ctrl_2_l|Witch:middle_finger_fk_ctrl_3_l_grp|Witch:middle_finger_fk_ctrl_3_l_driven_grp|Witch:middle_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button91\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button86\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button87\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:ring_finger_fk_ctrl_1_l_grp|Witch:ring_finger_fk_ctrl_1_l_driven_grp|Witch:ring_finger_fk_ctrl_1_l|Witch:ring_finger_fk_ctrl_2_l_grp|Witch:ring_finger_fk_ctrl_2_l_driven_grp|Witch:ring_finger_fk_ctrl_2_l|Witch:ring_finger_fk_ctrl_3_l_grp|Witch:ring_finger_fk_ctrl_3_l_driven_grp|Witch:ring_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button88\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button83\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button84\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:pinky_finger_fk_ctrl_1_l_grp|Witch:pinky_finger_fk_ctrl_1_l_driven_grp|Witch:pinky_finger_fk_ctrl_1_l|Witch:pinky_finger_fk_ctrl_2_l_grp|Witch:pinky_finger_fk_ctrl_2_l_driven_grp|Witch:pinky_finger_fk_ctrl_2_l|Witch:pinky_finger_fk_ctrl_3_l_grp|Witch:pinky_finger_fk_ctrl_3_l_driven_grp|Witch:pinky_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button85\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button95\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button96\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_l|Witch:hand_driven_grp_master_l|Witch:hand_driven_grp_l|Witch:fk_finger_controls_l_grp|Witch:thumb_finger_fk_ctrl_1_l_grp|Witch:thumb_finger_fk_ctrl_1_l_driven_grp|Witch:thumb_finger_fk_ctrl_1_l|Witch:thumb_finger_fk_ctrl_2_l_grp|Witch:thumb_finger_fk_ctrl_2_l_driven_grp|Witch:thumb_finger_fk_ctrl_2_l|Witch:thumb_finger_fk_ctrl_3_l_grp|Witch:thumb_finger_fk_ctrl_3_l_driven_grp|Witch:thumb_finger_fk_ctrl_3_l" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button97\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:index_r_poleVector_grp|Witch:index_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button150\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:middle_r_poleVector_grp|Witch:middle_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button151\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:ring_r_poleVector_grp|Witch:ring_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button152\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:pinky_r_poleVector_grp|Witch:pinky_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button153\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:fingers_r_poleVectors_grp|Witch:thumb_r_poleVector_grp|Witch:thumb_r_poleVector" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button154\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 66.07149232728733068"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button129\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 62.80915746415178802"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button130\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 33.91127376312083896"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:index_finger_fk_ctrl_1_r_grp|Witch:index_finger_fk_ctrl_1_r_driven_grp|Witch:index_finger_fk_ctrl_1_r|Witch:index_finger_fk_ctrl_2_r_grp|Witch:index_finger_fk_ctrl_2_r_driven_grp|Witch:index_finger_fk_ctrl_2_r|Witch:index_finger_fk_ctrl_3_r_grp|Witch:index_finger_fk_ctrl_3_r_driven_grp|Witch:index_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button131\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 71.60456396554074843"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button126\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 43.96117463845091322"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button127\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 32.93603821341223181"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:middle_finger_fk_ctrl_1_r_grp|Witch:middle_finger_fk_ctrl_1_r_driven_grp|Witch:middle_finger_fk_ctrl_1_r|Witch:middle_finger_fk_ctrl_2_r_grp|Witch:middle_finger_fk_ctrl_2_r_driven_grp|Witch:middle_finger_fk_ctrl_2_r|Witch:middle_finger_fk_ctrl_3_r_grp|Witch:middle_finger_fk_ctrl_3_r_driven_grp|Witch:middle_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button128\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 85.18557081068784953"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button123\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 18.31425146939037774"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button124\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 27.13926164123603613"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:ring_finger_fk_ctrl_1_r_grp|Witch:ring_finger_fk_ctrl_1_r_driven_grp|Witch:ring_finger_fk_ctrl_1_r|Witch:ring_finger_fk_ctrl_2_r_grp|Witch:ring_finger_fk_ctrl_2_r_driven_grp|Witch:ring_finger_fk_ctrl_2_r|Witch:ring_finger_fk_ctrl_3_r_grp|Witch:ring_finger_fk_ctrl_3_r_driven_grp|Witch:ring_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button125\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 0 0 75.03641042388623816"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button120\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 0 0 30.84222072647503765"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button121\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 0 0 22.63193536066379608"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:pinky_finger_fk_ctrl_1_r_grp|Witch:pinky_finger_fk_ctrl_1_r_driven_grp|Witch:pinky_finger_fk_ctrl_1_r|Witch:pinky_finger_fk_ctrl_2_r_grp|Witch:pinky_finger_fk_ctrl_2_r_driven_grp|Witch:pinky_finger_fk_ctrl_2_r|Witch:pinky_finger_fk_ctrl_3_r_grp|Witch:pinky_finger_fk_ctrl_3_r_driven_grp|Witch:pinky_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button122\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"rotate" " -type \"double3\" 45.6107733401825044 -1.69462428132961218 16.51594399925342316"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"sticky" " -k 1 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button132\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"rotate" " -type \"double3\" 18.22423254384324665 5.89681298477958116 24.29740484053566618"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button133\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"rotate" " -type \"double3\" 18.96955465814299657 -2.46859080025779898 48.76926036156465472"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:finger_sys_grp_r|Witch:hand_driven_grp_master_r|Witch:hand_driven_grp_r|Witch:fk_finger_controls_r_grp|Witch:thumb_finger_fk_ctrl_1_r_grp|Witch:thumb_finger_fk_ctrl_1_r_driven_grp|Witch:thumb_finger_fk_ctrl_1_r|Witch:thumb_finger_fk_ctrl_2_r_grp|Witch:thumb_finger_fk_ctrl_2_r_driven_grp|Witch:thumb_finger_fk_ctrl_2_r|Witch:thumb_finger_fk_ctrl_3_r_grp|Witch:thumb_finger_fk_ctrl_3_r_driven_grp|Witch:thumb_finger_fk_ctrl_3_r" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout37|formLayout100|button134\""
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:head_sys_grp|Witch:head_fk_orient_world" 
		"visibility" " 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:head_sys_grp|Witch:head_fk_orient_world" 
		"translate" " -type \"double3\" 0 -0.45990816622812636 118.03841631177495231"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:head_sys_grp|Witch:head_fk_orient_world" 
		"rotate" " -type \"double3\" -89.99999999999927525 -89.4967656545427559 89.99999999999927525"
		
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:head_sys_grp|Witch:head_fk_orient_world" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:root_anim" 
		"buttonName" " -type \"string\" \"artAnimUI|columnLayout3|rowColumnLayout6|tabLayout2|formLayout98|scrollLayout2|columnLayout5|frameLayout36|formLayout99|button66\""
		
		2 "|Witch:rig_grp|Witch:Rig_Settings" "lFkArmOrient" " -k 1 2"
		2 "|Witch:rig_grp|Witch:Rig_Settings" "lArmMode" " -av -k 1 0"
		2 "|Witch:rig_grp|Witch:Rig_Settings" "rArmMode" " -av -k 1 0"
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
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateX" 
		"WitchRN.placeHolderList[7]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateY" 
		"WitchRN.placeHolderList[8]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.translateZ" 
		"WitchRN.placeHolderList[9]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateX" 
		"WitchRN.placeHolderList[10]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateY" 
		"WitchRN.placeHolderList[11]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim.rotateZ" 
		"WitchRN.placeHolderList[12]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateX" 
		"WitchRN.placeHolderList[13]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateY" 
		"WitchRN.placeHolderList[14]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.translateZ" 
		"WitchRN.placeHolderList[15]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateX" 
		"WitchRN.placeHolderList[16]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateY" 
		"WitchRN.placeHolderList[17]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:fk_orient_master_loc_l|Witch:fk_arm_l_anim_grp|Witch:fk_arm_l_anim|Witch:fk_elbow_l_anim_grp|Witch:fk_elbow_l_anim|Witch:fk_wrist_l_anim_grp|Witch:fk_wrist_l_anim.rotateZ" 
		"WitchRN.placeHolderList[18]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateX" 
		"WitchRN.placeHolderList[19]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateY" 
		"WitchRN.placeHolderList[20]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.translateZ" 
		"WitchRN.placeHolderList[21]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateY" 
		"WitchRN.placeHolderList[22]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateX" 
		"WitchRN.placeHolderList[23]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.rotateZ" 
		"WitchRN.placeHolderList[24]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_l|Witch:auto_clav_world_grp_l|Witch:clavicle_l_anim_grp|Witch:clavicle_l_anim.autoShoulders" 
		"WitchRN.placeHolderList[25]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateX" 
		"WitchRN.placeHolderList[26]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateY" 
		"WitchRN.placeHolderList[27]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.translateZ" 
		"WitchRN.placeHolderList[28]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateX" 
		"WitchRN.placeHolderList[29]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateY" 
		"WitchRN.placeHolderList[30]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim.rotateZ" 
		"WitchRN.placeHolderList[31]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateX" 
		"WitchRN.placeHolderList[32]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateY" 
		"WitchRN.placeHolderList[33]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.translateZ" 
		"WitchRN.placeHolderList[34]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateX" 
		"WitchRN.placeHolderList[35]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateY" 
		"WitchRN.placeHolderList[36]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim.rotateZ" 
		"WitchRN.placeHolderList[37]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.scale" 
		"WitchRN.placeHolderList[38]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translate" 
		"WitchRN.placeHolderList[39]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateX" 
		"WitchRN.placeHolderList[40]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateY" 
		"WitchRN.placeHolderList[41]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.translateZ" 
		"WitchRN.placeHolderList[42]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivot" 
		"WitchRN.placeHolderList[43]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[44]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotate" 
		"WitchRN.placeHolderList[45]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateX" 
		"WitchRN.placeHolderList[46]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateY" 
		"WitchRN.placeHolderList[47]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateZ" 
		"WitchRN.placeHolderList[48]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.rotateOrder" 
		"WitchRN.placeHolderList[49]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:fk_orient_master_loc_r|Witch:fk_arm_r_anim_grp|Witch:fk_arm_r_anim|Witch:fk_elbow_r_anim_grp|Witch:fk_elbow_r_anim|Witch:fk_wrist_r_anim_grp|Witch:fk_wrist_r_anim.parentMatrix" 
		"WitchRN.placeHolderList[50]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateX" 
		"WitchRN.placeHolderList[51]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateY" 
		"WitchRN.placeHolderList[52]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.translateZ" 
		"WitchRN.placeHolderList[53]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateX" 
		"WitchRN.placeHolderList[54]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateY" 
		"WitchRN.placeHolderList[55]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.rotateZ" 
		"WitchRN.placeHolderList[56]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:arm_sys_grp|Witch:arm_rig_master_grp_r|Witch:auto_clav_world_grp_r|Witch:clavicle_r_anim_grp|Witch:clavicle_r_anim.autoShoulders" 
		"WitchRN.placeHolderList[57]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateX" 
		"WitchRN.placeHolderList[58]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateY" 
		"WitchRN.placeHolderList[59]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.translateZ" 
		"WitchRN.placeHolderList[60]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateX" 
		"WitchRN.placeHolderList[61]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateY" 
		"WitchRN.placeHolderList[62]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim.rotateZ" 
		"WitchRN.placeHolderList[63]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateX" 
		"WitchRN.placeHolderList[64]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateY" 
		"WitchRN.placeHolderList[65]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.translateZ" 
		"WitchRN.placeHolderList[66]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateX" 
		"WitchRN.placeHolderList[67]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateY" 
		"WitchRN.placeHolderList[68]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotateZ" 
		"WitchRN.placeHolderList[69]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.stretch" 
		"WitchRN.placeHolderList[70]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.squash" 
		"WitchRN.placeHolderList[71]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.twist_amount" 
		"WitchRN.placeHolderList[72]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.rotationInfluence" 
		"WitchRN.placeHolderList[73]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:chest_ik_anim_space_switcher_follow|Witch:chest_ik_anim_space_switcher|Witch:chest_ik_anim_grp|Witch:chest_ik_anim_driver_grp|Witch:chest_ik_anim.autoSpine" 
		"WitchRN.placeHolderList[74]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateX" 
		"WitchRN.placeHolderList[75]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateY" 
		"WitchRN.placeHolderList[76]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rotateZ" 
		"WitchRN.placeHolderList[77]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.autoHips" 
		"WitchRN.placeHolderList[78]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateX" 
		"WitchRN.placeHolderList[79]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateY" 
		"WitchRN.placeHolderList[80]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.translateZ" 
		"WitchRN.placeHolderList[81]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.lCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[82]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:body_grp|Witch:body_anim_space_switcher_follow|Witch:body_anim_space_switcher|Witch:body_anim_grp|Witch:body_anim|Witch:auto_hip_world|Witch:hip_anim.rCalfTwistCtrlVis" 
		"WitchRN.placeHolderList[83]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateY" 
		"WitchRN.placeHolderList[84]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateX" 
		"WitchRN.placeHolderList[85]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.translateZ" 
		"WitchRN.placeHolderList[86]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateX" 
		"WitchRN.placeHolderList[87]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateY" 
		"WitchRN.placeHolderList[88]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.rotateZ" 
		"WitchRN.placeHolderList[89]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.knee_twist" 
		"WitchRN.placeHolderList[90]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.stretchBias" 
		"WitchRN.placeHolderList[91]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.stretch" 
		"WitchRN.placeHolderList[92]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.squash" 
		"WitchRN.placeHolderList[93]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l.toeCtrlVis" 
		"WitchRN.placeHolderList[94]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l.rotateX" 
		"WitchRN.placeHolderList[95]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l.rotateZ" 
		"WitchRN.placeHolderList[96]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l.rotateY" 
		"WitchRN.placeHolderList[97]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l.heelPivot" 
		"WitchRN.placeHolderList[98]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:heel_ctrl_l_grp|Witch:heel_ctrl_l.ballPivot" 
		"WitchRN.placeHolderList[99]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateY" 
		"WitchRN.placeHolderList[100]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateZ" 
		"WitchRN.placeHolderList[101]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_l|Witch:ik_leg_grp_l|Witch:ik_foot_anim_l_space_switcher_follow|Witch:ik_foot_anim_l_space_switcher|Witch:ik_foot_anim_grp_l|Witch:ik_foot_anim_l|Witch:master_foot_ball_pivot_l_grp|Witch:master_foot_ball_pivot_l|Witch:toe_tip_ctrl_l_grp|Witch:toe_tip_ctrl_l.rotateX" 
		"WitchRN.placeHolderList[102]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateY" 
		"WitchRN.placeHolderList[103]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateX" 
		"WitchRN.placeHolderList[104]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.translateZ" 
		"WitchRN.placeHolderList[105]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateX" 
		"WitchRN.placeHolderList[106]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateY" 
		"WitchRN.placeHolderList[107]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.rotateZ" 
		"WitchRN.placeHolderList[108]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.knee_twist" 
		"WitchRN.placeHolderList[109]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretchBias" 
		"WitchRN.placeHolderList[110]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.stretch" 
		"WitchRN.placeHolderList[111]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.squash" 
		"WitchRN.placeHolderList[112]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:leg_sys_grp|Witch:leg_group_r|Witch:ik_leg_grp_r|Witch:ik_foot_anim_r_space_switcher_follow|Witch:ik_foot_anim_r_space_switcher|Witch:ik_foot_anim_grp_r|Witch:ik_foot_anim_r.toeCtrlVis" 
		"WitchRN.placeHolderList[113]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleX" 
		"WitchRN.placeHolderList[114]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleY" 
		"WitchRN.placeHolderList[115]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.scaleZ" 
		"WitchRN.placeHolderList[116]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateX" 
		"WitchRN.placeHolderList[117]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateY" 
		"WitchRN.placeHolderList[118]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.translateZ" 
		"WitchRN.placeHolderList[119]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateZ" 
		"WitchRN.placeHolderList[120]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateX" 
		"WitchRN.placeHolderList[121]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.rotateY" 
		"WitchRN.placeHolderList[122]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:neck_01_fk_anim_grp|Witch:neck_fk_orient_master|Witch:neck_01_fk_anim.fkOrientation" 
		"WitchRN.placeHolderList[123]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateX" 
		"WitchRN.placeHolderList[124]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateY" 
		"WitchRN.placeHolderList[125]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.translateZ" 
		"WitchRN.placeHolderList[126]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivot" 
		"WitchRN.placeHolderList[127]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotatePivotTranslate" 
		"WitchRN.placeHolderList[128]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateX" 
		"WitchRN.placeHolderList[129]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateY" 
		"WitchRN.placeHolderList[130]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateZ" 
		"WitchRN.placeHolderList[131]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.rotateOrder" 
		"WitchRN.placeHolderList[132]" ""
		5 3 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:offset_anim|Witch:ctrl_rig|Witch:Wand_parent_grp|Witch:Wand_anim_space_switcher_follow|Witch:Wand_anim_space_switcher|Witch:Wand_anim_grp|Witch:Wand_anim.parentInverseMatrix" 
		"WitchRN.placeHolderList[133]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.rotateX" 
		"WitchRN.placeHolderList[134]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.rotateY" 
		"WitchRN.placeHolderList[135]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.rotateZ" 
		"WitchRN.placeHolderList[136]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.translateX" 
		"WitchRN.placeHolderList[137]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.translateY" 
		"WitchRN.placeHolderList[138]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.translateZ" 
		"WitchRN.placeHolderList[139]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.visibility" 
		"WitchRN.placeHolderList[140]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.scaleX" 
		"WitchRN.placeHolderList[141]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.scaleY" 
		"WitchRN.placeHolderList[142]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:master_anim_space_switcher_follow|Witch:master_anim_space_switcher|Witch:master_anim|Witch:fk_orient_world_loc_l.scaleZ" 
		"WitchRN.placeHolderList[143]" ""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.lArmMode" "WitchRN.placeHolderList[144]" 
		""
		5 4 "WitchRN" "|Witch:rig_grp|Witch:Rig_Settings.rArmMode" "WitchRN.placeHolderList[145]" 
		"";
lockNode -l 1 ;
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "56E33285-45D5-D0E3-4903-1281DF4B3343";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "9983038A-437E-8216-A401-DA9E51E3BF8C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1083\n            -height 725\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1083\n            -height 725\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1083\n            -height 725\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
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
	rename -uid "81A68F09-4209-8397-4C7A-B0B9318CABF6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 31 -ast 0 -aet 31 ";
	setAttr ".st" 6;
createNode animCurveTL -n "fk_arm_l_anim_translateX";
	rename -uid "D9C83BF2-42BD-1841-A98F-78AFC85DEE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "fk_arm_l_anim_translateY";
	rename -uid "0D9E54E8-4CB9-621D-77AF-AF885B9DA9BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "fk_arm_l_anim_translateZ";
	rename -uid "594E646A-434C-333F-1889-D694D6CD4AD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "DDF562D1-4608-A6E0-9A84-C3A349382941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.423622306410595 32 10.423622306410595;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "505F14A1-421D-D432-7826-92903711F251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.789688999695938 32 11.789688999695938;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "A5C4D6C7-4D52-77D1-9B4C-1CBB31ABF065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.415426707934099 32 13.415426707934099;
createNode animCurveTL -n "fk_elbow_l_anim_translateX";
	rename -uid "25F02C86-4482-1147-E545-6981C5D845A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
createNode animCurveTL -n "fk_elbow_l_anim_translateY";
	rename -uid "374F4D9E-4E8C-03B2-8112-FD9B0533755E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
createNode animCurveTL -n "fk_elbow_l_anim_translateZ";
	rename -uid "33B6BEB5-4FBE-5DBB-4444-72A86C20F804";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "85539239-49FF-E34B-0AA2-899F4F7C9A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.3031679689717599 16 -3.3425690787056297
		 32 -3.3031679689717599;
createNode animCurveTA -n "pairBlend2_inRotateY1";
	rename -uid "94AAE00D-4ED4-09FE-F0EC-EDB5412962A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.59116672665978498 16 0.29553429914844453
		 32 0.59116672665978498;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "742BCDD1-4621-A5D1-E046-AD868D949F6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -18.161620233205632 16 -23.250253767971824
		 32 -18.161620233205632;
createNode animCurveTL -n "fk_wrist_l_anim_translateX";
	rename -uid "9C172233-4515-CCDD-52F7-CDB712AD5842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "fk_wrist_l_anim_translateY";
	rename -uid "E561086A-4B55-0DDD-957C-3A8945C4C29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "fk_wrist_l_anim_translateZ";
	rename -uid "40360317-4D16-5861-7BD7-51AA49B916D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "pairBlend3_inRotateX1";
	rename -uid "D0F65CCD-4740-C8B1-B947-329315A473D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.2713945760048553 32 -8.2713945760048553;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "pairBlend3_inRotateY1";
	rename -uid "D5D6661D-4695-9ACA-5C5A-2BB2FFEEA78F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43740600480333558 32 0.43740600480333558;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "pairBlend3_inRotateZ1";
	rename -uid "19F16AA2-4C0C-6B66-49AB-EA8AC77B86C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.362205904397003 32 -1.362205904397003;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Rig_Settings_lArmMode";
	rename -uid "76CE9BCE-4734-EF95-4C9D-55B18274F7B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Rig_Settings_rArmMode";
	rename -uid "14D02C43-4388-3957-0102-49A017DB7B0A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1.25 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "hip_anim_rotateX";
	rename -uid "CB42C17A-4842-1FB7-3C87-4C831273C3C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.389900130269485 32 19.389900130269485;
createNode animCurveTA -n "hip_anim_rotateY";
	rename -uid "482E947F-4C41-ADC8-DF35-C6AD49C828D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.7514463941574101 32 1.7514463941574101;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "hip_anim_rotateZ";
	rename -uid "93F3A3A6-47F4-8FBD-83D7-E49B2F0EB6E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.17971022586211075 32 -0.17971022586211075;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "hip_anim_translateX";
	rename -uid "FE72EBA4-496E-7D22-1076-96B98824142D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "hip_anim_translateY";
	rename -uid "5D532DB1-49E5-557E-FEBE-A6BC6AD31A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "hip_anim_translateZ";
	rename -uid "1BBA9BDD-44F2-721F-4C00-54B7BE2C3A80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.944304526105059e-30 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "hip_anim_lCalfTwistCtrlVis";
	rename -uid "983E4CDD-4B0B-A8CB-0C95-61802128FAC4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "hip_anim_rCalfTwistCtrlVis";
	rename -uid "79470B5D-4D90-B01B-7E8E-F18FCDB7E294";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "hip_anim_autoHips";
	rename -uid "E2691230-44E8-F271-633A-BBA65564ECA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_r_translateX";
	rename -uid "AF8E0F69-4437-9827-6D0D-399BA112500F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_r_translateY";
	rename -uid "851C48B6-4CEC-1C1D-2344-6CBA9DC15505";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -13.534957893858831 32 -13.534957893858831;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_r_translateZ";
	rename -uid "5473F02E-4223-582E-4092-1CB5375A2D0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "ik_foot_anim_r_rotateX";
	rename -uid "E3EEA88F-4797-CD5C-31C7-8E91762307BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "ik_foot_anim_r_rotateY";
	rename -uid "A87D4740-4890-9E1C-6A7D-2E82A428591B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "ik_foot_anim_r_rotateZ";
	rename -uid "B49D33C9-4489-E560-C46D-D9AF5E879029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_r_knee_twist";
	rename -uid "65539E67-47A3-D12D-0C6B-4194F193B3D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_r_stretch";
	rename -uid "2A72EA7E-4BC9-8AFB-9BF9-B4B8F01C8106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_r_squash";
	rename -uid "B5A30048-44E9-150E-C558-A4996B8A4ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_r_toeCtrlVis";
	rename -uid "8F6B44DA-461F-A71F-CBB6-66A83A63B13A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_r_stretchBias";
	rename -uid "C3D01061-40B7-BAB1-233D-0595476E0A10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "body_anim_translateX";
	rename -uid "750BFBFC-45BE-024D-9118-5D9F1069569C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0.99130804519638849 -24 0.94934247494272028
		 -8 0.94934247494272028 0 0.99130804519638849 8 0.94934247494272028 24 0.94934247494272028
		 32 0.99130804519638849;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "body_anim_translateY";
	rename -uid "76D8C04B-4B2B-4BCF-5CAA-1AACD3510476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  -32 -7.2038365652159682 -24 -7.9897691516493108
		 -16 -8.7757017380826277 -8 -7.9897691516493099 0 -7.2038365652159682 8 -7.9897691516493108
		 16 -8.7757017380826277 24 -7.9897691516493099 32 -7.2038365652159682;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 0.3213081955605061 1 0.32130819556050605 
		1;
	setAttr -s 9 ".kiy[4:8]"  0 -0.94697467942160496 0 0.94697467942160507 
		0;
	setAttr -s 9 ".kox[4:8]"  1 0.3213081955605061 1 0.32130819556050605 
		1;
	setAttr -s 9 ".koy[4:8]"  0 -0.94697467942160496 0 0.94697467942160496 
		0;
createNode animCurveTL -n "body_anim_translateZ";
	rename -uid "17B15946-4ABC-7804-CF25-F4A3D977BF97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 -4.2598488881934637e-29 -24 1.6787095445842546
		 -8 -1.7076884015904348 0 0 8 1.6787095445842546 24 -1.7076884015904348 32 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  0.092726264189850055 1 1 0.092726264189850055;
	setAttr -s 7 ".kiy[3:6]"  0.99569163897734636 0 0 0.99569163897734636;
	setAttr -s 7 ".kox[3:6]"  0.092726266499383508 1 1 0.092726266499383508;
	setAttr -s 7 ".koy[3:6]"  0.9956916387622653 0 0 0.9956916387622653;
createNode animCurveTA -n "body_anim_rotateX";
	rename -uid "6C490672-47A0-E914-749A-8791880443A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -24 0 -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "body_anim_rotateY";
	rename -uid "2E785602-4D40-B734-945E-6E8ADE52702A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -24 0 -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "body_anim_rotateZ";
	rename -uid "BEDACECC-47F9-865C-156A-61AB34AEEF15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  -32 -8.1723275225588417 -24 -8.1723275225588417
		 -16 -8.1723275225588417 -8 -8.1723275225588417 0 -8.1723275225588417 8 -8.1723275225588417
		 16 -8.1723275225588417 24 -8.1723275225588417 32 -8.1723275225588417;
	setAttr -s 9 ".kit[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kot[4:8]"  1 18 18 18 1;
	setAttr -s 9 ".kix[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".kiy[4:8]"  0 0 0 0 0;
	setAttr -s 9 ".kox[4:8]"  1 1 1 1 1;
	setAttr -s 9 ".koy[4:8]"  0 0 0 0 0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateX";
	rename -uid "98CEEAF1-4856-C34E-FD03-249B47B718A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateY";
	rename -uid "15B2F5F3-4601-B159-CA2F-9E800C28EE44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "toe_tip_ctrl_l_rotateZ";
	rename -uid "7F003869-45B1-D985-BE8D-909BCF9AFC87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -38.375362574178446 16 -43.923297720825779
		 32 -38.375362574178446;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "ik_foot_anim_l_rotateX";
	rename -uid "DAF6A693-4602-E740-0653-2C990FEB98A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "ik_foot_anim_l_rotateY";
	rename -uid "2A907479-42B8-A240-9D37-6C91F23922F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "ik_foot_anim_l_rotateZ";
	rename -uid "C3EEC5F3-40B6-E88F-3A33-D6AF3F0E6EA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_l_translateX";
	rename -uid "B6216930-44C4-D485-834C-C8ABE650ACFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_l_translateY";
	rename -uid "8A2B94AA-434F-2CCC-9C60-EB80CC14CBE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.756735184544226 32 28.756735184544226;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "ik_foot_anim_l_translateZ";
	rename -uid "FDA278BA-4B56-2469-C7CA-12A4B80C21D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99577617467287638 32 -0.99577617467287638;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_l_knee_twist";
	rename -uid "89A11AB3-428E-8E34-FA15-9EBEF8E2360D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_l_stretch";
	rename -uid "470677DE-473A-9956-F8E1-44B82427EB81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_l_squash";
	rename -uid "0BF29AA3-4F4B-7E0D-7232-9EA58811BCCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_l_toeCtrlVis";
	rename -uid "351DF60A-4F5C-7738-B26F-C5B34A7E87DA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "ik_foot_anim_l_stretchBias";
	rename -uid "3C920150-42EF-F1F6-58AB-24A400D06C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "neck_01_fk_anim_rotateX";
	rename -uid "8D2C7CAB-43CC-AEFC-75D3-1ABC00342A45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "neck_01_fk_anim_rotateY";
	rename -uid "EB65F73A-43E8-BFF8-FD7F-D49DC49C4023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "neck_01_fk_anim_rotateZ";
	rename -uid "BFB50323-4FA1-BEE0-7238-A78B9018E6E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.644679931288243;
createNode animCurveTL -n "neck_01_fk_anim_translateX";
	rename -uid "EEED552B-4DDC-33C3-994B-00A57EF52F1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "neck_01_fk_anim_translateY";
	rename -uid "19DB29FC-48E7-C08F-3E6E-F8AA4579E671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "neck_01_fk_anim_translateZ";
	rename -uid "06D5A57B-4182-F479-CF89-7485C61B94B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "neck_01_fk_anim_scaleX";
	rename -uid "48EE71D5-44CD-731D-27E1-A389B9CCA3B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "neck_01_fk_anim_scaleY";
	rename -uid "73ADF973-496E-52B3-D4AD-18825706388C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "neck_01_fk_anim_scaleZ";
	rename -uid "1FD15C78-4DE2-F776-109A-779A62B5EB3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "neck_01_fk_anim_fkOrientation";
	rename -uid "4B447795-406F-560E-76F1-D19D460D72B0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "clavicle_l_anim_rotateX";
	rename -uid "5D06651E-412C-3772-BDA3-64BE77F77961";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.930645042276598 32 16.930645042276598;
createNode animCurveTA -n "clavicle_l_anim_rotateY";
	rename -uid "13F8CDF1-483D-3285-5F1E-C9AD055EEFCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.256966956717573 32 12.256966956717573;
createNode animCurveTA -n "clavicle_l_anim_rotateZ";
	rename -uid "C1451ECF-46C8-FEC6-B6F8-72AEA10FEB32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.7371767240647129 32 5.7371767240647129;
createNode animCurveTL -n "clavicle_l_anim_translateX";
	rename -uid "EFE121EB-46D9-099C-16E4-9D8D417979C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "clavicle_l_anim_translateY";
	rename -uid "38E4BE9F-4F56-367A-DB18-6B9018091756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTL -n "clavicle_l_anim_translateZ";
	rename -uid "BAE29B00-4405-757E-4469-EC9B29F37477";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTU -n "clavicle_l_anim_autoShoulders";
	rename -uid "CCB8DB0D-483C-4153-449F-E28816EB2AC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
createNode animCurveTA -n "heel_ctrl_l_rotateX";
	rename -uid "E5785FBB-4410-31C9-0488-F49B86F35528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "heel_ctrl_l_rotateY";
	rename -uid "3B406CF8-4076-6F0C-75EA-1DA17FD3D4B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "heel_ctrl_l_rotateZ";
	rename -uid "5DB2FFE0-4311-C462-2D66-42A966C4E131";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -18.148110002264549 32 -18.148110002264549;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "heel_ctrl_l_heelPivot";
	rename -uid "495254A7-431F-1DB1-36B6-C28BAD9472BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "heel_ctrl_l_ballPivot";
	rename -uid "AACFB5D2-4684-79F2-4C36-88A2876F2FDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 32 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "clavicle_r_anim_rotateX";
	rename -uid "73A2D23C-4C3F-F999-142B-3B8940D77DB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 8.0053752100196487 0 7.7850938840601929
		 8 7.5648125581007379 24 8.0053752100196487 32 7.7850938840601929;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  0.99989608578986588;
	setAttr -s 5 ".kiy[4]"  -0.014415880899384302;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "clavicle_r_anim_rotateY";
	rename -uid "99B3C2E9-4862-DE78-1907-F4A67118E9AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 -1.9394276898684344 0 0.66263785648249396
		 8 3.2647034028334243 24 -1.9394276898684344 32 0.66263785648249396;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  0.98580615899105994;
	setAttr -s 5 ".kiy[4]"  0.16788751262465293;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "clavicle_r_anim_rotateZ";
	rename -uid "0A8C7F93-4961-F0BA-0C81-4CA982567A34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 27.204924563396748 0 8.834342790276736
		 8 -9.5362389828432725 24 27.204924563396748 32 8.834342790276736;
	setAttr -s 5 ".kit[1:4]"  1 18 18 1;
	setAttr -s 5 ".kot[1:4]"  1 18 1 1;
	setAttr -s 5 ".kix[1:4]"  0.53151243787843183 1 1 0.53151243787843183;
	setAttr -s 5 ".kiy[1:4]"  -0.84705048750385958 0 0 -0.84705048750385958;
	setAttr -s 5 ".kox[1:4]"  0.53151238114204735 1 1 0.53151238114204735;
	setAttr -s 5 ".koy[1:4]"  -0.84705052310515172 0 0 -0.84705052310515172;
createNode animCurveTL -n "clavicle_r_anim_translateX";
	rename -uid "D93BC090-4506-09C9-9C64-F89607B1FC7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "clavicle_r_anim_translateY";
	rename -uid "0C0536DD-4A38-9916-9C37-BE93C28D0202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTL -n "clavicle_r_anim_translateZ";
	rename -uid "CE196488-44EB-237C-16B6-B19E4FA855BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "clavicle_r_anim_autoShoulders";
	rename -uid "0B75A65B-42E3-BB53-6782-40BB29DFD78C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  -8 0 0 0 8 0 24 0 32 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "fk_arm_r_anim_rotateX";
	rename -uid "6DB52E11-491C-C329-B64D-80B411AEC127";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2412826296448012 16 7.1006199286651386
		 32 7.2412826296448012;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_arm_r_anim_rotateY";
	rename -uid "906274F4-4D3E-DA1C-9FDC-78A6258881CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.74741310609740408 16 1.6081897410182229
		 32 -0.74741310609740408;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_arm_r_anim_rotateZ";
	rename -uid "F6F0259A-42EF-68FE-BDF9-01B39050A20F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -21.841318869770099 16 -40.399413200355163
		 32 -21.841318869770099;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_arm_r_anim_translateX";
	rename -uid "6295ADA9-4720-6852-06B3-82B4073CAB89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_arm_r_anim_translateY";
	rename -uid "2D3A432F-4F3F-0BA3-87C2-02AEEF35250F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_arm_r_anim_translateZ";
	rename -uid "75B977EB-4511-16EE-78C3-D4883137AE08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateX";
	rename -uid "F1ECD858-45B9-42B6-F874-8EA3AB957567";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -16 0 0 0 16 0 32 0 48 0 64 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateY";
	rename -uid "00E1FD2E-4830-7256-E3E2-1BB53EBE7EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -16 0 0 0 16 0 32 0 48 0 64 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "fk_elbow_r_anim_rotateZ";
	rename -uid "B4139E47-4291-9C43-912D-919CF189CED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 -45.628304001944109 -16 0 0 -45.628304001944109
		 16 0 32 -45.628304001944109 48 0 64 -45.628304001944109;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateX";
	rename -uid "77666E04-4103-DD0F-5679-9FABF20E1A5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -16 0 0 0 16 0 32 0 48 0 64 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateY";
	rename -uid "63A4940C-4833-79C6-66C6-4E88232D37E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -16 0 0 0 16 0 32 0 48 0 64 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTL -n "fk_elbow_r_anim_translateZ";
	rename -uid "D8B1C85F-48F0-51D0-FA3A-A9A58BFEF7CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  -32 0 -16 0 0 0 16 0 32 0 48 0 64 0;
	setAttr -s 7 ".kit[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kot[2:6]"  1 18 18 18 1;
	setAttr -s 7 ".kix[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".kiy[2:6]"  0 0 0 0 0;
	setAttr -s 7 ".kox[2:6]"  1 1 1 1 1;
	setAttr -s 7 ".koy[2:6]"  0 0 0 0 0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateX";
	rename -uid "72C65C20-4AE5-D961-BC66-D4944315DFD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.802126893380121 16 3.0355999026464526
		 32 15.802126893380121;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateY";
	rename -uid "CB374909-4622-DE22-8EB9-E5BF9C549A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -13.416314093346841 16 -10.407640332146586
		 32 -13.416314093346841;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "fk_wrist_r_anim_rotateZ";
	rename -uid "9006767B-4CF7-C95D-B788-C9801209BAE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.7569750898632943 16 -8.6007339967924743
		 32 -3.7569750898632943;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_wrist_r_anim_translateX";
	rename -uid "3F92F777-44EC-761E-7DCA-479923839A7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_wrist_r_anim_translateY";
	rename -uid "6E832B29-4DB3-3BFB-C3BD-9DAA8F2E43BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "fk_wrist_r_anim_translateZ";
	rename -uid "65F696FB-44DD-DECB-7563-06AAF3C5478E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateX";
	rename -uid "1D264E21-450E-F143-13F0-DCAF531CD415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9778383133518096 16 6.2334431212037265
		 32 2.9778383133518096;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateY";
	rename -uid "8DC894EF-4818-4397-9FC0-428D78DC3063";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.80371098391567153 16 0.81860995690516702
		 32 0.80371098391567153;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "chest_ik_anim_rotateZ";
	rename -uid "A2D17E85-432F-6EA7-6046-D293ECE68DCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.35912964400830161 16 0.32373114938167474
		 32 0.35912964400830161;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "chest_ik_anim_translateX";
	rename -uid "218C76FF-4FAB-B34F-89BF-4E90BFFE1ED4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "chest_ik_anim_translateY";
	rename -uid "FA63EBC1-41EA-EE80-0A9A-9E96967EFD39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "chest_ik_anim_translateZ";
	rename -uid "DD49741C-4BEF-2474-D342-12A6E7533E84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "chest_ik_anim_stretch";
	rename -uid "09945CA5-4B6B-75E7-3C67-FC9E3D424102";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "chest_ik_anim_squash";
	rename -uid "BD54A457-45E8-D5E8-A5B7-2F81A5B85B4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "chest_ik_anim_twist_amount";
	rename -uid "20AAFD65-4D1A-6322-BFB5-FDBC4D413774";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 16 1 32 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "chest_ik_anim_autoSpine";
	rename -uid "DFE0D91E-4D3F-05D1-A590-6FBD6F3EEBD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 32 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "chest_ik_anim_rotationInfluence";
	rename -uid "D1E3385F-4522-F34B-E88E-B3BDB90F13A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.25 16 0.25 32 0.25;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "fk_orient_world_loc_l_visibility";
	rename -uid "B98DC2DD-42DB-6711-307E-768268EA3377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pairBlend4_inTranslateX1";
	rename -uid "CE2BD465-4939-D983-3BD8-EC93A5B8D79A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 12.629796713682687;
createNode animCurveTL -n "pairBlend4_inTranslateY1";
	rename -uid "F708580C-49F6-587A-42D1-4882C2A0630A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -9.7272680750024278;
createNode animCurveTL -n "pairBlend4_inTranslateZ1";
	rename -uid "EBE1F4B5-45BC-952B-0D9A-F88C21AEDACC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 95.662438382339928;
createNode animCurveTA -n "pairBlend4_inRotateX1";
	rename -uid "F8814214-408F-D524-4281-A4808415FABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 22.984170442221327;
createNode animCurveTA -n "pairBlend4_inRotateY1";
	rename -uid "34844768-4FCB-C785-6F55-5A9B26F6F578";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 42.33780161651493;
createNode animCurveTA -n "pairBlend4_inRotateZ1";
	rename -uid "05174A58-4481-8B40-9608-7492F38F61DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 28.958807732675911;
createNode animCurveTU -n "fk_orient_world_loc_l_scaleX";
	rename -uid "3A2A00F5-4B3B-B870-0EB5-A5A03CAFF424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "fk_orient_world_loc_l_scaleY";
	rename -uid "85C62F1B-409B-AE72-3391-F38168F3CE13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "fk_orient_world_loc_l_scaleZ";
	rename -uid "2CD9636D-4619-1387-DDF5-928477CFD904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode unknown -n "ExportAnimationSettings";
	rename -uid "F94C1640-44FA-9A67-C676-0199A73867FE";
	addAttr -ci true -sn "settings" -ln "settings" -dt "string";
	addAttr -ci true -sn "sequence0" -ln "sequence0" -dt "string";
	setAttr ".settings" -type "string" "[false, true, false, null, null]";
	setAttr ".sequence0" -type "string" "D:/Capstone/PlayerCharacter/Animation/Witch@water.fbx::0::31::30 FPS::Independent Euler Angle::Witch";
select -ne :time1;
	setAttr ".o" 19;
	setAttr ".unw" 19;
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
connectAttr "pairBlend1_inRotateY1.o" "WitchRN.phl[5]";
connectAttr "pairBlend1_inRotateZ1.o" "WitchRN.phl[6]";
connectAttr "fk_elbow_l_anim_translateX.o" "WitchRN.phl[7]";
connectAttr "fk_elbow_l_anim_translateY.o" "WitchRN.phl[8]";
connectAttr "fk_elbow_l_anim_translateZ.o" "WitchRN.phl[9]";
connectAttr "pairBlend2_inRotateX1.o" "WitchRN.phl[10]";
connectAttr "pairBlend2_inRotateY1.o" "WitchRN.phl[11]";
connectAttr "pairBlend2_inRotateZ1.o" "WitchRN.phl[12]";
connectAttr "fk_wrist_l_anim_translateX.o" "WitchRN.phl[13]";
connectAttr "fk_wrist_l_anim_translateY.o" "WitchRN.phl[14]";
connectAttr "fk_wrist_l_anim_translateZ.o" "WitchRN.phl[15]";
connectAttr "pairBlend3_inRotateX1.o" "WitchRN.phl[16]";
connectAttr "pairBlend3_inRotateY1.o" "WitchRN.phl[17]";
connectAttr "pairBlend3_inRotateZ1.o" "WitchRN.phl[18]";
connectAttr "clavicle_l_anim_translateX.o" "WitchRN.phl[19]";
connectAttr "clavicle_l_anim_translateY.o" "WitchRN.phl[20]";
connectAttr "clavicle_l_anim_translateZ.o" "WitchRN.phl[21]";
connectAttr "clavicle_l_anim_rotateY.o" "WitchRN.phl[22]";
connectAttr "clavicle_l_anim_rotateX.o" "WitchRN.phl[23]";
connectAttr "clavicle_l_anim_rotateZ.o" "WitchRN.phl[24]";
connectAttr "clavicle_l_anim_autoShoulders.o" "WitchRN.phl[25]";
connectAttr "fk_arm_r_anim_translateX.o" "WitchRN.phl[26]";
connectAttr "fk_arm_r_anim_translateY.o" "WitchRN.phl[27]";
connectAttr "fk_arm_r_anim_translateZ.o" "WitchRN.phl[28]";
connectAttr "fk_arm_r_anim_rotateX.o" "WitchRN.phl[29]";
connectAttr "fk_arm_r_anim_rotateY.o" "WitchRN.phl[30]";
connectAttr "fk_arm_r_anim_rotateZ.o" "WitchRN.phl[31]";
connectAttr "fk_elbow_r_anim_translateX.o" "WitchRN.phl[32]";
connectAttr "fk_elbow_r_anim_translateY.o" "WitchRN.phl[33]";
connectAttr "fk_elbow_r_anim_translateZ.o" "WitchRN.phl[34]";
connectAttr "fk_elbow_r_anim_rotateX.o" "WitchRN.phl[35]";
connectAttr "fk_elbow_r_anim_rotateY.o" "WitchRN.phl[36]";
connectAttr "fk_elbow_r_anim_rotateZ.o" "WitchRN.phl[37]";
connectAttr "WitchRN.phl[38]" "Wand_anim_parentConstraint1.tg[0].ts";
connectAttr "WitchRN.phl[39]" "Wand_anim_parentConstraint1.tg[0].tt";
connectAttr "fk_wrist_r_anim_translateX.o" "WitchRN.phl[40]";
connectAttr "fk_wrist_r_anim_translateY.o" "WitchRN.phl[41]";
connectAttr "fk_wrist_r_anim_translateZ.o" "WitchRN.phl[42]";
connectAttr "WitchRN.phl[43]" "Wand_anim_parentConstraint1.tg[0].trp";
connectAttr "WitchRN.phl[44]" "Wand_anim_parentConstraint1.tg[0].trt";
connectAttr "WitchRN.phl[45]" "Wand_anim_parentConstraint1.tg[0].tr";
connectAttr "fk_wrist_r_anim_rotateX.o" "WitchRN.phl[46]";
connectAttr "fk_wrist_r_anim_rotateY.o" "WitchRN.phl[47]";
connectAttr "fk_wrist_r_anim_rotateZ.o" "WitchRN.phl[48]";
connectAttr "WitchRN.phl[49]" "Wand_anim_parentConstraint1.tg[0].tro";
connectAttr "WitchRN.phl[50]" "Wand_anim_parentConstraint1.tg[0].tpm";
connectAttr "clavicle_r_anim_translateX.o" "WitchRN.phl[51]";
connectAttr "clavicle_r_anim_translateY.o" "WitchRN.phl[52]";
connectAttr "clavicle_r_anim_translateZ.o" "WitchRN.phl[53]";
connectAttr "clavicle_r_anim_rotateX.o" "WitchRN.phl[54]";
connectAttr "clavicle_r_anim_rotateY.o" "WitchRN.phl[55]";
connectAttr "clavicle_r_anim_rotateZ.o" "WitchRN.phl[56]";
connectAttr "clavicle_r_anim_autoShoulders.o" "WitchRN.phl[57]";
connectAttr "body_anim_translateX.o" "WitchRN.phl[58]";
connectAttr "body_anim_translateY.o" "WitchRN.phl[59]";
connectAttr "body_anim_translateZ.o" "WitchRN.phl[60]";
connectAttr "body_anim_rotateX.o" "WitchRN.phl[61]";
connectAttr "body_anim_rotateY.o" "WitchRN.phl[62]";
connectAttr "body_anim_rotateZ.o" "WitchRN.phl[63]";
connectAttr "chest_ik_anim_translateX.o" "WitchRN.phl[64]";
connectAttr "chest_ik_anim_translateY.o" "WitchRN.phl[65]";
connectAttr "chest_ik_anim_translateZ.o" "WitchRN.phl[66]";
connectAttr "chest_ik_anim_rotateX.o" "WitchRN.phl[67]";
connectAttr "chest_ik_anim_rotateY.o" "WitchRN.phl[68]";
connectAttr "chest_ik_anim_rotateZ.o" "WitchRN.phl[69]";
connectAttr "chest_ik_anim_stretch.o" "WitchRN.phl[70]";
connectAttr "chest_ik_anim_squash.o" "WitchRN.phl[71]";
connectAttr "chest_ik_anim_twist_amount.o" "WitchRN.phl[72]";
connectAttr "chest_ik_anim_rotationInfluence.o" "WitchRN.phl[73]";
connectAttr "chest_ik_anim_autoSpine.o" "WitchRN.phl[74]";
connectAttr "hip_anim_rotateX.o" "WitchRN.phl[75]";
connectAttr "hip_anim_rotateY.o" "WitchRN.phl[76]";
connectAttr "hip_anim_rotateZ.o" "WitchRN.phl[77]";
connectAttr "hip_anim_autoHips.o" "WitchRN.phl[78]";
connectAttr "hip_anim_translateX.o" "WitchRN.phl[79]";
connectAttr "hip_anim_translateY.o" "WitchRN.phl[80]";
connectAttr "hip_anim_translateZ.o" "WitchRN.phl[81]";
connectAttr "hip_anim_lCalfTwistCtrlVis.o" "WitchRN.phl[82]";
connectAttr "hip_anim_rCalfTwistCtrlVis.o" "WitchRN.phl[83]";
connectAttr "ik_foot_anim_l_translateY.o" "WitchRN.phl[84]";
connectAttr "ik_foot_anim_l_translateX.o" "WitchRN.phl[85]";
connectAttr "ik_foot_anim_l_translateZ.o" "WitchRN.phl[86]";
connectAttr "ik_foot_anim_l_rotateX.o" "WitchRN.phl[87]";
connectAttr "ik_foot_anim_l_rotateY.o" "WitchRN.phl[88]";
connectAttr "ik_foot_anim_l_rotateZ.o" "WitchRN.phl[89]";
connectAttr "ik_foot_anim_l_knee_twist.o" "WitchRN.phl[90]";
connectAttr "ik_foot_anim_l_stretchBias.o" "WitchRN.phl[91]";
connectAttr "ik_foot_anim_l_stretch.o" "WitchRN.phl[92]";
connectAttr "ik_foot_anim_l_squash.o" "WitchRN.phl[93]";
connectAttr "ik_foot_anim_l_toeCtrlVis.o" "WitchRN.phl[94]";
connectAttr "heel_ctrl_l_rotateX.o" "WitchRN.phl[95]";
connectAttr "heel_ctrl_l_rotateZ.o" "WitchRN.phl[96]";
connectAttr "heel_ctrl_l_rotateY.o" "WitchRN.phl[97]";
connectAttr "heel_ctrl_l_heelPivot.o" "WitchRN.phl[98]";
connectAttr "heel_ctrl_l_ballPivot.o" "WitchRN.phl[99]";
connectAttr "toe_tip_ctrl_l_rotateY.o" "WitchRN.phl[100]";
connectAttr "toe_tip_ctrl_l_rotateZ.o" "WitchRN.phl[101]";
connectAttr "toe_tip_ctrl_l_rotateX.o" "WitchRN.phl[102]";
connectAttr "ik_foot_anim_r_translateY.o" "WitchRN.phl[103]";
connectAttr "ik_foot_anim_r_translateX.o" "WitchRN.phl[104]";
connectAttr "ik_foot_anim_r_translateZ.o" "WitchRN.phl[105]";
connectAttr "ik_foot_anim_r_rotateX.o" "WitchRN.phl[106]";
connectAttr "ik_foot_anim_r_rotateY.o" "WitchRN.phl[107]";
connectAttr "ik_foot_anim_r_rotateZ.o" "WitchRN.phl[108]";
connectAttr "ik_foot_anim_r_knee_twist.o" "WitchRN.phl[109]";
connectAttr "ik_foot_anim_r_stretchBias.o" "WitchRN.phl[110]";
connectAttr "ik_foot_anim_r_stretch.o" "WitchRN.phl[111]";
connectAttr "ik_foot_anim_r_squash.o" "WitchRN.phl[112]";
connectAttr "ik_foot_anim_r_toeCtrlVis.o" "WitchRN.phl[113]";
connectAttr "neck_01_fk_anim_scaleX.o" "WitchRN.phl[114]";
connectAttr "neck_01_fk_anim_scaleY.o" "WitchRN.phl[115]";
connectAttr "neck_01_fk_anim_scaleZ.o" "WitchRN.phl[116]";
connectAttr "neck_01_fk_anim_translateX.o" "WitchRN.phl[117]";
connectAttr "neck_01_fk_anim_translateY.o" "WitchRN.phl[118]";
connectAttr "neck_01_fk_anim_translateZ.o" "WitchRN.phl[119]";
connectAttr "neck_01_fk_anim_rotateZ.o" "WitchRN.phl[120]";
connectAttr "neck_01_fk_anim_rotateX.o" "WitchRN.phl[121]";
connectAttr "neck_01_fk_anim_rotateY.o" "WitchRN.phl[122]";
connectAttr "neck_01_fk_anim_fkOrientation.o" "WitchRN.phl[123]";
connectAttr "Wand_anim_parentConstraint1.ctx" "WitchRN.phl[124]";
connectAttr "Wand_anim_parentConstraint1.cty" "WitchRN.phl[125]";
connectAttr "Wand_anim_parentConstraint1.ctz" "WitchRN.phl[126]";
connectAttr "WitchRN.phl[127]" "Wand_anim_parentConstraint1.crp";
connectAttr "WitchRN.phl[128]" "Wand_anim_parentConstraint1.crt";
connectAttr "Wand_anim_parentConstraint1.crx" "WitchRN.phl[129]";
connectAttr "Wand_anim_parentConstraint1.cry" "WitchRN.phl[130]";
connectAttr "Wand_anim_parentConstraint1.crz" "WitchRN.phl[131]";
connectAttr "WitchRN.phl[132]" "Wand_anim_parentConstraint1.cro";
connectAttr "WitchRN.phl[133]" "Wand_anim_parentConstraint1.cpim";
connectAttr "pairBlend4_inRotateX1.o" "WitchRN.phl[134]";
connectAttr "pairBlend4_inRotateY1.o" "WitchRN.phl[135]";
connectAttr "pairBlend4_inRotateZ1.o" "WitchRN.phl[136]";
connectAttr "pairBlend4_inTranslateX1.o" "WitchRN.phl[137]";
connectAttr "pairBlend4_inTranslateY1.o" "WitchRN.phl[138]";
connectAttr "pairBlend4_inTranslateZ1.o" "WitchRN.phl[139]";
connectAttr "fk_orient_world_loc_l_visibility.o" "WitchRN.phl[140]";
connectAttr "fk_orient_world_loc_l_scaleX.o" "WitchRN.phl[141]";
connectAttr "fk_orient_world_loc_l_scaleY.o" "WitchRN.phl[142]";
connectAttr "fk_orient_world_loc_l_scaleZ.o" "WitchRN.phl[143]";
connectAttr "Rig_Settings_lArmMode.o" "WitchRN.phl[144]";
connectAttr "Rig_Settings_rArmMode.o" "WitchRN.phl[145]";
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
// End of Water.ma
