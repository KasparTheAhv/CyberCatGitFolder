/// @desc Save to cloud'
if (os_type==os_windows) {exit;}
if (os_type==os_operagx) {exit;}
if (os_is_network_connected()!=true)  {exit;}
if (global.GoogleConnected!=true)  {exit;}

show_debug_message("gathering info for saving");
// Load basic info 
var map=ds_map_secure_load("settings.sav");
cloudfirstloaded=ds_map_find_value(map,"cloudfirstloaded");
if (cloudfirstloaded==0) {exit;} // DONT ALLOW DATA UPLOAD UNTIL FIRST CLOUDLOADED IS DONE
		var data ={}; // create an array
		
		var tokenscannedVer6=ds_map_find_value(map,"tokenscannedVer6"); // first time token checking
		if is_undefined(tokenscannedVer6){data.tokenscannedVer6=0;}
		else {data.tokenscannedVer6=tokenscannedVer6;}
		
		var skin=ds_map_find_value(map,"skin"); // current skin
		if is_undefined(skin){data.skin=0;}
		else {data.skin=skin;}
		
		var prevDate=ds_map_find_value(map,"prevDate"); // prev date
		if is_undefined(prevDate){data.prevDate=0;}
		else {data.prevDate=prevDate;}
		
		var canDaily=ds_map_find_value(map,"canDaily"); // can daily state
		if is_undefined(canDaily){data.canDaily=0;}
		else {data.canDaily=canDaily;}
		
		var autoJump=ds_map_find_value(map,"autoJump"); // auto jump setting
		if is_undefined(autoJump){data.autoJump=1;}
		else {data.autoJump=autoJump;}
		
		var jumpkey=ds_map_find_value(map,"jumpkey"); // auto jump setting
		if is_undefined(jumpkey){data.jumpkey=0;}
		else {data.jumpkey=jumpkey;}
		
		var skintokens=ds_map_find_value(map,"skintokens"); // skin tokens
		if is_undefined(skintokens){data.skintokens=0;}
		else {data.skintokens=skintokens;}
		
		var coins=ds_map_find_value(map,"coins"); // coins for who knows what?
		if is_undefined(coins){data.coins=0;}
		else {data.coins=coins;}	
		
		var maxbook=ds_map_find_value(map,"maxbook"); // maxbook discovered
		if is_undefined(maxbook){data.maxbook=0;}
		else {data.maxbook=maxbook;}
		
		var maxlvl=ds_map_find_value(map,"maxlvl"); // max level
		if is_undefined(maxlvl){data.maxlvl=0;}
		else {data.maxlvl=maxlvl;}
		
		var AdBlockRemover=ds_map_find_value(map,"AdBlockRemover"); // adblockremover for first time
		if is_undefined(AdBlockRemover){data.AdBlockRemover=1;}
		else {data.AdBlockRemover=AdBlockRemover;}
		//// Pause menu settings 
		var volume_mfx=ds_map_find_value(map,"volume_mfx"); 
		if is_undefined(volume_mfx){data.volume_mfx=1;}
		else {data.volume_mfx=volume_mfx;}	
		
		var volume_sfx=ds_map_find_value(map,"volume_sfx"); 
		if is_undefined(volume_sfx){data.volume_sfx=1;}
		else {data.volume_sfx=volume_sfx;}
		
	
		
		
		//////// stats 
		
		var STATS_Leaps=ds_map_find_value(map,"STATS_Leaps"); 
		if is_undefined(STATS_Leaps){data.STATS_Leaps=0;}
		else {data.STATS_Leaps=STATS_Leaps;}
		
		var STATS_Lphit=ds_map_find_value(map,"STATS_Lphit");
		if is_undefined(STATS_Lphit){data.STATS_Lphit=0;}
		else {data.STATS_Lphit=STATS_Lphit;}
		
		var STATS_Kills=ds_map_find_value(map,"STATS_Kills");
		if is_undefined(STATS_Kills){data.STATS_Kills=0;}
		else {data.STATS_Kills=STATS_Kills;}
		
		var STATS_Deaths=ds_map_find_value(map,"STATS_Deaths");
		if is_undefined(STATS_Deaths){data.STATS_Deaths=0;}
		else {data.STATS_Deaths=STATS_Deaths;}
		
		var STATS_Restarts=ds_map_find_value(map,"STATS_Restarts");
		if is_undefined(STATS_Restarts){data.STATS_Restarts=0;}
		else {data.STATS_Restarts=STATS_Restarts;}
		
		var STATS_Catnip=ds_map_find_value(map,"STATS_Catnip");
		if is_undefined(STATS_Catnip){data.STATS_Catnip=0;}
		else {data.STATS_Catnip=STATS_Catnip;}
		
		var STATS_God=ds_map_find_value(map,"STATS_God");
		if is_undefined(STATS_God){data.STATS_God=0;}
		else {data.STATS_God=STATS_God;}
		
		var STATS_Cnmissed=ds_map_find_value(map,"STATS_Cnmissed");
		if is_undefined(STATS_Cnmissed){data.STATS_Cnmissed=0;}
		else {data.STATS_Cnmissed=STATS_Cnmissed;}
		
		var STATS_Locks=ds_map_find_value(map,"STATS_Locks");
		if is_undefined(STATS_Locks){data.STATS_Locks=0;}
		else {data.STATS_Locks=STATS_Locks;}
		
	
		
