FNC_AutoSetupRadios = {
	if !(isClass(configFile >> "CfgPatches" >> "task_force_radio")) exitWith {};
	if (!hasInterface) exitWith {};

	private _playerInfo = [str player, "_"] call CBA_fnc_split;
	_playerInfo params ["_side", "_squad", "_team", "_unit"];

	if (!(_side in ["op", "blu", "ind"])) exitWith {};

	private _startCondition = {((call TFAR_fnc_haveSWRadio) || (call TFAR_fnc_haveLRRadio))};

	[_startCondition, {
		params ["_side", "_squad", "_team", "_unit"];

		private _unitID = format["%1_%2_%3", _squad, _team, _unit];
		private _squadNumber = (call compile _squad);
		private _teamNumber = (call compile _team);
		private _unitNumber = (call compile _unit);

		private _currentRadio = (call TFAR_fnc_activeSwRadio);
		private _currentLRradio = (call TFAR_fnc_activeLRRadio);

		private _unitSquadTeam = format["%1_%2", _squad, _team];

		//Radios cortas estructura pelotones
		// switch (_unitSquadTeam) do{
		// 	case "1_1": {[_currentRadio, 0] call TFAR_fnc_setSwChannel}; //RAPTOR 1
		// 	case "1_2": {[_currentRadio, 1] call TFAR_fnc_setSwChannel}; //RAPTOR 2
		// 	case "2_1": {[_currentRadio, 2] call TFAR_fnc_setSwChannel}; //HORNET 1
		// 	case "2_2": {[_currentRadio, 3] call TFAR_fnc_setSwChannel}; //HORNET 2
		// 	case "3_1": {[_currentRadio, 4] call TFAR_fnc_setSwChannel}; //ARROW 1
		// 	case "3_2": {[_currentRadio, 5] call TFAR_fnc_setSwChannel}; //ARROW 2
		// 	case "4_1": {[_currentRadio, 6] call TFAR_fnc_setSwChannel}; //BREACHER 1
		// 	case "4_2": {[_currentRadio, 7] call TFAR_fnc_setSwChannel}; //BREACHER 2
		// 	default {[_currentRadio, 8] call TFAR_fnc_setSwChannel}; //DEFAULT
		// };

		//Radios cortas estructura escuadras
		switch (_unitSquadTeam) do{
			case "1_1": {[_currentRadio, 0] call TFAR_fnc_setSwChannel}; //RAPTOR 
			case "2_1": {[_currentRadio, 1] call TFAR_fnc_setSwChannel}; //HORNET
			case "3_1": {[_currentRadio, 2] call TFAR_fnc_setSwChannel}; //ARROW
			case "4_1": {[_currentRadio, 3] call TFAR_fnc_setSwChannel}; //BREACHER
			case "5_1": {[_currentRadio, 4] call TFAR_fnc_setSwChannel}; //DELTA
			default {[_currentRadio, 8] call TFAR_fnc_setSwChannel}; //DEFAULT
		};

		if ((_unit == "1") && (_squadNumber > 0)) then {
			[_currentRadio, 2] call TFAR_fnc_setSwStereo; //RADiO CORTA LADO DERECHO PARA LIDERES
			//[_currentRadio, 7] call TFAR_fnc_setAdditionalSwChannel;
			//[_currentRadio, 2] call TFAR_fnc_setAdditionalSwStereo;
		};

		if (!(isNil "_currentLRradio")) then {
			[_currentLRRadio, 0] call TFAR_fnc_setLRChannel; //CANAL GENERAL
			[_currentLRradio, 1] call TFAR_fnc_setLRStereo; //CANAL GENERAL IZQUIERDA

			// [_currentLRRadio, _squadNumber] call TFAR_fnc_setLRChannel; //CANAL ESCUADRA
			// [_currentLRRadio, 0] call TFAR_fnc_setAdditionalLRChannel; //CANAL ADICIONAL GENERAL
			// [_currentLRradio, 2] call TFAR_fnc_setLRStereo; //CANAL ESCUADRA DERECHA
			// [_currentLRradio, 1] call TFAR_fnc_setAdditionalLRStereo; //CANAL GENERAL IZQUIERDA
		};

	}, _playerInfo] call CBA_fnc_waitUntilAndExecute;
};