/// @description Insert description here
// You can write your code in this editor
	if instance_exists(oPlayer) {target=oPlayer;}
	if instance_exists(oPlayerAttack) {target=oPlayerAttack;}
	var scale=image_xscale;	

if target==oPlayer or target==oPlayerAttack
{
	with(target) 
	{
		if !(immune)
		{
			play_sound(snOuch,false);
		
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp= 4*scale;
			vsp= -3;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
			}
			instance_destroy(self);	
		}
	}
}