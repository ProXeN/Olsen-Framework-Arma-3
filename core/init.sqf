PREP(getTeamVariable);
PREP(setTeamVariable);
PREP(eventKilled);
PREP(eventPlayerSpawned);
PREP(eventSpawned);
PREP(eventRespawned);
PREP(eventDisconnect);
PREP(forceTerrainGrid);
PREP(trackUnit);
PREP(untrackUnit);
PREP(StartingCount);
PREP(stackNames);
PREP(createRespawnMarker);
PREP(inArea);
PREP(areaCount);
PREP(endMission);
PREP(casualtyPercentage);
PREP(casualtyCount);
PREP(alive);
PREP(hasEmptyPositions);
PREP(inVehicle);
PREP(addTeam);
PREP(spectateCheck);
PREP(spectatePrep);
PREP(countTeam);
PREP(hasExtracted);
PREP(RRR);
PREP(simpleConv);
PREP(objectMarker);
PREP(spawnGunners);
PREP(lightSource);

enableSaving [false, false];

if (isServer) then {

	"west" call FNC_CreateRespawnMarker;
	"east" call FNC_CreateRespawnMarker;
	"guer" call FNC_CreateRespawnMarker;
	"civ" call FNC_CreateRespawnMarker;

	FW_Teams = []; //DO NOT REMOVE
	FW_MissionEnded = false; //Mission has not ended

	FW_EventPlayerSpawnedHandle = ["FW_PlayerSpawned", {_this call FNC_EventPlayerSpawned;}] call CBA_fnc_addEventHandler;
	FW_EventRespawnedHandle = addMissionEventHandler ["EntityRespawned", {_this call FNC_EventRespawned;}];
	FW_EventKilledHandle = addMissionEventHandler ["EntityKilled", {_this call FNC_EventKilled;}];

	FW_EventDisconnectHandle = addMissionEventHandler ["HandleDisconnect", {_this call FNC_EventDisconnect;}];

};

if (!isDedicated) then {

	//Anything done using "player" must be past this line for JIP compatibility
	waitUntil {!(isNull player)};

	if (!isServer) then {

		//Tells the server the player has spawned
		["FW_PlayerSpawned", player] call CBA_fnc_serverEvent;

		["endMission", {
			private _msg = "Mission ended by the admin";
			if (count (_this select 0) > 0) then {
				_msg = _msg + ": " + (_this select 0);
			};
			_msg remoteExecCall ["FNC_EndMission", 2];
		}, "admin"] call CBA_fnc_registerChatCommand;
	};

	//Various settings
	enableEngineArtillery false; //Disable Arma 3 artillery computer
	enableRadio true; //Disable Arma 3 regular radio
	enableSentences false; //Disable Arma 3 regular radio chatter
	0 fadeRadio 0; //Lower radio volume to 0

	//Creates the briefing notes for the player
	"" call FNC_Briefing;
	"" call FNC_Menu;

	FW_RespawnTickets = 0; //Initialize respawn tickets to 0

	player setVariable ["FW_Dead", false, true]; //Tells the framework the player is alive
	player setVariable ["FW_Spectating", false, true]; //Player is not spectating
	player setVariable ["FW_Body", player, true]; //Remembers his old body for spectating his dead body

	//Makes the player go into spectator mode when dead or respawn if he has respawn tickets
	FW_KilledEh = player addEventHandler ["Killed", {"" spawn FNC_SpectateCheck;}];
	FW_RespawnEh = player addEventHandler ["Respawn", {_this call FNC_SpectatePrep;}];

	//Various settings
	player addRating 100000; //Makes sure ai doesnt turn hostile when teamkilling
	player setVariable ["BIS_noCoreConversations", true]; //Disable scroll wheel conversations

	//Post Processing Effect During Daytime
	_lite = (date call BIS_fnc_sunriseSunsetTime) # 0;
	_dark = (date call BIS_fnc_sunriseSunsetTime) # 1;
	if !(daytime < (_lite) || (daytime + 1) > _dark) then { 
		_eoreal3 = PPEffectCreate ["ColorCorrections", 2005];
		_eoreal3   PPEffectAdjust [0.75, 0.75, -0.05, [0.00, 0.00, 0.00, -1.00], [2.00, 2.00, 2.00, 1.05], [-4.00, 2.50, 2.50, 0.00]];
		_eoreal3   PPEffectCommit 0;
		_eoreal3   PPEffectForceInNVG false;
		_eoreal3   PPEffectEnable true;
	};
};
