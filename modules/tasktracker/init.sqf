if (isServer) then {
	[
		{true},
		["taskSearch", "Localizar helicoptero estrellado de la AAN.", "Localizar Helicoptero", "LOCALIZAR", getMarkerPos "mSearch", "assigned", "search"]
	] call FHQ_fnc_ttAddTasks;

	FHQ_checkDone = {
		params ["_trigger"];
		switch (_trigger) do {
			case "t_taskSearch": {
				[
					{true},
					["taskPhone", "Localizar pistas en el área del accidente.", "Localizar Pistas", "LOCALIZAR", getPos phone, "assigned", "search"]
				] call FHQ_fnc_ttAddTasks;
				"mSearch" setMarkerAlpha 0;
				remoteExec ["CTS_Helicoptero", [0,-2] select isDedicated];
			};

			case "t_taskPhone": {
				[
					{true},
					["taskRescue", "Localizar a los periodistas secuestrados.", "Rescatar Periodistas", "RESCATAR", getmarkerPos "mTemple", "assigned", "run"]
				] call FHQ_fnc_ttAddTasks;
				remoteExec ["CTS_Telefono", [0,-2] select isDedicated];
				"mTemple" setMarkerAlpha 1;
			};

			case "t_taskRescue": {
				[
					{true},
					["taskExtract", "Extraer a los rehenes.", "Extracción", "EXTRAER", "", "assigned", "exit"]
				] call FHQ_fnc_ttAddTasks;
				remoteExec ["CTS_Rescate", [0,-2] select isDedicated];
			};
		};
	};

	[] spawn {
		private _flow = [
			["missionNamespace getVariable ['t_taskSearch', false]", {["taskSearch", "succeeded"] call FHQ_fnc_ttSetTaskState; ["t_taskSearch"] call FHQ_checkDone;}],
			["missionNamespace getVariable ['t_taskPhone', false]", {["taskPhone", "succeeded"] call FHQ_fnc_ttSetTaskState; ["t_taskPhone"] call FHQ_checkDone;}],
			["missionNamespace getVariable ['t_taskRescue', false]", {["taskRescue", "succeeded"] call FHQ_fnc_ttSetTaskState; ["t_taskRescue"] call FHQ_checkDone;}],
			["!alive VIP1 || !alive VIP2", {["taskRescue", "failed"] call FHQ_fnc_ttSetTaskState}, ["end", "failed"]],
			["VIP1 call FNC_IsRescued && VIP2 call FNC_IsRescued", {["taskRescue", "succeeded"] call FHQ_fnc_ttSetTaskState}, ["end", "success"]]
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