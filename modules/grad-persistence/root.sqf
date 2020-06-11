#ifdef description_functions

	#include "CfgFunctions.hpp"
	
#endif

#ifdef description_persistence

	class CfgGradPersistence {
		missionTag = missionName;
		loadOnMissionStart = 1;
		missionWaitCondition = "true";
		playerWaitCondition = "true";

		saveUnits = 0;
		saveVehicles = 0;
		saveContainers = 0;
		saveStatics = 0;
		saveMarkers = 2;
		saveTasks = 0;
		saveTriggers = 0;

		savePlayerInventory = 1;
		savePlayerDamage = 1;
		savePlayerPosition = 1;
		savePlayerMoney = 0;

		saveTeamAccounts = 0;
		saveTimeAndDate = 1;

		// class customVariables {
		// 	class var1 {
		// 		varName = "mcd_myVariable_test";
		// 		varNamespace = "mission";
		// 		public = 0;
		// 	};
		// 	class var2 {
		// 		varName = "mcd_myPublicVariableOnAUnit_test";
		// 		varNamespace = "unit";
		// 		public = 1;
		// 	};
		// };
	};

#endif