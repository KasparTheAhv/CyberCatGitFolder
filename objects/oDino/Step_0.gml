// grav and movement
vsp+=grv;
vsp=clamp(vsp,-20,5);





if (tilemap_get_at_pixel(tilemap,x+(hsp*5),y)==1)
{
hsp=0;
image_xscale=image_xscale*-1;
	if (current_state==dinostates.charge)
	{
		sprite_index=sDinoIDLE;
		current_state=dinostates.idle;
		alarm[0]=120;
	}
}

if (current_state==dinostates.jump)
{
	if (vsp>0) {image_index=1;if (sounded==false) {sounded=true;play_sound(snDinoAlarm);} }
	if (tilemap_get_at_pixel(tilemap,x,y+vsp)==1)
	{	
	sounded=false;
	instance_create_layer(x,y,"Characters",oDinoSmoke);
	vsp=0;sprite_index=sDinoIDLE;image_speed=1; current_state=dinostates.idle; alarm[0]=100; play_sound(snDinoLand,false);
		if (instance_exists(oPlayer))
		{
			with (oPlayer) 
			{
			 if (oPlayer.jumping==false) && !(immune)
				{
					play_sound(snOuch,false);	
					with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
					{
					superplatform=other.superplatform;
					hsp= 2*choose(1,-1);
					vsp= -3;
					if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
					}	
					instance_destroy();	
				}
			}
		}	
	}
} 


if (tilemap_get_at_pixel(tilemap,x,y+vsp)==1){vsp=0;}	



y+=floor(vsp);
x+=floor(hsp);