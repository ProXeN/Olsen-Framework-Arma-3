if (!isServer) exitWith {true};

/*
	Description: Embarks AI gunners for a player driven vehicle. Is thought to be executed server-side and not on client.

	Arguments:
1.	object - vehicle which should be filled with AI gunners

					 
2.	boolean/number - FFV - true if AI should be spawned on cargo places where they can shoot with their own weapon from (FFV).
                         - false if no AI should spawn on Fire From Vehicle (FFV) seats.
					     - number can be 0-100 and is the chance to spawn AI on each FFV seat.
						   50 means a vehicle with 30 FFV seats should spawn about 15 FFV AIs.
						 - default is true

						 
3.	number/boolean - driver/commander/gunner spawn - true means spawn driver/commander/gunner on available seats - default is true
	                                               - false means to not spawn all of them
												   - number can be 0-7 and defines which of them should be spawned. look at table:
												   
                                                    driver commander gunner number spawn
	                                                   0      0       0    =  |0|  nobody
													   0      0       1    =  |1|  gunner only
													   0      1       0    =  |2|  commander only
													   0      1       1    =  |3|  no driver
													   1      0       0    =  |4|  driver only
                                                       1      0       1    =  |5|  no commander
													   1      1       0    =  |6|  no gunner
													   1      1       1    =  |7|  all
													   X      X       X    >= |8|  totally random

                                                   - 8 or greater means random spawn on available seats.
													   

4.  boolean/number - cargo spawn - true if all possible cargo AI which can not fire from vehicle should spawn.
	                             - false if no cargo AI which can not FFV should spawn.
						         - number can be 0-100 and is the chance to spawn AI on each cargo seat.
						           50 means a vehicle with 30 cargo seats should spawn about 15 cargo AIs
						         - default is false

								 
5.	boolean - group player - if true then AI joins players group (order is join the player who is driver, commander, gunner, elsewhere) 
						   - false means own group for AI - default is false

						   
6.	side - side of spawned AI - default is west if no player is in vehicle
	                          - if any player is inside then side is determined by players side

							  
7.  boolean/string - faction    - true means random faction of given side
                     of         - false means players faction. if there is no player in vehicle or players side does not match given side then random faction of given side.
					 spawned AI	- "westnato", "blunato" or "blu_f" means NATO faction. side must be west then, if not then random faction of given side.
							    - "westfia", "blufia" or "blu_g_f" means FIA faction. side must be west then, if not then random faction of given side.
							    - "eastcsat", "opfcsat" or "opf_f" means CSAT faction. side must be east then, if not then random faction of given side.
							    - "eastfia", "opffia" or "opf_g_f" means FIA faction. side must be east then, if not then random faction of given side.
							    - "indaaf", "gueraaf" or "ind_f" means AAF faction. side must be resistance then, if not then random faction of given side.
							    - "indfia", "guerfia" or "ind_g_f" means FIA faction. side must be resistance then, if not then random faction of given side.
                                - default is true

								
8.	number - timeout - seconds after the AI gets deleted
					 - default is 3600 (1h) - 0 or lower means not to delete after a timeout
					 
					 
Return value:
	boolean - true if script has been finished
*/

//***********************************
//***		SCRIPT START          ***
//***********************************

// declaring parameters, check parameter types and set default values
params [
["_vec", objNull, [objNull]], 			// 1. vehicle object
["_dcg_spawn", true, [true, ""]],		// 2. driver/commander/gunner spawn - default is spawn all
["_own_gun", true, [true, 0]], 			// 3. spawn on FFV seats - default is yes
["_cargo_spawn", false, [true, 0]],		// 4. spawn on other cargo seats - default is no
["_group_player", false, [true]],		// 5. ai joins players group - default is no
["_side", west, [west]], 				// 6. side if no player in vehicle - default is west
["_faction", true, [true, ""]],			// 7. faction if no player in vehicle - default is random
["_AI_timeout", 3600, [0]]];			// 8. time after AI gets deleted - default is 1 hour

