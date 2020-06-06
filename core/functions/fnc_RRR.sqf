/*********************************************************************************
 _____ ____  _____ 
|  _  |    \|   __|
|     |  |  |   __|
|__|__|____/|__|   
ARMA Mission Development Framework
ADF version: 2.16 / MAY 2019

Function: Reload/Rearm/Repair
Author: Xeno & Whiztler
Script version: 3.02

File: fn_rrr.sqf
***********************************************************************************
ABOUT
Basic functionality to create a FARP. The script determines the type of vehicle and
(re-)supplies accordingly.

INSTRUCTIONS:
Create a trigger, make it the size of the service area. Trigger configuration:

Name:           Any name you want
Activation by:  side of the players or whichever side you want to activate the
                Reload/Rearm/Repair function.
Repeatable:     Yes

For Helicopters:
Condition:      ("Helicopter" countType thisList  > 0) && ((getPos (thisList select 0)) select 2 < .5)
On activation:  0 = [(thisList select 0), "Mike's Air Services", "Rotor Aircraft Service Point"] spawn fnc_rrr;

For Airplanes:
Condition:      (("Plane" countType thisList  > 0) || ("UAV" countType thisList > 0) || ("airplane" countType thisList  > 0) || ("airplanex" countType thisList  > 0)) && ((getPos (thisList select 0)) select 2 < 1) && (speed (thisList select 0) < 10)
On activation:  0 = [(thisList select 0)] spawn fnc_rrr;

For Vehicles:
Condition:      (("CAR" countType thisList  > 0) || ("TRUCK" countType thisList  > 0) || ("TANK" countType thisList  > 0) || ("APC" countType thisList  > 0)) &&  ((getPos (thisList select 0)) select 2 < 3);
On activation:  0 = [(thisList select 0), "South End Garage", "Service Point since 1988"] spawn fnc_rrr;

EXAMPLES USAGE IN SCRIPT:
N/A

EXAMPLES USAGE IN EDEN:
N/A

DEFAULT/MINIMUM OPTIONS
N/A

RETURNS:
A full tank of gas
*********************************************************************************/

_FARP_repairTime = 10; // Maximum time in seconds it takes to repair a vehicle at the FARP.
_FARP_reloadTime = 10; // Maximum time in seconds it takes to re-arm per turret magazine at the FARP.
_FARP_refuelTime = 10; // Maximum time in seconds it takes to refuel a vehicle at the FARP.

// Init
params [
	["_vehicle", objNull, [objNull]],
	["_serviceName", "", [""]],
	["_serviceSub", "", [""]]
];
private _position = getPosWorld _vehicle;
private _vehicleType = typeOf _vehicle;
private _isPlane = _vehicle isKindOf "Plane"; 
private _vehicleName = getText(configFile >> "CfgVehicles" >> _vehicleType >> "displayName");
private _hasTurret = if ((count ([typeOf _vehicle, false] call BIS_fnc_allTurrets) > 0) || (count (getPylonMagazines _vehicle)) > 0) then {true} else {false};
private _fuelLoad	= fuel _vehicle;
private _maxTime = round ((_FARP_repairTime + _FARP_reloadTime + _FARP_refuelTime + 30) / 60); // maximum time in MIN 
private _time = time;
private _vehicleDescription = "";
private _unit = "";
private _lastService = _vehicle getVariable ["ADF_rrr_serviced", -99];

// Vaalidation & checks
if (_vehicle isKindOf "ParachuteBase") exitWith {};
if (!alive _vehicle) exitWith {};
if ((_vehicle isKindOf "Plane") || (_vehicle isKindOf "Helicopter")) then {_unit = "Piloto"; _vehicleDescription = "aeronave";} else {_unit = "Conductor"; _vehicleDescription = "vehiculo";};
if (!(_serviceName isEqualType "")) then {_serviceName = ""};
if !(_serviceSub isEqualType "") then {_serviceSub = ""};
if (_vehicleName == "") then {_vehicleName = _vehicleDescription};

