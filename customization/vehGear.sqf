#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "HUMMVEE": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["30Rnd_556x45_Stanag", 8] call FNC_AddItemVehicle;
		["rhs_weap_m4a1_carryhandle"] call FNC_AddItemVehicle;

	};

	case "MEDS": {

		_vehicle call FNC_RemoveAllVehicleGear;

		if (isClass(configFile>>"CfgPatches">>"ACE_COMMON")) then {
			["ACE_fieldDressing", 50] call FNC_AddItemVehicle;
			["ACE_elasticBandage", 50] call FNC_AddItemVehicle;
			["ACE_packingBandage", 50] call FNC_AddItemVehicle;
			["ACE_quikclot", 50] call FNC_AddItemVehicle;
			["ACE_morphine", 50] call FNC_AddItemVehicle;
			["ACE_epinephrine", 50] call FNC_AddItemVehicle;
			["ACE_tourniquet", 50] call FNC_AddItemVehicle;
			["ADV_aceSplint_splint", 50] call FNC_AddItemVehicle;
			["ACE_salineIV_250", 20] call FNC_AddItemVehicle;
			["ACE_salineIV_500", 20] call FNC_AddItemVehicle;
		} else {
			["FirstAidKit", 50] call FNC_AddItemVehicle;
		};

	};

	case "FULL": {
		
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_mag_30Rnd_556x45_Mk262_PMAG", 40] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 40] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_Mk262_PMAG_Tan", 40] call FNC_AddItemVehicle;
		["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", 40] call FNC_AddItemVehicle;
		["1Rnd_HE_Grenade_shell", 15] call FNC_AddItemVehicle;
		["1Rnd_Smoke_Grenade_shell", 15] call FNC_AddItemVehicle;
		["1Rnd_SmokeRed_Grenade_shell", 15] call FNC_AddItemVehicle;
		["20Rnd_762x51_Mag", 20] call FNC_AddItemVehicle;
		["rhsusf_200rnd_556x45_M855_mixed_box", 20] call FNC_AddItemVehicle;
		["MRAWS_HEAT_F", 10] call FNC_AddItemVehicle;
		["MRAWS_HE_F", 10] call FNC_AddItemVehicle;
		["DemoCharge_Remote_Mag", 10] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 10] call FNC_AddItemVehicle;
		["RH_15Rnd_45cal_fnp", 20] call FNC_AddItemVehicle;
		["ACE_CableTie", 20] call FNC_AddItemVehicle;
		["SmokeShell", 30] call FNC_AddItemVehicle;
		["SmokeShellGreen", 30] call FNC_AddItemVehicle;
		["SmokeShellBlue", 30] call FNC_AddItemVehicle;
		["HandGrenade", 30] call FNC_AddItemVehicle;

		if (isClass(configFile>>"CfgPatches">>"ACE_COMMON")) then {
			["ACE_fieldDressing", 50] call FNC_AddItemVehicle;
			["ACE_elasticBandage", 50] call FNC_AddItemVehicle;
			["ACE_packingBandage", 50] call FNC_AddItemVehicle;
			["ACE_quikclot", 50] call FNC_AddItemVehicle;
			["ACE_morphine", 50] call FNC_AddItemVehicle;
			["ACE_epinephrine", 50] call FNC_AddItemVehicle;
			["ACE_tourniquet", 50] call FNC_AddItemVehicle;
			["ADV_aceSplint_splint", 50] call FNC_AddItemVehicle;
			["ACE_salineIV_250", 20] call FNC_AddItemVehicle;
			["ACE_salineIV_500", 20] call FNC_AddItemVehicle;
		} else {
			["FirstAidKit", 50] call FNC_AddItemVehicle;
		};
	};

	case "FULLRUS": {
		
		_vehicle call FNC_RemoveAllVehicleGear;

		["rhs_30Rnd_545x39_7N22_AK", 40] call FNC_AddItemVehicle;
		["rhs_30Rnd_545x39_AK_plum_green", 40] call FNC_AddItemVehicle;
		["rhs_VOG25", 15] call FNC_AddItemVehicle;
		["rhs_VG40OP_white", 15] call FNC_AddItemVehicle;
		["RHS_VG40OP_red", 15] call FNC_AddItemVehicle;
		["10Rnd_762x54_Mag", 20] call FNC_AddItemVehicle;
		["75rnd_762x39_AK12_Mag_F", 20] call FNC_AddItemVehicle;
		["RPG32_F", 10] call FNC_AddItemVehicle;
		["RPG32_HE_F", 10] call FNC_AddItemVehicle;
		["DemoCharge_Remote_Mag", 10] call FNC_AddItemVehicle;
		["SatchelCharge_Remote_Mag", 10] call FNC_AddItemVehicle;
		["16Rnd_9x21_Mag", 20] call FNC_AddItemVehicle;
		["ACE_CableTie", 20] call FNC_AddItemVehicle;
		["SmokeShell", 30] call FNC_AddItemVehicle;
		["SmokeShellGreen", 30] call FNC_AddItemVehicle;
		["SmokeShellBlue", 30] call FNC_AddItemVehicle;
		["rhs_mag_rgn", 30] call FNC_AddItemVehicle;
		["rhs_mag_zarya2", 30] call FNC_AddItemVehicle;

		if (isClass(configFile>>"CfgPatches">>"ACE_COMMON")) then {
			["ACE_fieldDressing", 50] call FNC_AddItemVehicle;
			["ACE_elasticBandage", 50] call FNC_AddItemVehicle;
			["ACE_packingBandage", 50] call FNC_AddItemVehicle;
			["ACE_quikclot", 50] call FNC_AddItemVehicle;
			["ACE_morphine", 50] call FNC_AddItemVehicle;
			["ACE_epinephrine", 50] call FNC_AddItemVehicle;
			["ACE_tourniquet", 50] call FNC_AddItemVehicle;
			["ADV_aceSplint_splint", 50] call FNC_AddItemVehicle;
			["ACE_salineIV_250", 20] call FNC_AddItemVehicle;
			["ACE_salineIV_500", 20] call FNC_AddItemVehicle;
		} else {
			["FirstAidKit", 50] call FNC_AddItemVehicle;
		};
	};

	case "AIR": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["B_Parachute", 2] call FNC_AddItemVehicle;

		if (isClass(configFile>>"CfgPatches">>"ACE_COMMON")) then {
			["ACE_fieldDressing", 50] call FNC_AddItemVehicle;
			["ACE_elasticBandage", 50] call FNC_AddItemVehicle;
			["ACE_packingBandage", 50] call FNC_AddItemVehicle;
			["ACE_quikclot", 50] call FNC_AddItemVehicle;
			["ACE_morphine", 50] call FNC_AddItemVehicle;
			["ACE_epinephrine", 50] call FNC_AddItemVehicle;
			["ACE_tourniquet", 50] call FNC_AddItemVehicle;
			["ADV_aceSplint_splint", 50] call FNC_AddItemVehicle;
			["ACE_salineIV_250", 20] call FNC_AddItemVehicle;
			["ACE_salineIV_500", 20] call FNC_AddItemVehicle;
		} else {
			["FirstAidKit", 50] call FNC_AddItemVehicle;
		};
		
		["Toolkit", 1] call FNC_AddItemVehicle;

	};

	case "AUTO": {
		_vehicle call FNC_RemoveAllVehicleGear;
		[{time > 5}, {[(_this select 0), 20, false, true] call MRH_fnc_AmmoCrate},[_vehicle]] call CBA_fnc_waitUntilAndExecute;
		if (isClass(configFile>>"CfgPatches">>"ACE_COMMON")) then {
			["ACE_fieldDressing", 50] call FNC_AddItemVehicle;
			["ACE_elasticBandage", 50] call FNC_AddItemVehicle;
			["ACE_packingBandage", 50] call FNC_AddItemVehicle;
			["ACE_quikclot", 50] call FNC_AddItemVehicle;
			["ACE_morphine", 50] call FNC_AddItemVehicle;
			["ACE_epinephrine", 50] call FNC_AddItemVehicle;
			["ACE_tourniquet", 50] call FNC_AddItemVehicle;
			["ADV_aceSplint_splint", 50] call FNC_AddItemVehicle;
			["ACE_salineIV_250", 20] call FNC_AddItemVehicle;
			["ACE_salineIV_500", 20] call FNC_AddItemVehicle;
		} else {
			["FirstAidKit", 50] call FNC_AddItemVehicle;
		};
	};
};