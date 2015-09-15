//[] execVM "briefing.sqf"; //Load Briefing
waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitWith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["missions", "Missions"];
player createDiarySubject ["Commands", "chatcommands"];


player createDiaryRecord ["changelog",
	[
		"Official Change Log"
		"
			The Official changelog can be found on out github @ https://github.com/Yokon/ChallengerMilsimUnit
		"
	]
];

player createDiaryRecord ["missions",
	[
		"Capture"
		"
			Destroy All Enemies in the location to capture.<br/>
			Timelimit by default is 3 hours.
		"
	]
];

player createDiaryRecord ["missions",
	[
		"Search & Rescue",
		"
			By Default there will be 2 to 4 POWs in the location.<br/>
			To achieve success, find all the POWs and escort them back to the hospital.<br/>
			POWs must be out of the vehicle and must be near the hospital at the airport base.<br/>
			<br/>
			Failure will be set if:<br/>
			All POWs are killed<br/>
			Timelimit is reach at default of 3 hours.
		"
	]
];

player createDiaryRecord ["commands",
	[
		"Chat Command General",
		"
			To use chat, simply press the / key by default.<br/>
			Chat commands are initiated with the ! symbol.<br/>
			Example: !count
		"
	]
];
player createDiaryRecord ["commands",
	[
		"!Count",
		"
			Shows how many enemies are left in the active zone.</br>
			By default configs this option is turned <ON>.<br/>
			All Players have access to this command.
		"
	]
];