// Start. Announce service point and switch off engine
if !(_serviceName == "") then {
	[_serviceName, _serviceSub] spawn BIS_fnc_infoText;
} else {
	_vehicle vehicleChat "CTS FARP";
};
_vehicle engineOn false;

// Check last service and inform driver of the service process.
sleep 3;
if (!(_lastService isEqualTo -99) && (time - _lastService) < 180) exitWith {
	_vehicle vehicleChat format ["%1 ha sido reparado hace menos de 3 minutos. Por favor espera %2 segundos antes de reparar %1 en el FARP.", _vehicleName, round (180 - (time - _lastService))];
};
_vehicle vehicleChat format ["Inspeccionando %1", _vehicleName];
sleep 3;
_vehicle vehicleChat format ["%1, por favor mantén el motor apagado y mantente dentro de %2", _unit, _vehicleDescription];
_vehicle setFuel 0;
sleep 3;
_vehicle vehicleChat format ["La operación puede durar %1 minutos.", _maxTime];
sleep 5;


///// REARM

if (_hasTurret) then {
	private _rearm_pause = _FARP_reloadTime / 3;
	private _allVehicleMagazines = getArray (configFile >> "CfgVehicles" >> _vehicleType >> "magazines");	

	if !(_allVehicleMagazines isEqualTo {}) then {
		private _magazineStock = [];
		{
			if (!(_x in _magazineStock)) then {
				_vehicle removeMagazines _x;
				_magazineStock pushBack _x;
			};
		} forEach _allVehicleMagazines;
		
		{
			_vehicle vehicleChat format ["Recargando %1", _x]; 
			sleep _rearm_pause;
			if (!alive _vehicle) exitWith {};
			_vehicle addMagazine _x;
		} forEach _allVehicleMagazines;
		sleep 3;
	};

	private _numberOfTurrets = count (configFile >> "CfgVehicles" >> _vehicleType >> "Turrets");

	if (_numberOfTurrets > 0) then {
		for "_i" from 0 to (_numberOfTurrets - 1) do {
			scopeName "ADF_Reload";			
			private _weapon = (configFile >> "CfgVehicles" >> _vehicleType >> "Turrets") select _i;
			private _weaponMagazines = getArray (_weapon >> "magazines");
			
			private _magazineStock = [];
			{
				if (!(_x in _magazineStock)) then {
					_vehicle removeMagazines _x;
					_magazineStock pushBack _x;
				};
			} forEach _weaponMagazines;
			sleep 3;
			
			{				
				_vehicle vehicleChat format ["Recargando %1", _x]; 
				sleep _rearm_pause;
				if (!alive _vehicle) then {breakOut "ADF_Reload"};
				_vehicle addMagazine _x;
				sleep _rearm_pause;
				if (!alive _vehicle) then {breakOut "ADF_Reload"};
			} forEach _weaponMagazines;
			
			// check if the main platform has other turrets
			private _secondaryTurret = count (_weapon >> "Turrets");

			if (_secondaryTurret > 0) then {
				for "_i" from 0 to (_secondaryTurret - 1) do {
					private _secondaryWeapon = (_weapon >> "Turrets") select _i;
					private _weaponMagazines = getArray (_secondaryWeapon >> "magazines");
				
					private _magazineStock = [];
					{
						if (!(_x in _magazineStock)) then {
							_vehicle removeMagazines _x;
							_magazineStock pushBack _x;
						};
					} forEach _weaponMagazines;
					
					{
						_vehicle vehicleChat format ["Recargando %1", _x]; 
						sleep _rearm_pause;
						if (!alive _vehicle) then {breakOut "ADF_Reload"};
						_vehicle addMagazine _x;
						sleep _rearm_pause;
						if (!alive _vehicle) then {breakOut "ADF_Reload"};
					} forEach _weaponMagazines;
				};
			};
		};
	};

	if (!alive _vehicle) exitWith {};
	_vehicle setVehicleAmmo 1; // Reload all turrets
	{
		(if !alive _x) then {_vehicle deleteVehicleCrew _x}
	} forEach crew _vehicle;
	sleep 2;
	[_vehicle, false, 1, false, true, west, "blu_f", 0] call fnc_SpawnGunners;
	_vehicle vehicleChat format ["%1 ha sido rearmado", _vehicleName];
} else {
	sleep 2;
	_vehicle vehicleChat "No se necesita rearme.";
};

