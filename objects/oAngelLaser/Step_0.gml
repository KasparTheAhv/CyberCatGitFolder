/// @desc
if (incsize)
{
	if (image_xscale<30) {image_xscale+=1;} 
}
else
{
	if (visible) && (global.GFX1==1)
	{
	part_particles_create(oRoomController.part_sys,x,y,oRoomController.part10,irandom_range(3,8));
	}
	if (image_xscale>0) {image_xscale-=2;} else {instance_create_layer(x,y,"Dog",oSoul);instance_destroy();} // make soul
}

if tilemap_get_at_pixel(tilemap,x,y) {if (incsize){ play_sound(snElectro,false); speed=0;incsize=false;}}

if collision_point(x,y,oPlayer,true,true)
{
	with(oPlayer)
		{
			if !(immune)
			{
			self.image_blend=c_orange;
			alarm[8]=30;	
			play_sound(snOuch,false);		
			var scale=choose(1,-1);
			with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
			{
			superplatform=other.superplatform;
			hsp= 2*scale;
			vsp= -3;
			if (sign(hsp) !=0) image_xscale = sign(hsp)*0.7;
			}
			instance_destroy(oPlayer);
			}	
		}	
}