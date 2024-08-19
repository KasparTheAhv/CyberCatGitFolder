/// @description Insert description here
// You can write your code in this editor
var side = sign(image_xscale);

if (current_state==dinostates.charge)
{
	with (other)
	{
		play_sound(snOuch,false);	
		with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
		{
		superplatform=other.superplatform;
		hsp= 5*side;
		vsp= -3;
		if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
		}
		instance_destroy(self);
	}									
}

if (current_state==dinostates.jump)
{
	with (other)
	{
		if !(immune)
		{
			play_sound(snOuch,false);	
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp= 5*side;
			vsp= -3;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(self);
		}		
	}
}