// Load Notes and secrets unlocked
var _whatnote = "";
var _notevalue = -1;
var _whatsecret= "";
var _secretvalue = -1;
var _whatkey= "";
var _keyvalue=0;




for (var i = 0; i < 60; i++) // skin loop 
{
var _whatskinkey ="Skin"+string(i)+"Bought";
var _skinvalue= ds_map_find_value(map,_whatskinkey);
	if is_undefined(_skinvalue)
	{
		_skinvalue=0;
	} else {var _skinvalue= ds_map_find_value(map,_whatskinkey);}
variable_struct_set(data,_whatskinkey,_skinvalue);
}

for (var i = 0; i < 20; i++) // token loop 
{
var _whatskinkey ="Token"+string(i)+"Bought";
var _skinvalue= ds_map_find_value(map,_whatskinkey);
	if is_undefined(_skinvalue)
	{
		_skinvalue=0;
	} else {var _skinvalue= ds_map_find_value(map,_whatskinkey);}
variable_struct_set(data,_whatskinkey,_skinvalue);
}






for (var i = 0; i < 31; i++) // room loop 
{
	var whatroom="Room"+string(i);
	// notes and secrets loop
	for (var j = 0; j<7;j++)
	{
	_whatnote=string(whatroom)+"Note"+string(j);
	_notevalue= ds_map_find_value(map,_whatnote);
	if is_undefined(_notevalue) {_notevalue=0;}
    variable_struct_set(data,_whatnote, _notevalue);
	
	_whatsecret=string(whatroom)+"Egg"+string(j);
	_secretvalue= ds_map_find_value(map,_whatsecret);
	if is_undefined(_secretvalue) {_secretvalue=0;}
    variable_struct_set(data,_whatsecret, _secretvalue);
	}
	
	// Best time loop
	var _whatkey="Room"+string(i)+"totaltime";
	var _keyvalue=ds_map_find_value(map,_whatkey);
	if is_undefined(_keyvalue) {} else {variable_struct_set(data,_whatkey,_keyvalue);}
	
}
// turn array into json string
jsonData = json_stringify(data);
path = "thumbnail.png"; // path to save thumbnail

// If player has network access request an update 
global.info="starting save"; show_debug_message(global.info);
if !(os_is_network_connected())
{
global.info="didn't save";show_debug_message(global.info);
} else {
global.info="trying overwrite";show_debug_message(global.info);
//  SAVE TO CLOUD AS JSON STRING
GooglePlayServices_SavedGames_CommitNew("onlySlot","Players data",jsonData,path);
}