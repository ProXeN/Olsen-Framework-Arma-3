/* FHQ_fnc_ttSetTaskTarget
 * 
 * Set the target of the specified task, and alert the player if necessary. 
 * 
 * NOTE: Server callable only. Calling this on a client does not have an effect
 * 
 * Usage:
 * [_task, _newTarget] call FHQ_fnc_ttSetTaskTarget;
 * _task: the task name defined with FHQ_fnc_ttAddTasks
 * _newTarget: The new target, can be an array (position) or an object
 * 
 */
#define FHQ_TTIF_TASKTARGET	4

private ["_name", "_target", "_idx", "_record", "_entry"];
    
if (isServer) then {
	_name = [_this, 0, "", [""]] call BIS_fnc_param;
    _target = [_this, 1, objNull, [objNull, [2,3]]] call BIS_fnc_param;
        
 	_idx = [FHQ_TTI_TaskList, _name] call FHQ_fnc_ttiTaskExists;
    if (_idx != -1) then {
        _entry = FHQ_TTI_TaskList select _idx;
        _record = _entry select 1;
            
        _record set [FHQ_TTIF_TASKTARGET, _target];
        _entry set [1, _record];
        FHQ_TTI_TaskList set [_idx, _entry];
       
    	publicVariable "FHQ_TTI_TaskList";
       	if (!isDedicated) then {
    		FHQ_TTI_TaskList call FHQ_fnc_ttiUpdateTaskList;
    	};
	};
};