//Define Terminal
params ["_terminal", "_duration", "_name"];
// _codeProgress = {
//   private _progressTick = _this select 4;
//   if (_progressTick % 2 == 0) exitwith {};
//   playsound3d [((getarray (configfile >> "CfgSounds" >> "Orange_Action_Wheel" >> "sound")) param [0,""]) + ".wss",player,false,getposasl player,1,0.9 + 0.2 * _progressTick / 24];
// };

_terminal setVariable ["mrh_functions_progressdone", 0];
_terminal setVariable ["mrh_functions_speedyinterrupt", 0];
_terminal setVariable ["mrh_functions_hacktime", _duration];
_terminal setVariable ["mrh_functions_hackname", _name];
_terminal setVariable ["mrh_functions_hackcodetorun", {}];


if !(isServer) exitWith {};
//Add Hold Action
[
_terminal,              /* 0: Target */
"Usar Dispositivo", 		      /* 1: Title */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 2: idleIcon */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: CondShow */
"_caller distance _target < 3",/* 5: codeProgress */
{playSound3D ["cts_assets\sounds\Sfx_terminal_disabled_01.wss",(_this select 0),false,getPos (_this select 0),1,1,50]},                       /* 6: codeStart */
{},                       /* 7: codeTick */
{
    if ('MRH_HackingTool' in items (_this select 1)) then {
        [(_this select 0)] spawn MRH_fnc_MilsimTools_Functions_Hack;
    } else {
        hint "Necesitas ser ingeniero";
    };        
},    /* 8: codeCompleted */
{},                        /* 9: codeInterrupted */
[],                        /* 10: Arguments */
2.5,                        /* 11: Duration */
10,                        /* 12: priority */
false,                    /* 13: Remove on completion */
false                    /* 14: Show if unconcious */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];
