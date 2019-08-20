//make units stand still until they get in combat

_unit = _this select 0;
_ai = if (count _this > 1) then {_this select 1} else {"PATH"};

if !(local _unit) exitWith {};

_unit disableAi _ai;
_unit setUnitPos "UP";
_wps = count waypoints _unit;
0 = [_unit,_ai,_wps] spawn {
	_unit = _this select 0;
	_ai = _this select 1;
	_wps = _this select 2;
	waitUntil {
		sleep 5;
		(behaviour _unit == "combat") || ((count waypoints _unit) > _wps)
		};
	_unit enableAi _ai;
	_unit setUnitPos "AUTO";
};