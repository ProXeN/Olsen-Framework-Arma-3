params ["_item"];

_item addAction ["--------PASO UNO--------", "hint 'Selecciona Zona de Salto'; "];      
     
_item addAction ["<t color='#00ffa6'>Seleccionar Zona de Salto</t>", {openMap true; hint 'Pulsa en Zona de Salto.'; onMapSingleClick {      
onMapSingleClick {};        
createMarker ["dz", _Pos];     
"dz" setMarkerType "Mil_Start";      
hint 'Zona de Salto Seleccionada.';      
openMap false;      
true;      
}; }];     
    
    
_item addAction ["<t color='#09FF00'>Coger Paracaídas</t>", {    
[player] call bocr_main_fnc_actionOnChest;  
player addBackpack "B_Parachute";    
}];     
    
    
     
_item addAction ["--------PASO DOS--------", "hint 'Seleccionar Altitud'; "];      
     
_item addAction ["Seleccionar Altitud Abajo", "hint ' '; "];      
     
_item addAction ["<t color='#04ff00'>-350m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 350] ];     
_plane engineOn true;     
_plane flyInHeight 6000;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];       
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';     
     
     
_plane hideObjectGlobal false;      
       
}];         
     
     
_item addAction ["<t color='#04ff00'>-2000m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 2000] ];     
_plane engineOn true;     
_plane flyInHeight 6000;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];         
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';    
     
     
_plane hideObjectGlobal false;      
  
}];       
     
_item addAction ["<t color='#04ff00'>-4000m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 4000] ];     
_plane engineOn true;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];        
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';   
     
     
_plane hideObjectGlobal false;      
     
}];     
     
_item addAction ["<t color='#04ff00'>-6000m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 6000] ];     
_plane engineOn true;     
_plane flyInHeight 6000;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];         
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';      
     
     
_plane hideObjectGlobal false;      
     
}];     
     
     
_item addAction ["<t color='#04ff00'>-8000m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 8000] ];     
_plane engineOn true;     
_plane flyInHeight 6000;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];          
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';    
     
     
_plane hideObjectGlobal false;      
     
}];     
     
_item addAction ["<t color='#04ff00'>-10000m</t>", {     
_dz = createVehicle ["O_diver_TL_F", getMarkerPos "dz", [], 0, "NONE"];     
_dz hideObjectGlobal true;     
_dz disableAI "MOVE";      
_dz disableAI "TARGET";      
_dz disableAI "AUTOTARGET";      
_dz disableAI "WEAPONAIM";      
_dz disableAI "ANIM";     
_plane = createVehicle ["RHS_C130J", getMarkerPos "dz", [], 0, "NONE"];     
_plane hideObjectGlobal true;     
_plane attachTo [_dz, [0, 0, 10000] ];     
_plane engineOn true;     
_plane flyInHeight 6000;     
_plane setVehicleVarName "plane02"; plane02 =  _plane;     
publicVariable "plane02";     
_dz setVehicleVarName "dz"; dz =  _dz;     
publicVariable "dz";     
     
_dz setVehicleVarName "dz"; dz =  _dz;       
_whitelight =  createVehicle ["Land_Camping_Light_F", getMarkerPos "dz", [], 0, "NONE"];    
_whitelight setVehicleVarName "whitelight"; whitelight =  _whitelight;        
_redlight = createVehicle ["Land_TentLamp_01_suspended_red_F", getMarkerPos "dz", [], 0, "NONE"];   
_redlight setVehicleVarName "redlight"; redlight =  _redlight;      
_greenlight = createVehicle ["Reflector_Cone_01_wide_green_F", getMarkerPos "dz", [], 0, "NONE"];  
_greenlight setVehicleVarName "greenlight"; greenlight =  _greenlight;       
_redlight attachTo [_plane, [0, 10, 100] ];     
_greenlight attachTo [_plane, [0, 10, 100] ];       
_whitelight attachTo [_plane, [0, 10, 4] ];          
     
     
hint 'Altitud Seleccionada - Ya puedes subir al avión.';  
     
     
_plane hideObjectGlobal false;      
     
}];     
     
