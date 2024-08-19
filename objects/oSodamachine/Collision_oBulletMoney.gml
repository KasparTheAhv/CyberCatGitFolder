/// @desc

if (point_distance(oFollowPlayer.x,oFollowPlayer.y,x,y)>camwid) {exit;}



if !(inserted)
{
inserted=true;



			
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
alarm[0]=1;

alarm[1]=4;	
}