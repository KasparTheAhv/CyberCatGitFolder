
if (async_load[?"type"] == "GooglePlayServices_Leaderboard_SubmitScore")
{
	if (async_load[?"success"])
	{    
	    //Done, let's continue
		show_debug_message("Submitted score successfully!");
	}
}

if(async_load[?"type"] == "GooglePlayServices_Leaderboard_LoadPlayerCenteredScores")
{
	show_debug_message("Leader A sync got into brackets");
	
    var array = json_parse(async_load[?"data"]);
	
	for(var a = 0 ; a < array_length(array) ; a ++)
    {
       var struct = array[a]
       var LEADERdisplayScore = struct.displayScore;
       var LEADERrawScore = struct.rawScore;
       var LEADERscoreHolder = struct.scoreHolder;
       var LEADERscoreHolderDisplayName = struct.scoreHolderDisplayName;
       var LEADERtimestampMillis = struct.timestampMillis;
	    show_debug_message("DisplayScore: "+string(LEADERdisplayScore));	
		show_debug_message("RawScore: "+string(LEADERrawScore));	
		show_debug_message("ScoreHolder: "+string(LEADERscoreHolder));
		show_debug_message("DisplayName: "+string(LEADERscoreHolderDisplayName));
		show_debug_message("Millis: "+string(LEADERtimestampMillis));
		
		
		if (display_name==LEADERscoreHolderDisplayName)
		{
			if instance_exists(oLevelGo)
			{
			cloudLeaderData=true;
			cloudRetrievedTime=real(LEADERrawScore);	
			alarm[2]=5;
			}
			with (oLevelGo) {
			cloudLeaderData=true;
			cloudRetrievedTime=real(LEADERrawScore);
			alarm[2]=5;
			}
		}
		
		
	}
		
    exit;
}
// Check if players Google Play is logged in. 
if(async_load[? "type"] == "GooglePlayServices_IsAuthenticated")
{
    if(!async_load[?"success"])
       exit;

    if(async_load[?"isAuthenticated"]) 
    {
		logged_in=true;
		global.GoogleConnected=true;
        show_debug_message("GoolePlayServices Player Authenticated");
		GooglePlayServices_Player_Current(); 
    }
    else
    {
		logged_in=false;
        GooglePlayServices_SignIn();
		show_debug_message("GoolePlayServices Starting: _SignIn");
    }
}
// 
if(async_load[? "type"] == "GooglePlayServices_SignIn")
{
    if(!async_load[?"success"]) {show_debug_message("GoolePlayServices _SignIn Success"); exit;}
       

    if(async_load[?"isAuthenticated"])
    {
        show_debug_message("GoolePlayServices Player Authenticated");
		logged_in=true;
		global.GoogleConnected=true;

		GooglePlayServices_Player_Current();
    }
    else
    {
		logged_in=false;
        show_debug_message("Lets continue without GooglePlayGameServices")
    }
}


