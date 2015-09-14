class Mission_Core
{
	tag = "core";
	class Mission 
	{
		file = "missions\functions\core";
		class missionCore {recompile=1;};
		class varConf {recompile = 1;};
		class missionExecute {};
		class holdMissions {};
		class initMission {recompile=1;};
		class setUnitMarker {};
		class unitTracker {};
		class cleanupGeneral {};
	};
	class Hostage
	{
		file="missions\functions\hostage";
		class hostageCore {};
		class joinSquad {};
		class leaveSquad {};
		class initHostage {};
		class trackHostage {};
		class cleanupHostage {};
	};
};
class Mission_Editor 
{
	tag = "editor";
	class missionEditor 
	{
		file = "missions\functions\editor";
		class stripUnit {};
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
		class missionHostageStart {};
		class missionHostageComplete {};
		class missionHostageFailed {};
		class fn_sharePowCount {};
	};
};
