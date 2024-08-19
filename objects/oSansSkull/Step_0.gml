/// @desc
vsp+=grv;


//
if (stage==1)
{
	if (image_index<7) {
		image_index+=1;
	} else {stage=2;alarm[0]=1; alarm[1]=105; }
}

if (stage==3)
{
	if (image_index>0) {
		image_index-=1;
	} else {stage=4;
		
		var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg4";
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
}

// Collision
if (tilemap_get_at_pixel(tilemap,x,y)!=0) {vsp=0; if (stage==0)&&(image_index==0){stage=1;}}
if (tilemap_get_at_pixel(tilemap2,x,y)!=0) {vsp=0;}

y+=vsp;