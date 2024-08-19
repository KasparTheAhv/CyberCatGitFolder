/// @desc
with (other)
{
//
part_particles_create(oRoomController.part_sys, x+(22*image_xscale),y,oRoomController.part10,irandom_range(14,25));
play_sound(snElectrocuted,false);


instance_create_layer(x,y,"Particles",oLightningNoGod);

with (instance_create_layer(x,y-1,"Characters",oPlayerFall))
{
superplatform=other.superplatform;
hsp = -4;
vsp =-3;
if (sign(hsp) !=0) image_xscale = sign(hsp)*0.75;
}	
}




alarm[10]=5;
instance_destroy(oPlayer);