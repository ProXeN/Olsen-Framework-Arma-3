/* FHQ_HC_fnc_GetHCList
 * 
 * This function retrieves all currently connected headless clients.
 * 
 * entities "HeadlessClient_F" returns a full list, but if a hc disconnects, 
 * it's entity remains (albeit NULL)
 */

private _res = [];

{if (!isNull _x && owner _x != 2) then {_res pushBack _x};} foreach entities "HeadlessClient_f";

_res;