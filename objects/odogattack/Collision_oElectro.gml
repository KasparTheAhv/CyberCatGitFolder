if (helper==true) {exit;}

vspeed=vspeed*-1;
hspeed=hspeed*-1;
hsp=hsp*-1;
image_xscale=image_xscale*-1;
electrod=true;
alarm[10]=1;
var electro = instance_nearest(x,y,oElectro);
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, electro.x-(10*image_xscale),y,oRoomController.part10,irandom_range(14,25));
}
if (elud<=0)
{
	var settingsmap = ds_map_secure_load("settings.sav")
var prevValue = ds_map_find_value(settingsmap,"STATS_Kills");
if is_undefined(prevValue){prevValue=0;}
var neWvalue = prevValue+1;
ds_map_set(settingsmap,"STATS_Kills",neWvalue);
ds_map_secure_save(settingsmap,"settings.sav");

	if (room=Room7) {
		oGUIBAR.task3="+ Task done!"
		oGUIBAR.task3col="[#4CFF4C]";
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
		text="OTTO! NOOOO!\nJk, I don't care";
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y+80,"Particles",oTextFloat))
	{
	extraheight=80;	
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
	}
}