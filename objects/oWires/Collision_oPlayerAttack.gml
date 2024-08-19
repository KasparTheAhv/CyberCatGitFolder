/// @desc
if (image_index==0)
{
image_index=1;
play_sound(snElectrocuted,false);

if (visible) && (global.GFX1==1)
{
part_particles_create(oRoomController.part_sys, x-5, y,oRoomController.part10,irandom_range(5,13));
}

oTerminator.alarm[10]=60; // check if last engine
}