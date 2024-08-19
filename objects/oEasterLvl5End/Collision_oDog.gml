if !(blocker)
{
	instance_destroy(oText);
	blocker=true;
		text="ok, bye I guess...";
		follow = instance_nearest(x,y,oDog);
		with (follow)
		{
			alarm[1]=600;
			alarm[2]=600;
			
		}
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}
			with (oPlayer)
				{
				canatk=false;
				immune=true;
				}
			with (oFollowPlayer)
			{
			target = other.follow;
			}
			with(oVStick)
			{
			vstick_set_active(stick_id,false);
			}
	self.alarm[1]=100;
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
oGUIBAR.task2="+ Task ignored";
oGUIBAR.task2col="[#4CFF4C]";

}