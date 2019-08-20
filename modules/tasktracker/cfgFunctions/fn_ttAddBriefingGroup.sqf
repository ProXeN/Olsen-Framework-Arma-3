/* FHQ_fnc_ttAddBriefingGroup: Add EdenTT defined briefing group
 *
 * For more information on the definition of briefing groups, see the 
 * EdenTT manual and examples.
 *
 * This function adds a given briefing group to the units defined by the filter.
 * The filter itself follows the same rules as filters in FHQ_fnc_ttAddTasks.
 *
 * Usage: [_filter, _briefingGroup] call FHQ_fnc_ttAddBriefingGroup;
 * _filter: A filter similar to that given in FHQ_fnc_ttAddTask/ttAddBriefing.
 * _briefingGroup: Name of the briefing group to add.
 * 
 * Example:
 * // Add briefing from brief1 to units p1, p2, and p3
 * [[p1, p2, p3], "brief1"] call FHQ_fnc_ttAddBriefingGroup;
 *
 */

params [
	["_filter", {true}],
	["_briefingGroup", "", [""]]
];

if (isServer) then {
	private _briefings = missionNamespace getVariable ["FHQ_tt_MissionBriefing", []];
	private _units = (if (isMultiplayer) then {playableUnits+FHQ_TTI_extraUnits} else {switchableUnits});
	private _i = 0;

	_units = [_filter, _units] call FHQ_fnc_ttiFilterUnits;
	if (count _units == 0) exitWith {/* Nothing to be done */};

	for [{_i = 0}, {_i < count _briefings}, {_i = _i + 1}] do
	{
		private _briefing = _briefings select _i;
		private _group = _briefing select 0;
		private _entry = _briefing select 1;

		if (_briefingGroup isEqualTo _group) then {
			([_units] + _entry) call FHQ_fnc_ttAddBriefing;
		};
	};
};