//if we do not have a valid vehicle then finish here
if (!(_vec in vehicles) || {isNull _vec or {damage _vec isEqualTo 1}}) exitWith {true};

waitUntil {!isNull currentPilot _vec};

//***********************************
//***		SPAWN POOLS           ***
//***********************************

//west spawn pools
_spawn_pool_west_nato_air = ["B_recon_F", "B_recon_LAT_F", "B_recon_exp_F", "B_recon_medic_F", "B_recon_TL_F", "B_recon_M_F", "B_recon_JTAC_F", "B_spotter_F", "B_sniper_F"];

_spawn_pool_west_nato_grnd = ["B_Soldier_F", "B_Soldier_lite_F", "B_Soldier_GL_F", "B_soldier_AR_F", "B_Soldier_SL_F", "B_Soldier_TL_F", "B_soldier_M_F", "B_soldier_LAT_F", "B_medic_F",
			      "B_soldier_repair_F", "B_soldier_exp_F", "B_Soldier_A_F", "B_soldier_AT_F", "B_soldier_AA_F", "B_engineer_F", "B_officer_F", "B_soldier_PG_F", "B_soldier_UAV_F",
			      "B_soldier_AAR_F", "B_soldier_AAT_F", "B_soldier_AAA_F", "B_support_MG_F", "B_support_GMG_F", "B_support_Mort_F", "B_support_AMG_F", "B_support_AMort_F", "B_Patrol_Soldier_TL_F",
			      "B_Patrol_Soldier_UAV_F", "B_Patrol_Soldier_M_F", "B_Patrol_Medic_F", "B_Patrol_Soldier_AR_F", "B_Patrol_Soldier_MG_F", "B_Patrol_Soldier_A_F", "B_Patrol_Soldier_AT_F",
			      "B_Patrol_Engineer_F", "B_soldier_LAT2_F"];

_spawn_pool_west_nato_crew = ["B_crew_F"];

_spawn_pool_west_nato_hcrew = ["B_helicrew_F"];

_spawn_pool_west_nato_hpilot = ["B_Helipilot_F"];

_spawn_pool_west_nato_pilot = ["B_Pilot_F"];

_spawn_pool_west_fia = ["B_G_Soldier_F", "B_G_Soldier_lite_F", "B_G_Soldier_SL_F", "B_G_Soldier_TL_F", "B_G_Soldier_AR_F", "B_G_medic_F", "B_G_engineer_F", "B_G_Soldier_exp_F", "B_G_Soldier_GL_F",
			     "B_G_Soldier_M_F", "B_G_Soldier_LAT_F", "B_G_Soldier_A_F", "B_G_officer_F", "B_G_Soldier_LAT2_F"];


// east spawn pools
_spawn_pool_east_csat_air = ["O_recon_exp_F", "O_recon_JTAC_F", "O_recon_M_F", "O_recon_medic_F", "O_recon_F", "O_recon_LAT_F", "O_recon_TL_F", "O_sniper_F", "O_spotter_F"];

_spawn_pool_east_csat_grnd = ["O_Soldier_A_F", "O_soldierU_A_F", "O_Soldier_AAR_F", "O_soldierU_AAR_F", "O_support_AMG_F", "O_support_AMort_F", "O_Soldier_AHAT_F", "O_Soldier_AAA_F", "O_soldierU_AAA_F",
			      "O_Soldier_AAT_F", "O_soldierU_AAT_F", "O_Soldier_AR_F", "O_soldierU_AR_F", "O_medic_F", "O_soldierU_medic_F", "O_engineer_F", "O_engineer_U_F", "O_soldier_exp_F", "O_soldierU_exp_F",
			      "O_Soldier_GL_F", "O_SoldierU_GL_F", "O_support_GMG_F", "O_support_MG_F", "O_support_Mort_F", "O_soldier_M_F", "O_soldierU_M_F", "O_Soldier_AA_F", "O_soldierU_AA_F", "O_Soldier_AT_F",
			      "O_soldierU_AT_F", "O_officer_F", "O_soldier_PG_F", "O_soldier_repair_F", "O_soldierU_repair_F", "O_Soldier_F", "O_soldierU_F", "O_Soldier_LAT_F", "O_soldierU_LAT_F", "O_Soldier_HAT_F",
			      "O_Soldier_lite_F", "O_Soldier_SL_F", "O_SoldierU_SL_F", "O_Soldier_TL_F", "O_soldierU_TL_F", "O_soldier_UAV_F"];

