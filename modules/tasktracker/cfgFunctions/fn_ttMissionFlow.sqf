/*
 * Control mission flow based on an array of conditions and actions.
 *
 * Mission flow through FSMs is a good possibility for ensuring a single point of execution for
 * any events happening during the game session. Most of the time, though, the FSM is following
 * a very rigid structure: A single "on mission" state branching out into a bunch of conditions
 * that in term lead to code executed and then return to the on mission state.
 *
 * This can be collapsed into the conditions and the code executed when the condition is met.
 * This function does exactly that: It runs in a thread on the server only, waiting for 
 * any of the conditions to become true, then execute the code associated to that condition.
 * Each condition/code pair can be attributed with a set of attributes that determine what happens
 * afterwards. For example, the "single" attribute means that the condition can happen exactly once
 * and will be removed after it happened. This prevents, for example, that a condition is executed
 * every frame from then on out.
 *
 * The function is called like this:
 * _result = [_flow] call FHQ_fnc_ttMissionFlow;
 *
 * NOTE: It must be called in a scheduled environment. If in doubt, spawn a thread.
 * 
 * Parameters:
 * _flow: An array describing the actual flow of the mission. Each entry consists of three elements:
 *    - Condition string (will be compiled and must evaluate to a boolean)
 *    - Code to be executed when the condition is met.
 *    - Array of strings that define attributes for the condition/action pair. Currently, the following 
 *      attributes are defined. Unknown items are ignored:
 *      "single" - This action should only be executed once. The condition/action pair is removed from the
 *                 mission flow array after it has been executed once. Note: If the array is omitted, "single"
 *                 is assumed
 *      "end"    - This action ends the mission. If an "end" attribute is encountered, FHQ_fnc_missionFlow
 *                 will exit.
 *
 * Return value:
 * _result: If an "end" action is found, the attribute array corresponding to this action is returned. This
 *          allows the user to check the attributes of the ending action.
 *          
 * Example:
 *		private _flow = [
 *			["!alive blowMeUp", {systemChat "BlowMeUp is no more";}, ["single"]],
 *			["triggerActivated exfilTrigger", {systemChat "Thats it, end mission";}, ["end", "success"]]
 * 		];
 *
 *		private _result = [_flow] call FHQ_fnc_ttMissionFlow;
 *      if ("success" in _result) then {
 *	 		systemChat "The mission was a success";
 *		};
 */

private _result = [];

if (isServer) then {
	private _running = true;


	params [
		["_flow", []]
	];

	while {_running} do {
		/* Create the condition to wait for */
		private _cond = _flow call FHQ_fnc_ttiBuildCondition;

		/* And wait until one of them happens */
		waitUntil {call compile _cond};

		/* Find out which */
		_deleteMes = [];
		{
			private "_attribX";
			private _condX = _x select 0;
			private _codeX = _x select 1;
			if (count _x >= 3) then {
				_attribX = _x select 2;
			} else {
				_attribX = ["single"];
			};

			if (call compile _condX) then {
				/* ok, this one's triggered, execute the code */
				if (typename _codeX == "CODE") then {
					call _codeX;
				};
				if (typename _codeX == "STRING") then {
					[_codeX, "succeeded"] call FHQ_fnc_ttSetTaskState;
				};

				if ("single" in _attribX) then {
					_deleteMes pushBack _forEachIndex;
				};

				if ("end" in _attribX) exitWith {
					_running = false;
					_result = +_attribX;
				};
			};
		} foreach _flow;

		{
			_flow deleteAt _x;
		} forEach _deleteMes;
	};
};

_result