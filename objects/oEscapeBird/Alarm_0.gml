/// @description Insert description here
// You can write your code in this editor
var xmod=0;
var ymod=0;

// face player
	if (point_distance(x,y,oFollowPlayer.x,oFollowPlayer.y)<270)
	{
	if instance_exists(oPlayer) {if (self.x<oPlayer.x) {image_xscale=scale;} else {image_xscale=-scale;} }
	}	


// exit and re-alarm if not far enough
if instance_exists(oPlayer)
{
	if (point_distance(x,y,oPlayer.x,oPlayer.y)<140)
	{
		startmoving=true;
		var kumb=choose(0,1);
		if (kumb==1) {xmod=irandom_range(120,520);} else {xmod=irandom_range(-520,-120);}
		ymod=choose(-20,-10,0,90,140);
		
		var leidis=false;
		for (var i = 0; i <= 12; i++)
		{
			var extra=11*i;
			if (tilemap_get_at_pixel(tilemap,oPlayer.x+xmod,oPlayer.y-extra+ymod)==1) 
			{
				leidis=true;
			destX=oPlayer.x+xmod;
			destY=oPlayer.y-extra+ymod-14;	
			break;
			}	
		}
		
	
		
		if (leidis==false) {alarm[0]=1;exit;}
	} else {startmoving=false;alarm[0]=5; exit;}
}
	
// move to destination	
if (destX!=0) && (destY!=0)
{
	// egg
			var whatroom=room_get_name(room);
				var settingsmap=ds_map_secure_load("settings.sav");
				var key=string(whatroom)+"Egg3";
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
	
	
	
if (startmoving) 
{
	if (state!=2)
	{
	state=2;
	image_xscale=scale;
	}
}
} else {alarm[0]=5;}