_spawn_pool_east_csat_crew = ["O_crew_F"];

_spawn_pool_east_csat_hcrew = ["O_helicrew_F"];

_spawn_pool_east_csat_hpilot = ["O_helipilot_F"];

_spawn_pool_east_csat_pilot = ["O_Pilot_F"];

_spawn_pool_east_fia = ["O_G_Soldier_A_F", "O_G_Soldier_AR_F", "O_G_medic_F", "O_G_engineer_F", "O_G_Soldier_exp_F", "O_G_Soldier_GL_F", "O_G_Soldier_M_F", "O_G_officer_F", "O_G_Soldier_F", "O_G_Soldier_LAT_F",
		        "O_G_Soldier_LAT2_F", "O_G_Soldier_lite_F", "O_G_Soldier_SL_F", "O_G_Soldier_TL_F"];
				
				
// guerilla spawn pools
_spawn_pool_guer_aaf = [" I_soldier_F", "I_Soldier_lite_F", "I_Soldier_A_F", "I_Soldier_GL_F", "I_Soldier_AR_F", "I_Soldier_SL_F", "I_Soldier_TL_F", "I_Soldier_M_F", "I_Soldier_LAT_F", "I_Soldier_AT_F", "I_Soldier_AA_F",
			"I_medic_F", "I_Soldier_repair_F", "I_Soldier_exp_F", "I_engineer_F", "I_officer_F", "I_soldier_UAV_F", "I_Spotter_F", "I_Sniper_F", "I_Soldier_AAR_F", "I_Soldier_AAT_F", "I_Soldier_AAA_F",
			"I_support_MG_F", "I_support_GMG_F", "I_support_Mort_F", "I_support_AMG_F", "I_support_AMort_F", "I_Soldier_LAT2_F"];

_spawn_pool_guer_aaf_crew = ["I_crew_F"];

_spawn_pool_guer_aaf_hcrew = ["I_helicrew_F"];

_spawn_pool_guer_aaf_hpilot = ["I_helipilot_F"];

_spawn_pool_guer_aaf_pilot = ["I_pilot_F"];  

_spawn_pool_guer_fia = ["I_G_Soldier_F", "I_G_Soldier_lite_F", "I_G_Soldier_SL_F", "I_G_Soldier_TL_F", "I_G_Soldier_AR_F", "I_G_medic_F", "I_G_engineer_F", "I_G_Soldier_exp_F", "I_G_Soldier_GL_F", "I_G_Soldier_M_F",
			"I_G_Soldier_LAT_F", "I_G_Soldier_A_F", "I_G_officer_F", "I_G_Soldier_LAT2_F"];
			
			
// civilian spawn pool
_spawn_pool_civ = ["C_man_1", "C_man_1_1_F", "C_man_1_2_F", "C_man_1_3_F", "C_man_polo_1_F", "C_man_polo_1_F_afro", "C_man_polo_1_F_euro", "C_man_polo_1_F_asia", "C_man_polo_2_F", 
				   "C_man_polo_2_F_afro", "C_man_polo_2_F_euro", "C_man_polo_2_F_asia" ,"C_man_polo_3_F" ,"C_man_polo_3_F_afro" ,"C_man_polo_3_F_euro" ,"C_man_polo_3_F_asia" ,
				   "C_man_polo_4_F" ,"C_man_polo_4_F_afro" ,"C_man_polo_4_F_euro" ,"C_man_polo_4_F_asia" ,"C_man_polo_5_F" ,"C_man_polo_5_F_afro" ,"C_man_polo_5_F_euro",
				   "C_man_polo_5_F_asia"];

