/* FHQ_fnc_ttSetTaskTitlesAndTarget
 * 
 * Set the title and description of the specified task, and alert the player if necessary. 
 * 
 * NOTE: Server callable only. Calling this on a client does not have an effect
 * 
 * Usage:
 * [_task,_newTarget, _newTitle, _newDesc] call FHQ_fnc_ttSetTaskTitle;
 * _task: the task name defined with FHQ_fnc_ttAddTasks
 * _newTitle: The new title
 * _newDescription: The new description
 */

#define FHQ_TTIF_TASKDESC	1
#define FHQ_TTIF_TASKTITLE	2
#define FHQ_TTIF_TASKTARGET	4

private ["_name", "_title", "_desc", "_idx", "_record", "_entry", "_target"];
    
if (isServer) then {
	_name = [_this, 0, "", [""]] call BIS_fnc_param;
	_target = [_this, 1, objNull, [objNull, [2,3]]] call BIS_fnc_param;
    _title = [_this, 2, "", [""]] call BIS_fnc_param;
	_desc = [_this, 3, "", [""]] call BIS_fnc_param;
        
 	_idx = [FHQ_TTI_TaskList, _name] call FHQ_fnc_ttiTaskExists;
    if (_idx != -1) then {
        _entry = FHQ_TTI_TaskList select _idx;
        _record = _entry select 1;
            
        _record set [FHQ_TTIF_TASKTITLE, _title];
		_record set [FHQ_TTIF_TASKDESC, _desc];
		_record set [FHQ_TTIF_TASKTARGET, _target];
		
        _entry set [1, _record];
        FHQ_TTI_TaskList set [_idx, _entry];
       
    	publicVariable "FHQ_TTI_TaskList";
       	if (!isDedicated) then {
    		FHQ_TTI_TaskList call FHQ_fnc_ttiUpdateTaskList;
    	};
	};
};