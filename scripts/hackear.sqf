if !(isServer) exitWith {};

//Define Terminal
_terminal = _this select 0;
// _codeProgress = {
//   private _progressTick = _this select 4;
//   if (_progressTick % 2 == 0) exitwith {};
//   playsound3d [((getarray (configfile >> "CfgSounds" >> "Orange_Action_Wheel" >> "sound")) param [0,""]) + ".wss",player,false,getposasl player,1,0.9 + 0.2 * _progressTick / 24];
// };

//Add Hold Action
[
_terminal,              /* 0: Target */
"Usar Dispositivo", 		      /* 1: Title */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 2: idleIcon */
"\a3\ui_f\data\IGUI\Cfg\HoldActions\holdAction_hack_ca.paa",     /* 3: progressIcon */
"_this distance _target < 3",  /* 4: CondShow */
"_caller distance _target < 3",/* 5: codeProgress */
{playSound3D ["cts_assets\sounds\Sfx_terminal_disabled_01.wss",(_this select 0)]},                       /* 6: codeStart */
{},                       /* 7: codeTick */
{
//["taskHack","succeeded"] remoteExec ["FHQ_fnc_ttSetTaskState", 2]
[(_this select 0),(_this select 2)] remoteExec ["bis_fnc_holdActionRemove",[0,-2] select isDedicated,true];
[  
 [  
  ["title","CTS - ¡Somos Comunidad!"],  
  ["meta",["Proxen 'Golf Oscar Delta'",[2035,2,24,11,38],"CET"]],  
  ["textbold","Que guapo, primo"],  
  ["image",["\a3\Missions_F_Orange\Data\Img\orange_overview_ca.paa","To wapa la foto nen"]],  
  ["box",["\a3\Missions_F_Orange\Data\Img\Faction_IDAP_overview_CA.paa","Joder que pasote esta mierda, no? Como puede molar tanto? Chorros de placer!"]],  
  ["text","Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt pretium ultricies. Etiam ac ornare est, quis posuere nisl. Mauris facilisis lectus eu turpis maximus consequat. Donec ut metus nec risus tristique mattis. Ut posuere rutrum tellus, ut molestie orci mattis id. Cras ultrices euismod diam, in venenatis nunc commodo eget. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi congue dolor rutrum lectus euismod, ac faucibus magna molestie. Aliquam in libero sit amet eros sagittis tristique. Nam pellentesque dignissim aliquam."],  
  ["textlocked",["Sed non est risus. Nulla condimentum at leo sed bibendum. Phasellus laoreet sit amet leo tincidunt consequat. Curabitur nec hendrerit purus. Nam massa nisi, mattis in aliquet consectetur, ornare eget nibh. Nunc dignissim, nibh sit amet ultrices tincidunt, mi nulla fermentum quam, non condimentum dolor eros vulputate massa.","DAMELO TODO"]],  
  ["author",["\a3\Missions_F_Orange\Data\Img\avatar_journalist_ca.paa","Golf Oscar Delta is GOD"]]  
 ] 
] call bis_fnc_showAANArticle;
},    /* 8: codeCompleted */
{},                        /* 9: codeInterrupted */
[],                        /* 10: Arguments */
2.5,                        /* 11: Duration */
10,                        /* 12: priority */
true,                    /* 13: Remove on completion */
false                    /* 14: Show if unconcious */
] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];
