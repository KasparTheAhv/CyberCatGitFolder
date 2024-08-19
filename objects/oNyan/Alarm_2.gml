if instance_exists(oPlayer) && !(exitlock)
{
	instance_destroy(oAsteroid);
	exitlock=true;
	working=false;
oPlayer.immune=false;
oGUIBAR.follow=oFollowPlayer;
camera_set_view_target(view_camera[0],oFollowPlayer);
instance_activate_object(oPenquin);
instance_activate_object(oDog);
instance_activate_object(oNote);
instance_activate_object(oAttackKey);
if instance_exists(oMagnify) {oMagnify.alarm[4]=130;}
	with(oVStick)
	{
	if (stick_id==1)
	{
	toimi=true;
	joonista=true;
	}
with (oJumpKey) {joonista=true;}
	with (oGUIBAR) {joonista=true; joonistatasks=true;}
if instance_exists(oPause) {oPause.alarm[5]=1;}
if instance_exists(oBook) {oBook.alarm[5]=1;oBook.alarm[4]=1;}
}

}
if (showeaster)
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
	text="I feel violated...\nthat was only a spoonfull";
	with (instance_create_layer(oFollowPlayer.x,oFollowPlayer.y-80,"Particles",oTextFloat))
	{
	extraheight=40;	
	target=oFollowPlayer;
	text = other.text;
	length = string_length(text);
	timer=140;
	}
}

instance_destroy(oCyberCat);
if !(showeaster) {instance_create_layer(self.x,self.y,layer,oNyan);}
instance_destroy(oNyanback);
if !(showeaster) {instance_create_layer(self.x,self.y,layer,oNyanback);}
instance_destroy(self);