if (async_load[? "type"] == "GooglePlayServices_Player_Current") 
{
    if (async_load[? "success"]) {
		show_debug_message("GoolePlayServices Get Player Info");
        var player_json = json_parse(async_load[? "player"]);
        display_name = player_json.displayName;
		last_played=player_json.retrievedTimestamp;
		var debugtxt = "User logged in: "+string(display_name);
		global.GoogleConnected=true;
		show_debug_message(string(debugtxt));
		
		
		/////// Per account settings
		
		// special meet for a good fan
		if (display_name=="CuteNegation10") {global.specialGreeting=true;}
		
		// Admin rights
		var adminallowed= false;
		if (display_name=="UnafraidYard573") {adminallowed=true;}
		if (display_name=="TimelessClockanator") {adminallowed=true;}	
		if (display_name=="RanZipRar")	{adminallowed=true;}
		if (display_name=="TimelessClockanator1")	{adminallowed=true;}	
		if (display_name=="CluelessNebula")	{adminallowed=true;}
		// if admin allowed	
		if (adminallowed) {
			global.admin=true;	
			show_debug_message("User is Admin=true");
			var	map = ds_map_secure_load("settings.sav");
			ds_map_set(map,"tutorial",1);
			ds_map_secure_save(map,"settings.sav");
		}
		
		
		// Try loading cloud
			alarm[4]=5; 
    }
}
if (async_load[? "type"] == "GooglePlayServices_SavedGames_CommitNew") {
    if (async_load[? "success"]) {
        global.info="new slot success!";
		show_debug_message(global.info);
		var	map = ds_map_secure_load("settings.sav");

    } else {global.info="Couldn't save";
		show_debug_message(global.info);
		var	map = ds_map_secure_load("settings.sav");

		}
}
/// LOAD 
if (async_load[? "type"] == "GooglePlayServices_SavedGames_Load") {
    if (async_load[? "success"]) {
		var snapshots = json_parse(async_load[? "snapshots"]);
					global.info="starting snapshots json_parse in SavedGames_load async";
						show_debug_message(global.info);
		// lastmoded data recovery
		if is_array(snapshots) 
		{
				global.info="snapshots is array";
						show_debug_message(global.info);
			if (array_length(snapshots) != 0)
			{
						global.info="array length !=0";
						show_debug_message(global.info);
					var johhaidi= array_get(snapshots,0);
					if is_struct(johhaidi)
					{
						if variable_struct_exists(johhaidi,"lastModifiedTimestamp")
						{
						var lesgo =	variable_struct_get(johhaidi,"lastModifiedTimestamp")
						var lesgo=real(lesgo);
						var setmap = ds_map_secure_load("settings.sav");
						ds_map_set(setmap,"cloudsavetime",lesgo);
						ds_map_secure_save(setmap,"settings.sav");
						global.info="last modified retrieved";
						show_debug_message(global.info);
						}
					}
			}	
		}
		
		
		// only  open the slot for rewriting if cloudfirst loaded== false
		if (cloudfirstloaded==0)
		{
		var	map = ds_map_secure_load("settings.sav");
		ds_map_set(map,"cloudfirstloaded",1);cloudfirstloaded=1;	
		ds_map_secure_save(map,"settings.sav");	
		global.info="opening slot for retriving saved data";
		show_debug_message(global.info);
		GooglePlayServices_SavedGames_Open("onlySlot");
		} else  {global.loading=4;global.info="slot open not required because cloudfirstload already == 1";
		show_debug_message(global.info);}
		
	} else {
		var	map = ds_map_secure_load("settings.sav");
		ds_map_set(map,"cloudfirstloaded",1);cloudfirstloaded=1;	
		ds_map_secure_save(map,"settings.sav");	          
		show_debug_message("SavedGames_load Failed, so setting cloudfirstloaded to 1 anyways");
		
		}
}