_item addAction ["--------PASO TRES--------", "hint 'Sube al avión'; "];     
 
_item addAction ["<t color='#0040ff'>Tiempo de Vuelo - Dos Minutos</t>",{     
 
sleep 120;        
       
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, 3, 0] ];      
plane02 animate ["ramp_bottom", 1]; plane02 animate ["ramp_top", 1];     
     
sleep 10; hint 'Luz Verde';     
     
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, -6, 100] ];      
greenlight attachTo [plane02, [0, -15, 4] ];     
sleep 5;     
{if !(isPlayer _x) then {_x action ["Eject", plane02];};} foreach units group player;     
     
     
{if !(isPlayer _x) then {      
{     
waitUntil {(getPosATL _x select 2) < 120}; _x action ["openParachute", _x];      
} forEach units group player;      
};};    
      
    
sleep 180;       
deleteVehicle plane02;        
deleteVehicle dz;       
deleteVehicle whitelight;        
deleteVehicle redlight;        
deleteVehicle greenlight;         
deleteMarker "dz";       
}];   
 
_item addAction ["<t color='#0040ff'>Tiempo de Vuelo - Tres Minutos</t>",{     
 
sleep 180;        
       
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, 3, 0] ];      
plane02 animate ["ramp_bottom", 1]; plane02 animate ["ramp_top", 1];     
     
sleep 10; hint 'Luz Verde';     
     
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, -6, 100] ];      
greenlight attachTo [plane02, [0, -15, 4] ];     
sleep 5;     
{if !(isPlayer _x) then {_x action ["Eject", plane02];};} foreach units group player;     
     
     
{if !(isPlayer _x) then {      
{     
waitUntil {(getPosATL _x select 2) < 120}; _x action ["openParachute", _x];      
} forEach units group player;      
};};    
      
    
sleep 180;       
deleteVehicle plane02;        
deleteVehicle dz;       
deleteVehicle whitelight;        
deleteVehicle redlight;        
deleteVehicle greenlight;         
deleteMarker "dz";       
}];   
 
_item addAction ["<t color='#0040ff'>Tiempo de Vuelo - Cinco Minutos</t>",{     
 
sleep 300;        
       
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, 3, 0] ];      
plane02 animate ["ramp_bottom", 1]; plane02 animate ["ramp_top", 1];     
     
sleep 10; hint 'Luz Verde';     
     
whitelight attachTo [plane02, [0, 8, 100] ];      
redlight attachTo [plane02, [0, -6, 100] ];      
greenlight attachTo [plane02, [0, -15, 4] ];     
sleep 5;     
{if !(isPlayer _x) then {_x action ["Eject", plane02];};} foreach units group player;     
     
     
{if !(isPlayer _x) then {      
{     
waitUntil {(getPosATL _x select 2) < 120}; _x action ["openParachute", _x];      
} forEach units group player;      
};};    
      
    
sleep 180;       
deleteVehicle plane02;        
deleteVehicle dz;       
deleteVehicle whitelight;        
deleteVehicle redlight;        
deleteVehicle greenlight;         
deleteMarker "dz";         
 
}];   
     
_item addAction ["<t color='#FF0000'>Subir al Avión</t>",{    
cuttext ["", "BLACK OUT", 3];      
sleep 4;    
player attachTo [plane02, [0, 3, -4.5] ]; player setDir 180; detach player; hint 'Espera a la luz roja';     
{if !(isPlayer _x) then {_x moveInCargo plane02;};} foreach units group player;     
cuttext ["", "BLACK IN", 1];        
}];      
     
     
_item addAction ["OPCIONAL: Elegir Vehículo", "hint ' '; "];      
      
      
_item addAction ["-----Slot 1-----", "hint ' '; "];      
      
      
_item addAction ["<t color='#04ff00'>-MRZR 4</t>", {      
_Dagor1 = createVehicle ["rhsusf_mrzr4_d", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1.5, -3] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];      
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;      
}];        
}];     
     
_item addAction ["<t color='#04ff00'>-Zodiac Boat</t>", {      
_Dagor1 = createVehicle ["B_Boat_Transport_01_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -3.5] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, -0.5] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
     
      
sleep 120;      
deleteVehicle _irstrobe;     
Dagor1 allowDamage true;       
}];        
}];     
     
