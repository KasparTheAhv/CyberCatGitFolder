/// @desc Shake until phase 0 over
if (phase==0)
{
muutuja2=choose(-2,2);
muutuja=choose(-2,2);
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x-8, y+11,oRoomController.part7,irandom_range(2,12));
part_particles_create(oRoomController.part_sys, x+8, y+11,oRoomController.part7,irandom_range(2,12));
}
self.y-=1;
alarm[1]=1;
} else {
muutuja=0;
muutuja2=0;
image_speed=1;
if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x, y,oRoomController.part7,irandom_range(5,25));
}
}
