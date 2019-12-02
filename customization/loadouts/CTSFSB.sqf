#define package "CTS_"

SET_GROUP(uniform) //Uniforme Básico
	["USP_CRYE_G3FC",
	"USP_FLEECE_G3C_TAN",
	"USP_CRYE_G3C_SHORT",
	"USP_CRYE_G3C_SHORT_ATACSAU_MC",
	"USP_PCU_G3C_MC"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(helmet) //Cascos
	["CTS_Mich2000_Multicam", "CTS_Mich2000_OGA", "CTS_Mich2000_CamoSprayTAN",
	 "CTS_Mich2000_2_Multicam", "CTS_Mich2000_2_OGA", "CTS_Mich2000_2_CamoSprayTAN",
	 "OPS_CORE_strap_F", "CTS_OPS_Multicam", "CTS_oga_OPS", "CTS_Tan_spray_OPS", "USP_OPSCORE_FASTMTC_CMSW", 
	 "CTS_OPS_2_multicam", "CTS_oga_OPS_2", "CTS_tan_spray_OPS_2", "milgp_h_opscore_01_KHK",
	 "milgp_h_opscore_01_mc", "milgp_h_opscore_02_KHK",
	 "milgp_h_opscore_02_mc", "milgp_h_opscore_04_KHK",
	 "milgp_h_opscore_04_mc"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CPC_belt_LBTgp", "CPC_belt_LBTgpcoy"] call FNC_AddItemRandom;
	["milgp_h_airframe_01_KHK", "milgp_h_airframe_01_KHK_hexagon", "milgp_h_airframe_01_MC",
	"milgp_h_airframe_02_KHK", "milgp_h_airframe_02_KHK_hexagon", "milgp_h_airframe_02_MC",
	"milgp_h_airframe_04_KHK", "milgp_h_airframe_04_KHK_hexagon", "milgp_h_airframe_04_MC",
	"CTS_AirFrame" ] call FNC_AddItemRandom;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["CTS_JPC_2", "CTS_JPC_3"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["CTS_FAPC_MG_Multicam", "CTS_CarrierRig_Gunner_Multicam", "CTS_LBT6094_MG_Multicam", "CTS_RAV_MG_Multicam",
	 "CTS_FAPC_MG_OGA", "CTS_CarrierRig_Gunner_OGA", "CTS_LBT6094_MG_OGA", "CTS_RAV_MG_OGA"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["CPC_belt_LBT", "CPC_belt_LBTcoy"] call FNC_AddItemRandom;
	["CTS_MC_Backpack_compact"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["CPC_belt_LBT", "CPC_belt_LBTcoy"] call FNC_AddItemRandom;
	["CTS_MC_Kitbag_compact", "CTS_MCA_Kitbag_compact2"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["CPC_belt_LBT", "CPC_belt_LBTcoy"] call FNC_AddItemRandom;
	["CTS_MC_Kitbag_compact", "CTS_MCA_Kitbag_compact2"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["CPC_belt_LBT", "CPC_belt_LBTcoy"] call FNC_AddItemRandom;
	["CUP_H_BAF_PARA_PRRUNDER_BERET"] call FNC_AddItem;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAK) //Medicinas básicas
	["ACE_tourniquet",2,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",4,"backpack"] call FNC_AddItem;
	["ACE_quikclot",7,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
	["ACE_morphine",2,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;
	["adv_aceSplint_splint",4,"backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAKMEDIC) //Medicinas Médico
	["ACE_tourniquet",15,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",20,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",20,"backpack"] call FNC_AddItem;
	["ACE_quikclot",20,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_morphine",15,"backpack"] call FNC_AddItem;
	["ACE_epinephrine",15,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",6,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",6,"backpack"] call FNC_AddItem;
	["adv_aceSplint_splint",15,"backpack"] call FNC_AddItem;
	["ACE_personalAidKit",1,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(items) //Objetos básicos
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ACE_MapTools",1,"vest"] call FNC_AddItem;
	["ACE_microDAGR",1,"vest"] call FNC_AddItem;
	["ItemcTabHCam",1,"vest"] call FNC_AddItem;
	["ACE_CableTie",2,"vest"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
	["TFAR_ANPRC152"] call FNC_AddItem;
	["CTS_FaceMask_tan", "CTS_FaceMask_Ghost_tan", "CTS_FaceMask_black", "CTS_Facemask_black_glasses", "CTS_Facemask_tan_glasses", 
	"CTS_Facemask_black_goggles", "CTS_Facemask_tan_goggles", "milgp_f_face_shield_tactical_khk", "milgp_f_face_shield_tactical_blk"] call FNC_AddItemRandom;
	[_unit,"RUFlagW"] call BIS_fnc_setUnitInsignia;

	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Equipación Nocturna
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["JAS_GPNVG18_Tan"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["rhs_mag_rgo", 2] call FNC_AddItem;
	["rhs_mag_zarya2",4,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_30Rnd_545x39_7N22_AK",6,"vest"] call FNC_AddItem; //Munición Principal
	["AK105_Zenitco_Long_magpul_RVG"] call FNC_AddItem; //Rifle
	["sma_eotech552"] call FNC_AddItem; //Mira
	["rhs_30Rnd_545x39_AK_plum_green",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["jas_sfpeq_ak_top_blk"] call FNC_AddItem; //Laser	
	["rhs_acc_ak5"] call FNC_AddItem; //Silenciador
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_30Rnd_545x39_7N22_AK",6,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_VOG25",6,"vest"] call FNC_AddItem; //Granada Principal
	["rhs_weap_ak74mr_gp25"] call FNC_AddItem; //Rifle
	["SMA_ELCAN_SPECTER_RDS_4z"] call FNC_AddItem; //Mira
	["rhs_30Rnd_545x39_AK_plum_green",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["rhs_VG40OP_white",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["RHS_VG40OP_red",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["cup_acc_anpeq_15_top_flashlight_black_l"] call FNC_AddItem; //Laser	
	["rhs_acc_ak5"] call FNC_AddItem; //Silenciador
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["10Rnd_762x54_Mag",12,"vest"] call FNC_AddItem; //Munición Principal
	["srifle_DMR_01_black_F"] call FNC_AddItem; //Rifle
	["optic_AMS"] call FNC_AddItem; //Mira 
	["bipod_02_F_blk"] call FNC_AddItem; //Bípode
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["muzzle_snds_b"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["75rnd_762x39_AK12_Mag_F",10,"vest"] call FNC_AddItem; //Munición Principal
	["arifle_RPK12_F"] call FNC_AddItem; //Rifle
	["optic_holosight_blk_f"] call FNC_AddItem; //Mira 
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15_bk"] call FNC_AddItem; //Laser	
		["muzzle_snds_b"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(AT) //AT
	["RPG32_F",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_RPG32_green_F"] call FNC_AddItem; //AT
	["RPG32_HE_F",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
	["AMP_Breaching_Charge_Mag",3,"vest"] call FNC_AddItem; //Breaching Charge
END_GROUP;

SET_GROUP(pistol) //Pistola
	["16Rnd_9x21_Mag",2,"vest"] call FNC_AddItem; //Munición
	["hgun_Rook40_F"] call FNC_AddItem; //Pistola
	["muzzle_snds_L"] call FNC_AddItem; //Accesorios
END_GROUP;

case (package + "FTL"): { //Lider de Equipo
	ADD_GROUP(uniform);
	ADD_GROUP(uniformFTL);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleGL);
	ADD_GROUP(pistol);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["ItemcTab"] call FNC_AddItem; //Tablet
	["SmokeShellBlue",2,"vest"] call FNC_AddItem; //Humo Azul
};

case (package + "M"): { //Marksman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleM);
	ADD_GROUP(pistol);
	["ACE_Vector"] call FNC_AddItem; //Vector
	["ACE_Kestrel4500",1,"vest"] call FNC_AddItem; //Kestrel
	["ACE_ATragMX",1,"vest"] call FNC_AddItem; //AtragMX
	["ACE_RangeCard",1,"vest"] call FNC_AddItem; //Tablas
};

case (package + "AR"): { //Automatic Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	ADD_GROUP(pistol);
};

case (package + "AT"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AT);
};

case (package + "ENG"): { //Engineer
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(EXP);
	["MRH_HackingTool"] call FNC_AddItem; //Hacking Tool
	["Toolkit",1, "backpack"] call FNC_AddItem; //Toolkit
};

case (package + "MEDIC"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformMEDIC);
	ADD_GROUP(ifakMEDIC);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "RFL"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "CM"): { //CM
	ADD_GROUP(uniform);
	ADD_GROUP(uniformCM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["B_UAVTerminal"] call FNC_AddItem; //Tablet
	["ItemcTab",1,"uniform"] call FNC_AddItem; //Tablet
	["SmokeShellBlue",2,"vest"] call FNC_AddItem; //Humo Azul
};
