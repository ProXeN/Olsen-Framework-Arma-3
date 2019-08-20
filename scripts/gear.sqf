if !(isServer) exitWith {};

params ["_box"];
//Add Hold Action
[
_box,              /* 0: Target */
"Coger Equipación", 		      /* 1: Title */
"\cts_assets\actions\rearm.paa",     /* 2: idleIcon */
"\cts_assets\actions\rearm.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: CondShow */
"_caller distance _target < 3",/* 5: codeProgress */
{},                       /* 6: codeStart */
{},                       /* 7: codeTick */
{
titleText ["", "BLACK OUT", 1];
[player, player getVariable "FW_Loadout"] call FNC_GearScript;
playSound "cambiarRopa";
[{titleText ["", "BLACK IN", 1]}, [], 3] call CBA_fnc_waitAndExecute;
},    /* 8: codeCompleted */
{},                        /* 9: codeInterrupted */
[],                        /* 10: Arguments */
4,                        /* 11: Duration */
10,                        /* 12: priority */
false,                    /* 13: Remove on completion */
false                    /* 14: Show if unconcious */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];