sleep 8;

///// REPAIR

private _totalHitPoints = getAllHitPointsDamage _vehicle;
private _HitPointLevels = (getAllHitPointsDamage _vehicle) # 2;

private _HPD_levelDamaged = 0;
{if (_x > 0) then {_HPD_levelDamaged = _HPD_levelDamaged + 1}} count _HitPointLevels;

private _HPD_Total = 0;
{_HPD_Total = _HPD_Total + _x} count _HitPointLevels;

private _vehicleDamage = if (_HPD_levelDamaged > 0) then {(100/((count _HitPointLevels) - 1)) * _HPD_Total} else {0};
private _repairSleep = if (_HPD_levelDamaged > 0) then {((_vehicleDamage / 100) * _FARP_repairTime) / _HPD_levelDamaged} else {0};

if (_HPD_levelDamaged > 0) then {
	_vehicle vehicleChat format ["Reparando %1", _vehicleName];
	for "_i" from 0 to ((count _HitPointLevels) -1) do {
		private _d = switch ((_totalHitPoints # 0) # _i) do {
			case "hitlfwheel": {"Rueda delantera izquierda"};
			case "hitrfwheel": {"Rueda delantera derecha"};
			case "hitrf2wheel": {"Rueda delantera derecha"};
			case "hitreservewheel": {"Rueda de reserva"};
			case "hitfuel1";
			case "hitfuel2";
			case "hitfuel": {"Depósito de combustible"};
			case "hitfuel_left";
			case "hitfuell": {"Depósito de combustible izquierdo"};
			case "hitfuel_right";
			case "hitfuelr": {"Depósito de combustible izquierdo"};
			case "hitengine1";
			case "hitengine2";
			case "hitengine3";
			case "hitengine_c";
			case "hitengine_l1": {"Motor uno"};
			case "hitengine_l2": {"Motor dos"};
			case "hitengine_r1": {"Motor tres"};
			case "hitengine_r2": {"Motor cuatro"};
			case "hitengine": {"Motor"};
			case "hit_hull_point";
			case "hithull";
			case "hitbody": {"Chasis"};
			case "hitavionics": {"Sistemas de aviación"};
			case "hithrotor": {"Rotor principal"};
			case "reverse_light_hit": {"Luces traseras"};
			case "searchlight": {"Luces de búsqueda"};
			case "cabin_light";
			case "cargo_light_1";
			case "cargo_light_2";
			case "cargo_light_3";
			case "cargo_light_4": {"Luces de carga"};
			case "hitvrotor": {"Rotor de cola"};
			case "hitglass1"; 
			case "hitglass2";
			case "hitrglass";
			case "hitglass3";
			case "hitglass4";
			case "hitglass5";
			case "hitglass6";
			case "hitglass7";
			case "hitglass8": {"Puertas y cristales"};
			case "cage_left_1_point"; 
			case "cage_left_2_point";
			case "cage_left_3_point";
			case "cage_right_1_point"; 
			case "cage_right_2_point";
			case "cage_right_3_point";
			case "cage_back_point";
			case "cage_front_point";
			case "hit_main_turret_point": {if (_hasTurret) then {"Torreta"} else {"Daño estructural"}};		
			case "hit_main_gun_point": {if (_hasTurret) then {"Torreta"} else {"Daño estructural"}};	
			case "hitlbwheel": {"Rueda trasera izquierda"};
			case "hitlmwheel": {"Rueda central izquierda"};
			case "hitrbwheel": {"Rueda trasera derecha"};
			case "hitrmwheel": {"Rueda central derecha"};
			case "hithull": {"Chasis"};
			case "hit_com_turret_point";
			case "hit_main_turret_point";
			case "hit_com_gun_point";
			case "hitturret": {if (_hasTurret) then {"Torreta"} else {"Daño estructural"}};	
			case "hitgun": {if (_hasTurret) then {"Armamento"} else {"Daño estructural"}};	
			case "light_l_flare";
			case "light_r_flare": {"Contramedidas"};
			case "#gear_1_light_1_hit"; 
			case "#gear_1_light_2_hit"; 
			case "#gear_f_lights"; 
			case "#light_l"; 
			case "#light_r": {"Luces"};
			case "#hit_trackl_point": {"Oruga izquierda"};
			case "#hit_trackr_point": {"Oruga derecha"};
			case "ind_fire1";
			case "ind_fire2";
			case "hitmissiles": {"Bahías de misiles"};
			case "hitwinch": {"Sistema de carga"};
			case "hittransmission": {"Transmisión"};
			case "ind_hydr_l": {"Hidráulica izquierda"};
			case "ind_hydr_r": {"Hidráulica derecha"};
			case "hithydraulics": {"Hidráulica"};
			case "hithstabilizerl1";
			case "hithstabilizerr1";
			case "hitvstabilizer1": {"Sistemas de estabilización"};
			case "hittail": {"Sección de cola"};
			case "hitpitottube";
			case "hitstaticport";
			case "hitstarter1";
			case "hitstarter2";
			case "hitstarter3": {"Starter"};
			case "hitlaileron_link";
			case "hitlaileron": {"Alerón izquierdo"};
			case "hitraileron_link";
			case "hitraileron": {"Alerón derecho"};
			case "hitlcrudder";
			case "hitrcrudder";
			case "hitcontrolrear";
			case "hitlcelevator";
			case "hitrcelevator";
			default {"Daño estructural"};
		};
		_vehicle vehicleChat format ["Inspeccionando %1", _d];
		sleep 2;
		private _h = _vehicle getHitIndex _i;
		if (_h > 0 && alive _vehicle) then {
			_vehicle vehicleChat format ["Reparando %1", _d];
			sleep (_repairSleep / 2);
			_vehicle setHitIndex [_i, _h / 2];
			sleep ((_repairSleep / 2) - 0.5);
			_vehicle setHitIndex [_i, 0];
			sleep 0.5;				
		};
		if (!alive _vehicle) exitWith {};
	};
	_vehicle setDamage 0;
	_vehicle vehicleChat format ["%1 ha sido reparado.", _vehicleName];
} else {
	_vehicle vehicleChat "No se necesitan reparaciones.";
	_vehicle setDamage 0;
	if (!alive _vehicle) exitWith {};
};
sleep 8;

// REFUEL

if (!alive _vehicle) exitWith {};

_vehicle setFuel _fuelLoad;
if (_fuelLoad < 0.96) then {
	_vehicle vehicleChat format ["Repostando %1", _vehicleName];
	[_vehicle] spawn {
		params ["_vehicle"];
		waitUntil {
			sleep 10;
			_vehicle vehicleChat "Repostando";			
			((fuel _vehicle) > .95) || !alive _vehicle
		};
	};
	while {_fuelLoad < 1 && alive _vehicle} do {		
		_vehicle setFuel (_fuelLoad + 0.01);
		_fuelLoad = fuel _vehicle;		
		if (_fuelLoad < 0.95) then {sleep (_FARP_refuelTime / 60);};
	};
	sleep 2;
	_vehicle vehicleChat format ["%1 ha sido repostado.", _vehicleName];
} else {
	_vehicle vehicleChat "No se necesita repostaje.";
	_vehicle setFuel 1;
	if (!alive _vehicle) exitWith {};
	
};
sleep 8;
if (!alive _vehicle) exitWith {};
reload _vehicle;

///// SERVICE FINISHED

private _serviceTime = round ((time - _time) / 60);
private _timeType = "minutos";
private _tdt = date # 3;
if ((time - _time) < 90) then {_serviceTime = 1;_timeType = "minuto"};
_vehicle vehicleChat format ["%1 ha sido reparado en %2 %3.", _vehicleName, _serviceTime, _timeType];
_vehicle setVariable ["ADF_rrr_serviced", time];