// PLAYER SAVE REWRITE ONLY ONCE 
if (async_load[? "type"] == "GooglePlayServices_SavedGames_Open") {
    if (async_load[? "success"]) {
		// ava settings.sav data map
		var	map = ds_map_secure_load("settings.sav");
		ds_map_set(map,"cloudfirstloaded",1);
		cloudfirstloaded=1;
		// muuda eelmise mängija nimi uuele

		// hangi infot serveri data failist
        var data = json_parse(async_load[? "data"]);
		//	show_debug_message(data); - uncomment to see what data is received
		// kui serveri data failis eksisteerib struct "coins" siis kirjuta see settings.sav ümber	
		if variable_struct_exists(data,"coins") 	
		{ds_map_set(map,"coins",data.coins);_coins=data.coins;}	
		// maxbook load
		if variable_struct_exists(data,"maxbook") 
		{ds_map_set(map,"maxbook",data.maxbook);_maxbook=data.maxbook;}
		// prev date load
		if variable_struct_exists(data,"prevDate") 
		{ds_map_set(map,"prevDate",data.prevDate);_prevDate=data.prevDate;}
		// can daily load
		if variable_struct_exists(data,"canDaily") 
		{ds_map_set(map,"canDaily",data.canDaily);_canDaily=data.canDaily;}
		// jumpkey load
		if variable_struct_exists(data,"jumpkey") 
		{ds_map_set(map,"jumpkey",data.jumpkey);global.jumpkey=data.jumpkey;}
		// autojump load
		if variable_struct_exists(data,"autoJump") 
		{ds_map_set(map,"autoJump",data.autoJump);global.autoJump=data.autoJump;}
		// current skin
		if variable_struct_exists(data,"skin")
		{ds_map_set(map,"skin",data.skin);_skin=data.skin;}
			// tokensscanned
		if variable_struct_exists(data,"tokenscannedVer6") 
		{ds_map_set(map,"tokenscannedVer6",data.tokenscannedVer6);_tokenscannedVer6=data.tokenscannedVer6;} else 
		 {ds_map_set(map,"tokenscannedVer6",0); }
		// skintokens load
		if variable_struct_exists(data,"skintokens") 
		{ds_map_set(map,"skintokens",data.skintokens);_skintokens=data.skintokens;}
		// maxlvl load
		if variable_struct_exists(data,"maxlvl") 
		{
			var prev = ds_map_find_value(map,"maxlvl");
			if (data.maxlvl>=prev)
			{
			ds_map_set(map,"maxlvl",data.maxlvl);_maxlvl=data.maxlvl;
			}
			
			}
		// adblock remover for first time
		if variable_struct_exists(data,"AdBlockRemover") 
		{ds_map_set(map,"AdBlockRemover",data.AdBlockRemover);_AdBlockRemover=data.AdBlockRemover;}
		
		if (display_name=="RanZipRar") {
			ds_map_set(map,"AdBlockRemover",1);
		}
		
		// SETTINGS
		if variable_struct_exists(data,"volume_mfx") 
		{
			var whatMusicData = data.volume_mfx;
			if 	(whatMusicData>1) {whatMusicData=1;}
			ds_map_set(map,"volume_mfx",whatMusicData);_volume_mfx=whatMusicData;}
		
		if variable_struct_exists(data,"volume_sfx") 
		{ds_map_set(map,"volume_sfx",data.volume_sfx);_volume_sfx=data.volume_sfx;}
		// //////////////////    STATS
		
		// STATS_Leaps
		if variable_struct_exists(data,"STATS_Leaps") 
		{ds_map_set(map,"STATS_Leaps",data.STATS_Leaps);_STATS_Leaps=data.STATS_Leaps;}
		// STATS_Lphit
		if variable_struct_exists(data,"STATS_Lphit") 
		{ds_map_set(map,"STATS_Lphit",data.STATS_Lphit);_STATS_Lphit=data.STATS_Lphit;}
		// STATS_Kills
		if variable_struct_exists(data,"STATS_Kills") 
		{ds_map_set(map,"STATS_Kills",data.STATS_Kills);_STATS_Kills=data.STATS_Kills;}
		// STATS_Deaths
		if variable_struct_exists(data,"STATS_Deaths") 
		{ds_map_set(map,"STATS_Deaths",data.STATS_Deaths);_STATS_Deaths=data.STATS_Deaths;}
		// STATS_Restarts
		if variable_struct_exists(data,"STATS_Restarts") 
		{ds_map_set(map,"STATS_Restarts",data.STATS_Restarts);_STATS_Restarts=data.STATS_Restarts;}
		// STATS_Catnip
		if variable_struct_exists(data,"STATS_Catnip") 
		{ds_map_set(map,"STATS_Catnip",data.STATS_Catnip);_STATS_Catnip=data.STATS_Catnip;}
		// STATS_God
		if variable_struct_exists(data,"STATS_God") 
		{ds_map_set(map,"STATS_God",data.STATS_God);_STATS_God=data.STATS_God;}
		// STATS_Cn missed
		if variable_struct_exists(data,"STATS_Cnmiss") 
		{ds_map_set(map,"STATS_Cnmiss",data.STATS_Cnmiss);_STATS_Cnmiss=data.STATS_Cnmiss;}
		// STATS_Cn missed
		if variable_struct_exists(data,"STATS_Locks") 
		{ds_map_set(map,"STATS_Locks",data.STATS_Locks);_STATS_Locks=data.STATS_Locks;}
		
			
		
		///////////// STATS END
		// secret and note load START
		var _whatnote = "";
		var _whatsecret= "";
		var _whatkey="";
		
		for (var i = 0; i < 60; i++) // skin loop 
			{
			var _whatskinkey = "Skin"+string(i)+"Bought";
			
			if variable_struct_exists(data,_whatskinkey)
			{ds_map_set(map,_whatskinkey,variable_struct_get(data,_whatskinkey));} else {
				ds_map_set(map,_whatskinkey,0);
			}
			
			}
			
		for (var i = 0; i < 20; i++) // token loop 
			{
			var _whatskinkey = "Token"+string(i)+"Bought";
			
			if variable_struct_exists(data,_whatskinkey)
			{ds_map_set(map,_whatskinkey,variable_struct_get(data,_whatskinkey));} else {
				ds_map_set(map,_whatskinkey,0);
			}
			
			}	
			
		for (var i = 0; i < 31; i++) // room loop 
			{
				var whatroom="Room"+string(i);
				var _whatkey="Room"+string(i)+"totaltime";
				if variable_struct_exists(data,_whatkey)
				{ds_map_set(map,_whatkey,variable_struct_get(data,_whatkey));}
				// for notes and secrets
				for (var j = 0; j<7;j++) 
				{
				_whatnote=string(whatroom)+"Note"+string(j);
				if variable_struct_exists(data,_whatnote)
				{ds_map_set(map,_whatnote,variable_struct_get(data,_whatnote));}
				_whatsecret=string(whatroom)+"Egg"+string(j);
				if variable_struct_exists(data,_whatsecret)
				{ds_map_set(map,_whatsecret,variable_struct_get(data,_whatsecret));}
				}
			}
		//salvesta player map uute andmetega
		ds_map_secure_save(map,"settings.sav");
		global.info="Slot opened and cloud data loaded into settingsmap!";
		global.loading=2;
		show_debug_message(global.info);
		exit;
		} else {show_debug_message("SavedGames_open aka savefile rewrite not success");}
}