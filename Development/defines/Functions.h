class Mission_Core
{
	tag = "core";
	class Mission 
	{
		file = "missions\functions\core";
		class missionCore {};
		class varConf {recompile = 1;};
		class missionExecute {};
		class holdMissions {};
		class initMission {};
		class setUnitMarker {};
		class unitTracker {recompile = 1;};
	};
};
class Mission_Client
{
	tag = "MMC";
	class Client
	{
		file = "missions\functions\client";
		class startMission {};
		class missionComplete {};
		class missionFailed {};
		class shareUnitCount {};
	};
};
