["Start on safe", "Forces ACE Safety on all players when the mission starts.", "Olsen"] call FNC_RegisterModule;

if (!isDedicated && hasInterface) then {
	
	"" spawn {

		sleep 0.01;
		
		if (currentWeapon player != "") then {
			player action ["SwitchWeapon", vehicle player, vehicle player, 99];
			//[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
		};
	};
};