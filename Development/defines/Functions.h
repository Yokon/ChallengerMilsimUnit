class Mission_Core
{
	tag = "core";
	class Mission 
	{
		file = "missions\functions\core";
		class missionCore {recompile=1;};
		class varConf {recompile = 1;};
		class missionExecute {recompile=1;};
		class holdMissions {recompile=1;};
		class initMission {recompile=1;};
		class setUnitMarker {recompile=1;};
		class unitTracker {recompile = 1;};
	};
	class Hostage
	{
		file="missions\functions\hostage";
		class hostageCore{recompile=1;};
		class joinSquad{recompile = 1;};
		class leaveSquad{recompile = 1;};
		class initHostage{recompile = 1};
	};
};
class Mission_Editor 
{
	tag = "editor";
	class missionEditor 
	{
		file = "missions\functions\editor";
		class stripUnit {recompile = 1;};
	};
};
class Mission_Client
{
	tag = "MMC";
	class Client
	{
		file = "missions\functions\client";
		class startMission {recompile=1;};
		class missionComplete {recompile=1;};
		class missionFailed {recompile=1;};
		class shareUnitCount {recompile=1;};
		class missionHostageStart {recompile=1;};
		class missionHostageComplete {recompile=1;};
		class missionHostageFailed {recompile=1;};
	};
};
