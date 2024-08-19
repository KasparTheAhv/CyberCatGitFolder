/// @desc particle
// You can write your code in this editor
if (image_xscale<0) {var mut=-14;} else {mut=14;}

if (PARTSWITCH==1)
{
part_particles_create(oRoomController.part_sys, x+mut, y+6,parter,1);
PARTSWITCH=0;
} else {
PARTSWITCH=1;	
}

alarm[0]=1;