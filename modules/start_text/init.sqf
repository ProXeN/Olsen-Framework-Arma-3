["Start Text", "Displays animated text on mission start.", "Olsen &amp; Starfox64"] call FNC_RegisterModule;

if !(isMultiplayer) exitWith {};

if (!isDedicated) then {
	private ["_month", "_hour", "_min", "_startTextArray", "_line", "_unparsedText"];

	#include "settings.sqf"

	addMissionEventHandler ["PreloadFinished", {
	preload_complete = true; 
	}];

	switch (date select 1) do {

		case 1: {_month = "Enero"};
		case 2: {_month = "Febrero"};
		case 3: {_month = "Marzo"};
		case 4: {_month = "Abril"};
		case 5: {_month = "Mayo"};
		case 6: {_month = "Junio"};
		case 7: {_month = "Julio"};
		case 8: {_month = "Agosto"};
		case 9: {_month = "Septiembre"};
		case 10: {_month = "Octubre"};
		case 11: {_month = "Noviembre"};
		case 12: {_month = "Diciembre"};

	};

	_day = format ["%1", date select 2];

	private _h = date select 3;
	if (date select 4 == 60) then {_h = _h + 1;};

	if (_h < 10) then {
		_hour = "0" + format ["%1", _h];

	} else {

		_hour = format ["%1", _h];

	};
	_m = date select 4;
	if (date select 4 == 60) then {_m = 0};
	if (_m < 10) then {
		
		_min = "0" + format ["%1H", _m];

	} else {

		_min = format ["%1H", _m];

	};

	_unparsedText = "<t align='right' size='1.2'>";

	for "_i" from 0 to count _startTextArray -1 do {
		_line = _startTextArray select _i;

		switch (_line select 0) do {

			case "TITLEQUOTE": {
				_unparsedText = _unparsedText + format ["<t font='PuristaBold' size='1.6'>""%1""</t>", _line select 1];
			};

			case "TITLE": {
				_unparsedText = _unparsedText + format ["<t font='PuristaBold' size='1.6'>%1</t>", _line select 1];
			};

			case "TEXT": {
				_unparsedText = _unparsedText + format ["%1", _line select 1];
			};

			case "DATE": {
				_unparsedText = _unparsedText + format ["%2 %3", _day, _month];
			};

			case "TIME": {
				_unparsedText = _unparsedText + format ["%1", (_hour + _min)];
			};

			case "DATETIME": {
				_unparsedText = _unparsedText + format ["%1, %2 %3", (_hour + _min), _day, _month];
			};
		};

		if (_i < count _startTextArray -1) then {
			_unparsedText = _unparsedText + "<br/>";
		}
	};

	_unparsedText = _unparsedText + "</t>";

	[parsetext _unparsedText, true, nil, 10, 0.7, 0] spawn {
		0 fadesound 0;
		cutText ["", "BLACK FADED", 999];
		waitUntil {!(isNil "preload_complete")};
		sleep 1;
		_text = format ["<img size= '6' style='vertical-align:middle' shadow='false' image='images\simulatio.paa'/><br/><br/><t size='.9' color='#FFFFFF'>%1</t>", "PRESENTA"];
        [_text,0,0,2,2] spawn BIS_fnc_dynamicText;
		sleep 3;
		"dynamicBlur" ppEffectEnable true;   
		"dynamicBlur" ppEffectAdjust [6];   
		"dynamicBlur" ppEffectCommit 0;     
		"dynamicBlur" ppEffectAdjust [0.0];  
		"dynamicBlur" ppEffectCommit 5;  
		cutText ["", "BLACK IN", 2];
		4 fadeSound 1;
		sleep 5;
		_this call BIS_fnc_textTiles;
	};
};
