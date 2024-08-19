if (elud>1)
{
elud-=1;
image_blend=c_red;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part6,irandom_range(4,8));
}
alarm[6]=6;
exit;
} else {
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
	text="Seeya in hell!\noh.. and I love the carpet on god btw\nsuits you nicely!";
with (instance_create_layer(self.x,self.y-50,"Particles",oTextFloat))
	{
	timer=150;
	target=other;
	text = other.text;
	length = string_length(text);
	}

instance_create_layer(self.x,self.y,"Characters",oElGatoD);
instance_destroy(self);
}