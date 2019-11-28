#define framework

#include "core\script_macros.hpp"
#include "core\init.sqf" //DO NOT REMOVE
#include "customization\settings.sqf" //DO NOT REMOVE
#include "core\dia\debug\dia_debug.sqf" //DO NOT REMOVE

if (isServer) then {

	"" call FNC_StartingCount; //DO NOT REMOVE

	[] spawn { //Spawns code running in parallel

		while {!FW_MissionEnded} do { //Loops while the mission is not ended
			
			#include "customization\core\endConditions.sqf" //DO NOT REMOVE
				
		};	
	};

	[] spawn { // Place all editor units under Curator control
        {
            _x addCuratorEditableObjects [allUnits, true];
            _x addCuratorEditableObjects [vehicles, true];
			_x addCuratorEditableObjects [allUnitsUAV, true];
			_x addCuratorEditableObjects [allMines, true];
        } forEach allCurators;
    };
};

#include "modules\modules.sqf" //DO NOT REMOVE
#include "core\postChecks.sqf" //DO NOT REMOVE