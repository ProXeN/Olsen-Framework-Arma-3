private ["_current", "_existing", "_unit", "_name", "_state", "_idx", "_record", "_object", "_taskID",
    			"_parented", "_target"];

_current = [_this, 0] call BIS_fnc_param;
_existing = [_this, 1] call BIS_fnc_param;
_unit = [_this, 2] call BIS_fnc_param;
    
_name = _current call FHQ_fnc_ttiGetTaskName;
_state = _current call FHQ_fnc_ttiGetTaskState;
private _target = _current call FHQ_fnc_ttiGetTaskTarget;
private _desc = _current call FHQ_fnc_ttiGetTaskDesc;
private _title = _current call FHQ_fnc_ttiGetTaskTitle;
private _updated = false;
_parented = false;
            
_idx = [_existing, _name] call FHQ_fnc_ttiTaskExists; 
if (_idx != -1) then {
    /* Update existing task */
   	_record = _existing select _idx;

   	if ((_record select 0) != _state) then {     
       	/* Need to set new state */
        _record set [0, _state];
                    
        if (_state == "assigned") then {
            _unit setCurrentTask (_record select 1);
        };
                    
        (_record select 1) setTaskState _state;

        if (_unit == player && !FHQ_TTI_supressTaskHints) then
        {
			[_current call FHQ_fnc_ttiGetTaskTitle, _state, _current call FHQ_fnc_ttiGetTaskType] call FHQ_fnc_ttTaskHint;
		};
                    
        /* Update the list */
        _existing set [_idx, _record];
	};
        
    if (!(_target isEqualTo (_record select 3))) then {
        private _target = _current call FHQ_fnc_ttiGetTaskTarget;
        _record set [3, _target];

        if (typeName _target == "ARRAY") then {
            (_record select 1) setSimpleTaskDestination _target;
        } else {
            (_record select 1) setSimpleTaskTarget [_target, true];
        };

        _updated = true;
    };

    if (!(_desc isEqualTo (_record select 4))) then {
        _record set [4, _desc];
        (_record select 1) setSimpleTaskDescription [_desc, _title, _current call FHQ_fnc_ttiGetTaskWp];

        _updated = true;
    };

    if (!(_title isEqualTo (_record select 5))) then {
        _record set [5, _title];
        (_record select 1) setSimpleTaskDescription [_desc, _title, _current call FHQ_fnc_ttiGetTaskWp];

        _updated = true;
    };
    
    if (_unit == player && !FHQ_TTI_supressTaskHints && _updated) then {
         [_current call FHQ_fnc_ttiGetTaskTitle, "update", _current call FHQ_fnc_ttiGetTaskType] call FHQ_fnc_ttTaskHint;
    };
} else {
    /* Create a new task */
	_taskID = _current call FHQ_fnc_ttiGetTaskId;
    
    if (typename _taskID == "STRING") then {            
		_object = _unit createSimpleTask [_name];
    } else {
        _object = _unit createSimpleTask [_name, _unit getVariable format["FHQ_TT_taskname_%1", _taskID select 1]];
        _parented = true;
	};

	_object setSimpleTaskDescription [_current call FHQ_fnc_ttiGetTaskDesc, 
   							  	      _current call FHQ_fnc_ttiGetTaskTitle, 
                                      _current call FHQ_fnc_ttiGetTaskWp];

	_target = _current call FHQ_fnc_ttiGetTaskTarget;

    switch (typename _target) do
    {
       	case "ARRAY": {
           	_object setSimpleTaskDestination _target;
		};
		case "OBJECT": {
			_object setSimpleTaskTarget [_target, true];
		};
	};
    
    private _taskType = _current call FHQ_fnc_ttiGetTaskType;

    if (_taskType != "" && FHQ_TTI_version > 156) then {
        [_object, _taskType] call compile "(_this select 0) setSimpleTaskType (_this select 1);"
    };

    if (!(_state call FHQ_fnc_ttiIsTaskState)) then {
        /* Due to the way the type is handled, this can actually NOT be a state */
        _state = "created";
    };
 
    _object setTaskState _state;
                
    if (tolower(_state) == "assigned") then
    {
	   	_unit setCurrentTask _object;
    };
                
    _unit setVariable [format["FHQ_TT_taskname_%1", _name], _object]; // FIXME: propagate through network ? 
                
    if (_unit == player && !FHQ_TTI_supressTaskHints) then
    {
		[_current call FHQ_fnc_ttiGetTaskTitle, _state, _current call FHQ_fnc_ttiGetTaskType] call FHQ_fnc_ttTaskHint;
	}; 

	_existing = _existing + [ [_state, _object, _name, _target, _current call FHQ_fnc_ttiGetTaskDesc, _current call FHQ_fnc_ttiGetTaskTitle, _current call FHQ_fnc_ttiGetTaskWp] ];

    _target = nil;
};
    
_existing;