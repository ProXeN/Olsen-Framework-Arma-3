#define package "CTS_"

SET_GROUP(uniform) //Uniforme Básico
	["USP_CRYE_G3C_SHORT_MCT",
	 "USP_CRYE_G3C_SHORT_RGR_MCT",
	 "USP_CRYE_G3C_CUT_RGR_MCT",
	 "USP_CRYE_G3C_CUT_MCT",
	 "CTS_G2_camo_MCT_OD_Shirt",
	 "CTS_G2_camo_MCT",
	 "CTS_ColdWeatherGear_camo_MCT",
	 "CTS_G2_camo_rolled_MCT_OD_Shirt",
	 "CTS_G2_camo_rolled_MCT"
	] call FNC_AddItemRandom;
END_GROUP;

SET_GROUP(uniformFTL) //Uniforme Lideres de Equipo
	["CTS_CIRAS_Ranger", "CTS_CIRAS_2_Ranger", "CTS_CIRAS_3_Ranger"] call FNC_AddItemRandom;
	["milgp_h_airframe_01_RGR_hexagon", "milgp_h_airframe_02_RGR_hexagon", "milgp_h_airframe_04_RGR_hexagon"] call FNC_AddItemRandom;
	["tfw_ilbe_dd_gr"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformM) //Uniforme Marksman
	["CTS_Armatus_2_Ranger", "CTS_LBT6094_gen2_Ranger"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_OD", "OPS_CORE_F", "OPS_CORE_strap_F", "CTS_oga_OD_OPS", "CTS_OD_spray_OPS", "CTS_MulticamTropic_OPS",
	 "CTS_oga_OD_OPS_2", "CTS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "CTS_MulticamTropic_OPS_2",
	 "milgp_h_opscore_01_RGR_Hexagon", "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon"] call FNC_AddItemRandom;
	["CTS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR) //Uniforme Automatic Rifleman
	["CTS_FAPC_MG_MulticamTropic", "CTS_CarrierRig_Gunner_MulticamTropic", "CTS_RAV_MG_MulticamTropic",
	 "CTS_FAPC_MG_OGA_OD", "CTS_CarrierRig_Gunner_OGA_OD", "CTS_LBT6094_MG_OGA_OD", "CTS_RAV_MG_OGA_OD"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_OD", "OPS_CORE_F", "OPS_CORE_strap_F", "CTS_oga_OD_OPS", "CTS_OD_spray_OPS", "CTS_MulticamTropic_OPS",
	 "CTS_oga_OD_OPS_2", "CTS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "CTS_MulticamTropic_OPS_2",
	 "milgp_h_opscore_01_RGR_Hexagon", "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon"] call FNC_AddItemRandom;
	["CTS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAT) //Uniforme Automatic Rifleman
	["CTS_JPC_Ranger", "CTS_JPC_2_Ranger", "CTS_JPC_3_Ranger", "CTS_Armatus_1_Ranger"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_OD", "OPS_CORE_F", "OPS_CORE_strap_F", "CTS_oga_OD_OPS", "CTS_OD_spray_OPS", "CTS_MulticamTropic_OPS",
	 "CTS_oga_OD_OPS_2", "CTS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "CTS_MulticamTropic_OPS_2",
	 "milgp_h_opscore_01_RGR_Hexagon", "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon"] call FNC_AddItemRandom;
	["CTS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformENG) //Uniforme Automatic Rifleman
	["CTS_RAV_operator_MulticamTropic", "CTS_FAPC_Breacher_MulticamTropic", "CTS_FAPC_Operator_MulticamTropic",
	 "CTS_FAPC_Breacher_OGA_OD", "CTS_FAPC_Operator_OGA_OD"] call FNC_AddItemRandom;
	["Mohawk_Core_cyalumen_OD", "OPS_CORE_F", "OPS_CORE_strap_F", "CTS_oga_OD_OPS", "CTS_OD_spray_OPS", "CTS_MulticamTropic_OPS",
	 "CTS_oga_OD_OPS_2", "CTS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "CTS_MulticamTropic_OPS_2",
	 "milgp_h_opscore_01_RGR_Hexagon", "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon"] call FNC_AddItemRandom;
	["CTS_MCT_Backpack_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformMEDIC) //Uniforme Medic
	["6094_MEDIC_od"] call FNC_AddItem;
	["Mohawk_Core_cyalumen_OD", "OPS_CORE_F", "OPS_CORE_strap_F", "CTS_oga_OD_OPS", "CTS_OD_spray_OPS", "CTS_MulticamTropic_OPS",
	 "CTS_oga_OD_OPS_2", "CTS_od_spray_OPS_2", "milgp_h_opscore_01_RGR", "CTS_MulticamTropic_OPS_2",
	 "milgp_h_opscore_01_RGR_Hexagon", "milgp_h_opscore_02_RGR", "milgp_h_opscore_02_RGR_Hexagon", "milgp_h_opscore_04_RGR",
	 "milgp_h_opscore_04_RGR_Hexagon"] call FNC_AddItemRandom;
	["CTS_MCT_Kitbag_compact2"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformCM) //Uniforme CM
	["mbss_com_od"] call FNC_AddItem;
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
	["TF_ANPRC152"] call FNC_AddItem;
	
	if (sunOrMoon < 1) then { //Objetos básicos nocturnos
		["ACE_Flashlight_XL50",1,"vest"] call FNC_AddItem;
		["ACE_IR_Strobe_Item",1,"vest"] call FNC_AddItem;
		["B_IR_Grenade",1,"vest"] call FNC_AddItem;
		["Chemlight_green",2,"vest"] call FNC_AddItem;
		["JAS_GPNVG18_blk"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag) //Granadas/Explosivos básicos
	["SmokeShell", 2] call FNC_AddItem;
	["SmokeShellGreen", 2] call FNC_AddItem;
	["HandGrenade", 2] call FNC_AddItem;
	["rhs_mag_mk84",4,"vest"] call FNC_AddItem;
	["AMP_Breaching_Charge_Mag",1,"vest"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle) //Rifle principal
	["rhs_mag_30Rnd_556x45_Mk262_Stanag",6,"vest"] call FNC_AddItem; //Munición Principal
	["SMA_MK18afgOD"] call FNC_AddItem; //Rifle
	["cup_optic_eotech553_od"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_blk"] call FNC_AddItem; //Laser	
		["sma_supp1b_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleGL) //Rifle lanzagranadas
	["rhs_mag_30Rnd_556x45_Mk262_Stanag",6,"vest"] call FNC_AddItem; //Munición Principal
	["1Rnd_HE_Grenade_shell",6,"vest"] call FNC_AddItem; //Granada Principal
	["SMA_MK18OD_GL"] call FNC_AddItem; //Rifle
	["SMA_ELCAN_SPECTER_green_RDS_4z"] call FNC_AddItem; //Mira
	["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3,"vest"] call FNC_AddItem; //Munición Secundaria
	["1Rnd_Smoke_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	["1Rnd_SmokeRed_Grenade_shell",4,"backpack"] call FNC_AddItem; //Granada Secundaria
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["sma_anpeq15_blk"] call FNC_AddItem; //Laser	
		["sma_supp1b_556"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleM) //Rifle Marksman
	["20Rnd_762x51_Mag",9,"vest"] call FNC_AddItem; //Munición Principal
	["srifle_DMR_03_khaki_F"] call FNC_AddItem; //Rifle
	["optic_AMS_khk"] call FNC_AddItem; //Mira 
	["bipod_01_F_blk"] call FNC_AddItem; //Bípode
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["optic_nightstalker",1,"backpack"] call FNC_AddItem; //Mira Nocturna
		["acc_pointer_ir"] call FNC_AddItem; //Laser	
		["muzzle_snds_B_khk_f"] call FNC_AddItem; //Silenciador
	};
END_GROUP;

SET_GROUP(rifleAR) //Rifle Automatic Rifleman
	["rhsusf_200rnd_556x45_M855_mixed_box",5,"vest"] call FNC_AddItem; //Munición Principal
	["rhs_weap_m249_pip_L"] call FNC_AddItem; //Rifle
	["rhsusf_acc_compm4"] call FNC_AddItem; //Mira 
	
	if (sunOrMoon < 1) then { //Accesorios nocturnos para rifle
		["rhsusf_acc_anpeq15side_bk"] call FNC_AddItem; //Laser	
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
	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	ADD_GROUP(pistol);
};

case (package + "AT"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformAT);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(AT);
};

case (package + "ENG"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(EXP);
	["MRH_HackingTool"] call FNC_AddItem; //Hacking Tool
	["ACE_wirecutter"] call FNC_AddItem; //Wirecutter
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

case (package + "RFL"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformENG);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
};

case (package + "CM"): { //Medic
	ADD_GROUP(uniform);
	ADD_GROUP(uniformCM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	ADD_GROUP(pistol);
	["LaserDesignator"] call FNC_AddItem; //Designador
	["B_UAVTerminal"] call FNC_AddItem; //Tablet
	["ItemcTab",1,"uniform"] call FNC_AddItem; //Tablet
	["SmokeShellBlue",2,"vest"] call FNC_AddItem; //Humo Azul
};
