/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0BFD5A4E
/// @DnDArgument : "funcName" "SlideTransition"
function SlideTransition() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 155BD05D
	/// @DnDParent : 0BFD5A4E
	/// @DnDArgument : "code" "/// @desc SlideTransition(mode,targetroom)$(13_10)/// @arg Mode sets transition mode between next, restart and goto.$(13_10)/// @arg Target sets target room when using the goto mode.$(13_10)with (oTransition)$(13_10){$(13_10)	mode = argument[0];$(13_10)	if (argument_count>1) target = argument[1];$(13_10)$(13_10)}$(13_10)global.selectionlocker=0;$(13_10)$(13_10)var settingsmap = ds_map_secure_load("settings.sav")$(13_10)var prevValue = ds_map_find_value(settingsmap,"STATS_Leapshit");$(13_10)if is_undefined(prevValue) {prevValue=0;}$(13_10)var neWvalue = prevValue+global.leapsthissession;$(13_10)ds_map_set(settingsmap,"STATS_Leapshit",neWvalue);$(13_10)ds_map_secure_save(settingsmap,"settings.sav");$(13_10)global.leapsthissession=0;"
	/// @desc SlideTransition(mode,targetroom)
	/// @arg Mode sets transition mode between next, restart and goto.
	/// @arg Target sets target room when using the goto mode.
	with (oTransition)
	{
		mode = argument[0];
		if (argument_count>1) target = argument[1];
	
	}
	global.selectionlocker=0;
	
	var settingsmap = ds_map_secure_load("settings.sav")
	var prevValue = ds_map_find_value(settingsmap,"STATS_Leapshit");
	if is_undefined(prevValue) {prevValue=0;}
	var neWvalue = prevValue+global.leapsthissession;
	ds_map_set(settingsmap,"STATS_Leapshit",neWvalue);
	ds_map_secure_save(settingsmap,"settings.sav");
	global.leapsthissession=0;
}