//***********************************
//***		VARIABLE INITS        ***
//***********************************

_driver_spawn = true;
_commander_spawn = true;
_gunner_spawn = true;

_dcg_spawn_arr = [
[false, false, false],
[false, false, true],
[false, true, false],
[false, true, true],
[true, false, false],
[true, false, true],
[true, true, false],
[true, true, true]];

// setup faction arrays
_west_nato = ["westnato", "blunato", "blu_f"];
_west_fia = ["westfia", "blufia", "blu_g_f"];

_east_csat = ["eastcsat", "opfcsat", "opf_f"];
_east_fia = ["eastfia", "opffia", "opf_g_f"];

_guer_aaf = ["indaaf", "gueraaf", "ind_f"];
_guer_fia = ["indfia", "guerfia", "ind_g_f"];


_spawn_pool_pilot = [];
_spawn_pool_hpilot = [];
_spawn_pool_hcrew = [];
_spawn_pool_crew = [];
_spawn_pool_cargo_grnd = [];
_spawn_pool_cargo_air = [];

_turrets = fullCrew [_vec, "", true];
_squadpos = _vec getPos [10, random 360];
_squad = grpNull;
_vec_full = true;
_player = objNull;

_own_gun_cpy = _own_gun;
_cargo_spawn_cpy = _cargo_spawn;

_empty_seats = [];
_player_seats = [];
_AI_seats = [];

//***********************************
//***	   HANDLE 2. PARAM        ***
//***********************************

//determine driver, commander, gunner spawn
if (typeName _dcg_spawn isEqualTo "BOOL") then
{
 if(_dcg_spawn) then
 {
  _driver_spawn = true;
  _commander_spawn = true;
  _gunner_spawn = true;
 }
 else
 {
  _driver_spawn = false;
  _commander_spawn = false;
  _gunner_spawn = false;
 };
}
else
{
 if (_dcg_spawn > -1 && _dcg_spawn < 8) then
 {
  _dcg_spawn_arr = _dcg_spawn_arr select _dcg_spawn;

  _driver_spawn = _dcg_spawn_arr select 0;
  _commander_spawn = _dcg_spawn_arr select 1;;
  _gunner_spawn = _dcg_spawn_arr select 2;;
 }
 else
 {
  _dcg_spawn_arr = selectRandom _dcg_spawn_arr;
  
  _driver_spawn = _dcg_spawn_arr select 0;
  _commander_spawn = _dcg_spawn_arr select 1;;
  _gunner_spawn = _dcg_spawn_arr select 2;;
 };
};

//***********************************
//***     PLAYER DETECTION        ***
//***********************************

if (isNil "SSAIG_seat_array_switch") then
{
 SSAIG_seat_array_switch = compile
 "
  params ['_unit'];
  
  if (isNull _unit) exitWith {_empty_seats pushBack _this};
  if (isPlayer _unit) exitWith {_player_seats pushBack _this};
  _AI_seats pushBack _this; 
 ";
};

{
 _role = toLower (_x select 1);
 
 if !(_role isEqualTo "commander" || _role isEqualTo "gunner" || _role isEqualTo "driver") then
 {
  _index = _x call SSAIG_seat_array_switch;
 }; 
} count (fullCrew [_vec, "", true]);

_commander = fullCrew [_vec, "commander", true];
_commander = if (count _commander > 0) then {_commander select 0} else {_commander};

_gunner = fullCrew [_vec, "gunner", true];
_gunner = if (count _gunner > 0) then {_gunner select 0} else {_gunner};

_driver = fullCrew [_vec, "driver", true];
_driver = if (count _driver > 0) then {_driver select 0} else {_driver};

//detect if a player is in vehicle and catch him
if( count _driver > 0 && {isPlayer (_driver select 0)}) then
{
 _player = _driver select 0;
}
else
{
 if( count _commander > 0 && {isPlayer (_commander select 0)}) then
 {
  _player = _commander select 0;
 }
 else
 {
  if( count _gunner > 0 && {isPlayer (_gunner select 0)}) then
  {
   _player = _gunner select 0;
  }
  else
  {
   if( count _player_seats > 0 ) then
   {
    _player = _player_seats select 0 select 0;
   };
  };
 };
};

