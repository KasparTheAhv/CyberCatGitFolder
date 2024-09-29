var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");

if (room=Room21)
{
	
	if instance_exists(oTimer)
	{
		if (oTimer.seconds>0)
		{
			with(oTimer) {seconds-=1;pieseconds-=60;}
		} 
		if (oTimer.seconds==0) && (oSnakeMan.stage==0)
		{
		self.nonippy=true;
		instance_destroy(oNippy);
		instance_destroy(oTimer);
		with (oSnakeMan)
		{
			alarm[0]=5;
			sprite_index=sSnakeMan;
			stage=1;
		}
		with (oFollowPlayer)
		{
			target=oSnakeMan;
		}

		var who;
		if instance_exists(oPlayerCypInvi) {who = instance_nearest(x,y,oPlayerCypInvi);}
		if instance_exists(oPlayerCyport) {who = instance_nearest(x,y,oPlayerCyport);}
		if instance_exists(oPlayer) {who = instance_nearest(x,y,oPlayer); }
		if instance_exists(oPlayerAttack) {who = instance_nearest(x,y,oPlayerAttack); }
		if instance_exists(oPlayerFall) {who = instance_nearest(x,y,oPlayerFall);}
		var xx = who.x;
		var yy = who.y;
		instance_destroy(who);
		
		with ( instance_create_layer(xx,yy,"Characters",oPlayer))
		{
			immune=true;
			if instance_exists(oFollowPlayer) {
				oFollowPlayer.target=oSnakeMan;
		} 
		}
		
		with(oJumpKey) {joonista=false;}
		
		with (oGUIBAR)
		{
		joonista=false;	
		joonistatasks=false;
		}
	
		with (oPause)
		{
		joonista=false;
		}
		instance_destroy(oBookController);
	
		with (oAttackKey)
		{
		joonista=false;	
		}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			joonista=false;
			}
		}
	}
}


if (whatbase!=noone)
{
	if instance_exists(whatbase)
	{
	whatbase.mybirds-=1;
	}
}

if (nonippy==true) {exit;} else 
{
	if instance_exists(oGUIBAR)
	{
	oGUIBAR.hp+=10;
	}
}