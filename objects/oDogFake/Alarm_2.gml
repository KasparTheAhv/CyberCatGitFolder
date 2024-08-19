/// @desc chase detection
if (hsp==0) {exit;}

if (treatment)
{
who = instance_nearest(x,y,oDogTreat);
if (who==noone) {treatment=false;alarm[2]=2;exit;}
if (who.x<self.x) {hsp=-2; image_xscale=-0.7;} else {hsp=2; image_xscale=0.7;}

if (point_distance(x,y,who.x,who.y)<24)
{
	if (oRoomController.room16eggTriggered==false)
	{
		oRoomController.room16eggTriggered=true;
			text="Tha hell? That's not cat food..";
			follow = instance_nearest(x,y,oFollowPlayer);
			with (instance_create_layer(follow.x,follow.y-40,"Particles",oTextFloat))
				{
				timer=240;
				target=other.follow;
				text = other.text;
				length = string_length(text); 
				who=other.id;
				}

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
	}
	eating=true;
	hsp=0;
	sprite_index=sDogEF;
	image_speed=1;
	alarm[9]=120;
	exit;
}
alarm[2]=1;
exit;	
}

if !(instance_exists(oText)) && (treatment==false)
{
if (distance_to_object(oFollowPlayer)<1000)
{
	chase=true;
	var ala1 = alarm_get(10);
	if (ala1<0) {alarm[10]=irandom_range(150,250);}
	
	alarm[0]=20;
	var ala = alarm_get(1);
	if (ala<0) {alarm[1]=irandom_range(20,50);}
} else {chase=false;}
}



if (foreverchase) && (treatment==false) {chase=true;
	var ala1 = alarm_get(10);
	if (ala1<0) {alarm[10]=irandom_range(150,250);}}
alarm[2]=30;