//manage grouping and side
if (!isNull _player) then
{
 _side = side _player;

 if (_group_player) then {_squad = group _player;}
 else {_squad = createGroup [_side, false];};
}
else
{
 _squad = createGroup [_side, false];
};

_squad addVehicle _vec;

//***********************************
//***	   HANDLE FACTION         ***
//***********************************

// mangage faction
_faction_bool = if (typeName _faction isEqualTo "BOOL") then {true} 
else
{
 if (typeName _faction isEqualTo "STRING" && 
    { (_side isEqualTo west && (_faction in _west_nato || _faction in _west_fia)) ||
	  (_side isEqualTo east && (_faction in _east_csat || _faction in _east_fia)) ||
	  (_side isEqualTo resistance && (_faction in _guer_aaf || _faction in _guer_fia)) }) 
 then {false} else {_faction = true; true};
};

if (_faction_bool && {_faction || {!_faction && isNull _player}}) then
{
 if (_side isEqualTo west) then
 {
  if( random 100 < 50) then
  {
   _spawn_pool_pilot = _spawn_pool_west_nato_pilot;
   _spawn_pool_hpilot = _spawn_pool_west_nato_hpilot;
   _spawn_pool_hcrew = _spawn_pool_west_nato_hcrew;
   _spawn_pool_crew = _spawn_pool_west_nato_crew;
   _spawn_pool_cargo_grnd = _spawn_pool_west_nato_grnd;
   _spawn_pool_cargo_air = _spawn_pool_west_nato_air;
  }
  else
  {
   _spawn_pool_pilot = _spawn_pool_west_nato_pilot;
   _spawn_pool_hpilot = _spawn_pool_west_fia;
   _spawn_pool_hcrew = _spawn_pool_west_fia;
   _spawn_pool_crew = _spawn_pool_west_fia;
   _spawn_pool_cargo_grnd = _spawn_pool_west_fia;
   _spawn_pool_cargo_air = _spawn_pool_west_fia;    
  };
 }
 else
 {
  if (_side isEqualTo east) then
  {
   if( random 100 < 50) then
   {
    _spawn_pool_pilot = _spawn_pool_east_csat_pilot;
    _spawn_pool_hpilot = _spawn_pool_east_csat_hpilot;
    _spawn_pool_hcrew = _spawn_pool_east_csat_hcrew;
    _spawn_pool_crew = _spawn_pool_east_csat_crew;
    _spawn_pool_cargo_grnd = _spawn_pool_east_csat_grnd; 
    _spawn_pool_cargo_air = _spawn_pool_east_csat_air;
   }
   else
   {
    _spawn_pool_pilot = _spawn_pool_east_csat_pilot;
    _spawn_pool_hpilot = _spawn_pool_east_fia;
    _spawn_pool_hcrew = _spawn_pool_east_fia;
    _spawn_pool_crew = _spawn_pool_east_fia;
    _spawn_pool_cargo_grnd = _spawn_pool_east_fia;
    _spawn_pool_cargo_air = _spawn_pool_east_fia;    
   };
  }
  else
  {
   if (_side isEqualTo resistance) then
   {
    if( random 100 < 50) then
    {
     _spawn_pool_pilot = _spawn_pool_guer_aaf_pilot;
     _spawn_pool_hpilot = _spawn_pool_guer_aaf_hpilot;
     _spawn_pool_hcrew = _spawn_pool_guer_aaf_hcrew;
     _spawn_pool_crew = _spawn_pool_guer_aaf_crew;
     _spawn_pool_cargo_grnd = _spawn_pool_guer_aaf;
     _spawn_pool_cargo_air = _spawn_pool_guer_aaf;
    }
    else
    {
     _spawn_pool_pilot = _spawn_pool_guer_aaf_pilot;
     _spawn_pool_hpilot = _spawn_pool_guer_fia;
     _spawn_pool_hcrew = _spawn_pool_guer_fia;
     _spawn_pool_crew = _spawn_pool_guer_fia;
     _spawn_pool_cargo_grnd = _spawn_pool_guer_fia;;
     _spawn_pool_cargo_air = _spawn_pool_guer_fia;
    };
   }
   else
   {
    _spawn_pool_pilot = _spawn_pool_civ;
    _spawn_pool_hpilot = _spawn_pool_civ;
    _spawn_pool_hcrew = _spawn_pool_civ;
    _spawn_pool_crew = _spawn_pool_civ;
    _spawn_pool_cargo_grnd = _spawn_pool_civ;
    _spawn_pool_cargo_air = _spawn_pool_civ;
   };
  };
 };
}
else
{

 // if faction is bool then it is also false because we are in else part
 // setting up players faction
 //if faction is not bool then it is already valid determined in _faction
 _faction = if(_faction_bool) then {toLower (faction player)} else {toLower _faction};

 if (_side isEqualTo west) then
 {
  if(_faction in _west_nato) then
  {
   _spawn_pool_pilot = _spawn_pool_west_nato_pilot;
   _spawn_pool_hpilot = _spawn_pool_west_nato_hpilot;
   _spawn_pool_hcrew = _spawn_pool_west_nato_hcrew;
   _spawn_pool_crew = _spawn_pool_west_nato_crew;
   _spawn_pool_cargo_grnd = _spawn_pool_west_nato_grnd;
   _spawn_pool_cargo_air = _spawn_pool_west_nato_air;
  }
  else
  {
   _spawn_pool_pilot = _spawn_pool_west_nato_pilot;
   _spawn_pool_hpilot = _spawn_pool_west_fia;
   _spawn_pool_hcrew = _spawn_pool_west_fia;
   _spawn_pool_crew = _spawn_pool_west_fia;
   _spawn_pool_cargo_grnd = _spawn_pool_west_fia;
   _spawn_pool_cargo_air = _spawn_pool_west_fia;    
  };
 }
 else
 {
  if (_side isEqualTo east) then
  {
   if(_faction in _east_csat) then
   {
    _spawn_pool_pilot = _spawn_pool_east_csat_pilot;
    _spawn_pool_hpilot = _spawn_pool_east_csat_hpilot;
    _spawn_pool_hcrew = _spawn_pool_east_csat_hcrew;
    _spawn_pool_crew = _spawn_pool_east_csat_crew;
    _spawn_pool_cargo_grnd = _spawn_pool_east_csat_grnd; 
    _spawn_pool_cargo_air = _spawn_pool_east_csat_air;
   }
   else
   {
    _spawn_pool_pilot = _spawn_pool_east_csat_pilot;
    _spawn_pool_hpilot = _spawn_pool_east_fia;
    _spawn_pool_hcrew = _spawn_pool_east_fia;
    _spawn_pool_crew = _spawn_pool_east_fia;
    _spawn_pool_cargo_grnd = _spawn_pool_east_fia;
    _spawn_pool_cargo_air = _spawn_pool_east_fia;    
   };
  }
  else
  {
   if (_side isEqualTo resistance) then
   {
    if( _faction in _guer_aaf) then
    {
     _spawn_pool_pilot = _spawn_pool_guer_aaf_pilot;
     _spawn_pool_hpilot = _spawn_pool_guer_aaf_hpilot;
     _spawn_pool_hcrew = _spawn_pool_guer_aaf_hcrew;
     _spawn_pool_crew = _spawn_pool_guer_aaf_crew;
     _spawn_pool_cargo_grnd = _spawn_pool_guer_aaf;
     _spawn_pool_cargo_air = _spawn_pool_guer_aaf;
    }
    else
    {
     _spawn_pool_pilot = _spawn_pool_guer_aaf_pilot;
     _spawn_pool_hpilot = _spawn_pool_guer_fia;
     _spawn_pool_hcrew = _spawn_pool_guer_fia;
     _spawn_pool_crew = _spawn_pool_guer_fia;
     _spawn_pool_cargo_grnd = _spawn_pool_guer_fia;;
     _spawn_pool_cargo_air = _spawn_pool_guer_fia;
    };
   }
   else
   {
    _spawn_pool_pilot = _spawn_pool_civ;
    _spawn_pool_hpilot = _spawn_pool_civ;
    _spawn_pool_hcrew = _spawn_pool_civ;
    _spawn_pool_crew = _spawn_pool_civ;
    _spawn_pool_cargo_grnd = _spawn_pool_civ;
    _spawn_pool_cargo_air = _spawn_pool_civ;
   };
  };
 };
};

