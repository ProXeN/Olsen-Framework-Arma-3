// Gun Cabinet Keypad Process

switch (_this select 0) do {
	case "Number": {
		disableSerialization;
		InputText = InputText + format["%1", _this select 1];
		playSound "GC_Button_01";
		ctrlSetText[1000, InputText];
	};
	
	case "Clear": {
		disableSerialization;
		InputText = "";
		playSound "GC_Clear";
		ctrlSetText[1000, "ENTER CODE"];
	};
	
	case "Enter": {
		disableSerialization;
		OutputText = InputText;
		if (OutputText == "71492") then {
			
			playSound "GC_Accept";
			sleep 0.5;
			missionNamespace setVariable ["keypad", true, true];
			closeDialog 0;} else {
			
				playSound "GC_Denied"};
				InputText = "";
	};
};

