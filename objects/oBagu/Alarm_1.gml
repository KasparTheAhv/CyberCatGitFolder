/// @desc state3

instance_create_layer(x+(55*0.75),y,"Characters",oPlayer);
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys,x+(55*0.75),y,oRoomController.part13,irandom_range(14,20));
}
alarm[2]=1;
