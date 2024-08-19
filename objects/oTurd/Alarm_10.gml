/// @desc
play_sound(snTurd,false);
instance_destroy();
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part1,irandom_range(12,15));
}
instance_create_layer(x,y,"Characters",oGas);