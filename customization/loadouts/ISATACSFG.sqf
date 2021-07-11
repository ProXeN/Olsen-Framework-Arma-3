#define package "IS_"

SET_GROUP(uniform) //Uniforme Básico
	["USP_SOFTSHELL_G3C_KP_MX_MC",
	 "USP_CRYE_G3C_SHORT_RGR_ATACSFG",
	 "USP_CRYE_G3C_CUT_RGR_ATACSFG",
	 "USP_CRYE_G3C_CUT_ATACSFG"
	//  "IS_G2_camo_FG_OD_Shirt",
	//  "IS_G2_camo_FG",
	//  "IS_ColdWeatherGear_camo_FG",
	//  "IS_G2_camo_rolled_FG_OD_Shirt",
	//  "IS_G2_camo_rolled_FG"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(helmet) //Cascos
	["IS_oga_OD_OPS", "IS_OD_spray_OPS", 
	 "IS_oga_OD_OPS_2", "IS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "milgp_h_opscore_01_RGR_Hexagon", 
	 "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon", "CFP_OPS2017_Helmet_ATACS"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["IS_CIRAS_Ranger", "IS_CIRAS_2_Ranger", "IS_CIRAS_3_Ranger"] call FNC_AddItemRandom;
	["milgp_h_airframe_01_RGR_hexagon", "milgp_h_airframe_02_RGR_hexagon", "milgp_h_airframe_04_RGR_hexagon",
	"milgp_h_airframe_01_RGR", "milgp_h_airframe_02_RGR", "milgp_h_airframe_04_RGR"] call FNC_AddItemRandom;
	["tfw_ilbe_dd_gr"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["IS_Armatus_2_Ranger", "IS_LBT6094_gen2_Ranger"] call FNC_AddItemRandom;
	["IS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["IS_FAPC_MG_OGA_OD", "IS_CarrierRig_Gunner_OGA_OD", "IS_LBT6094_MG_OGA_OD", "IS_RAV_MG_OGA_OD"] call FNC_AddItemRandom;
	["IS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["IS_JPC_Ranger", "IS_JPC_2_Ranger", "IS_JPC_3_Ranger", "IS_Armatus_1_Ranger"] call FNC_AddItemRandom;
	["IS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["IS_FAPC_Breacher_OGA_OD", "IS_FAPC_Operator_OGA_OD"] call FNC_AddItemRandom;
	["IS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["milgp_v_jpc_medic_rgr"] call FNC_AddItem;
	["IS_MCT_Kitbag_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformPILOT) //Uniforme Piloto
	["IS_HeliPilot_Uniform"] call FNC_AddItem;
	["V_TacVest_blk"] call FNC_AddItem;
	["IS_HeliPilot_Helmet"] call FNC_AddItem;
	["B_Parachute"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["milgp_v_jpc_teamleader_rgr"] call FNC_AddItem;
	["CUP_H_BAF_PARA_PRRUNDER_BERET"] call FNC_AddItem;
	["tfw_ilbe_dd_gr"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAK) //Medicinas básicas
	["ACE_tourniquet",2,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",4,"backpack"] call FNC_AddItem;
	["ACE_quikclot",7,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
	["ACE_morphine",2,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;
	["ACE_Splint",4,"backpack"] call FNC_AddItem;
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
	["ACE_Splint",15,"backpack"] call FNC_AddItem;
	["ACE_personalAidKit",1,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(items) //Objetos básicos
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["ItemMicroDAGR",1,"vest"] call FNC_AddItem;
	["ItemcTabHCam",1,"vest"] call FNC_AddItem;
	["ACE_CableTie",2,"vest"] call FNC_AddItem;
	["ACE_Clacker",1,"vest"] call FNC_AddItem;
	["MS_Strobe_Mag_1",1,"vest"] call FNC_AddItem;
	["ACRE_PRC152"] call FNC_AddItem;
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Objetos básicos nocturnos
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["USP_GPNVG18"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["HandGrenade", 2] call FNC_AddItem;
	["rhs_mag_mk84",4,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_mag_30Rnd_556x45_Mk262_PMAG",6,"vest"] call FNC_AddItem; //Munición Principal
	["SMA_MK18afgOD"] call FNC_AddItem; //Rifle
	["cup_optic_eotech553_od"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_blk"] call FNC_AddItem; //Laser	
		["sma_supp1b_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_mag_30Rnd_556x45_Mk262_PMAG",6,"vest"] call FNC_AddItem; //Munición Principal
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["SMA_MK18OD_GL"] call FNC_AddItem; //Rifle
	["SMA_ELCAN_SPECTER_green_RDS_4z"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_blk"] call FNC_AddItem; //Laser	
		["sma_supp1b_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["20Rnd_762x51_Mag",9,"vest"] call FNC_AddItem; //Munición Principal
	["arifle_SPAR_03_khk_F"] call FNC_AddItem; //Rifle
	["rhsusf_acc_leupoldmk4_2_mrds"] call FNC_AddItem; //Mira 
	["bipod_01_F_blk"] call FNC_AddItem; //Bípode
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["muzzle_snds_B_khk_f"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["rhsusf_200rnd_556x45_M855_mixed_box",5,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_m249_pip_L"] call FNC_AddItem; //Rifle
	["sma_spitfire_03_rds_low_black"] call FNC_AddItem; //Mira 
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem; //Laser	
		["rhsusf_acc_nt4_black"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(AT) //AT
	["MRAWS_HEAT_F",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_MRAWS_green_F"] call FNC_AddItem; //AT
	["MRAWS_HE_F",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
	["AMP_Breaching_Charge_Mag",3,"vest"] call FNC_AddItem; //Breaching Charge
END_GROUP;

SET_GROUP(pistol) //Pistola
	["RH_15Rnd_45cal_fnp",2,"vest"] call FNC_AddItem; //Munición
	["RH_fnp45"] call FNC_AddItem; //Pistola
	["RH_gemtech45"] call FNC_AddItem; //Accesorios
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
	["ACE_MapTools",1,"vest"] call FNC_AddItem; //Map Tools
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

case (package + "PILOT"): { //Rifleman
	ADD_GROUP(uniformPilot);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(SMG);
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
