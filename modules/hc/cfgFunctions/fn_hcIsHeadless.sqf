/* FHQ_HC_fnc_hcIsHeadless
 * 
 * Return true or false depening on whether the caller is headless or not
 */

if (!isServer && !hasInterface) then {true} else {false};