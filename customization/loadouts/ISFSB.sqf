#define package "IS_"

SET_GROUP(uniform) //Uniforme Básico
	["ARD_MC_Camo_Cyre",
	 "ARD_MC_Camo_Cyre_SS",
	 "ARD_MC_Camo_Cyre_TS"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(helmet) //Cascos
	["Maritime_Cover_AMP3", "Maritime_Cover_AMP9", "Maritime_Cover_AMP15", "Maritime_Cover_AMP21", "Maritime_Cover_AMP27", "Maritime_Cover_AMP153",
	 "Maritime_Cover_AMP1534", "Maritime_Cover_AMP15354", "Maritime_Cover_AMP153654", "Maritime_Cover_AMP15354_manta", "Maritime_Cover_AMP153654_manta"
	 ] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["Crye_JPC1", "Crye_JPC1_CB"] call FNC_AddItemRandom;
	["airframe_ComtacIII_Arc", "airframe5_ComtacIII_Arc", "airframe9_ComtacIII_Arc", "airframe13_ComtacIII_Arc", "airframe17_ComtacIII_Arc",
     "airframe21_ComtacIII_Arc", "airframe25_ComtacIII_Arc", "airframe_cover__ComtacIII_Arc", "airframe_cover_5_ComtacIII_Arc",
	 "airframe_cover_9_ComtacIII_Arc", "airframe_cover_13_ComtacIII_Arc", "airframe_cover_17_ComtacIII_Arc", "airframe_cover_21_ComtacIII_Arc",
	 "airframe_cover_25_ComtacIII_Arc"] call FNC_AddItemRandom;
	["is_invisible_backpack"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["tfa_v_jpc_marksman_belt_coy", "tfa_v_jpc_marksman_belt_mc",
	 "tfa_v_mmac_marksman_belt_coy", "tfa_v_mmac_marksman_belt_mc"] call FNC_AddItemRandom;
	["tfa_bp_hydration_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["tfa_v_jpc_hgunner_belt_coy", "tfa_v_jpc_hgunner_belt_mc",
	 "tfa_v_mmac_hgunner_belt_coy", "tfa_v_mmac_hgunner_belt_mc"] call FNC_AddItemRandom;
	["tfa_bp_hydration_coy", "tfa_bp_hydration_mc"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Rifleman AT
	["tfa_v_jpc_assaulter_belt_coy", "tfa_v_jpc_assaulter_belt_mc",
	 "tfa_v_mmac_assaulter_belt_coy", "tfa_v_mmac_assaulter_belt_mc"] call FNC_AddItemRandom;
	["tfa_bp_Breacher_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Engineer
	["tfa_v_jpc_assaulter_belt_coy", "tfa_v_jpc_assaulter_belt_mc",
	 "tfa_v_mmac_assaulter_belt_coy", "tfa_v_mmac_assaulter_belt_mc"] call FNC_AddItemRandom;
	["tfa_bp_Pointman_mc", "tfa_bp_Pointman_coy"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["tfa_v_jpc_medic_belt_coy", "tfa_v_jpc_medic_belt_mc",
	 "tfa_v_mmac_medic_belt_coy", "tfa_v_mmac_medic_belt_mc"] call FNC_AddItemRandom;
	["IS_MC_Kitbag_compact", "IS_MCA_Kitbag_compact2"] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformPILOT) //Uniforme Piloto
	["U_B_HeliPilotCoveralls"] call FNC_AddItem;
	["V_TacVest_blk"] call FNC_AddItem;
	["rhsusf_hgu56p_visor"] call FNC_AddItem;
	["B_Parachute"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["tfa_v_jpc_teamleader_mc"] call FNC_AddItem;
	["CUP_H_BAF_PARA_PRRUNDER_BERET"] call FNC_AddItem;
	["tfw_ilbe_dd_coy"] call FNC_AddItem;
END_GROUP;

SET_GROUP(IFAK) //Medicinas básicas
	["ACE_tourniquet",1,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",6,"backpack"] call FNC_AddItem;
	["ACE_fieldDressing",4,"backpack"] call FNC_AddItem;
	["ACE_quikclot",6,"backpack"] call FNC_AddItem;
	["ACE_packingBandage",4,"backpack"] call FNC_AddItem;
	["ACE_morphine",1,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",1,"backpack"] call FNC_AddItem;
	["ACE_Splint",2,"backpack"] call FNC_AddItem;
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
	["ACRE_PRC343"] call FNC_AddItem;

	if (FW_isNight) then { //Equipación Nocturna
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
	["HandGrenade", 2] call FNC_AddItem;
	["rhs_mag_mk84",2,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["30rnd_545ak_a12_nmg",9,"vest"] call FNC_AddItem; //Munición Principal
	["NMG_weapons_aks105wiwa"] call FNC_AddItem; //Rifle
	["tier1_exps3_0_black"] call FNC_AddItem; //Mira
	["side_hg_all_zenit_lasir_nmg"] call FNC_AddItem; //Asa
	["gladk_zenit_nmg"] call FNC_AddItem; //Asa
	["nmg_silence_dtk3"] call FNC_AddItem; //Silenciador
	
	if (FW_isNight) then { //Accesorios nocturnos para rifle
		["nmg_silence_pbs_rpk16"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleFTL) //Rifle Lider Equipo
	["30rnd_545ak_a12_nmg",9,"vest"] call FNC_AddItem; //Munición Principal
	["NMG_weapons_aks105wiwa"] call FNC_AddItem; //Rifle
	["scot_eo_vudu_t1"] call FNC_AddItem; //Mira
	["side_hg_all_zenit_lasir_nmg"] call FNC_AddItem; //Asa
	["gladk_zenit_nmg"] call FNC_AddItem; //Asa
	["nmg_silence_dtk3"] call FNC_AddItem; //Silenciador

	if (FW_isNight) then { //Accesorios nocturnos para rifle
		["nmg_silence_pbs_rpk16"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(M320) //M320
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["rhs_weap_M320"] call FNC_AddItem; //Rifle
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["10Rnd_762x54_Mag",12,"vest"] call FNC_AddItem; //Munición Principal
	["NMG_weapon_svc762r"] call FNC_AddItem; //Rifle
	["rhsusf_acc_leupoldmk4_2_mrds"] call FNC_AddItem; //Mira 
	["bipod_02_F_blk"] call FNC_AddItem; //Bípode
	
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if (daytime < (_lite) || (daytime + 1) > _dark) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["cup_acc_anpeq_15_black"] call FNC_AddItem; //Laser	
		["nmg_silence_pbs_svc"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["96Rnd_545ak_trs_nmg",8,"vest"] call FNC_AddItem; //Munición Principal
	["NMG_weapons_RPK16s"] call FNC_AddItem; //Rifle
	["tier1_exps3_0_black"] call FNC_AddItem; //Mira 
	["nmg_silence_dtk3"] call FNC_AddItem; //Silenciador
	
	if (FW_isNight) then { //Accesorios nocturnos para rifle
		["cup_acc_anpeq_15_black"] call FNC_AddItem; //Laser	
		["nmg_silence_pbs_rpk16"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(ammoAR) //Rifle Automatic Rifleman
	["96Rnd_545ak_trs_nmg",3,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(ammorifle) //Rifle Automatic Rifleman
	["30rnd_545ak_a12_nmg",8,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(HAT) //Heavy AT
	["CUP_Javelin_M",1,"backpack"] call FNC_AddItem; //Munición Principal
	["CUP_launch_Javelin"] call FNC_AddItem; //AT
END_GROUP;

SET_GROUP(HATammo) //Heavy AT
	["CUP_Javelin_M",2,"backpack"] call FNC_AddItem; //Munición Principal
END_GROUP;

SET_GROUP(AT) //AT
	["Vorona_HEAT",2,"backpack"] call FNC_AddItem; //Munición Principal
	["launch_O_Vorona_green_F"] call FNC_AddItem; //AT
	["Vorona_HE",1,"backpack"] call FNC_AddItem; //Munición Secundaria
END_GROUP;

SET_GROUP(AA) //AA
	["CUP_launch_FIM92Stinger"] call FNC_AddItem; //AA
END_GROUP;

SET_GROUP(EXP) //Explosivos
	["DemoCharge_Remote_Mag",2,"backpack"] call FNC_AddItem; //M112
	["SatchelCharge_Remote_Mag",1,"backpack"] call FNC_AddItem; //M183
	["AMP_Breaching_Charge_Mag",3,"vest"] call FNC_AddItem; //Breaching Charge
END_GROUP;

SET_GROUP(pistol) //Pistola
	["Tier1_17Rnd_9x19_P320_FMJ",2,"vest"] call FNC_AddItem; //Munición
	["Tier1_P320"] call FNC_AddItem; //Pistola
END_GROUP;

SET_GROUP(SMG) //Pistola
	["50Rnd_570x28_SMG_03",3,"vest"] call FNC_AddItem; //Munición
	["SMG_03C_camo"] call FNC_AddItem; //Pistola
END_GROUP;

case (package + "FTL"): { //Lider de Equipo
	ADD_GROUP(uniform);
	ADD_GROUP(uniformFTL);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleFTL);
	ADD_GROUP(M320);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["ItemAndroid"] call FNC_AddItem; //Tablet
	["ACRE_PRC152"] call FNC_AddItem; //Radio Larga
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

case (package + "HAT"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(rifle);
	ADD_GROUP(HAT);
};

case (package + "AHAT"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(rifle);
	ADD_GROUP(HATammo);
};

case (package + "AA"): { //AT
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AA);
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

case (package + "JTAC"): { //JTAC
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	["LaserBatteries"] call FNC_AddItem; //Baterias Designador
	["LaserDesignator"] call FNC_AddItem; //Designador
	["ItemcTab",1,"uniform"] call FNC_AddItem; //Tablet
	["B_UAVTerminal"] call FNC_AddItem;
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

case (package + "AAR"): { //Rifleman
	ADD_GROUP(uniform);
	ADD_GROUP(helmet);
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
