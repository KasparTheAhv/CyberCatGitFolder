if (colevent_id==0) {exit;}

if (colevent_id==2) && !(blocker)
{	
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Egg1";
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
	blocker=true;
	text="No no no.. can't claw\nthis one down.\nYou must shoot it!";
with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-50,"Particles",oTextFloat))
	{
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	}
		instance_destroy();
}

if (room==Room21) {exit;}
var xx=oPlayerAttack.x;
var yy=oPlayerAttack.y;
instance_destroy(oPlayerAttack);
with (instance_create_layer(xx,yy,"Characters",oPlayer))
{
	landed=false;
}