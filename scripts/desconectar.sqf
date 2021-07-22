PRX_ElectricHum = {
	params ["_item"];
	_item setVehicleVarName "PRX_soundSource";
	while {isNil "t_interruptor"} do { 
		_item say3D ['OMEnergyHum',30];  
		sleep 10; 
	};
};

if !(isServer) exitWith {};
params ["_item"];

_item animate ["SwitchPosition",1];
_item animate ["Power_1", 1];
_item animate ["Power_2", 1];
_item animate ["SwitchLight", 1];

PRX_soundSource = createVehicle ["Land_Battery_F",position _item,[],0,"CAN_COLLIDE"];
PRX_soundSource hideObjectGlobal true;
publicVariable "PRX_soundSource";

[PRX_soundSource] remoteExec ["PRX_ElectricHum",[0,-2] select isDedicated,true];	

//Add Hold Action
[
_item,              /* 0: Target */
"Usar Interruptor", 		      /* 1: Title */
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",     /* 2: idleIcon */
"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: CondShow */
"_caller distance _target < 3",/* 5: codeProgress */
{},                       /* 6: codeStart */
{},                       /* 7: codeTick */
{
(_this select 0) animate ["SwitchPosition",-1];
(_this select 0) animate ["Power_1", 0];
(_this select 0) animate ["Power_2", 0];
(_this select 0) animate ["SwitchLight", 0];
playSound3D ["a3\missions_f_exp\data\sounds\exp_m07_lightsoff_01.wss", (_this select 0)];
[(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove",[0,-2] select isDedicated,true];
{[_x, false] call BIS_fnc_switchLamp;} forEach (nearestObjects [player, ["lamps_base_f"], 500]);
missionNamespace setVariable ["t_interruptor", true, true];
deleteVehicle PRX_soundSource;
},
{},                        /* 9: codeInterrupted */
[],                        /* 10: Arguments */
0.5,                        /* 11: Duration */
10,                        /* 12: priority */
true,                    /* 13: Remove on completion */
false                    /* 14: Show if unconcious */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];
