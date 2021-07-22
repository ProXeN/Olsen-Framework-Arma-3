#define package "IS_"

SET_GROUP(uniform) //Uniforme Básico
	["U_O_R_Gorka_01_F"] call FNC_AddItem;
	["H_HelmetSpecter_paint_headset_F", "H_HelmetSpecter_cover_khaki_F", "H_HelmetSpecter_headset_F"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CPC_belt_LBTgprgr"] call FNC_AddItem;
	["tfw_ilbe_dd_gr"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["IS_JPC_2_Ranger", "IS_JPC_3_Ranger"] call FNC_AddItemRandom;
	["IS_MCT_backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["IS_FAPC_MG_OGA_OD", "IS_CarrierRig_Gunner_OGA_OD", "IS_LBT6094_MG_OGA_OD", "IS_RAV_MG_OGA_OD"] call FNC_AddItemRandom;
	["IS_MCT_backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["CPC_belt_LBTgprgr"] call FNC_AddItem;
	["IS_MCT_backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["CPC_belt_LBTgprgr"] call FNC_AddItem;
	["IS_MCT_Kitbag_compact2"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["CPC_belt_LBTgprgr"] call FNC_AddItem;
	["IS_MCT_Kitbag_compact2"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformPILOT) //Uniforme Piloto
	["IS_HeliPilot_Uniform"] call FNC_AddItem;
	["V_TacVest_blk"] call FNC_AddItem;
	["IS_HeliPilot_Helmet"] call FNC_AddItem;
	["B_Parachute"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["CPC_belt_LBTgprgr"] call FNC_AddItem;
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
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Equipación Nocturna
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["USP_PVS31_COMPACT"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["rhs_mag_rgn", 2] call FNC_AddItem;
	["rhs_mag_zarya2",4,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_30Rnd_545x39_7N22_AK",6,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_ak105_zenitco01_b33"] call FNC_AddItem; //Rifle
	["sma_eotech552"] call FNC_AddItem; //Mira
	["rhs_30Rnd_545x39_AK_plum_green",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["rhs_acc_ak5"] call FNC_AddItem; //Silenciador

	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["rhs_acc_perst3"] call FNC_AddItem; //Laser	
		["rhs_acc_tgpa"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_30Rnd_545x39_7N22_AK",6,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_VOG25",6,"vest"] call FNC_AddItem; //Granada Principal
	["CUP_arifle_AK74M_GL_railed"] call FNC_AddItem; //Rifle
	["CUP_optic_elcan_specterdr_rmr_black"] call FNC_AddItem; //Mira
	["rhs_30Rnd_545x39_AK_plum_green",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["rhs_VG40OP_white",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["RHS_VG40OP_red",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["rhs_acc_ak5"] call FNC_AddItem; //Silenciador

	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["rhs_acc_perst3"] call FNC_AddItem; //Laser	
		["rhs_acc_tgpa"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["10Rnd_762x54_Mag",12,"vest"] call FNC_AddItem; //Munición Principal
	["srifle_DMR_01_black_F"] call FNC_AddItem; //Rifle
	["rhsusf_acc_leupoldmk4_2_mrds"] call FNC_AddItem; //Mira 
	["bipod_02_F_blk"] call FNC_AddItem; //Bípode
	["rhsusf_acc_anpeq15_bk"] call FNC_AddItem; //Laser	
	["muzzle_snds_b"] call FNC_AddItem; //Silenciador
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["75rnd_762x39_AK12_Mag_F",6,"vest"] call FNC_AddItem; //Munición Principal
	["arifle_RPK12_F"] call FNC_AddItem; //Rifle
	["optic_holosight_blk_f"] call FNC_AddItem; //Mira 
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15_bk"] call FNC_AddItem; //Laser	
		["muzzle_snds_b"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(ammoAR) //Rifle Automatic Rifleman
	["75rnd_762x39_AK12_Mag_F",6,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(ammorifle) //Rifle Automatic Rifleman
	["rhs_30Rnd_545x39_7N22_AK",6,"backpack"] call FNC_AddItem; //Munición Principal
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
	ADD_GROUP(uniformM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(ammoAR);
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
	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	ADD_GROUP(pistol);
};

case (package + "AT"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AT);
};

case (package + "ENG"): { //Engineer
	ADD_GROUP(uniform);
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
	ADD_GROUP(uniformMEDIC);
	ADD_GROUP(ifakMEDIC);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "RFL"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "AAR"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	ADD_GROUP(ammoAR);
};

case (package + "PILOT"): { //Rifleman
	ADD_GROUP(uniformPilot);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(SMG);
	ADD_GROUP(pistol);
};

case (package + "UNARMED"): { //Unarmed
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
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
