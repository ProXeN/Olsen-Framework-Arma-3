/*
 * FHQ_HC_fnc_hcMoveGroup
 * 
 * This function moves a specified group to a new client or the server.
 * 
 * _this select 0: the group to move
 * _this select 1: the client to move to, can be a number (client id) or an object
 * 
 * return true or false
 */
 
private _grp = param [0, grpNull, [grpNull]];
private _client = param [1, 2, [2, objNull]];
private _res = false;

if (!isMultiplayer) exitWith {false};

if (typename _client == "OBJECT") then {
    _res = _grp setGroupOwner owner _client;
} else {
    _res = _grp setGroupOwner _client;
};

_res; 