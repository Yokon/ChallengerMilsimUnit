pvpfw_chatIntercept_allCommands = [
	[
		"help",
		{
			_commands = "";
			{
				_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
			}forEach pvpfw_chatIntercept_allCommands;
			systemChat format["Available Commands: %1",_commands];
		}
	],
	[
		"count",
		{
			_argument = _this select 0;
			systemChat format["Remaining: %1",troopCount];
		}
	],
	[
		"pow",
		{
			_argument = _this select 0;
			systemChat format["Total POWS: %1", powCount];
		systemChat format["Safe POWS: %1", safepow];
		}
	]
];