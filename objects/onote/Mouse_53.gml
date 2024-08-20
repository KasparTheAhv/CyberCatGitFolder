if instance_exists(oPlayerGod) {exit;}
if instance_exists(oPlayerAttack) {exit;}
if instance_exists(oText) {exit;}
if instance_exists(oTextFloat) {exit;}

if (distance_to_object(oPlayer)<100) && (point_distance(x,y,mouse_x,mouse_y)<25)
{
alarm[5]=1;
if (cid_event==0) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
	var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==1) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==2) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==3) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	};
	exit;
}

if (cid_event==4) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==5) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==6) {
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
	exit;
}
if (cid_event==7) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==8) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==9) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==10) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==11) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==12) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==13) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==14) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==15) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==16) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==17) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note5";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==18) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note6";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==19) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==20) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==21) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==22) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==23) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==24) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==25) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==26) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==27) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==28) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==29) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==30) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==31) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==32) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==33) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==34) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==35) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==36) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==37) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==38) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==39) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==40) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==41) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==42) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==43) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==44) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==45) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==46) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==47) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==48) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==49) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==50) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==51) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==52) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==53) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==54) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==55) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==56) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==57) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==58) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==59) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==60) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==61) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==62) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==63) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==64) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==65) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==66) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==67) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==68) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}


if (cid_event==69) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}

if (cid_event==70) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==71) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==72) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==73) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==74) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==75) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==76) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==77) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note4";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==78) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==79) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==80) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==81) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==82) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==83) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==84) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note1";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==85) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note2";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
if (cid_event==86) {
	var whatroom=room_get_name(room);
	var settingsmap=ds_map_secure_load("settings.sav");
	var key=string(whatroom)+"Note3";
		var prevvalue = ds_map_find_value(settingsmap,key);
	if is_undefined(prevvalue) or (prevvalue==0)
	{
		with (instance_create_layer(x,y,"BefEdge",oEggNoti))
		{
			isEgg=false;
		}
		ds_map_set(settingsmap,key,1);
		ds_map_secure_save(settingsmap,"settings.sav");
	}
	exit;
}
// end
}