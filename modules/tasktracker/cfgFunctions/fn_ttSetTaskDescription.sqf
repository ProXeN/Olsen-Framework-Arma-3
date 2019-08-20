/* FHQ_fnc_ttSetTaskDescription
 * 
 * Set the "long" description of the specified task, and alert the player if necessary. 
 * 
 * NOTE: Server callable only. Calling this on a client does not have an effect
 * 
 * Usage:
 * [_task, _newDesc] call FHQ_fnc_ttSetTaskDescription;
 * _task: the task name defined with FHQ_fnc_ttAddTasks
 * _newDesc: New description
 * 
 */
#define FHQ_TTIF_TASKDESC	1

private ["_name", "_desc", "_idx", "_record", "_entry"];
    
if (isServer) then {
	_name = [_this, 0, "", [""]] call BIS_fnc_param;
    _desc = [_this, 1, "", [""]] call BIS_fnc_param;
        
 	_idx = [FHQ_TTI_TaskList, _name] call FHQ_fnc_ttiTaskExists;
    if (_idx != -1) then {
        _entry = FHQ_TTI_TaskList select _idx;
        _record = _entry select 1;
            
        _record set [FHQ_TTIF_TASKDESC, _desc];
        _entry set [1, _record];
        FHQ_TTI_TaskList set [_idx, _entry];
       
    	publicVariable "FHQ_TTI_TaskList";
       	if (!isDedicated) then {
    		FHQ_TTI_TaskList call FHQ_fnc_ttiUpdateTaskList;
    	};
	};
};