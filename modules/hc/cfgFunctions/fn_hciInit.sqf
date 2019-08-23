/* Called on init.
 * 
 * This function sets up automatic balancing. It installs an onClientConnect handler that tries
 * to determine if the connecting client is a HC.
 * 
 * Likewise, it installs an onClientDisconnect handler to rebalance AI after a HC leaves
 */

/* Balance every 300 seconds, or 5 minutes */
#define BALANCE_INTERVAL 300

if (isServer && isMultiplayer) then {
    if (isNil "FHQ_HC_hc_load_balance_interval") then {
        FHQ_HC_hc_load_balance_interval = BALANCE_INTERVAL;
    };
    
    /* On the server, we start a thread that will check every BALANCE_INTERVAL seconds whether the
     * balance is still good between the server and all HC's. If one HC gets too few groups/units, 
     * it will rebalance
     */
    [] spawn {
        while {true} do {
        	sleep FHQ_HC_hc_load_balance_interval;

        	private _numHCs = count (call FHQ_HC_fnc_hcGetHCList); 
        	if (0 != _numHCs) then {
				private _hcMaxLoad = (95 / _numHCs)/100.0;
            	private _load = call FHQ_HC_fnc_hcGetStatus;
            	/* Each one of those is of format [_ownerID, _groups, _units].
             	* To see how loaded we are, count all units, and compute the percentage each
             	* HC and server have to handle. If we have two HC and server, for example, the 
             	* HCs should have at least 40 % (let's assume the server retains 20 %)
             	* Todo: Distribute not as round-robin, but based on how many units are already
             	* on the client
             	*/
            	private _allUnits = count allUnits;
            	{
	                private _owner = _x select 0;
                	private _loadHc = (_x select 2)/_allUnits;
                	if (_owner != 2 && _loadHc > (_hcMaxLoad * 1.3)) exitWith {
	                    [true] call FHQ_HC_fnc_hcDistributeGroups;
                	};
                	if (_owner == 2 && _loadHc > 0.2) exitWith {
						[true] call FHQ_HC_fnc_hcDistributeGroups;
                	};
            	} foreach _load;
        	};
		};
	}; 
} else {
    /* If a client, and headless, distribute AI */
    if (call FHQ_HC_fnc_hcIsHeadless) then {
        [true] remoteExec ["FHQ_HC_fnc_hcDistributeGroups", 2];
    };
};