_item addAction ["<t color='#04ff00'>-POLARIS DAGOR</t>", {      
_Dagor1 = createVehicle ["B_LSV_01_unarmed_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -2.5] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
       
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;     
}];        
}];     
     
_item addAction ["<t color='#04ff00'>-POLARIS DAGOR (HMG)</t>", {      
_Dagor1 = createVehicle ["B_LSV_01_armed_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -2.5] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
       
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;     
}];        
}];     
     
_item addAction ["<t color='#04ff00'>-POLARIS DAGOR (AT)</t>", {      
_Dagor1 = createVehicle ["B_LSV_01_AT_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -3] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
       
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;     
}];        
}];     
      
     
_item addAction ["<t color='#04ff00'>-HMMWV (M2)</t>", {      
_Dagor1 = createVehicle ["rhsusf_m1025_d_m2", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -2.5] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
       
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;     
}];        
}];     
        
     
_item addAction ["<t color='#04ff00'>-HMMWV (RECON)</t>", {      
_Dagor1 = createVehicle ["rhsusf_m998_d_4dr", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0, -1, -2.5] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
       
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor1 allowDamage true;     
}];        
}];     
   
_item addAction ["<t color='#04ff00'>-SDV</t>", {      
_Dagor1 = createVehicle ["B_SDV_01_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0.3, -1, -2.7] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, -0.5] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
     
      
sleep 120;      
deleteVehicle _irstrobe;     
Dagor1 allowDamage true;       
}];        
}];     
         
_item addAction ["<t color='#04ff00'>-Arsenal Box</t>", {      
_Dagor1 = createVehicle ["B_CargoNet_01_ammo_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor1 hideObjectGlobal true;      
_Dagor1 allowDamage false;      
_Dagor1 attachTo [plane02, [0.3, 0, -3.8] ];      
_Dagor1 setDir 180;;      
_Dagor1 setVehicleVarName "Dagor1"; Dagor1 =  _Dagor1;      
publicVariable "Dagor1";      
      
_Dagor1 hideObjectGlobal false;      
   
[_Dagor1] execVM "scripts\gear.sqf";
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 1</t>",{      
detach Dagor1;     
Dagor1 setVelocity [0, -20, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor1;       
_irstrobe attachTo [Dagor1, [0, 0, -0.5] ];      
sleep 5;      
waitUntil {(getPosATL Dagor1 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor1);      
Dagor1 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor1) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor1;      
Dagor1 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor1 setPos [(position Dagor1) select 0, (position Dagor1) select 1, 1];      
Dagor1 SetVelocity [0,0,0];        
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor1, [0,0,0]];        
      
     
      
sleep 120;      
Dagor1 allowDamage true;       
}];        
}];     
     
_item addAction ["-----Slot 2-----", "hint ' '; "];     

