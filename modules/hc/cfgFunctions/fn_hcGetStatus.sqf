/* FHQ_HC_fnc_hcGetStatus
 * 
 * Get information about the distribution of groups/AI on server and all headless clients
 * This is done by getting the owner of each group, counting how many groups and units are
 * controlled by the respective clients
 * 
 * It returns an array of triplets, each triples being [_owner, _numGroups, _numUnits],
 * with _owner being the owner, _numGroups the amount of groups on that owner, and _numUnits
 * the amount of units. 
 * 
 * Can only be used on the server (since owner can only work on the server)
 */

_res = [];
private _owners = [];

{
    private _grp = _x;
    private _owner = groupOwner _grp;
    
    if (_owner in _owners) then {
        /* We already know this owner, find it's record in _res and add one to groups,
         * and count units _x to units
         */
		{
            if (_x select 0 == _owner) exitWith {
                _x set [1, (_x select 1) + 1];
                _x set [2, (_x select 2) + count units _grp];
            }
        } foreach _res;
	} else {
		_res pushBack [_owner, 1, count units _grp];
		_owners pushBack _owner;
	};
} foreach allGroups;

_res;


 