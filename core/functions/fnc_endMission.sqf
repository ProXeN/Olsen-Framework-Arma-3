/*
 * Author: Olsen. Modified by Proxen
 *
 * Ends mission in orderly fashion and displays end screen.
 *
 * Arguments:
 * 0: text to display in end screen <string>
 *
 * Return Value:
 * nothing
 *
 * Public: Yes
 */

if !(isServer) exitWith {};

if (time > 0) then {

	if (isDedicated) then {["Operación finalizada."] call ocap_fnc_exportData};

	FW_MissionEnded = true;

	[_this select 0, _this select 1] remoteExec ["BIS_fnc_endMission"];
	
} else {
	"End Conditions have just been triggered. Mission will have to be ended manually." remoteExec ["systemChat", 0, false];
};