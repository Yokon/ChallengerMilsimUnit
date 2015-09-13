# Challenger MilSim
## Created by: Styx & Yokon for the 22nd BDE || Militia Gaming Community

### Description
A randomized mission generator that supports random mission types and locations for maximum milsim experience.

### 3rd Party Scripts
* Grimes Revive
* [STELS]Zealot - Fast Rope
* lostvar	- AI Spawn Scripts
* Conroy - Chat Intercept Module


### Instructions
* You can set the configs in missions/cfgmissions.sqf
* You can set each location parameter in the missions/functions/core/fn_varConf.sqf

### Add Locations
* Insert the name of the location in the missionLocation array (missions/cfgmissions.sqf)
* Add a case in the the variable config file (missions/functions/core/fn_varConf.sqf)

### Exclude Location / Mission Types
Remove the Location or Type from the arrays located in (missions/cfgmissions.sqf). And the Randomizer script won't load the location/type for any generated objectives.
