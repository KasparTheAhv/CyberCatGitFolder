/// @desc
if !(driving)
{
		if instance_exists(oPlayer)
		{
			var who=oPlayer;
			if (point_distance(who.x,who.y,x,y)<50)	
			{
				
				with (oFollowPlayer) {target=instance_nearest(x,y,oTank);}
				instance_destroy(oPlayer);
				driving=true;
				
				var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg2";
				var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=true;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
			
			text="minecraft, cs go, cry of fear\n -aint nothing compared\n to world of tanks!";
			with (instance_create_layer(self.x,self.y-30,"Particles",oTextFloat))
			{
			extraheight=30;
			timer=200;
			target=instance_nearest(x,y,oTank);
			text = other.text;
			length = string_length(text);
			}
				
			}
		}
} else {
	if !(instance_exists(oPlayer))
	{
		driving=false;
		instance_create_layer(x,y,"Characters",oPlayer);
	}
}