//***********************************
//***	  SPAWN ON EMPTY SEATS    ***
//***********************************

// ********** Check if there is a seat where an AI can be spawned and spawn it
{
 _x params ["_seat", "_role", "_c_t3", "_turret_path", "_ffv"];
 
 _role = toLower _role;
 _path_cnt = count _turret_path;
  
 _is_locked = if ( _path_cnt > 0 && {_vec lockedTurret _turret_path}) then {true} else {false};
  
 //seat empty and not locked?
 if(isNull _seat && !_is_locked) then  
 {
   _own_gun = _own_gun_cpy;

  if (_role isEqualTo "turret" && _ffv) then
  {
   _rand = random 100;
   
   if (((typeName _own_gun) isEqualTo "BOOL" && {_own_gun}) ||
                  {typeName _own_gun isEqualTo "SCALAR" && {_rand < _own_gun}} ) 
				  then {_own_gun = true;} else {_own_gun = false;};
  }
  else
  {
   _own_gun = false;
  };
  
  //handle "turret" type seats?
  if( ((_own_gun && _ffv) || !_ffv) && {_role isEqualTo "turret"} || {!(isNull gunner _vec) && {_role isEqualTo "gunner"}} ) then
  {

   //finally assign spawn pool for turrets and FFV seats
   _spawn_pool = if (_ffv) then
   {
    if (_vec isKindOf "Air") then {_spawn_pool_cargo_air} else {_spawn_pool_cargo_grnd};
   }
   else
   {
    if (_vec isKindOf "Air") then {_spawn_pool_hcrew} else {_spawn_pool_crew};
   };

   _unit = _squad createUnit [(selectRandom _spawn_pool), [0, 0, 0] , [], 0, "NONE"];
   _unit assignAsTurret [_vec, _turret_path];  
   _unit moveInTurret [_vec, _turret_path];
   _vec_full = false;
  }
  else
  {
   // is turret gunner seat?
   if(_gunner_spawn && {_role isEqualTo "gunner"}) then
   {

    //finally assign spawn pool for gunner seat
    _spawn_pool = if (_vec isKindOf "Air") then {_spawn_pool_hcrew} else {_spawn_pool_crew};

    _unit = _squad createUnit [(selectRandom _spawn_pool), [0, 0, 0], [], 0, "NONE"];
    _unit assignAsGunner _vec;
    _unit moveInGunner _vec; 
    _vec_full = false;
   }
   else
   {
    // is turret commander seat?
    if(_commander_spawn && {_role isEqualTo "commander"}) then
    {

    //finally assign spawn pool for commander seat
     _spawn_pool = if (_vec isKindOf "Air") then {_spawn_pool_hcrew} else {_spawn_pool_crew};

     _unit = _squad createUnit [(selectRandom _spawn_pool), [0, 0, 0], [], 0, "NONE"];
     _unit assignAsCommander _vec;  
     _unit moveInCommander _vec; 
	 _squad selectLeader _unit;
     _vec_full = false;
    }
    else
    {
     // is turret driver seat?
     if(_driver_spawn && {_role isEqualTo "driver"}) then
     {
      //finally assign spawn pool for driver seat
      _spawn_pool = if (_vec isKindOf "Air") then 
	  {
	   if (_vec isKindOf "Plane") then {_spawn_pool_pilot} else {_spawn_pool_hpilot};
	  }
	  else {_spawn_pool_crew};

      _unit = _squad createUnit [(selectRandom _spawn_pool), [0, 0, 0], [], 0, "NONE"];
      _unit assignAsDriver _vec;  
      _unit moveInDriver _vec; 
      _vec_full = false;
     }
     else
     {
      _cargo_spawn = _cargo_spawn_cpy;
	 
	  if (((typeName _cargo_spawn) isEqualTo "BOOL" && {_cargo_spawn}) ||
           {typeName _cargo_spawn isEqualTo "SCALAR" && {random 100 < _cargo_spawn}} ) 
	  then {_cargo_spawn = true;} else {_cargo_spawn = false;};

      // is turret cargo seat and should cargo AI be spawned?
				  
      if(_role isEqualTo "cargo" && _cargo_spawn) then
      {
	   //finally assign spawn pool for cargo seat
       _spawn_pool = if (_vec isKindOf "Air") then {_spawn_pool_cargo_air} else {_spawn_pool_cargo_grnd};

       _unit = _squad createUnit [(selectRandom _spawn_pool), [0, 0, 0], [], 0, "NONE"];
       _unit assignAsCargo _vec;  
       _unit moveInCargo [_vec, _c_t3];
       _vec_full = false;
      }; // cargo end
	 }; //driver end
    }; // commander end
   }; // gunner end
  }; // turret end
 }; // empty seat end
 true
} count _turrets;

