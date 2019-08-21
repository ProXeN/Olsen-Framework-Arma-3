class LaunchSettings
	{
		duration = 16;
		distance = 10;

		condShow = "player getVariable ['prx_canLaunch',false]";
		condProgress = "player getVariable ['prx_canLaunch',false]";

		codeStart = "player setVariable ['prx_isLaunching', true, true]";
		codeEnd = "player setVariable ['prx_isLaunching', false, true]";
	};