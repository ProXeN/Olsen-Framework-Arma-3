/* FHQ_fnc_ttAddTaskGroup: Add EdenTT defined task group
 *
 * For more information on the definition of task groups, see the 
 * EdenTT manual and examples.
 *
 * This function adds a given task group to the units defined by the filter.
 * The filter itself follows the same rules as filters in FHQ_fnc_ttAddTasks.
 *
 * Usage: [_filter, _taskGroup] call FHQ_fnc_ttAddTaskGroup;
 * _filter: A filter similar to that given in FHQ_fnc_ttAddTask/ttAddBriefing.
 * _taskGroup: Name of the task group to add.
 * 
 * Example:
 * // Add tasks from task1group to units p1, p2, and p3
 * [[p1, p2, p3], "task1group"] call FHQ_fnc_ttAddTaskGroup;
 *
 * // Add task from westTasks to all west units
 * [west, "westTasks"] call FHQ_fnc_ttAddTaskGroup;
 */

params [
	["_filter", {true}],
	["_taskGroup", "", [""]]
];

if (isServer) then {
	private _tasks = missionNamespace getVariable ["FHQ_tt_MissionTasks", []];
	private _units = (if (isMultiplayer) then {playableUnits+FHQ_TTI_extraUnits} else {switchableUnits});
	private _i = 0;

	_units = [_filter, _units] call FHQ_fnc_ttiFilterUnits;
	if (count _units == 0) exitWith {/* Nothing to be done */};

	for [{_i = 0}, {_i < count _tasks}, {_i = _i + 1}] do
	{
		private _task = _tasks select _i;
		private _group = _task select 0;
		private _entry = _task select 1;

		if (_taskGroup isEqualTo _group) then {
			([_units] + [_entry]) call FHQ_fnc_ttAddTasks;
		};
	};
};