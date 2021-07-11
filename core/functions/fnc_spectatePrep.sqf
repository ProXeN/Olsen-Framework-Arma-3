/*
 * Author: Olsen
 *
 * Checks and handles if the player should respawn or begin spectating.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Public: No
 */

if (FW_RespawnTickets > 0) then {

	private _respawnName = toLower(format ["fw_%1_respawn", side player]);
	private _respawnPoint = missionNamespace getVariable [_respawnName, objNull];

	private _loadout = (player getVariable ["FW_Loadout", ""]);

	if (_loadout != "") then {

		[player, _loadout] call FNC_GearScript;

	};

	if (!isNull(_respawnPoint)) then {

		player setPos getPosATL _respawnPoint;

	};

	FW_RespawnTickets = FW_RespawnTickets - 1;

	private _text = "respawns left";

	if (FW_RespawnTickets == 1) then {

		_text = "respawn left";

	};

	call BIS_fnc_VRFadeIn;

	cutText [format ['%1 %2', FW_RespawnTickets, _text], 'PLAIN DOWN'];

	player setVariable ["FW_Body", player, true];

} else {
	private _killcam_body = _this select 1;
	player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead
		
	player hideObjectGlobal true;
	player setCaptive true;
	player allowDamage false;

	cutText ["\n","BLACK IN", 5];
	["FW_death", 0, false] call ace_common_fnc_setHearingCapability;
	0 fadeSound 1;

	player call FNC_RemoveAllGear;
	player addWeapon "itemMap";

	player setPos [0, 0, 0];
	[player] join grpNull;

	if (!(player getVariable ["FW_Spectating", false])) then {

		player setVariable ["FW_Spectating", true, true];

		[true] call acre_api_fnc_setSpectator;

		//we set default pos in case all methods fail and we end up with 0,0,0
		private _pos = [(getpos player) select 0, (getpos player) select 1, ((getposATL player) select 2)+1.2];
		private _dir = getDir player;

		_pos = [(getpos _killcam_body) select 0, (getpos _killcam_body) select 1, ((getposATL _killcam_body) select 2)+1.2];
		_dir = getDir _killcam_body;
		
		if (abs(_pos select 0) < 2 && abs(_pos select 1) < 2) then {
			_pos = [2000, 2000, 100];
		};

		["Initialize", [player]] call BIS_fnc_EGSpectator;

		private _cam = missionNamespace getVariable ["BIS_EGSpectatorCamera_camera", objNull];

		if (_cam != objNull) then {
			//we move 2 meters back so player's body is visible
			_pos = ([_pos, -2, _dir] call BIS_fnc_relPos);
			_cam setposATL _pos;
			_cam setDir _dir;
		};

		[] spawn {
			while {(player getVariable ["FW_Spectating", false])} do {
				player setOxygenRemaining 1;
				sleep 0.25;
			};
		};
	} //not already spectator check
	else {
		call BIS_fnc_VRFadeIn;
	};
};