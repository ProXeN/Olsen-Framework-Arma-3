/* Distribute all AI groups between the server and the headless clients.
 * 
 * Only parameter is a boolean indicating whether to rebalance all groups, or 
 * keep groups that are on the HCs where they are. Default is keep as is.
 */

_this spawn {

/* Slight delay so it's not done during briefing */
sleep 0.1;
if (isMultiplayer && isServer) then {
    private _rebalance = param [0, false, [true]];
	private _hcs = call FHQ_HC_fnc_hcGetHCList;
    
    if (count _hcs == 0) exitWith {/* No available HC's */};
    
    private _ids = [];
    private _current = 0;
    
    {_ids pushBackUnique (owner _x);} foreach _hcs;
    
    {
        private _nextHC = _hcs select _current;
        private _moved = false;
        
     	/* Only move this group if the leader is not a player,
         * and the current owner is not a HC. Exception: when
         * rebalancing is required, assume the owner is not an HC
         */   
        private _isOnHC = ((groupOwner _x) in _ids);
        if (_rebalance) then {
            _isOnHC = false;
        };
        
        /* Don't move if the group shouldn't be moved */
        private _noMove = _x getVariable ["FHQ_HC_NOMOVE", false];
        {
            if (_x getVariable ["FHQ_HC_NOMOVE", false]) then {
                _noMove = true;
            };
        } foreach units _x;
        
        diag_log format ["group %4, %1 %2 %3", !isPlayer (leader _x), !_isOnHC, !_noMove, _x];
    	if (!isPlayer (leader _x) && !_isOnHC && !_noMove) then {
           	diag_log format ["Moving %1 to %2", _x, owner _nextHC];
            if (groupOwner _x != owner _nextHC) then { 
           		_moved = [_x, _nextHC] call FHQ_HC_fnc_hcMoveGroup;
            } else {
                _moved = true;
            };
        };
        diag_log format ["moved %1", _moved];
        
        if (_moved) then {
            /* If it was moved, select the next HC */
            _current = _current + 1;
            if (_current >= count _hcs) then {
                _current = 0;
            };
        };
	} foreach allGroups;
};

};