_item addAction ["<t color='#04ff00'>-Arsenal Box</t>", {      
_Dagor2 = createVehicle ["B_CargoNet_01_ammo_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor2 hideObjectGlobal true;      
_Dagor2 allowDamage false;      
_Dagor2 attachTo [plane02, [0, 2, -3] ];      
_Dagor2 setDir 180;;      
_Dagor2 setVehicleVarName "Dagor2"; Dagor2 =  _Dagor2;      
publicVariable "Dagor2";       
      
_Dagor2 hideObjectGlobal false;      
   
[_Dagor2] execVM "scripts\gear.sqf";
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 2</t>",{      
detach Dagor2;     
Dagor2 setVelocity [0, -15, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor2;       
_irstrobe attachTo [Dagor2, [0, 0, -0.5] ];      
sleep 5;      
waitUntil {(getPosATL Dagor2 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor2);      
Dagor2 attachTo [_para,[0,0,0]];      
      
WaitUntil {((((position Dagor2) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor2;      
Dagor2 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor2 setPos [(position Dagor2) select 0, (position Dagor2) select 1, 1];      
Dagor2 SetVelocity [0,0,0];     
_smoke = createVehicle ["SmokeShellOrange", [0,0,0], [], 0 , ""];
_smoke attachTo [Dagor2, [0,0,0]];        
      
     
      
sleep 120;      
Dagor1 allowDamage true;       
}];        
}];  
     
_item addAction ["<t color='#04ff00'>-MRZR 4</t>", {      
_Dagor2 = createVehicle ["rhsusf_mrzr4_d", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor2 hideObjectGlobal true;      
_Dagor2 allowDamage false;      
_Dagor2 attachTo [plane02, [0, 2, -3] ];      
_Dagor2 setDir 180;;      
_Dagor2 setVehicleVarName "Dagor2"; Dagor2 =  _Dagor2;      
publicVariable "Dagor2";      
      
_Dagor2 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 2</t>",{      
Dagor2 attachTo [plane02, [0, 1.5, -3] ];      
sleep 0.03;     
Dagor2 attachTo [plane02, [0, 1.0, -3] ];      
sleep 0.03;      
Dagor2 attachTo [plane02, [0, 0.5, -3] ];      
sleep 0.03;      
Dagor2 attachTo [plane02, [0, 0.0, -3] ];      
sleep 0.03;      
Dagor2 attachTo [plane02, [0, -0.5, -3] ];      
sleep 0.03;      
Dagor2 attachTo [plane02, [0, -1.0, -3] ];      
sleep 0.03;      
Dagor2 attachTo [plane02, [0, -1.5, -3] ];       
detach Dagor2;      
Dagor2 setVelocity [0, -15, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor2;       
_irstrobe attachTo [Dagor2, [0, 0, 0] ];      
sleep 5;      
waitUntil {(getPosATL Dagor2 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor2);      
Dagor2 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor2) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor2;      
Dagor2 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor2 setPos [(position Dagor2) select 0, (position Dagor2) select 1, 1];      
Dagor2 SetVelocity [0,0,0];        
      
sleep 120;      
deleteVehicle _irstrobe;      
Dagor2 allowDamage true;      
}];        
}];     
     
     
_item addAction ["<t color='#04ff00'>-Zodiac Boat</t>", {      
_Dagor2 = createVehicle ["B_Boat_Transport_01_F", getMarkerPos "dz", [], 0, "NONE"];      
_Dagor2 hideObjectGlobal true;      
_Dagor2 allowDamage false;      
_Dagor2 attachTo [plane02, [0, -1, -2.5] ];      
_Dagor2 setDir 180;;      
_Dagor2 setVehicleVarName "Dagor2"; Dagor2 =  _Dagor2;      
publicVariable "Dagor2";      
      
_Dagor2 hideObjectGlobal false;      
      
plane02 addAction ["<t color='#0040ff'>Soltar Vehículo 2</t>",{      
detach Dagor2;     
Dagor2 setVelocity [0, -15, 0];      
_irstrobe = "NVG_TargetC" createVehicle position Dagor2;       
_irstrobe attachTo [Dagor2, [0, 0, -0.5] ];      
sleep 5;      
waitUntil {(getPosATL Dagor2 select 2) < 250};      
      
_para = createVehicle ["B_Parachute_02_F", [0,0,100], [], 0, ""];      
_para setPos (getPos Dagor2);      
Dagor2 attachTo [_para,[0,0,0]];       
      
WaitUntil {((((position Dagor2) select 2) < 0.6) || (isNil "_para"))};      
detach Dagor2;      
Dagor2 SetVelocity [0,0,-5];                 
sleep 0.3;      
Dagor2 setPos [(position Dagor2) select 0, (position Dagor2) select 1, 1];      
Dagor2 SetVelocity [0,0,0];        
      
     
sleep 120;      
deleteVehicle _irstrobe;      
Dagor2 allowDamage true;     
}];        
}];     
     
_item addAction ["------------------------", "hint ' '; "];      
     
_item addAction ["<t color='#FF0000'>Cancelar Salto (Reiniciar Proceso)</t>", {     
deleteVehicle plane02;     
deleteVehicle dz;        
deleteMarker "dz";     
deleteVehicle Dagor1;     
deleteVehicle Dagor2;     
}]