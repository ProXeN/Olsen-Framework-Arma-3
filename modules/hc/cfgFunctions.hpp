/* FHQ Task Tracker
 * Copyright 2016 by Thomas Frieden (Varanon). All rights reserved. Use of this software
 * is at your own risk. The copyright holder is in no way responsible for damages
 * resulting from the use of this software.
 * Distribution of the software is only allowed within a mission. In addition, no
 * changes are allowed to the software without the permission of the authors.
 * Distribution as a standalone package is prohibited.
 * Attribution (getting a mention in the credits section of your mission) is appreciated,
 * but not a requirement
 */

#define INTERNAL_FUNCTION(x)				\
	class x									\
	{										\
		description = "Internal Function";	\
	};

#define EXPORTED_FUNCTION(x,y)				\
	class x									\
	{										\
		description = y;					\
	};

class FHQ_HC {
	class HeadlessClients {
		tag="FHQ";
		file="modules\hc\cfgFunctions";

		class hciInit
		{
			description = "Internal function, called automatically";
			preInit = 1;
		};

		EXPORTED_FUNCTION(hcIsHeadless, "Return whether caller is a hedless client or not")
		EXPORTED_FUNCTION(hcGetHCList, "Get a list of all headless clients currently connected")
		EXPORTED_FUNCTION(hcMoveGroup, "Move a group to a headless client")
		EXPORTED_FUNCTION(hcDistributeGroups, "Distribute groups between clients and server")
		EXPORTED_FUNCTION(hcGetStatus, "Get information about the curretn distribution of groups")
	};
};
