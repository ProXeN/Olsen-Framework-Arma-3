#define package "CTRG_"

SET_GROUP(uniformFTL)
	["U_B_CTRG_3"] call FNC_AddItem;
	["V_PlateCarrierL_CTRG"] call FNC_AddItem;
	["H_Cap_khaki_specops_UK"] call FNC_AddItem;
	if (TFAR_Enabled) then {
		["TFAR_rt1523g"] call FNC_AddItem;
	} else {
		["B_AssaultPack_khk"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(uniformM)
	["U_B_CTRG_1"] call FNC_AddItem;
	["V_PlateCarrierL_CTRG"] call FNC_AddItem;
	["H_Watchcap_khk"] call FNC_AddItem;
	["B_AssaultPack_khk"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformAR)
	["U_B_CTRG_2"] call FNC_AddItem;
	["V_PlateCarrierH_CTRG"] call FNC_AddItem;
	["H_HelmetSpecB_light_snakeskin"] call FNC_AddItem;
	["B_AssaultPack_khk"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniformMedic)
	["U_B_CTRG_1"] call FNC_AddItem;
	["V_PlateCarrierL_CTRG"] call FNC_AddItem;
	["H_HelmetSpecB_snakeskin"] call FNC_AddItem;
	["B_AssaultPack_khk"] call FNC_AddItem;
END_GROUP;

SET_GROUP(uniform)
	["U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3"] call FNC_AddItemRandom;
	["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG"] call FNC_AddItemRandom;
	["H_HelmetB_snakeskin","H_HelmetB_sand","H_HelmetSpecB_snakeskin","H_HelmetSpecB_sand"] call FNC_AddItemRandom;
	["B_AssaultPack_khk"] call FNC_AddItem;
END_GROUP;

//medical gear
SET_GROUP(IFAK)
	if (ACE_Enabled) then {
		["ACE_fieldDressing", 6, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage", 6, "backpack"] call FNC_AddItem;
		["ACE_packingBandage", 6, "backpack"] call FNC_AddItem;
		["ACE_quikclot", 6, "backpack"] call FNC_AddItem;
		["ACE_morphine", 1, "backpack"] call FNC_AddItem;
		["ACE_epinephrine", 1, "backpack"] call FNC_AddItem;
		["ACE_tourniquet", 1, "backpack"] call FNC_AddItem;
		["ACE_salineIV_250", 1, "backpack"] call FNC_AddItem;
	} else {
		["FirstAidKit", 3, "backpack"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(IFAKMEDIC)
	if (ACE_Enabled) then {
		["ACE_fieldDressing", 15, "backpack"] call FNC_AddItem;
		["ACE_elasticBandage", 20, "backpack"] call FNC_AddItem;
		["ACE_packingBandage", 20, "backpack"] call FNC_AddItem;
		["ACE_quikclot", 12, "backpack"] call FNC_AddItem;
		["ACE_atropine", 10, "backpack"] call FNC_AddItem;
		["ACE_morphine", 8, "backpack"] call FNC_AddItem;
		["ACE_epinephrine", 8, "backpack"] call FNC_AddItem;
		["ACE_tourniquet", 5, "backpack"] call FNC_AddItem;
		["ACE_salineIV_500", 2, "backpack"] call FNC_AddItem;
		["ACE_surgicalKit", 3] call FNC_AddItem;
		["ACE_personalAidKit", 3] call FNC_AddItem;
	} else {
		["FirstAidKit", 20, "backpack"] call FNC_AddItem;
	};
END_GROUP;


SET_GROUP(items)
	["ItemMap"] call FNC_AddItem;
	["ItemCompass"] call FNC_AddItem;
	["ItemWatch"] call FNC_AddItem;
	["NVGoggles_INDEP"] call FNC_AddItem;
	if (ACE_Enabled) then {
		["ACE_MapTools"] call FNC_AddItem;
		["ACE_Flashlight_XL50"] call FNC_AddItem;
		["ItemMicroDAGR"] call FNC_AddItem;
		["ACE_CableTie", 2] call FNC_AddItem;
		if (ace_hearing) then {
			["ACE_earplugs"] call FNC_AddItem;
		};
	} else {
		["ItemGPS"] call FNC_AddItem;
	};
END_GROUP;

SET_GROUP(ammofrag)
	["SmokeShell", 1] call FNC_AddItem;
	["HandGrenade", 2] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifleGL)
	["30Rnd_556x45_Stanag_red",8] call FNC_AddItem;
	["30Rnd_556x45_Stanag_Tracer_red",2] call FNC_AddItem;
	["1Rnd_HE_Grenade_shell",6] call FNC_AddItem;
	["arifle_SPAR_01_GL_blk_F"] call FNC_AddItem;
	["optic_ERCO_blk_F"] call FNC_AddItem;
	["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem;
	["muzzle_snds_m"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifleM)
	["10Rnd_338_Mag",8] call FNC_AddItem;
	["srifle_DMR_02_camo_F"] call FNC_AddItem;
	["optic_ams"] call FNC_AddItem;
	["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem;
	["bipod_01_f_blk"] call FNC_AddItem;
	["muzzle_snds_338_black"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifleAR)
	["200Rnd_65x39_cased_Box",4] call FNC_AddItem;
	["LMG_Mk200_black_F"] call FNC_AddItem;
	["optic_yorris"] call FNC_AddItem;
	["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem;
	["bipod_01_f_blk"] call FNC_AddItem;
END_GROUP;

SET_GROUP(rifle)
	["30Rnd_556x45_Stanag_red",8] call FNC_AddItem;
	["30Rnd_556x45_Stanag_Tracer_red",2] call FNC_AddItem;
	["arifle_SPAR_01_blk_F"] call FNC_AddItem;
	["optic_holosight_blk_f"] call FNC_AddItem;
	["cup_acc_anpeq_15_flashlight_black_f"] call FNC_AddItem;
	["muzzle_snds_m"] call FNC_AddItem;
END_GROUP;

case (package + "FTL"): {

	ADD_GROUP(uniformFTL);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleGL);
	["LaserDesignator_01_khk_F"] call FNC_AddItem;
	["LaserBatteries"] call FNC_AddItem;
	[_unit,"CTRG"] call BIS_fnc_setUnitInsignia;
};

case (package + "M"): {

	ADD_GROUP(uniformM);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleM);
	if (ACE_Enabled) then {
		["ACE_RangeCard"] call FNC_AddItem;
		["ACE_ATragMX"] call FNC_AddItem;
		["ACE_Kestrel4500"] call FNC_AddItem;
	};
	["Rangefinder"] call FNC_AddItem;
	[_unit,"CTRG"] call BIS_fnc_setUnitInsignia;
};

case (package + "AR"): {

	ADD_GROUP(uniformAR);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifleAR);
	[_unit,"CTRG"] call BIS_fnc_setUnitInsignia;
};

case (package + "MEDIC"): {

	ADD_GROUP(uniformMedic);
	ADD_GROUP(ifakmedic);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	[_unit,"CTRG"] call BIS_fnc_setUnitInsignia;
};

case (package + "RFL"): {

	ADD_GROUP(uniform);
	ADD_GROUP(ifak);
	ADD_GROUP(items);
	ADD_GROUP(ammofrag);
	ADD_GROUP(rifle);
	[_unit,"CTRG"] call BIS_fnc_setUnitInsignia;
};
