if !(isServer) exitWith {};
missionNamespace setVariable ["inputText", "", true];
missionNamespace setVariable ["outputText", "", true];
//Define Terminal
params ["_terminal"];
//Add Hold Action
[
_terminal,              /* 0: Target */
"Usar Dispositivo", 		      /* 1: Title */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 2: idleIcon */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: CondShow */
"_caller distance _target < 3",/* 5: codeProgress */
{},                       /* 6: codeStart */
{},                       /* 7: codeTick */
{createDialog "GC_Dialog"},    /* 8: codeCompleted */
{},                        /* 9: codeInterrupted */
[],                        /* 10: Arguments */
0.5,                        /* 11: Duration */
10,                        /* 12: priority */
false,                    /* 13: Remove on completion */
false                    /* 14: Show if unconcious */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];