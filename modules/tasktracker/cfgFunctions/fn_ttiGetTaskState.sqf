#define FHQ_TTIF_TASKNAME	0
#define FHQ_TTIF_TASKDESC	1
#define FHQ_TTIF_TASKTITLE	2
#define FHQ_TTIF_TASKWP		3
#define FHQ_TTIF_TASKTARGET	4
#define FHQ_TTIF_TASKSTATE	5

/* Might not be present */
private _res = "created";
    
if (count _this > FHQ_TTIF_TASKSTATE) then {
    if ((_this select FHQ_TTIF_TASKSTATE) call FHQ_fnc_ttiIsTaskState) then {
        _res = _this select FHQ_TTIF_TASKSTATE;
    } else {
        _res = "created";
    };
    
} else {
    if (count _this > FHQ_TTIF_TASKTARGET) then {
        if (typename (_this select FHQ_TTIF_TASKTARGET) == "STRING") then {
            if ((_this select FHQ_TTIF_TASKTARGET) call FHQ_fnc_ttiIsTaskState) then {
                _res = _this select FHQ_TTIF_TASKTARGET;
            } else {
                _res = "created";
            };
        };
    };
};
    
_res;