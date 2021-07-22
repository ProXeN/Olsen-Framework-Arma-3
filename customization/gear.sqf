#include "core\gearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT", (optional) "GROUPNAME"] call FNC_GearScript; in the Init field of the unit
// Example:
// [this, "SL", "1'1"] call FNC_GearScript;\
//
// more info: https://github.com/ProXeN/Simulatio-Framework-Arma-3/wiki/gear.sqf

//when set to false, facewear types that are whitelisted will not be removed
FW_force_remove_facewear = false;

//forces adding an item to inventory. Works only if container is specified!
FW_enableOverfill = true;

//Checks if is night time.
_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
if (daytime < (_lite) || (daytime + 1) > _dark) then {
	FW_isNight = true;
} else { FW_isNight = false};	

_unit call FNC_RemoveAllGear;

switch (_type) do {
	
	#include "loadouts\ISMC.sqf" //Multicam
	//#include "loadouts\ISMCA.sqf" //Multicam Arido
	//#include "loadouts\ISMCB.sqf" //Multicam Black
	//#include "loadouts\ISMCT.sqf" //Multicam Tropic
	//#include "loadouts\ISAOR1.sqf" //AOR1
	//#include "loadouts\ISAOR2.sqf" //AOR2
	//#include "loadouts\ISFSB.sqf" //Multicam RUS
	//#include "loadouts\ISRUS.sqf" //Gorka RUS
	//#include "loadouts\ISRatnik.sqf" //Ratnik RUS
};