/*
 * Author: Olsen
 *
 * Locally displays the appropriate message when the player dies.
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

	["<br/>Has muerto..<br/><br/>Respawneando...", 0, 0.2, 2.5, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;

} else {

	[] spawn {
		private _damage = 0.5;
		if (!isNil "killcam_LastHitDamage") then {
			_damage = killcam_LastHitDamage;
		};
		sleep 0.1;
		cutText ["\n", "BLACK", 1.01-_damage, true];
		["FW_death", 0, true] call ace_common_fnc_setHearingCapability;
		sleep 1.01-_damage;
		0 fadeSound 0;
		sleep 0.89+_damage;
		
		["<t color='#FF0000'>HAS MUERTO</t>", 0, 0.4, 2, 0.5, 0, 1000] spawn BIS_fnc_dynamicText;
	};
	player setVariable ["FW_Dead", true, true]; //Tells the framework the player is dead



};