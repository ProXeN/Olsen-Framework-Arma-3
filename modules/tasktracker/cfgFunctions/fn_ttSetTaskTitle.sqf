/* FHQ_fnc_ttSetTaskTitle
 * 
 * Set the "short" description of the specified task, and alert the player if necessary. 
 * 
 * NOTE: Server callable only. Calling this on a client does not have an effect
 * 
 * Usage:
 * [_task, _newTitle] call FHQ_fnc_ttSetTaskTitle;
 * _task: the task name defined with FHQ_fnc_ttAddTasks
 * _newTitle: The new title
 * 
 */

#define FHQ_TTIF_TASKTITLE	2

private ["_name", "_title", "_idx", "_record", "_entry"];
    
if (isServer) then {
	_name = [_this, 0, "", [""]] call BIS_fnc_param;
    _title = [_this, 1, "", [""]] call BIS_fnc_param;
        
 	_idx = [FHQ_TTI_TaskList, _name] call FHQ_fnc_ttiTaskExists;
    if (_idx != -1) then {
        _entry = FHQ_TTI_TaskList select _idx;
        _record = _entry select 1;
            
        _record set [FHQ_TTIF_TASKTITLE, _title];
        _entry set [1, _record];
        FHQ_TTI_TaskList set [_idx, _entry];
       
    	publicVariable "FHQ_TTI_TaskList";
       	if (!isDedicated) then {
    		FHQ_TTI_TaskList call FHQ_fnc_ttiUpdateTaskList;
    	};
	};
};