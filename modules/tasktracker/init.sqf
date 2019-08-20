if (isServer) then {
	[
		{true},
			["taskComms", "Interceptar comunicaciones del enemigo.", "Interceptar comunicaciones", "INTERCEPTAR", "", "assigned", "radio"],
			["taskRescue", "Rescatar rehen capturado por el enemigo.", "Rescatar rehen", "RESCATAR", "", "created", "walk"],
			["taskHack", "Hackear portátil del enemigo.", "Hackear portátil", "HACKEAR", "", "created", "download"],
			["taskRedfox", "Eliminar al oficial enemigo.", "Eliminar a Redfox", "ELIMINAR", "", "created", "kill"]
	] call FHQ_fnc_ttAddTasks;

	FHQ_checkDone = {
		// if (["taskRescue"] call FHQ_fnc_ttGetTaskState == "failed") then {
			//         ["MissionFail", false] call FNC_EndMission;
		// };
	};

	[] spawn {
		private _flow = [
			["missionNamespace getVariable ['t_taskComms', false]", {["taskComms", "succeeded"] call FHQ_fnc_ttSetTaskState; call FHQ_checkDone;}],
			//["0 == {alive _x and (vehicle _x != extractChopper)} count FHQ_playableUnits", "taskReturn", ["end", "success"]],.
			["missionNamespace getVariable ['t_taskRescue', false]", {["taskRescue", "succeeded"] call FHQ_fnc_ttSetTaskState; call FHQ_checkDone;}],
			["missionNamespace getVariable ['t_taskHack', false]", {["taskHack", "succeeded"] call FHQ_fnc_ttSetTaskState; call FHQ_checkDone;}],
			["!alive VIP", {["taskRescue", "failed"] call FHQ_fnc_ttSetTaskState; call FHQ_checkDone;}, ["end", "failed"]],
			["!alive Redfox", {["taskRedfox", "succeeded"] call FHQ_fnc_ttSetTaskState; call FHQ_checkDone;}]
		];

		private _result = [_flow] call FHQ_fnc_ttMissionFlow;

		if ("success" in _result) then {
			sleep 10;
			["MissionSuccess", true] call FNC_EndMission;
		} else {
			sleep 10;
			["MissionFail", false] call FNC_EndMission;
		};
	};
};