//exit if no AI was spawned
if (_vec_full) exitWith {true};

//***********************************
//***		SELECT LEADER         ***
//***********************************

if (_group_player && {!(isNull _player)}) then 
{
 _squad selectLeader _player;
}
else
{
 _commander = (fullCrew [_vec, "commander", false]) select {!(isPlayer (_x select 0))};
 _commander = if (count _commander > 0) then {_commander select 0} else {_commander};

 if( count _commander > 0) then
 {
  _squad selectLeader (_commander select 0);
 }
 else
 {
  _gunner = (fullCrew [_vec, "gunner", false]) select {!(isPlayer (_x select 0))};
  _gunner = if (count _gunner > 0) then {_gunner select 0} else {_gunner};

  if( count _gunner > 0) then
  {
   _squad selectLeader (_gunner select 0);
  }
  else
  {
   _driver = (fullCrew [_vec, "driver", false]) select {!(isPlayer (_x select 0))};
   _driver = if (count _driver > 0) then {_driver select 0} else {_driver};

   if( count _driver > 0) then
   {
    _squad selectLeader (_driver select 0);
   };
  };
 };
};

_vec setUnloadInCombat [false, false];

//*******************************
//***		SKILL AI          ***
//*******************************

{
 _x setSkill 1;
 _x setskill ["aimingAccuracy", 1];
 _x setskill ["aimingShake", 1];
 _x setskill ["aimingSpeed", 1];
 _x setskill ["endurance", 1];
 _x setskill ["spotDistance", 1];
 _x setskill ["spotTime", 1];
 _x setskill ["courage", 1];
 _x setskill ["reloadSpeed", 1];
 _x setskill ["commanding", 1];
 _x setskill ["general", 1];
 true
} count (units _squad);

 // make squad agressive and skilled
 _squad setCombatMode "YELLOW";
 _squad setBehaviour "AWARE";

//***********************************
//***		AI LIFE TIME          ***
//***********************************

//track _units for later deletion
[_vec, _squad, _AI_timeout] spawn 
{
 params ["_vec", "_squad", "_AI_timeout"];
 
 _vec setVariable ["DeleteCrew", false];
   
 _delay = _AI_timeout / 10;
 _rnd_delay = _delay / 10;
 
 _timeout = time + _AI_timeout;
	
 waitUntil 
 {
  sleep (_delay + random _rnd_delay); 
  (damage _vec isEqualTo 1 or isNull _vec or {alive _x} count units _squad < 1 or (time > _timeout && _AI_timeout > 0) or (_vec getVariable "DeleteCrew"))
 };

 _squad deleteGroupWhenEmpty true;

 {
  deleteVehicle _x;
 } count units _squad;
};
true