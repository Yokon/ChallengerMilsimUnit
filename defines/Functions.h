class Mission_Core
{
	tag = "core";
	class Mission 
	{
		file = "missions\functions\core";
		class missionCore {};
		class varConf {};
		class missionExecute {};
		class holdMissions {};
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
	};
};