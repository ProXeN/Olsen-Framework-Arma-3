FNC_SetHostage = {
	if (!isServer) exitWith {};

	private ["_unit", "_marker"];

	_unit = _this select 0;
	_marker = _this select 1;
	_marker setMarkerAlpha 0;

	[
	_unit,
	"Rescatar",
	"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
	"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
	"_this distance _target < 3",
	"true",
	{},
	{},
	{
	_complMessage = selectRandom ["Pensaba que iba a morir...","Gracias.","Sácame de aquí..","¿Por qué habéis tardado tanto?"];
	[[[name (_this select 0), _complMessage, (_this select 0)]],"DIRECT",0.15,true] spawn FNC_SIMPLECONV;
	[_this select 0, _this select 1] remoteExec ["FNC_RescueHostage", 0, true];
	[(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove", [0,-2] select isDedicated, true];
	},
	{},
	[],
	3,
	10,
	true,
	false
	] remoteExec ["BIS_fnc_holdActionAdd", [0,-2] select isDedicated, true];

	_this spawn {

		private ["_EhAnimDone", "_unit", "_marker", "_break"];

		_unit = _this select 0;
		_marker = _this select 1;

		waitUntil {time > 0.1};

		_unit setBehaviour "CARELESS";
		_unit allowFleeing 0;
		_unit setCaptive true;
		_unit disableAI "PATH";

		_unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon04";

		_EhAnimDone = _unit addEventHandler ["AnimDone", {
				private "_unit";
				_unit = _this select 0;

				if (!alive _unit) exitWith {
					_unit removeEventHandler ["AnimDone", _unit getVariable ["FW_EhAnimDone", 0]];
				};

				_unit playMoveNow "Acts_AidlPsitMstpSsurWnonDnon04";
			}
		];

		_unit setVariable ["FW_EhAnimDone", _EhAnimDone];

		_break = false;

		while {true} do {
			if (animationState _unit != "acts_aidlpsitmstpssurwnondnon04" && [_unit, _marker] call FNC_InArea) then {

				_unit setVariable ["FW_Rescued", true, true];

				_break = true;

			};

			if (_break) exitWith {};

			sleep 15;
		};

	};

};
