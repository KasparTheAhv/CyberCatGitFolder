/// @desc REWARDS
if !(readytouse) {exit;}


// PROMOS

//SKINS
if (sKeyboardInput=="iusearchbtw")  // pass
{
show_debug_message("pirate"); // user
startreward=true
curskin=9;
sprite=s9PlayerR;
spriteATK=s9PlayerD;
skinname="Penqitten";
rewtype=0;
}
if (sKeyboardInput=="MiltonGoFish") or (sKeyboardInput=="miltongofish") or (sKeyboardInput=="milton")   // pass
{
show_debug_message("seb"); // user
startreward=true
curskin=8;
sprite=s8PlayerR;
spriteATK=s8PlayerD;
skinname="Milton";
rewtype=0;
}
if (sKeyboardInput=="WasItWorthIt") or (sKeyboardInput=="wasitworthit")// pass
{
show_debug_message("terragamer"); // user
startreward=true
curskin=7;
sprite=s7PlayerR;
spriteATK=s7PlayerD;
skinname="BeeCat";
rewtype=0;
}
// Level unlocks
if (sKeyboardInput=="Open9") or (sKeyboardInput=="open9")// openlvl upto level 9
{
	var settingsmap=ds_map_secure_load("settings.sav");
	ds_map_set(settingsmap,"maxlvl",9);
	ds_map_secure_save(settingsmap,"settings.sav");
}
if (sKeyboardInput=="Open25") or (sKeyboardInput=="open25")// openlvl upto level 25
{
	var settingsmap=ds_map_secure_load("settings.sav");
	ds_map_set(settingsmap,"maxlvl",25);
	ds_map_secure_save(settingsmap,"settings.sav");
}

// Token rewards
if (sKeyboardInput=="MouseATastySnack")  // pass
{
show_debug_message("MouseATastySnack token code"); // user
startreward=true
curtoken=0;
sprite=sSkinTokenRoll;
spriteATK=sSkinToken;
tokenamount=2; // token amount
rewtype=1; // 1 = token 
}

if (sKeyboardInput=="Meow")  // pass
{
show_debug_message("Meow token code"); // user
startreward=true
curtoken=1;
sprite=sSkinTokenRoll;
spriteATK=sSkinToken;
tokenamount=2; // token amount
rewtype=1; // 1 = token 
}


if (sKeyboardInput=="TikTokHelpers")  // pass
{
show_debug_message("TikTokHelpers token code"); // user
startreward=true
curtoken=2;
sprite=sSkinTokenRoll;
spriteATK=sSkinToken;
tokenamount=2; // token amount
rewtype=1; // 1 = token 
}


	if (sKeyboardInput=="NoMoreDengi")  // pass
	{
	show_debug_message("NoMoreDengi"); // user
	startreward=true
	curtoken=2;
	sprite=sSkinTokenRoll;
	spriteATK=sSkinToken;
	tokenamount=80; // token amount
	rewtype=1; // 1 = token 
	}











if (startreward==false) {exit;}
// Variable settings
tohibLiikuda=true; oncer=true; readytouse=false; oncer2=true; sprite_index=sprite;

// unlocking skin

if (rewtype==0) // is skin
{		
		var settingsmap = ds_map_secure_load("settings.sav");
		var whatkey = "Skin"+string(curskin)+"Bought";
		isbought=ds_map_find_value(settingsmap,whatkey);
		
		if is_undefined(isbought) or (isbought==0)
		{
		// hasnt unlocked	
		show_debug_message("unlocked now");
		rewTXT = "Unlocked skin: "+string(skinname);
		
		ds_map_set(settingsmap,whatkey,1);
		ds_map_secure_save(settingsmap,"settings.sav");
		
		} 
		
		
		
		if (isbought==1)
		{
		// has bought
		show_debug_message("unlocked before");
		rewTXT = "Displaying: "+string(skinname);
		}
}

if (rewtype==1) // is token
{	
		var settingsmap = ds_map_secure_load("settings.sav");
		var whatkey = "Token"+string(curtoken)+"Bought";
		isbought=ds_map_find_value(settingsmap,whatkey);
		
		if is_undefined(isbought) or (isbought==0)
		{
		// hasnt unlocked so now set the code to unlocked 
		show_debug_message("unlocked new token code");
		rewTXT = "Received: "+string(tokenamount)+" Tokens";
		ds_map_set(settingsmap,whatkey,1);
		//
		
		var skintokens=ds_map_find_value(settingsmap,"skintokens"); //current skin tokens
		if is_undefined(skintokens){skintokens=0;}
		var newamount=skintokens+tokenamount;
		ds_map_set(settingsmap,"skintokens",newamount);
		ds_map_secure_save(settingsmap,"settings.sav");
		} 
		
	
		if (isbought==1)
		{
		// has bought
		sprite=sInvis2;
		spriteATK=sInvis2;
		sprite_index=sprite;
		show_debug_message("unlocked before");
		rewTXT = "Already claimed!";
		}
		
}

oPlayControllerA.alarm[2]=10;